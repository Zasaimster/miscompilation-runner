import os
import shlex
import subprocess


TIMEOUT = 30  # seconds
HYPHENS = "=" * 10
RUNTIME_DIR = "oracle_runtime"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
CRC_HELPER_OBJ_FILE = os.path.join(SCRIPT_DIR, "crc/csmith_crc_minimal.o")


def get_code(filename):
    ir_code = None
    with open(filename, "r") as f:
        ir_code = f.read()
    return ir_code


def get_exec_commands(file, binary_execs, is_crc=False):
    obj_cmd_flags = "-fsanitize=undefined"
    if is_crc:
        # link_cmd_flags = f"{CRC_HELPER_OBJ_FILE} examples/P4.o -fsanitize=undefined"
        link_cmd_flags = f"{CRC_HELPER_OBJ_FILE} -fsanitize=undefined"
    else:
        # link_cmd_flags = "examples/P4.o -fsanitize=undefined"
        link_cmd_flags = "-fsanitize=undefined"

    file_dir = os.path.dirname(file)
    base_name = os.path.basename(file)
    filename_without_ext, _ = os.path.splitext(base_name)
    if not file_dir:
        file_dir = "."

    out_path_base = os.path.join(RUNTIME_DIR, filename_without_ext)
    obj_file_path = f"{out_path_base}.o"
    executable_path = out_path_base
    abs_executable_path = os.path.abspath(executable_path)
    clang_path = binary_execs["clang"]

    obj_cmd_str = f"{clang_path} -c {shlex.quote(file)} {obj_cmd_flags} -o {shlex.quote(obj_file_path)}"
    link_cmd_str = f"{clang_path} {shlex.quote(obj_file_path)} {link_cmd_flags} -o {shlex.quote(executable_path)}"

    obj_cmd_list = shlex.split(obj_cmd_str)
    link_cmd_list = shlex.split(link_cmd_str)
    execute_cmd_list = [abs_executable_path]

    return [obj_cmd_list, link_cmd_list, execute_cmd_list]


def run_cmds(cmds):
    res = []
    for cmd in cmds:
        try:
            print(f"\tRunning: {' '.join(cmd)}")
            out = subprocess.run(cmd, capture_output=True, text=True, timeout=TIMEOUT)
            print(f"\tstdout: {out.stdout}")
            print(f"\tstderr: {out.stderr}")
            print(f"\tReturn code: {out.returncode}")
            res.append(out)
            if out.returncode != 0:
                print(f"\tstdout: {out.stdout}")
                print(f"\tstderr: {out.stderr}")
                break
        except subprocess.TimeoutExpired:
            print(f"Command {cmd} timed out after {TIMEOUT} seconds.")
            res.append(subprocess.CompletedProcess(cmd, returncode=-1, stdout="", stderr="Timeout"))
        except Exception as e:
            print(f"\tError running command: {' '.join(cmd)}")
            print("\tError: ", e)
            res.append((cmd, e))  # associate calling command with exception
    return res


def check_for_compilation_exception(outs, summary, is_crc=False):
    num_cmds = 3
    # -6 is the normal abort signal. We don't consider this an error since we expect to see aborts during execution occasionally
    safe_termination_codes = [-6]
    if is_crc:
        compile_exception_str = "MISCOMPILATION STATUS: COMPILE CRC EXCEPTION"
        execution_exception_str = "MISCOMPILATION STATUS: EXECUTE CRC EXCEPTION"
        sanitizer_str = "MISCOMPILATION STATUS: CRC SANITIZER EXCEPTION"
    else:
        compile_exception_str = "MISCOMPILATION STATUS: COMPILE EXCEPTION"
        execution_exception_str = "MISCOMPILATION STATUS: EXECUTE EXCEPTION"
        sanitizer_str = "MISCOMPILATION STATUS: SANITIZER EXCEPTION"

    cmds_error = False
    saniter_exception = False
    err_index = -1
    for i, out in enumerate(outs):
        if isinstance(out, subprocess.CompletedProcess) and out.stderr == "Timeout":
            # Keep err_index = -1 to distinguish timeout from compile/execution exceptions
            cmds_error = True
            print("\tMISCOMPILATION STATUS: TIMEOUT")
            summary["timeout"] = True
            continue  # skip rest to avoid considering timeout as an execption

        # One of the following conditions is true:
        # 1. subprocess.run() raised an exception
        # 2. stderr is non-empty
        # 3. returncode < 0 which indicates a linux raised exception
        if (
            isinstance(out, tuple)
            or (out.stderr != "" and not out.stderr.startswith("warning"))
            or (out.returncode < 0 and out.returncode not in safe_termination_codes)
        ):
            cmds_error = True
            err_index = i
            if isinstance(out, tuple):
                print(f"\tError running command: {out[0]}")
                print(f"\tError: {out[1]}")
            # Print out different string based on whether it was a compile or execute exception
            if err_index == num_cmds - 1:
                if "ERROR: UndefinedBehaviorSanitizer" in out.stderr:
                    saniter_exception = True
                    print(f"\t{sanitizer_str}")
                else:
                    print(f"\t{execution_exception_str}")
            else:
                print(f"\t{compile_exception_str}")

    if err_index != -1:
        run_type = "crc" if is_crc else "regular"
        if saniter_exception:
            summary_idx = f"{run_type}_undefined_execution"
        else:
            summary_idx = f"{run_type}_execution_crash" if err_index == num_cmds - 1 else f"{run_type}_compile_crash"

        summary[summary_idx] = True

    return cmds_error, summary


def reexecute_cmds(p, p_prime, binary_execs, is_crc=False):
    print(f"\n{HYPHENS}Re-Executing {p}, {p_prime} 3 times each{HYPHENS}")
    p_exec = get_exec_commands(p, binary_execs)[-1]
    p_prime_exec = get_exec_commands(p_prime, binary_execs)[-1]
    p_outs = []
    p_prime_outs = []
    for _ in range(3):
        try:
            p_outs.append(subprocess.run(p_exec, capture_output=True, text=True, timeout=TIMEOUT))
        except subprocess.TimeoutExpired:
            print(f"Command {p_exec} timed out after {TIMEOUT} seconds.")
            p_outs.append(subprocess.CompletedProcess(p_exec, returncode=-1, stdout="", stderr="Timeout"))
        try:
            p_prime_outs.append(subprocess.run(p_prime_exec, capture_output=True, text=True, timeout=TIMEOUT))
        except subprocess.TimeoutExpired:
            print(f"Command {p_prime_exec} timed out after {TIMEOUT} seconds.")
            p_prime_outs.append(subprocess.CompletedProcess(p_prime_exec, returncode=-1, stdout="", stderr="Timeout"))

        print(f"p return code: {p_outs[-1].returncode} | p_prime return code: {p_prime_outs[-1].returncode}")
        print(f"p stdout: {p_outs[-1].stdout} | p_prime stdout: {p_prime_outs[-1].stdout}")
        print(f"p stderr: {p_outs[-1].stderr} | p_prime stderr: {p_prime_outs[-1].stderr}")
    print(f"{HYPHENS}Finished re-executing {p}, {p_prime}{HYPHENS}\n")

    return p_outs, p_prime_outs
