import argparse
import csv
import os
import shutil
import sys

# import regex as re
import re
import subprocess
from string import Template

# import llvmlite

# # this cannot be set any later in the code or it won't work
# llvmlite.opaque_pointers_enabled = True
# import llvmlite.binding as llvm

CRC_HELPER_OBJ_FILE = "crc/csmith_crc_minimal.o"
CSV_FILENAME = "results/results.csv"
PASS_DIR = "llvm_c"
LIB_NAME = "libGlobalSizePass.so"
hyphens = "-" * 15

global_varname_code = """
; Counter for replaced abort calls
@_crc_abort_count = global i32 0, align 4
; Name to hash out when adding hash for exit()
@_crc_exit_name = private unnamed_addr constant [10 x i8] c"exit call\\00", align 1
; Name to hash out when adding hash for abort()
@_crc_abort_name = private unnamed_addr constant [11 x i8] c"abort call\\00", align 1
; Name to hash out when adding hash for main return
@_crc_main_ret_name = private unnamed_addr constant [12 x i8] c"main return\\00", align 1
; Create name global variables for each variable
"""
crc_functions_template = Template(
    """
; Function to replace standard @exit() calls.
; It increments the exit counter, calls the CRC function with the counter's info,
; and then returns void.
define void @_crc_exit_call(i32 %exitcode) {
entry:
    ; Allocate space on the stack to store the exit code temporarily
    %exitcode_addr = alloca i32, align 4
    ; Store the passed exit code value into the allocated stack space
    store i32 %exitcode, i32* %exitcode_addr, align 4

    ; Get pointer to the "exit call" name string
    %name_marker_ptr = getelementptr inbounds [10 x i8], [10 x i8]* @_crc_exit_name, i32 0, i32 0

    ; Cast the address of the stored exit code (i32*) to i8* for the CRC function
    %exitcode_ptr_i8 = bitcast i32* %exitcode_addr to i8*

    ; Call CRC function: pass exit code address as data, size of i32 (4), exit name string, and true flag
    call void @transparent_crc_bytes(i8* %exitcode_ptr_i8, i32 4, i8* %name_marker_ptr, i1 true)
    ret void
}

; Function to replace standard @abort() calls.
; It increments the abort counter, calls the CRC function with the counter's info,
; and then returns void.
define void @_crc_abort_call() {
entry:
    ; Atomically increment the abort counter. Returns the *old* value, which we ignore.
    %old_count = atomicrmw add i32* @_crc_abort_count, i32 1 monotonic, align 4

    ; Get pointer to the "abort call" name string
    %name_marker_ptr = getelementptr inbounds [11 x i8], [11 x i8]* @_crc_abort_name, i32 0, i32 0

    ; Get pointer to the counter variable and cast it to i8* for the CRC function
    %counter_ptr_i8 = bitcast i32* @_crc_abort_count to i8*

    ; Call CRC function: pass counter address as data, size of i32 (4), abort name string, and true flag
    call void @transparent_crc_bytes(i8* %counter_ptr_i8, i32 4, i8* %name_marker_ptr, i1 true)
    ret void
}

; Function to compute CRC for all globals in the table
define void @_compute_globals_crc() {
entry:
    ; Get pointer to the first element of the globals_table (1 element)
    %table_ptr = getelementptr inbounds [$num_table_entries x %global_info], [$num_table_entries x %global_info]* @globals_table, i32 0, i32 0
    ; Allocate loop counter
    %i = alloca i32, align 4
    store i32 0, i32* %i
    br label %loop

loop:
    %i_val = load i32, i32* %i, align 4
    ; Compare i with the number of elements (1)
    %cmp = icmp slt i32 %i_val, $num_table_entries
    br i1 %cmp, label %body, label %exit

body:
    ; Get pointer to globals_table[i]
    %entry_ptr = getelementptr inbounds %global_info, %global_info* %table_ptr, i32 %i_val
    
    ; Load the entry
    %gi = load %global_info, %global_info* %entry_ptr, align 4
    
    ; Extract the ptr, size, and name
    %global_ptr = extractvalue %global_info %gi, 0
    %global_size = extractvalue %global_info %gi, 1
    %global_name = extractvalue %global_info %gi, 2
    
    ; Call the CRC function
    call void @transparent_crc_bytes(i8* %global_ptr, i32 %global_size, i8* %global_name, i1 true)

    ; Increment the loop counter
    %i_next = add i32 %i_val, 1
    store i32 %i_next, i32* %i
    br label %loop

exit:
    ret void
}\n
"""
)
new_main_function_code = """
\ndefine i32 @main() {
entry:
    ; Allocate space on the stack to store the return value from the old main
    %retval_storage = alloca i32, align 4

    ; Call the original main logic (now renamed @_crc_main_old)
    ; Adjust the call signature if @crc_main_old takes arguments.
    %orig_ret = call i32 @_crc_main_old()

    ; Store the return value from the original main into the allocated stack space
    store i32 %orig_ret, i32* %retval_storage, align 4

    ; --- Hash the return value ---
    ; Get pointer to the name marker for the return value
    %ret_name_marker_ptr = getelementptr inbounds [18 x i8], [18 x i8]* @_crc_main_ret_name, i32 0, i32 0
    ; Cast the address of the stored return value (i32*) to i8*
    %retval_ptr_i8 = bitcast i32* %retval_storage to i8*
    ; Call CRC function: pass return value address, size of i32 (4), name marker, and true flag
    call void @transparent_crc_bytes(i8* %retval_ptr_i8, i32 4, i8* %ret_name_marker_ptr, i1 true)

    ; --- Hash the global variables ---
    call void @_compute_globals_crc()

    ret i32 0
}\n
"""


