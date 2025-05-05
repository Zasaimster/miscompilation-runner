import subprocess
from common import HYPHENS, TIMEOUT, check_for_compilation_exception, get_exec_commands, reexecute_cmds, run_cmds


def exec_programs(p, p_prime, binary_execs):
    """
    Compile each .ll file and run the executable multiple times for differential testing.
    The results are returned as
    """
    print(f"\n{HYPHENS}Executing {p}, {p_prime}{HYPHENS}")
    p_cmds = get_exec_commands(p, binary_execs)
    p_prime_cmds = get_exec_commands(p_prime, binary_execs)

    p_out = run_cmds(p_cmds)
    p_prime_out = run_cmds(p_prime_cmds)
    print(f"{HYPHENS}Finished executing {p}, {p_prime}{HYPHENS}\n")
    return {"p": p_out, "p_prime": p_prime_out}


def rerun_cmds_for_undeterminism(p, p_prime, binary_execs):
    """
    Re-runs original cmds for p and p_prime 3x.
    Returns true if the output is consistently different (undeterminable).
    Returns false if the individual outputs of p/p' are always the same.
    """
    # Re-execute P, P's executables
    p_outs, p_prime_outs = reexecute_cmds(p, p_prime, binary_execs)

    # Analyze similarity of the output of executing each compiled program individually for p
    def executions_have_different_outputs(outs):
        for i in range(1, 3):
            last_exec_output = outs[i - 1]
            curr_output = outs[i]
            if (
                last_exec_output.returncode != curr_output.returncode
                or last_exec_output.stdout != curr_output.stdout
                or last_exec_output.stderr != curr_output.stderr
            ):
                print(
                    last_exec_output.returncode,
                    curr_output.returncode,
                    last_exec_output.returncode != curr_output.returncode,
                )
                print(last_exec_output.stdout, curr_output.stdout, last_exec_output.stdout != curr_output.stdout)
                print(last_exec_output.stderr, curr_output.stderr, last_exec_output.stderr != curr_output.stderr)
                return True

        # Everything was consistent
        return False

    # True if p and p' have any differences in executions, False if everything is the same
    # is_different value
    return executions_have_different_outputs(p_outs) or executions_have_different_outputs(p_prime_outs)


def process_outputs(reg_cmds_outs, p, p_prime, summary, binary_execs):
    p_last_out = reg_cmds_outs["p"][-1]
    p_prime_last_out = reg_cmds_outs["p_prime"][-1]

    print("\tMISCOMPILATION STATUS: REGULAR EXECUTED")
    summary["regular_executed"] = True
    print(f"\tp return code: {p_last_out.returncode} | p_prime return code: {p_prime_last_out.returncode}")
    print(f"\tp stdout: {p_last_out.stdout} | p_prime stdout: {p_prime_last_out.stdout}")
    print(f"\tp stderr: {p_last_out.stderr} | p_prime stderr: {p_prime_last_out.stderr}")

    if (
        p_last_out.returncode == p_prime_last_out.returncode
        and p_last_out.stdout == p_prime_last_out.stdout
        and p_last_out.stderr == p_prime_last_out.stderr
    ):
        print("\tMISCOMPILATION STATUS: REGULAR OUTPUT MATCH.")
        summary["regular_same_output"] = True
    else:
        is_different_output = rerun_cmds_for_undeterminism(p, p_prime, binary_execs)
        if is_different_output:
            print("\tMISCOMPILATION STATUS: REGULAR OUTPUT VARYING (UNDETERMINABLE)")
            summary["regular_undeterminable_output"] = True
        else:
            print("\tMISCOMPILATION STATUS: REGULAR OUTPUT DIFFERENT.")
            summary["regular_different_output"] = True


def run(p, p_prime, binary_execs):
    summary = {
        "timeout": False,
        "regular_compile_crash": False,
        "regular_execution_crash": False,
        "regular_undefined_execution": False,
        "regular_executed": False,
        "regular_different_output": False,
        "regular_undeterminable_output": False,
        "regular_same_output": False,
    }
    # Run original files
    cmds_outs = exec_programs(p, p_prime, binary_execs)

    print(f"{HYPHENS}Evaluating P and P' execution...{HYPHENS}")
    p_comp_error, summary = check_for_compilation_exception(cmds_outs["p"], summary, is_crc=False)
    p_prime_comp_error, summary = check_for_compilation_exception(cmds_outs["p_prime"], summary, is_crc=False)
    compilation_error = p_comp_error or p_prime_comp_error

    # Handle no crash
    if not compilation_error:
        process_outputs(cmds_outs, p, p_prime, summary, binary_execs)

    print(f"{HYPHENS}Finished evaluating P and P' execution...{HYPHENS}")

    return summary
