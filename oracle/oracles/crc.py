import os
import re
import shutil
import subprocess
import sys

from common import (
    HYPHENS,
    TIMEOUT,
    check_for_compilation_exception,
    get_code,
    get_exec_commands,
    reexecute_cmds,
    run_cmds,
)
from .crc_templates import (
    global_varname_code,
    varname_template,
    global_info_entry_template,
    crc_functions_template,
    call_old_main_with_i32,
    call_old_void_main,
    new_main_function_code,
)

PASS_DIR = "llvm_c"
LIB_NAME = "libGlobalSizePass.so"


def build_globals_pass():
    build_dir = os.path.join(PASS_DIR, "build")
    lib_path = os.path.join(build_dir, LIB_NAME)

    print(f"\tChecking for LLVM pass library at: {lib_path}")

    if os.path.exists(lib_path):
        print(f"\t'{LIB_NAME}' already exists. Build not required.")
        return True
    else:
        print(f"\t'{LIB_NAME}' not found. Building in '{PASS_DIR}'...")
        # 'rm -rf build'
        if os.path.exists(build_dir):
            print(f"\tRemoving existing build directory: {build_dir}")
            shutil.rmtree(build_dir)

        # Equivalent of 'mkdir build'
        print(f"\tCreating build directory: {build_dir}")
        os.makedirs(build_dir, exist_ok=True)

        # Run cmake
        print("\tRunning cmake...")
        cmake_process = subprocess.run(
            ["cmake", ".."], cwd=build_dir, capture_output=True, text=True, check=True, timeout=TIMEOUT
        )
        print("\tCMake output:\n", cmake_process.stdout)
        if cmake_process.stderr:
            print("\tCMake errors:\n", cmake_process.stderr, file=sys.stderr)

        # Run make
        print("\tRunning make...")
        make_process = subprocess.run(
            ["make"],
            cwd=build_dir,
            capture_output=True,
            text=True,
            timeout=TIMEOUT,
        )
        print("\tMake output:\n", make_process.stdout)
        if make_process.stderr:
            print("\tMake errors:\n", make_process.stderr, file=sys.stderr)

        # Final check if the library was created
        if os.path.exists(lib_path):
            print(f"\tBuild successful. '{LIB_NAME}' created.")
        else:
            raise Exception(f"Error: Build process completed, but '{LIB_NAME}' was not found.")


def run_globals_pass(file):
    build_dir = os.path.join(PASS_DIR, "build")
    lib_path = os.path.join(build_dir, LIB_NAME)

    opt_command = [
        "opt",
        "-load-pass-plugin",
        lib_path,
        "-passes=global-size",
        file,
        "-o",
        os.devnull,
    ]
    print(f"\tRunning command: {' '.join(opt_command)}")

    process = subprocess.run(opt_command, capture_output=True, text=True, check=True, timeout=TIMEOUT)

    stdout = process.stdout
    print("\tPass output captured:\n", stdout)

    global_sizes = {}
    lines = stdout.splitlines()
    found_relevant_section = False
    for line in lines:
        # start of the pass output
        if "Global Variable Sizes in Module" in line:
            found_relevant_section = True
            continue
        # end of pass output
        if "-----" in line or "No user-defined" in line:
            break
        if found_relevant_section and ": Type=" in line:
            varname, rest = line.split(":", 1)
            varname = varname[1:].strip()
            print(rest)
            vartype, varsize = rest.split(", Size")
            vartype = vartype.split("=")[1].strip()
            varsize = varsize.split("=")[1].strip()
            if vartype != "ptr":
                global_sizes[varname] = {"var_type": vartype, "size": varsize}
    print(f"\tFound global variables: {global_sizes}")
    return global_sizes


def get_globals_info(file):
    # Build executable
    build_globals_pass()
    # Run globals pass
    global_var_info = run_globals_pass(file)

    for var_name in global_var_info.keys():
        var_type = global_var_info[var_name]["var_type"]
        var_name_length = len(var_name) + 1
        # Create global variables that store a string representation of each variable
        global_var_info[var_name]["varname_code"] = varname_template.substitute(name=var_name, size=var_name_length)

        # Create entry in globals_table
        global_var_info[var_name]["global_info_entry"] = global_info_entry_template.substitute(
            type=f"{var_type}*",
            name=var_name,
            num_bytes=global_var_info[var_name]["size"],
            name_len=var_name_length,
        )

    return global_var_info