def parse_args():
    parser = argparse.ArgumentParser(description="Parse two filenames from command line.")
    parser.add_argument("p", help="Path to the first file")
    parser.add_argument("p_prime", help="Path to the second file")
    return parser.parse_args()


# TODO: make the architecture configurable (if needed. also in next function)
def get_commands_for_normal_exec(file):
    filename = file.split("/")[-1][:-3]
    path = "/".join(file.split("/")[:-1])
    out_path = f"{path}/runtime/{filename}"

    # Commands
    # llc = f"llc {file} -o {out_path}.s"
    # obj_file = f"clang -c {file} -fsanitize=memory -o {out_path}.o"
    obj_file = f"clang -c {file} -o {out_path}.o"
    # exec = f"clang {out_path}.o -o {out_path} -no-pie"
    # exec = f"clang {out_path}.o -fsanitize=memory -o {out_path}"
    exec = f"clang {out_path}.o -o {out_path}"
    execute_cmd = [f"./{out_path}"]
    if out_path.startswith("./"):
        execute_cmd = [f"{out_path}"]
    else:
        execute_cmd = [f"./{out_path}"]

    # return [llc.split(), obj_file.split(), exec.split(), execute_cmd]
    return [obj_file.split(), exec.split(), execute_cmd]


def get_commands_for_crc_exec(file):
    filename = file.split("/")[-1][:-3]
    path = "/".join(file.split("/")[:-1])
    out_path = f"{path}/runtime/{filename}"

    # Commands
    # llc = f"llc {file} -o {out_path}.s"
    # obj_file = f"clang -c {out_path}.s -o {out_path}.o"
    # obj_file = f"clang -c {file} -fsanitize=memory -o {out_path}.o"
    obj_file = f"clang -c {file} -o {out_path}.o"
    # exec = f"clang {out_path}.o {CRC_HELPER_OBJ_FILE} -o {out_path} -no-pie"
    # exec = f"clang {out_path}.o {CRC_HELPER_OBJ_FILE} -fsanitize=memory -o {out_path}"
    exec = f"clang {out_path}.o {CRC_HELPER_OBJ_FILE} -o {out_path}"
    if out_path.startswith("./"):
        execute_cmd = [f"{out_path}"]
    else:
        execute_cmd = [f"./{out_path}"]

    # return [llc.split(), obj_file.split(), exec.split(), execute_cmd]
    return [obj_file.split(), exec.split(), execute_cmd]


def run_cmds(cmds):
    res = []
    for cmd in cmds:
        try:
            print(f"\tRunning: {' '.join(cmd)}")
            out = subprocess.run(cmd, capture_output=True, text=True)
            print(f"\tReturn code: {out.returncode}")
            res.append(out)
            if out.returncode != 0:
                print(f"\tstdout: {out.stdout}")
                print(f"\tstderr: {out.stderr}")
                break
        except Exception as e:
            print(f"\tError running command: {' '.join(cmd)}")
            print("\tError: ", e)
            res.append((cmd, e))  # associate calling command with exception
    return res


def execute_original_programs(p, p_prime):
    """
    Compile each .ll file and run the executable multiple times for differential testing.
    The results are returned as
    """
    print(f"\n{hyphens}Executing {p}, {p_prime}{hyphens}")
    p_cmds = get_commands_for_normal_exec(p)
    p_prime_cmds = get_commands_for_normal_exec(p_prime)

    p_out = run_cmds(p_cmds)
    p_prime_out = run_cmds(p_prime_cmds)
    print(f"{hyphens}Finished executing {p}, {p_prime}{hyphens}\n")
    return {"p": p_out, "p_prime": p_prime_out}


