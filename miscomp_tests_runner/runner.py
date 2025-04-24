import argparse
import os
import subprocess
import re

"""
    Usage:
    1. Scan directory: python3 miscomp_tests_runner/runner.py [-d /path/to/ll/files]
        -d is optional. defaults to miscomp_tests_renamed/
    2. Run from file: python3 miscomp_tests_runner/runner.py -i <input_file> [-d /path/to/ll/files]
"""
timeout_duration = 30  # seconds
log_path = "miscomp_tests_runner/"
ll_file_directory = "miscomp_tests_renamed/"  # Directory where .ll files reside

stats = {
    "total_programs": 0,
    "timed_out": 0,
    "regular_executed": 0,
    "regular_compile_crash": 0,
    "regular_same_output": 0,
    "regular_different_output": 0,
    "regular_undeterminable_output": 0,
    "crc_executed": 0,
    "crc_compile_crash": 0,
    "crc_no_globals_found": 0,
    "crc_no_hash_found": 0,
    "crc_logic_failed": 0,
    "crc_succeeded": 0,
}
stats_log = f"{log_path}/stats.txt"

timed_out_log = f"{log_path}/timed_out.txt"
regular_executed_log = f"{log_path}/regular_executed.txt"
regular_compile_crash = f"{log_path}/regular_compile_crash.txt"
regular_same_output_log = f"{log_path}/regular_same_output.txt"
regular_different_output_log = f"{log_path}/regular_different_output.txt"
regular_undeterminable_log = f"{log_path}/regular_undeterminable_output.txt"

crc_executed_log = f"{log_path}/crc_executed.txt"
crc_compile_crash_log = f"{log_path}/crc_compile_crash.txt"
crc_no_globals_found = f"{log_path}/crc_no_globals_found.txt"
crc_no_hash_found = f"{log_path}/crc_no_hash_found.txt"
crc_logic_failed_log = f"{log_path}/crc_logic_failed.txt"
crc_succeeded_log = f"{log_path}/crc_succeeded.txt"

# List of all log files for easy clearing
all_log_files = [
    stats_log,
    timed_out_log,
    regular_executed_log,
    regular_compile_crash,
    regular_same_output_log,
    regular_different_output_log,
    regular_undeterminable_log,
    crc_executed_log,
    crc_compile_crash_log,
    crc_no_globals_found,
    crc_no_hash_found,
    crc_logic_failed_log,
    crc_succeeded_log,
]


def clear_log_files():
    for log_file in all_log_files:
        open(log_file, "w").close()


def add_id_to_log(log_file, id):
    with open(log_file, "a") as log:
        log.write(f"{id}\n")


def write_final_stats():
    # Write the final stats to the stats log
    with open(stats_log, "w") as stats_file:
        for key, value in stats.items():
            stats_file.write(f"{key}: {value}\n")


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
            stats["regular_different_output"] += 1
            add_id_to_log(regular_different_output_log, f"{id}_{opt}")
        elif "REGULAR OUTPUT VARYING (UNDETERMINABLE)" in res.stdout:
            stats["regular_undeterminable_output"] += 1
            add_id_to_log(regular_undeterminable_log, f"{id}_{opt}")

    if "COMPILE CRC EXCEPTION" in res.stdout:
        stats["crc_compile_crash"] += 1
        add_id_to_log(crc_compile_crash_log, f"{id}_{opt}")
    elif "CRC EXECUTED" in res.stdout:
        stats["crc_executed"] += 1
        add_id_to_log(crc_executed_log, f"{id}_{opt}")

    if "CRC FAILED. unable to inject crc" in res.stdout:
        stats["crc_no_globals_found"] += 1
        add_id_to_log(crc_no_globals_found, f"{id}_{opt}")

    if "CRC NO HASH FOUND" in res.stdout:
        stats["crc_no_hash_found"] += 1
        add_id_to_log(crc_no_hash_found, f"{id}_{opt}")
    elif "CRC LOGIC FAILED" in res.stdout:
        stats["crc_logic_failed"] += 1
        add_id_to_log(crc_logic_failed_log, f"{id}_{opt}")
    elif "CRC SUCCEEDED" in res.stdout:
        stats["crc_succeeded"] += 1
        add_id_to_log(crc_succeeded_log, f"{id}_{opt}")

    print(stats)


def run_tests_from_file(input_filename, directory_path):
    print(f"Reading test cases from: {input_filename}")
    line_pattern = re.compile(r"(\d+)_(O[01])")  # Regex to parse lines like "288_O1"

    try:
        with open(input_filename, "r") as f:
            test_cases = f.readlines()
    except Exception as e:
        print(f"Error: for {input_filename}: {e}")
        return

    processed_count = 0
    for line_num, line in enumerate(test_cases, 1):
        line = line.strip()

        match = line_pattern.match(line)
        if match:
            file_id_str = match.group(1)
            opt_level = match.group(2)  # O0 or O1
            file_id = int(file_id_str)

            base_filename = f"{file_id_str}_{opt_level}.ll"
            opt_filename = f"{file_id_str}_{opt_level}_opt.ll"

            base_filepath = os.path.join(directory_path, base_filename)
            opt_filepath = os.path.join(directory_path, opt_filename)

            # Check if both required files exist
            if os.path.exists(base_filepath) and os.path.exists(opt_filepath):
                print(base_filepath, opt_filepath)
                run_main(file_id, base_filepath, opt_filepath, opt_level)
                processed_count += 1

    print(f"\nFinished processing {processed_count}/{len(test_cases)} test cases specified in {input_filename}.")
    # Final stats writing is handled outside this function now


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
    os.makedirs("miscomp_tests_runner/test_outs", exist_ok=True)

    # Setup argument parser
    parser = argparse.ArgumentParser(description="Run main.py on specified LLVM file pairs.")
    parser.add_argument(
        "-i",
        "--input-file",
        metavar="FILE",
        help="Path to a file containing test case IDs (e.g., '288_O1' per line). If omitted, scans the directory instead.",
    )
    parser.add_argument(
        "-d",
        "--directory",
        default=ll_file_directory,
        help=f"Directory containing the .ll files (default: {ll_file_directory})",
    )
    args = parser.parse_args()
    # Use the directory from args, allowing override
    ll_file_directory_to_use = args.directory

    print("Clearing previous log files...")
    # clear_log_files()

    # Create the output directory for .out files
    os.makedirs(f"{log_path}/test_outs", exist_ok=True)

    if args.input_file:
        run_tests_from_file(args.input_file, ll_file_directory_to_use)
    else:
        run_script_on_files(args.input_file, ll_file_directory_to_use)

    write_final_stats()