def get_default_return_value(return_type):
    """Gets a default value string for a given LLVM IR type."""
    return_type = return_type.strip()
    if return_type == "void":
        return "void"
    elif return_type.endswith("*"):  # Pointer types
        return f"{return_type} null"
    elif return_type.startswith("i"):  # Integer types
        return f"{return_type} 0"
    elif return_type in ["float", "double", "fp128", "half", "bfloat"]:  # Floating point
        return f"{return_type} 0.0"
    # ? add more complex types if needed
    else:  # unknown type
        return f"{return_type} undef"


def replace_abort_exit_calls(crc_code):
    """
    Replaces calls to @exit and @abort with custom CRC calls and removes
    the immediately following 'unreachable' instruction if present.

    Returns:
        A new list of strings with the modifications.
        Note: This function DOES NOT insert the necessary 'ret' instruction.
    """
    new_crc_code = []
    skip_next_line = False
    current_function_return_type = None
    i = 0
    while i < len(crc_code):
        # skip this line because it was 'unreachable'
        if skip_next_line:
            skip_next_line = False
            i += 1
            continue

        line = crc_code[i]
        processed = False

        # Track current function definition and return type
        # ^\s*define\s+ - Start with 'define'
        # ([\w\s%."{}[\]<>*]+?) - Capture group 1: Attributes and the return type (non-greedy)
        # \s+@          - Whitespace before function name '@'
        define_match = re.search(r"^\s*define\s+([\w\s%.\"{}[\]<>*]+?)\s+@", line)
        if define_match:
            # Extract the part containing attributes and return type
            type_and_attrs = define_match.group(1).strip()
            # Split by space and take the last part as the likely return type
            # This simplification and might fail on complex attributes/types
            parts = type_and_attrs.split()
            if parts:
                current_function_return_type = parts[-1]
                print(f"\tDetected function definition, return type: {current_function_return_type}")
            else:
                current_function_return_type = None
                print("\tWarning: Could not determine return type from define line:", line.strip())

        # Reset return type if we leave a function
        if line.strip() == "}":
            current_function_return_type = None

        processed = False

        # Check for exit call (including tail)
        # ^\s* - Start of line with optional whitespace
        # (tail\s+)?    - Optional capture group 1: 'tail ' prefix
        # call\s+void\s+ - 'call void ' with whitespace
        # @exit\s*\(    - '@exit(' with optional whitespace
        # (.*?)         - Capture group 2: the arguments (non-greedy)
        # \)            - Closing parenthesis
        # (\s*#\d+)?    - Optional capture group 3: attributes like #3
        exit_match = re.search(r"^\s*(tail\s+)?call\s+void\s+@exit\s*\((.*?)\)(\s*#\d+)?", line)
        if exit_match:
            if current_function_return_type is None:
                print(f"\tWarning: Found exit call but current function return type is unknown. Line: {line.strip()}")
            else:
                tail_prefix = exit_match.group(1) or ""  # tail if present, else empty string
                arguments = exit_match.group(2).strip()  # arguments passed to exit
                replacement_line = f"\t{tail_prefix}call void @_crc_exit_call({arguments})"
                new_crc_code.append(replacement_line)
                print(f"\tReplaced: {line.strip()} -> {replacement_line.strip()}")

                # Add the return instruction
                ret_value = get_default_return_value(current_function_return_type)
                ret_line = f"\tret {ret_value}"
                new_crc_code.append(ret_line)
                print(f"\tAdded return: {ret_line.strip()}")

                # Check if the next line is 'unreachable'
                if i + 1 < len(crc_code) and re.search(r"^\s*unreachable\b", crc_code[i + 1]):
                    skip_next_line = True

                processed = True

        # Check for abort call (including tail)
        # similar to exit regex
        # ^\s*(tail\s+)?call\s+void\s+@abort\s*\(\s*\)(\s*#\d+)?
        abort_match = re.search(r"^\s*(tail\s+)?call\s+void\s+@abort\s*\(\s*\)(\s*#\d+)?", line)
        if not processed and abort_match:
            if current_function_return_type is None:
                print(f"\tWarning: Found abort call but current function return type is unknown. Line: {line.strip()}")
            else:
                tail_prefix = abort_match.group(1) or ""  # tail if present, else empty string
                replacement_line = f"\t{tail_prefix}call void @_crc_abort_call()"
                new_crc_code.append(replacement_line)
                print(f"\tReplaced: {line.strip()} -> {replacement_line.strip()}")

                # Add the return instruction
                ret_value = get_default_return_value(current_function_return_type)
                ret_line = f"\tret {ret_value}"
                new_crc_code.append(ret_line)
                print(f"\tAdded return: {ret_line.strip()}")

                if i + 1 < len(crc_code) and re.search(r"^\s*unreachable\b", crc_code[i + 1]):
                    skip_next_line = True

                processed = True

        # If the line was not processed, add it as is
        if not processed:
            new_crc_code.append(line)

        i += 1

    if skip_next_line:
        # shouldn't happen
        print("\tWarning: File ended after an exit/abort call, expected 'unreachable' was not processed.")

    return new_crc_code