def execute_crc_programs(p, p_prime):
    """
    Compile each .ll file with injected CRC code and run the executables for differential testing and to validate hashed CRCs.
    """

    print(f"\n{hyphens}Executing {p}, {p_prime}{hyphens}")
    p_cmds = get_commands_for_crc_exec(p)
    p_prime_cmds = get_commands_for_crc_exec(p_prime)
    p_out = run_cmds(p_cmds)
    p_prime_out = run_cmds(p_prime_cmds)
    print(f"{hyphens}Finished executing {p}, {p_prime}{hyphens}\n")

    return {"p": p_out, "p_prime": p_prime_out}


def rerun_og_cmds_for_undeterminism(p, p_prime):
    """
    Re-runs original cmds for p and p_prime 3x.
    Returns true if the output is consistently different (undeterminable if there is a miscompilation).
    Returns false if the output is the exact same each time.
    """
    print(f"\n{hyphens}Re-Executing {p}, {p_prime} 3 times each{hyphens}")
    p_exec = get_commands_for_normal_exec(p)[-1]
    p_prime_exec = get_commands_for_normal_exec(p_prime)[-1]
    p_outs = []
    p_prime_outs = []
    for _ in range(3):
        p_outs.append(subprocess.run(p_exec, capture_output=True, text=True))
        p_prime_outs.append(subprocess.run(p_prime_exec, capture_output=True, text=True))

        print(f"p return code: {p_outs[-1].returncode} | p_prime return code: {p_prime_outs[-1].returncode}")
        print(f"p stdout: {p_outs[-1].stdout} | p_prime stdout: {p_prime_outs[-1].stdout}")
        print(f"p stderr: {p_outs[-1].stderr} | p_prime stderr: {p_prime_outs[-1].stderr}")
    print(f"{hyphens}Finished re-executing {p}, {p_prime}{hyphens}\n")

    # Analyze similarity of the output of executing each compiled program individually for p
    def executions_have_same_outputs(outs):
        for i in range(1, 3):
            last_exec_output = outs[i - 1]
            curr_output = outs[i]
            if (
                last_exec_output.returncode != curr_output.returncode
                or last_exec_output.stdout != curr_output.stdout
                or last_exec_output.stderr != curr_output.stderr
            ):
                return True
        return False

    # False if p and p' have any differences in executions, True if everything is the same
    return executions_have_same_outputs(p_outs) and executions_have_same_outputs(p_prime_outs)


def get_code(filename):
    ir_code = None
    with open(filename, "r") as f:
        ir_code = f.read()
    return ir_code


def get_parsed_code(filename):
    ir_code = get_code(filename)
    code_lines = ir_code.strip().split("\n")
    parsed_code = []
    for line in code_lines:
        # Remove comment
        if ";" in line:
            line = line.split(";")[0]
        # Remove metadata definitions and attachments
        if "!" in line:
            line = line.split("!")[0]
        if line.strip() != "":
            parsed_code.append(line.strip())

    return "\n".join(parsed_code)


def naive_check_randomness(p, p_prime):
    p_code = get_parsed_code(p)
    p_prime_code = get_parsed_code(p_prime)

    p_random, p_prime_randomn = False, False
    if "@srand" in p_code and "@time" in p_code:  # @rand is pseudo-random
        p_random = True

    if "@srand" in p_prime_code and "@time" in p_prime_code:
        p_prime_randomn = True

    return True if p_random or p_prime_randomn else False


# def init_llvmlite():
#     llvm.initialize()
#     llvm.initialize_native_target()
#     llvm.initialize_native_asmprinter()

#     target = llvm.Target.from_default_triple()
#     # target = llvm.Target.from_triple("arm64-apple-darwin")
#     target_machine = target.create_target_machine()
#     backing_mod = llvm.parse_assembly("")
#     engine = llvm.create_mcjit_compiler(backing_mod, target_machine)
#     return engine


# def compile_ir(engine, filename):
#     ir = get_code(filename)
#     mod: llvm.ModuleRef = llvm.parse_assembly(ir)  # not ir.Module
#     mod.verify()  # make sure code is good. This is LLVM's verifier https://github.com/llvm/llvm-project/blob/main/llvm/lib/IR/Verifier.cpp

