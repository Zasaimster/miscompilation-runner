import os
import subprocess
import re

"""
    Usage: python3 miscomp_tests_runner/runner.py
"""
timeout_duration = 30  # seconds
log_path = "miscomp_tests_runner/"

stats = {
    "total_programs": 0,
    "timed_out": 0,
    "regular_executed": 0,
    "regular_compile_crash": 0,
    "regular_same_output": 0,
    "regular_different_output": 0,
    "crc_executed": 0,
    "crc_crashed": 0,
    "crc_no_globals_found": 0,
    "crc_logic_failed": 0,
    "crc_succeeded": 0,
}
stats_log = f"{log_path}/stats.txt"

timed_out_log = f"{log_path}/timed_out.txt"
regular_executed_log = f"{log_path}/regular_executed.txt"
regular_compile_crash = f"{log_path}/regular_compile_crash.txt"
regular_same_output_log = f"{log_path}/regular_same_output.txt"
regular_different_output_log = f"{log_path}/regular_different_output.txt"

crc_executed_log = f"{log_path}/crc_executed.txt"
crc_crashed_log = f"{log_path}/crc_crashed.txt"
crc_no_globals_found = f"{log_path}/crc_no_globals_found.txt"
crc_logic_failed_log = f"{log_path}/crc_logic_failed.txt"
crc_succeeded_log = f"{log_path}/crc_succeeded.txt"

open(stats_log, "w").close()
open(timed_out_log, "w").close()
open(regular_executed_log, "w").close()
open(regular_compile_crash, "w").close()
open(crc_executed_log, "w").close()
open(crc_crashed_log, "w").close()
open(crc_no_globals_found, "w").close()
open(crc_logic_failed_log, "w").close()
open(crc_succeeded_log, "w").close()


def add_id_to_log(log_file, id):
    with open(log_file, "a") as log:
        log.write(f"{id}\n")


def run_main(id, f1, f2, opt):
    cmd = ["python3", "main.py", f1, f2]
    print(f"Running {id}_{opt}: {' '.join(cmd)}")
    res = None
    try:
        res = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout_duration)
    except subprocess.TimeoutExpired:
        print(f"Command {id}_{opt} timed out after {timeout_duration} seconds.")
        # Treat as error
        res = subprocess.CompletedProcess(cmd, returncode=1, stdout="", stderr="Timeout")
    if res.stderr == "Timeout":
        with open(timed_out_log, "a") as timed_out:
            timed_out.write(f"{id}_{opt}\n")

    output_filename = f"./miscomp_tests_runner/test_outs/{id}_{opt}.out"
    with open(output_filename, "w") as outfile:
        outfile.write(f"Stdout:\n{res.stdout}\n")
        outfile.write(f"Stderr:\n{res.stderr}\n")

    stats["total_programs"] += 1
    if res.stderr == "Timeout":
        stats["timed_out"] += 1
        add_id_to_log(timed_out_log, f"{id}_{opt}")

    if "COMPILE EXCEPTION" in res.stdout:
        stats["regular_compile_crash"] += 1
        add_id_to_log(regular_compile_crash, f"{id}_{opt}")
    elif "REGULAR EXECUTED" in res.stdout:
        stats["regular_executed"] += 1
        add_id_to_log(regular_executed_log, f"{id}_{opt}")

        if "REGULAR OUTPUT MATCH" in res.stdout:
            stats["regular_same_output"] += 1
            add_id_to_log(regular_same_output_log, f"{id}_{opt}")
        elif "REGULAR OUTPUT DIFFERENT" in res.stdout:
            stats["regular_same_error"] += 1
            add_id_to_log(regular_different_output_log, f"{id}_{opt}")

    if "CRC CRASHED" in res.stdout:
        stats["crc_crashed"] += 1
        add_id_to_log(crc_crashed_log, f"{id}_{opt}")
    elif "CRC EXECUTED" in res.stdout:
        stats["crc_executed"] += 1
        add_id_to_log(crc_executed_log, f"{id}_{opt}")

    if "CRC FAILED. unable to inject crc" in res.stdout:
        stats["crc_no_globals_found"] += 1
        add_id_to_log(crc_no_globals_found, f"{id}_{opt}")

    if "CRC LOGIC FAILED" in res.stdout:
        stats["crc_logic_failed"] += 1
        add_id_to_log(crc_logic_failed_log, f"{id}_{opt}")
    elif "CRC SUCCEEDED" in res.stdout:
        stats["crc_succeeded"] += 1
        add_id_to_log(crc_succeeded_log, f"{id}_{opt}")

    print(stats)


def run_script_on_files(directory_path):
    # match number, O0 or O1, and optional _opt
    file_pattern = re.compile(r"(\d+)_O[01](_opt)?\.ll")
    file_map = {}

    # Collect files and group them by ID and optimization level
    for filename in os.listdir(directory_path):
        match = file_pattern.match(filename)
        if match:
            file_id = int(match.group(1))
            opt_level = "O0" if "_O0" in filename else "O1"  # O0 or O1
            opt_type = "opt" if "_opt" in filename else "base"  # opt or base

            if file_id not in file_map:
                file_map[file_id] = {}
            if opt_level not in file_map[file_id]:
                file_map[file_id][opt_level] = {}
            file_map[file_id][opt_level][opt_type] = os.path.join(directory_path, filename)

    # Iterate through the collected IDs and run the script
    sorted_file_ids = sorted(file_map.keys())
    for file_id in sorted_file_ids:
        opt_levels = file_map[file_id]
        if "O0" in opt_levels and "base" in opt_levels["O0"] and "opt" in opt_levels["O0"]:
            file1_o0 = opt_levels["O0"]["base"]
            file2_o0_opt = opt_levels["O0"]["opt"]
            run_main(file_id, file1_o0, file2_o0_opt, "O0")

        if "O1" in opt_levels and "base" in opt_levels["O1"] and "opt" in opt_levels["O1"]:
            file1_o1 = opt_levels["O1"]["base"]
            file2_o1_opt = opt_levels["O1"]["opt"]
            run_main(file_id, file1_o1, file2_o1_opt, "O1")

        # Write the final stats to the stats log
        with open(stats_log, "w") as stats_file:
            for key, value in stats.items():
                stats_file.write(f"{key}: {value}\n")


if __name__ == "__main__":
    directory_to_scan = "miscomp_tests_renamed/"
    results = run_script_on_files(directory_to_scan)