def find_main_end_index(crc_code):
    main_function_index = -1
    for i, line in enumerate(crc_code):
        match = re.search(r"^\s*define\s+.*?@main\s*\(", line)
        if match:
            main_function_index = i
            break

    # Find the first termination and end of main function
    main_function_end = main_function_index
    for i in range(main_function_index, len(crc_code)):
        line = crc_code[i].strip()
        # NOTE this assumes that } is a keyword and cannot appear randomly
        if line == "}":
            main_function_end = i
            break

    return main_function_end


def replace_main_function(crc_code):
    # Find index where main function ends
    main_func_end = find_main_end_index(crc_code)

    # Rename main function to @_crc_main_old()
    main_return_type = None
    for i, line in enumerate(crc_code):
        # Use regex to find 'define' followed by optional attributes, return type,
        # and exactly '@main(' to avoid replacing it in comments or other contexts.
        # ^           - Start of the line
        # \s* - Optional leading whitespace
        # define      - The keyword 'define'
        # .*?         - Any characters (non-greedily) - covers attributes and return type
        # \s+         - One or more whitespace characters
        # @main       - The literal '@main'
        # \s* - Optional whitespace
        # \(          - The literal opening parenthesis '('
        match = re.search(r"^\s*define\s+.*?(\S+)\s+@main\s*\(", line)
        if match:
            # Replace only the first occurrence of '@main(' on the matched line
            main_return_type = match.group(1)
            crc_code[i] = line.replace("@main(", "@_crc_main_old(", 1)
            break

    # Insert new main() method
    if main_return_type == "i32":
        main_call_body = call_old_main_with_i32
    else:
        main_call_body = call_old_void_main

    main_func_code = new_main_function_code.substitute(old_main_call=main_call_body)
    crc_code = crc_code[: main_func_end + 1] + main_func_code.splitlines() + crc_code[main_func_end + 1 :]
    return crc_code


def add_crc_to_ir(p):
    # static code injections
    crc_declaration = "\n; External function declaration for crc calculation\ndeclare void @transparent_crc_bytes(i8*, i32, i8*, i1)\n"
    global_info = "\n; Define type for entry into globals_table. This is { pointer to variable, var size, pointer to string with variable name }\n%global_info = type { i8*, i32, i8*}\n"

    code = get_code(p)
    code_arr = code.splitlines()

    # Cannot process function without @main. If there are no exit() or abort() statements, we can still get the CRC of the exit code
    if "@main(" not in code:
        print("No main function found. Exiting.")
        return False

    # Find last global variable index, find main function index
    last_global_var_index = -1
    for i, line in enumerate(code_arr):
        # Find global variables and mark latest index
        if re.match(r"^@([a-zA-Z_.][a-zA-Z0-9_.]*)\s*=", line):
            last_global_var_index = i
    # Inject code after top-level info if there are no global vars
    last_global_var_index = max(last_global_var_index, 4)

    # this should never be the case, but just to be safe
    if last_global_var_index == len(code_arr) - 1:
        last_global_var_index -= 1

    global_var_info = get_globals_info(p)

    # Create name global vars for each variable
    varnames_code = global_varname_code[:]
    for var_name, dict in global_var_info.items():
        varnames_code += f"{dict['varname_code']}\n"

    # Create globals_table string
    num_vars = len(global_var_info)
    print(f"\tNumber of global variables found: {num_vars}")
    globals_table = f"@globals_table = constant [{num_vars} x %global_info] [\n"
    for i, dict in enumerate(global_var_info.values()):
        if i == num_vars - 1:
            globals_table += f"\t{dict['global_info_entry']}\n"
        else:
            globals_table += f"\t{dict['global_info_entry']},\n"
    globals_table += "]\n"

    crc_functions_code = crc_functions_template.substitute(num_table_entries=num_vars)

    crc_code = (
        code_arr[: last_global_var_index + 1]
        + global_info.splitlines()
        + varnames_code.splitlines()
        + crc_declaration.splitlines()
        + globals_table.splitlines()
        + crc_functions_code.splitlines()
        + code_arr[last_global_var_index + 1 :]
    )

    # Replace abort() and exit() calls with calls to crc code
    crc_code = replace_abort_exit_calls(crc_code)

    # Replace main() with crc_main_old()
    crc_code = replace_main_function(crc_code)

    # print(f"\n\n{'\n'.join(crc_code)}")

    # Write new file
    file_stem, file_ext = os.path.splitext(os.path.basename(p))
    new_filename = f"{file_stem}_modified_crc{file_ext}"
    new_file = os.path.join(os.path.dirname(p), new_filename)
    with open(new_file, "w") as f:
        f.write("\n".join(crc_code))

    return new_file