#     engine.add_module(mod)
#     engine.finalize_object()
#     engine.run_static_constructors()
#     return mod


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
            ["cmake", ".."],
            cwd=build_dir,
            capture_output=True,
            text=True,
            check=True,
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
            # check=True,
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

    process = subprocess.run(opt_command, capture_output=True, text=True, check=True)

    stdout = process.stdout
    print("\tPass output captured:\n", stdout)  # Debug print

    global_sizes = {}
    lines = stdout.splitlines()
    found_relevant_section = False
    for line in lines:
        # Look for the start of the pass output
        if "Global Variable Sizes in Module" in line:
            found_relevant_section = True
            continue
        # Look for end
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

    return global_sizes


def get_globals_info(file):
    # Build executable
    build_globals_pass()
    # Run globals pass
    global_var_info = run_globals_pass(file)

    varname_template = Template(
        '@_crc_varname_$name = private unnamed_addr constant [$size x i8] c"$name\\00", align 1'
    )
    global_info_entry_template = Template(
        "%global_info { i8* bitcast ($type @$name to i8*), i32 $num_bytes, i8* getelementptr inbounds ([$name_len x i8], [$name_len x i8]* @_crc_varname_$name, i32 0, i32 0 ) }"
    )

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


# def get_old_globals_info(global_vars, code_arr):
#     # For array types [N x type]
#     # TODO: this doesn't support matrices b/c recursion is needed.
#     array_pattern = r"(?:global|private\s+unnamed_addr\s+constant)\s+(\[\d+\s+x\s+i\d+\])"
#     # For vector types <N x type>
#     vector_pattern = r"(?:global|private\s+unnamed_addr\s+constant)\s+((<\d+\s+x\s+[^>]+?>))"
#     # For structure types (both named and literal)
#     # TODO: this doesn't handle nested structs. Seems like a lot of effort to figure out, and it may not be worth the benefit
#     struct_pattern = r"(?:global|private unnamed_addr constant)\s+((?:%[\w.]+|{[^}]*}|<{[^}]*}>))(?:\s+[^,]+)?"
#     # For pointer types specifically
#     pointer_pattern = r"(?:global|private\s+unnamed_addr\s+constant)\s+([\w.]+\*+)(?:\s+[^,]+)?"
#     # For basic types (integers, floats)
#     basic_pattern = r"(?:global|private\s+unnamed_addr\s+constant)\s+([\w.]+)(?:\s+[^,]+)?"

#     varname_template = Template(
#         '@_crc_varname_$name = private unnamed_addr constant [$size x i8] c"$name\\00", align 1'
#     )
#     global_info_entry_template = Template(
#         "%global_info { i8* bitcast ($type @$name to i8*), i32 $num_bytes, i8* getelementptr inbounds ([$name_len x i8], [$name_len x i8]* @_crc_varname_$name, i32 0, i32 0 ) }"
#     )

#     global_var_info = {}
#     # Extract global types
#     for g in global_vars:
#         var_str = str(g)
#         parts = var_str.split("=", 1)
#         # var_name = g.name
#         var_name = parts[0].strip()[1:]
#         var_value = parts[1].strip()

#         # Extract variable types
#         is_ptr = False
#         for pattern in [
#             ("arr", array_pattern),
#             ("vector", vector_pattern),
#             ("struct", struct_pattern),
#             ("ptr", pointer_pattern),
#             ("basic", basic_pattern),
#         ]:
#             pattern_type, regex = pattern
#             # For some reason, llvmlite converts all pointer types to an abstracted class. It will only print out "ptr", and I'm not sure how to get that information.
#             # The workaround is to manually look for the global variable and re-run the pattern on it
#             if pattern_type == "ptr":
#                 for line in code_arr:
#                     if line.startswith(f"@{var_name} = "):
#                         var_value = line.split("=")[1].strip()
#                         break

#             match = re.search(regex, var_value, flags=re.VERBOSE)
#             if match:
#                 print(f"\t{match.group(1).strip()} -> {var_value}")
#                 var_type = match.group(1).strip()
#                 if "var_type" == "ptr":
#                     is_ptr = True
#                     break
#                 global_var_info[var_name] = {"var_type": var_type}
#                 break
#         # Skip adding pointers, this will disrupt the hash since the memory address will be different across calls
#         if is_ptr:
#             break
#         if var_name in global_var_info:
#             var_type = global_var_info[var_name]["var_type"]
#             var_name_length = len(var_name) + 1
#             # Create global variables that store a string representation of each variable
#             global_var_info[var_name]["varname_code"] = varname_template.substitute(name=var_name, size=var_name_length)

#             # Create entry in globals_table
#             # @_crc_varname_$name
#             global_var_info[var_name]["global_info_entry"] = global_info_entry_template.substitute(
#                 type=f"{var_type}*" if var_type != "ptr" else f"{var_type}",
#                 name=var_name,
#                 num_bytes=get_type_size(var_type),
#                 name_len=var_name_length,
#             )

