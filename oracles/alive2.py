import subprocess

from common import TIMEOUT, HYPHENS

summary = {
    "alive2_error": False,
    "alive2_incorrect": False,
    "alive2_no_prove": False,
    "alive2_correct": False,
}


def alive2_tv_check(p, p_prime, binary_execs):
    """
    This runs the Alive2 https://github.com/AliveToolkit/alive2 Standalone
    Translation Validation tool on P and the optimized P prime.
    """
    cmd = f"{binary_execs['alive']} --smt-stats {p} {p_prime}"
    # --version to get llvm version
    print(f"Running: {cmd}")
    try:
        res = subprocess.run(cmd.split(" "), capture_output=True, text=True, timeout=TIMEOUT)
        if res.returncode != 0:
            print(f"Unexpected output. Return code = {res.returncode}")
            print(f"stdout: {res.stdout}")
            print(f"stderr: {res.stderr}")
            return None
    except Exception as e:
        print(f"Error running Alive2: {e}")
        return None

    atv_summary = [out.strip() for out in res.stdout.split("Summary:\n ")[1].split("\n")]
    atv_summary = atv_summary[:-1]
    # 0: correct, 1: incorrect, 2: failed-to-prove, 3: Alive2 errors
    res = {
        "correct_transformations": int(atv_summary[0][0]),
        "incorrect_transformations": int(atv_summary[1][0]),
        "no_prove_transformations": int(atv_summary[2][0]),
        "errors": int(atv_summary[3][0]),
    }
    return res


def run(p, p_prime, binary_execs):
    # Run Alive2 soundness check
    print(f"\n{HYPHENS}Running Alive2 Translation Validation{HYPHENS}")
    alive2_res = alive2_tv_check(p, p_prime, binary_execs)
    if alive2_res is None:
        print("\tALIVE2 EXECUTION ERROR")
        summary["alive2_error"] = True
    else:
        print(f"\tAlive2 output: {alive2_res}")
        if alive2_res["errors"] != 0:
            print("\tALIVE2 EXECUTION ERROR")
            summary["alive2_error"] = True
        if alive2_res["incorrect_transformations"] != 0:
            print("\tALIVE2 INCORRECT TRANSFORMATION")
            summary["alive2_incorrect"] = True
        if alive2_res["no_prove_transformations"] != 0:
            print("\tALIVE2 UNDETERMINISTIC TRANSFORMATION")
            summary["alive2_no_prove"] = True
        if alive2_res["correct_transformations"] != 0:
            print("\tALIVE2 CORRECT TRANSFORMATION")
            summary["alive2_correct"] = True
        if (
            alive2_res["correct_transformations"] == 0
            and alive2_res["incorrect_transformations"] == 0
            and alive2_res["errors"] == 0
            and alive2_res["no_prove_transformations"] == 0
        ):
            print("\tALIVE2 NO TRANSFORMATION")
            summary["alive2_correct"] = True
    print(f"{HYPHENS}Finished Running Alive2{HYPHENS}\n")

    return summary