def get_injected_crc_code(p_file, p_prime_file):
    print(f"\n{HYPHENS}Injecting CRC to P...{HYPHENS}")
    crc_p = add_crc_to_ir(p_file)
    print(f"{HYPHENS}Finished injecting CRC to P...{HYPHENS}")
    print(f"\n{HYPHENS}Injecting CRC to P prime...{HYPHENS}")
    crc_p_prime = add_crc_to_ir(p_prime_file)
    print(f"{HYPHENS}Finished injecting CRC to P prime...{HYPHENS}")

    return crc_p, crc_p_prime


def exec_programs(p, p_prime, binary_execs):
    """
    Compile each .ll file with injected CRC code and run the executables for differential testing and to validate hashed CRCs.
    """

    print(f"\n{HYPHENS}Executing {p}, {p_prime}{HYPHENS}")
    p_cmds = get_exec_commands(p, binary_execs, is_crc=True)
    p_prime_cmds = get_exec_commands(p_prime, binary_execs, is_crc=True)
    p_out = run_cmds(p_cmds)
    p_prime_out = run_cmds(p_prime_cmds)
    print(f"{HYPHENS}Finished executing {p}, {p_prime}{HYPHENS}\n")

    return {"p": p_out, "p_prime": p_prime_out}


def rerun_cmds_for_undeterminism(p, p_prime, binary_execs):
    """
    Re-runs crc cmds for p and p_prime 3x.
    Returns true if the hashes are consistently different
    Returns false if the output is the exact same each time
    """
    # Re-execute P, P's executables
    p_outs, p_prime_outs = reexecute_cmds(p, p_prime, binary_execs, is_crc=True)

    # Analyze similarity of the output of executing each compiled program individually for p
    def executions_have_same_hashes(outs):
        for i in range(1, 3):
            last = outs[i - 1].stdout.strip().split("\n")
            curr = outs[i].stdout.strip().split("\n")
            last_hash_i, curr_hash_i = -1, -1
            for i, line in enumerate(last):
                if "...checksum after hashing" in line:
                    last_hash_i = i
                    break
            for i, line in enumerate(curr):
                if "...checksum after hashing" in line:
                    curr_hash_i = i
                    break
            if last_hash_i == -1 and curr_hash_i == -1:
                continue  # both are empty, skip
            elif last_hash_i == -1 or curr_hash_i == -1:
                return True  # one is empty, the other is not -> the hashes are different
            last_hash = last[last_hash_i:]
            curr_hash = curr[curr_hash_i:]
            if len(last_hash) != len(curr_hash):
                return True
            for i in range(len(last_hash)):
                if last_hash[i] != curr_hash[i]:
                    return True
        # Everything was consistent
        return False

    # True if p and p' have any difference in their own hashes, false if everything is the same
    # is_different value
    return executions_have_same_hashes(p_outs) or executions_have_same_hashes(p_prime_outs)