#     return global_var_info


def find_main_end_index(crc_code):
    # Find main function index after all changes have been made since line numbers will change as new lines are added
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


def get_default_return_value(return_type):
    """Gets a default value string for a given LLVM IR type."""
    return_type = return_type.strip()
    if return_type == "void":
        return "void"
    elif return_type.startswith("i"):  # Integer types
        return f"{return_type} 0"
    elif return_type in ["float", "double", "fp128", "half", "bfloat"]:  # Floating point
        return f"{return_type} 0.0"
    elif return_type.endswith("*"):  # Pointer types
        return f"{return_type} null"
    # Add more complex types if needed, otherwise default to undef
    # For aggregate types ({...}, [...], <...>), 'undef' is often the safest default
    # without knowing the specific structure.
    else:
        # Returning undef for unknown or aggregate types
        return f"{return_type} undef"


def replace_main_function(crc_code):
    # Find index where main function ends
    main_func_end = find_main_end_index(crc_code)

    # Rename main function to @_crc_main_old()
    for i, line in enumerate(crc_code):
        # Use regex to find 'define' followed by optional attributes, return type,
        # and exactly '@main(' to avoid replacing it in comments or other contexts.
        # This regex looks for:
        # ^           - Start of the line
        # \s* - Optional leading whitespace
        # define      - The keyword 'define'
        # .*?         - Any characters (non-greedily) - covers attributes and return type
        # \s+         - One or more whitespace characters
        # @main       - The literal '@main'
        # \s* - Optional whitespace
        # \(          - The literal opening parenthesis '('
        match = re.search(r"^\s*define\s+.*?@main\s*\(", line)
        if match:
            # Replace only the first occurrence of '@main(' on the matched line
            crc_code[i] = line.replace("@main(", "@_crc_main_old(", 1)
            break

    # Insert new main() method
    crc_code = crc_code[: main_func_end + 1] + new_main_function_code.splitlines() + crc_code[main_func_end + 1 :]
    return crc_code


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
    i = 0
    while i < len(crc_code):
        # Check if we need to skip this line because it was 'unreachable'
        if skip_next_line:
            skip_next_line = False
            i += 1
            continue

        line = crc_code[i]
        processed = False

        # --- Track current function definition and return type ---
        # Regex breakdown:
        # ^\s*define\s+ - Start with 'define'
        # ([\w\s%."{}[\]<>*]+?) - Capture group 1: Attributes and the return type (non-greedy)
        # \s+@          - Whitespace before function name '@'
        define_match = re.search(r"^\s*define\s+([\w\s%.\"{}[\]<>*]+?)\s+@", line)
        if define_match:
            # Extract the part containing attributes and return type
            type_and_attrs = define_match.group(1).strip()
            # Split by space and take the last part as the likely return type
            # This is a simplification and might fail on complex attributes/types
            parts = type_and_attrs.split()
            if parts:
                current_function_return_type = parts[-1]
                print(f"\tDetected function definition, return type: {current_function_return_type}")
            else:
                current_function_return_type = None
                print("\tWarning: Could not determine return type from define line:", line.strip())

        # --- Reset return type if we leave a function ---
        if line.strip() == "}":
            current_function_return_type = None
            # indentation = ""  # Reset indentation

        processed = False
        # Get indentation from the original line
        # indent_match = re.match(r"^(\s*)", original_line)
        # if indent_match:
        #     indentation = indent_match.group(1)

        # --- Check for exit call (including tail call) ---
        # Regex breakdown:
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
                # Fallback or skip adding 'ret'? For now, we'll skip 'ret' if type unknown.
            else:
                tail_prefix = exit_match.group(1) or ""  # Get 'tail ' if present, else empty string
                arguments = exit_match.group(2).strip()  # Get the arguments passed to exit
                # Construct the replacement line, preserving 'tail' if it was there
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
                    print(f"\tSkipping next line (unreachable): {crc_code[i + 1].strip()}")
                    skip_next_line = True  # Mark the next line to be skipped

                processed = True

        # --- Check for abort call (including tail call) ---
        # Regex breakdown: similar to exit
        # ^\s*(tail\s+)?call\s+void\s+@abort\s*\(\s*\)(\s*#\d+)?
        abort_match = re.search(r"^\s*(tail\s+)?call\s+void\s+@abort\s*\(\s*\)(\s*#\d+)?", line)
        if not processed and abort_match:
            if current_function_return_type is None:
                print(f"\tWarning: Found abort call but current function return type is unknown. Line: {line.strip()}")
                # Fallback or skip adding 'ret'? For now, we'll skip 'ret' if type unknown.
            else:
                tail_prefix = abort_match.group(1) or ""  # Get 'tail ' if present, else empty string
                # Construct the replacement line, preserving 'tail'
                replacement_line = f"\t{tail_prefix}call void @_crc_abort_call()"
                new_crc_code.append(replacement_line)
                print(f"\tReplaced: {line.strip()} -> {replacement_line.strip()}")  # Debug print

                # Add the return instruction
                ret_value = get_default_return_value(current_function_return_type)
                ret_line = f"\tret {ret_value}"
                new_crc_code.append(ret_line)
                print(f"\tAdded return: {ret_line.strip()}")  # Debug print

                # Check if the next line is 'unreachable'
                if i + 1 < len(crc_code) and re.search(r"^\s*unreachable\b", crc_code[i + 1]):
                    print(f"\tSkipping next line (unreachable): {crc_code[i + 1].strip()}")  # Debug print
                    skip_next_line = True  # Mark the next line to be skipped

                processed = True

        # If the line was not processed, add it as is
        if not processed:
            new_crc_code.append(line)

        i += 1

    if skip_next_line:
        # shouldn't happen
        print("\tWarning: File ended after an exit/abort call, expected 'unreachable' was not processed.")

    return new_crc_code


