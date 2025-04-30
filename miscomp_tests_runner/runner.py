import argparse
import glob
import json
import os
import pprint
import subprocess
import re

"""
    Usage:
    1. Scan directory: python3 miscomp_tests_runner/runner.py [-d /path/to/ll/files]
        -d is optional. defaults to miscomp_tests_renamed/
    2. Run from file: python3 miscomp_tests_runner/runner.py -i <input_file> [-d /path/to/ll/files]
"""
TIMEOUT = 30  # seconds
LOG_PATH = "miscomp_tests_runner"
STATS_PATH = os.path.join(LOG_PATH, "stats/")
OUTPUT_PATH = os.path.join(LOG_PATH, "test_outs/")
IR_DIR = "miscomp_tests_renamed/"

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
    "crc_injection_failure": 0,
    "crc_no_hash_found": 0,
    "crc_logic_failed": 0,
    "crc_logic_undeterminable": 0,
    "crc_succeeded": 0,
    "alive2_error": 0,
    "alive2_incorrect": 0,
    "alive2_no_prove": 0,
    "alive2_correct": 0,
}
stats_log = os.path.join(STATS_PATH, "stats.txt")

timed_out_log = os.path.join(STATS_PATH, "timed_out.txt")
regular_executed_log = os.path.join(STATS_PATH, "regular_executed.txt")
regular_compile_crash = os.path.join(STATS_PATH, "regular_compile_crash.txt")
regular_same_output_log = os.path.join(STATS_PATH, "regular_same_output.txt")
regular_different_output_log = os.path.join(STATS_PATH, "regular_different_output.txt")
regular_undeterminable_log = os.path.join(STATS_PATH, "regular_undeterminable_output.txt")

crc_executed_log = os.path.join(STATS_PATH, "crc_executed.txt")
crc_compile_crash_log = os.path.join(STATS_PATH, "crc_compile_crash.txt")
crc_injection_failure = os.path.join(STATS_PATH, "crc_injection_failure.txt")
crc_no_hash_found = os.path.join(STATS_PATH, "crc_no_hash_found.txt")
crc_logic_failed_log = os.path.join(STATS_PATH, "crc_logic_failed.txt")
crc_logic_undeterminable_log = os.path.join(STATS_PATH, "crc_logic_undeterminable.txt")
crc_succeeded_log = os.path.join(STATS_PATH, "crc_succeeded.txt")

alive2_error_log = os.path.join(STATS_PATH, "alive2_error.txt")
alive2_incorrect_log = os.path.join(STATS_PATH, "alive2_incorrect.txt")
alive2_no_prove_log = os.path.join(STATS_PATH, "alive2_no_prove.txt")
alive2_correct_log = os.path.join(STATS_PATH, "alive2_correct.txt")

log_files_map = {
    "timed_out": timed_out_log,
    "regular_executed": regular_executed_log,
    "regular_compile_crash": regular_compile_crash,
    "regular_same_output": regular_same_output_log,
    "regular_different_output": regular_different_output_log,
    "regular_undeterminable_output": regular_undeterminable_log,
    "crc_executed": crc_executed_log,
    "crc_compile_crash": crc_compile_crash_log,
    "crc_injection_failure": crc_injection_failure,
    "crc_no_hash_found": crc_no_hash_found,
    "crc_logic_failed": crc_logic_failed_log,
    "crc_logic_undeterminable": crc_logic_undeterminable_log,
    "crc_succeeded": crc_succeeded_log,
    "alive2_error": alive2_error_log,
    "alive2_incorrect": alive2_incorrect_log,
    "alive2_no_prove": alive2_no_prove_log,
    "alive2_correct": alive2_correct_log,
}

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
    crc_injection_failure,
    crc_no_hash_found,
    crc_logic_failed_log,
    crc_logic_undeterminable_log,
    crc_succeeded_log,
    alive2_error_log,
    alive2_incorrect_log,
    alive2_no_prove_log,
    alive2_correct_log,
]


def clear_stats_files():
    for log_file in all_log_files:
        open(log_file, "w").close()


def clear_folder(dir):
    if os.path.exists(dir):
        for file_path in glob.glob(os.path.join(dir, "*")):
            if os.path.isfile(file_path):
                os.remove(file_path)
    else:
        print(f"The directory '{dir}' does not exist.")


def add_id_to_log(log_file, id):
    with open(log_file, "a") as log:
        log.write(f"{id}\n")


def write_stats():
    with open(stats_log, "w") as stats_file:
        for key, value in stats.items():
            stats_file.write(f"{key}: {value}\n")


def run_main(id, f1, f2, opt):
    cmd = ["python3", "main.py", f1, f2]
    print(f"Running {id}_{opt}: {' '.join(cmd)}")
    res = subprocess.run(cmd, capture_output=True, text=True)

    output_filename = os.path.join(OUTPUT_PATH, f"{id}_{opt}.out")
    with open(output_filename, "w") as outfile:
        outfile.write(f"Stdout:\n{res.stdout}\n")
        outfile.write(f"Stderr:\n{res.stderr}\n")

    marker = f"{'=' * 10}Miscompilation Prediction Output{'=' * 10}"
    log_entry = f"{id}_{opt}"
    stats["total_programs"] += 1
    o = res.stdout
    try:
        marker_start_index = o.find(marker)
        if marker_start_index == -1:
            print(f"WARNING: Marker '{marker}' not found for {log_entry}. Output:\n{o[:500]}...")
            return

        # Find the start of the JSON data (after the marker and the newline)
        potential_json_str = o[marker_start_index + len(marker) :]
        results_dict = json.loads(potential_json_str)

        # Update stats and logs based on JSON content
        for key, value_str in results_dict.items():
            if value_str.lower() == "true":
                # Update stats and log file
                if key in stats and key in log_files_map:
                    stats[key] += 1
                    add_id_to_log(log_files_map[key], log_entry)
                else:
                    print(f"WARNING: Key '{key}' not found in stats for {log_entry}.")
    except json.JSONDecodeError as e:
        print(f"ERROR: Failed to decode JSON for {log_entry}. Error: {e}")
        print(f"Problematic JSON string slice: {potential_json_str[:200]}...")

    pprint.pprint(stats)
    write_stats()


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
    for _, line in enumerate(test_cases, 1):
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

        # write_stats()


if __name__ == "__main__":
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
        default=IR_DIR,
        help=f"Directory containing the .ll files (default: {IR_DIR})",
    )
    args = parser.parse_args()
    ll_file_directory_to_use = args.directory

    directory_to_scan = "miscomp_tests_renamed/"

    # Create the directory for stats and output logs
    os.makedirs(STATS_PATH, exist_ok=True)
    os.makedirs(OUTPUT_PATH, exist_ok=True)

    # Clear old files
    print(f"Removing runtime files: {ll_file_directory_to_use}runtime")
    clear_folder(os.path.join(ll_file_directory_to_use, "runtime"))
    print(f"Removing output logs: {ll_file_directory_to_use}runtime")
    clear_folder(OUTPUT_PATH)
    print("Clearing stats logs...")
    clear_stats_files()

    if args.input_file:
        run_tests_from_file(args.input_file, ll_file_directory_to_use)
    else:
        run_script_on_files(ll_file_directory_to_use)

    # Cleanup
    print(f"Clearing runtime folder: {ll_file_directory_to_use}runtime")
    clear_folder(f"{ll_file_directory_to_use}runtime")