def process_outputs(cmd_outs, p, p_prime, summary, binary_execs, mark_diff_numhashes_undeterminable):
    def print_crc_hashes(hashes, name):
        print(f"\tHashes for: {name}")
        print("\n".join(f"\t\t{h}" for h in hashes))

    p_stdout = cmd_outs["p"][-1].stdout.strip().split("\n")
    p_prime_stdout = cmd_outs["p_prime"][-1].stdout.strip().split("\n")

    # Find first instance of checksum
    p_hash_i, p_prime_hash_i = -1, -1
    for i, line in enumerate(p_stdout):
        if "...checksum after hashing" in line:
            p_hash_i = i
            break
    for i, line in enumerate(p_prime_stdout):
        if "...checksum after hashing" in line:
            p_prime_hash_i = i
            break

    # Handle no hash found separately
    if p_hash_i == -1 and p_prime_hash_i == -1:
        print("\tMISCOMPILATION STATUS: CRC NO HASH FOUND.")
        summary["crc_no_hash_found"] = True
    # Different # of hashes implies varying output. Therefore, this could be a miscompilation
    elif p_hash_i == -1 or p_prime_hash_i == -1:
        print("\tMISCOMPILATION STATUS: CRC LOGIC FAILED. Different # of hashes")
        if mark_diff_numhashes_undeterminable:
            summary["crc_logic_undeterminable"] = True
        else:
            summary["crc_logic_failed"] = True
    # Else, both P, P' produced > 0 hashes
    else:
        # Separate normal output and the CRC output
        p_hash = p_stdout[p_hash_i:]
        p_prime_hash = p_prime_stdout[p_prime_hash_i:]

        print_crc_hashes(p_hash, "P")
        print_crc_hashes(p_prime_hash, "P'")

        if len(p_hash) != len(p_prime_hash):
            print("\tMISCOMPILATION STATUS: CRC LOGIC FAILED. Different # of hashes")
            if mark_diff_numhashes_undeterminable:
                summary["crc_logic_undeterminable"] = True
            else:
                summary["crc_logic_failed"] = True
        elif p_hash[-1].split(" ")[-1] != p_prime_hash[-1].split(" ")[-1]:
            is_different_output = rerun_cmds_for_undeterminism(p, p_prime, binary_execs)
            if is_different_output:
                print("\tMISCOMPILATION STATUS: CRC HASHES VARYING. Undeterminable")
                summary["crc_logic_undeterminable"] = True
            else:
                print("\tMISCOMPILATION STATUS: CRC LOGIC FAILED. Consistently different hashes")
                summary["crc_logic_failed"] = True
        else:
            print("\tMISCOMPILATION STATUS: CRC SUCCEEDED. Same hashes")
            summary["crc_succeeded"] = True


def run(p, p_prime, binary_execs, mark_diff_numhashes_undeterminable):
    print(p, p_prime)
    summary = {
        "timeout": False,
        "crc_compile_crash": False,
        "crc_execution_crash": False,
        "crc_undefined_execution": False,
        "crc_executed": False,
        "crc_no_hash_found": False,
        "crc_logic_failed": False,
        "crc_logic_undeterminable": False,
        "crc_succeeded": False,
    }
    # Run modified code with injected CRC
    crc_p, crc_p_prime = get_injected_crc_code(p, p_prime)

    # Injection will only fail if there is no main function, which will cause a crash later anyways
    if crc_p is False or crc_p_prime is False:
        print("\tMISCOMPILATION STATUS: COMPILE CRC EXCEPTION FOR P")
        summary["crc_compile_crash"] = True
    else:
        # Try running the code with injected CRC calculation.
        cmds_outs = exec_programs(crc_p, crc_p_prime, binary_execs)
        print(f"{HYPHENS}Evaluating CRC executions...{HYPHENS}")
        p_comp_error, summary = check_for_compilation_exception(cmds_outs["p"], summary, is_crc=True)
        p_prime_comp_error, summary = check_for_compilation_exception(cmds_outs["p_prime"], summary, is_crc=True)
        comp_error = p_comp_error or p_prime_comp_error

        if not comp_error:
            print("\tMISCOMPILATION STATUS: CRC EXECUTED")
            summary["crc_executed"] = True
            process_outputs(cmds_outs, crc_p, crc_p_prime, summary, binary_execs, mark_diff_numhashes_undeterminable)
        print(f"{HYPHENS}Finished evaluating CRC executions...{HYPHENS}")

    return summary