def add_crc_to_ir(p):
    # Define static code injections here
    crc_declaration = "\n; External function declaration for crc calculation\ndeclare void @transparent_crc_bytes(i8*, i32, i8*, i1)\n"
    global_info = "\n; Define type for entry into globals_table. This is { pointer to variable, var size, pointer to string with variable name }\n%global_info = type { i8*, i32, i8*}\n"

    code = get_code(p)
    code_arr = code.splitlines()

    # Cannot process function without @main. If there are no exit() or abort() statements, we can still get the CRC of the exit code
    if "@main(" not in code:
        print("No main function found. Exiting.")
        return False

    # mod = llvm.parse_assembly(code)
    # print(mod)

    # for g in mod.global_variables:
    #     global_vars.append(g)
    # print(f"Found global variables: {global_vars}")

    # Get all global variables, find last global variable index, find main function index
    global_vars = []
    last_global_var_index = -1
    for i, line in enumerate(code_arr):
        # Find global variables and mark latest index
        if re.match(r"^@([a-zA-Z_.][a-zA-Z0-9_.]*)\s*=", line):
            global_vars.append(line)
            last_global_var_index = i
    last_global_var_index = max(last_global_var_index, 4)  # Inject code after top-level info

    # this should never be the case, but just to be safe
    if last_global_var_index == len(code_arr) - 1:
        last_global_var_index -= 1

    # global_var_info = get_old_globals_info(global_vars, code_arr)
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
    new_file = p.split(".")[0] + "_modified_crc.ll"
    with open(new_file, "w") as f:
        f.write("\n".join(crc_code))

    return new_file


def write_to_csv(csv_output):
    """
    Output format:
    Path for P, Path
    """
    header = list(csv_output.keys())

    file_exists = False
    existing_header = None

    # Search for existing file and extract header for comparison
    try:
        with open(CSV_FILENAME, "r", newline="") as csvfile_check:
            csv_reader = csv.reader(csvfile_check, delimiter=",")
            try:
                existing_header = next(csv_reader)
            except StopIteration:
                existing_header = None
    except FileNotFoundError:
        file_exists = False

    try:
        with open(CSV_FILENAME, "a", newline="") as csvfile:
            csv_writer = csv.writer(csvfile, delimiter=",")

            if not file_exists or not existing_header:
                csv_writer.writerow(header)  # Write header only if file is new/empty

            csv_writer.writerow(list(csv_output.values()))

        print(f"Data writing to CSV file '{CSV_FILENAME}' successfully.")
    except Exception as e:
        print(f"Error writing to CSV file: {e}")


def alive2_tv_check(p, p_prime):
    """
    This runs the Alive2 https://github.com/AliveToolkit/alive2 Standalone
    Translation Validation tool on P and the optimized P prime.
    """
    cmd = f"alive-tv --smt-stats {p} {p_prime}"
    # --version to get llvm version
    print(f"Running: {cmd}")
    res = subprocess.run(cmd.split(" "), capture_output=True, text=True)
    if res.returncode != 0:
        print(f"Unexpected output. Return code = {res.returncode}")
        print(f"stdout: {res.stdout}")
        print(f"stderr: {res.stderr}")
        return None

    summary = [out.strip() for out in res.stdout.split("Summary:\n ")[1].split("\n")]
    summary = summary[:-1]
    # 0: correct, 1: incorrect, 2: failed-to-prove, 3: Alive2 errors
    res = {
        "correct_transformations": int(summary[0][0]),
        "incorrect_transformations": int(summary[1][0]),
        "no_prove_transformations": int(summary[2][0]),
        "errors": int(summary[3][0]),
    }
    return res


# exec_type = "normal" or "crc"
def check_for_compilation_exception(outs, is_crc=False):
    if is_crc:
        exception_str = "MISCOMPILATION STATUS: COMPILE CRC EXCEPTION FOR P"
    else:
        exception_str = "MISCOMPILATION STATUS: COMPILE EXCEPTION FOR P"
    cmds_error = False
    for out in outs:
        if isinstance(out, tuple) or out.returncode == 1:
            cmds_error = True
            if isinstance(out, tuple):
                print(f"\tError running command: {out[0]}")
                print(f"\tError: {out[1]}")

            print(f"\t{exception_str}")

    return cmds_error


def process_reg_cmd_outs(reg_cmds_outs, p, p_prime):
    p_last_out = reg_cmds_outs["p"][-1]
    p_prime_last_out = reg_cmds_outs["p_prime"][-1]

    print("\tMISCOMPILATION STATUS: REGULAR EXECUTED")
    print(f"\tp return code: {p_last_out.returncode} | p_prime return code: {p_prime_last_out.returncode}")
    print(f"\tp stdout: {p_last_out.stdout} | p_prime stdout: {p_prime_last_out.stdout}")
    print(f"\tp stderr: {p_last_out.stderr} | p_prime stderr: {p_prime_last_out.stderr}")

    if (
        p_last_out.returncode == p_prime_last_out.returncode
        and p_last_out.stdout == p_prime_last_out.stdout
        and p_last_out.stderr == p_prime_last_out.stderr
    ):
        print("\tMISCOMPILATION STATUS: REGULAR OUTPUT MATCH.")
    else:
        is_different_output = rerun_og_cmds_for_undeterminism(p, p_prime)
        if is_different_output:
            print("\tMISCOMPILATION STATUS: REGULAR OUTPUT VARYING (UNDETERMINABLE)")
        else:
            print("\tMISCOMPILATION STATUS: REGULAR OUTPUT DIFFERENT.")


def get_injected_crc_code(p_file, p_prime_file):
    print(f"\n{hyphens}Injecting CRC to P...{hyphens}")
    crc_p = add_crc_to_ir(p_file)
    print(f"{hyphens}Finished injecting CRC to P...{hyphens}")
    print(f"\n{hyphens}Injecting CRC to P prime...{hyphens}")
    crc_p_prime = add_crc_to_ir(p_prime_file)
    print(f"{hyphens}Finished injecting CRC to P prime...{hyphens}")

    return crc_p, crc_p_prime


def process_crc_outs(cmd_outs):
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
    # Different # of hashes implies varying output. Therefore, this is a miscompilation
    elif p_hash_i == -1 or p_prime_hash_i == -1:
        print("\tMISCOMPILATION STATUS: CRC LOGIC FAILED. Different # of hashes")
    # Else, both P, P' produced > 0 hashes
    else:
        # Separate normal output and the CRC output
        # p_out = p_stdout[:p_hash_i]
        p_hash = p_stdout[p_hash_i:]
        # p_prime_out = p_prime_stdout[:p_prime_hash_i]
        p_prime_hash = p_prime_stdout[p_prime_hash_i:]

        print_crc_hashes(p_hash, "P")
        print_crc_hashes(p_prime_hash, "P'")

        if len(p_hash) != len(p_prime_hash):
            print("\tMISCOMPILATION STATUS: CRC LOGIC FAILED. Different # of hashes")
        elif p_hash[-1].split(" ")[-1] != p_prime_hash[-1].split(" ")[-1]:
            print("\tMISCOMPILATION STATUS: CRC LOGIC FAILED. Different hashes")
        else:
            print("\tMISCOMPILATION STATUS: CRC SUCCEEDED. Same hashes")


def main():
    args = parse_args()
    p_file, p_prime_file = args.p, args.p_prime
    csv_output = {
        "P": p_file,
        "P_prime": p_prime_file,
        "returncode_match": None,
        "stdout_match": None,
        "stderr_match": None,
        "has_randomness": None,
        "alive2_correct": None,
        "alive2_incorrect": None,
        "alive2_no_prove": None,
        "alive2_error": None,
        "naive_is_miscompilation": None,
        "final_is_miscompilation": None,
    }

    p_path = "/".join(p_file.split("/")[:-1])
    p_prime_path = "/".join(p_prime_file.split("/")[:-1])
    for p in [p_path, p_prime_path]:
        if not os.path.exists(f"{p}/runtime"):
            try:
                os.makedirs(f"{p}/runtime")
                print(f"Directory {p}/runtime created successfully.")
            except OSError as e:
                print(f"Error creating directory {p}/runtime: {e}")

    # print("\n---------------Running Alive2 Translation Validation---------------")
    # # Run Alive2 soundness check
    # alive2_res = alive2_tv_check(p_file, p_prime_file)
    # if alive2_res is not None:
    #     print(f"Alive2 output: {alive2_res}")
    #     csv_output["alive2_correct"] = alive2_res["correct_transformations"]
    #     csv_output["alive2_incorrect"] = alive2_res["incorrect_transformations"]
    #     csv_output["alive2_no_prove"] = alive2_res["no_prove_transformations"]
    #     csv_output["alive2_error"] = alive2_res["errors"]
    # print("---------------Finished Running Alive2---------------\n")

    # Run original files
    reg_cmds_outs = execute_original_programs(p_file, p_prime_file)
    print(f"{hyphens}Evaluating P and P' execution...{hyphens}")
    reg_cmds_compilation_error = check_for_compilation_exception(reg_cmds_outs["p"]) or check_for_compilation_exception(
        reg_cmds_outs["p_prime"]
    )
    # Handle no crash
    if not reg_cmds_compilation_error:
        process_reg_cmd_outs(reg_cmds_outs, p_file, p_prime_file)
    print(f"{hyphens}Finished evaluating P and P' execution...{hyphens}")

    # Run modified code with injected CRC
    crc_p, crc_p_prime = get_injected_crc_code(p_file, p_prime_file)

    # Run the code with injected CRC calculation.
    crc_cmd_outs = None
    crc_cmds_error = False
    if crc_p is False or crc_p_prime is False:
        crc_cmds_error = True
        print("MISCOMPILATION STATUS: CRC FAILED. unable to inject crc")
    else:
        crc_cmd_outs = execute_crc_programs(crc_p, crc_p_prime)
        print(f"{hyphens}Evaluating CRC executions...{hyphens}")
        crc_cmds_error = check_for_compilation_exception(crc_cmd_outs["p"], True) or check_for_compilation_exception(
            crc_cmd_outs["p_prime"], True
        )

        if not crc_cmds_error:
            print("\tMISCOMPILATION STATUS: CRC EXECUTED")
            process_crc_outs(crc_cmd_outs)
        print(f"{hyphens}Finished evaluating CRC executions...{hyphens}")

    return
    # Evaluate results
    print(f"{hyphens}Evaluating program outputs and randomness{hyphens}")
    same_outputs = True
    for i in range(len(reg_cmds_outs["p"])):
        p_out = reg_cmds_outs["p"][i]
        p_prime_out = reg_cmds_outs["p_prime"][i]

        if p_out.returncode != p_prime_out.returncode:
            same_outputs = False
            print(
                f"Iteration #{i + 1}: Invalid return codes.\n\tP: {p_out.returncode}\n\tP_prime: {p_prime_out.returncode}"
            )
            csv_output["returncode_match"] = False
        else:
            csv_output["returncode_match"] = True

        if p_out.stdout != p_prime_out.stdout:
            same_outputs = False
            print(f"Iteration #{i + 1}: Invalid stdout.\n\tP: {p_out.stdout}\n\tP_prime: {p_prime_out.stdout}")
            csv_output["stdout_match"] = False
        else:
            csv_output["stdout_match"] = True
        if p_out.stderr != p_prime_out.stderr:
            same_outputs = False
            print(f"Iteration #{i + 1}: Invalid stderr.\n\tP: {p_out.stderr}\n\tP_prime: {p_prime_out.stderr}")
            csv_output["stderr_match"] = False
        else:
            csv_output["stderr_match"] = True
        csv_output["naive_is_miscompilation"] = not same_outputs

    # Look at code to see if there is randomness involved
    randomness_string = ""
    if naive_check_randomness(p_file, p_prime_file):
        randomness_string = "Program has randomness. Results can differ."
        randomness_string += " Tentatively NOT a miscompilation" if not same_outputs else ""

        csv_output["has_randomness"] = True
    else:
        randomness_string = "Program has no randomness."
        randomness_string += " This IS a miscompilation" if not same_outputs else ""

        csv_output["has_randomness"] = False
    print(randomness_string)
    print(f"{hyphens}Finished evaluating program outputs and randomness{hyphens}\n")

    csv_output["final_is_miscompilation"] = not csv_output["alive2_incorrect"] == 0
    write_to_csv(csv_output)


if __name__ == "__main__":
    print(f"Command: {' '.join(sys.argv)}")
    main()
