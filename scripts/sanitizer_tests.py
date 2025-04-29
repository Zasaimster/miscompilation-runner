"""
Usage: python3 scripts/sanitizer_tests.py
This script compiles and runs LLVM IR files from ./miscomp_tests_renamed with different sanitizers.
"""

import os
import re
import subprocess
import glob

SEARCH_DIR = "./miscomp_tests_renamed"
SANITIZERS = ["memory,undefined", "address,undefined"]
FAILURE_FILE = "./scripts/sanitizer_failures.txt"
CRASH_COUNT_FILE = "./scripts/num_crashes.txt"
CRC_HELPER_OBJ_FILE = "crc/csmith_crc_minimal.o"
TIMEOUT_DURATION = 30

open(FAILURE_FILE, "w").close()
open(CRASH_COUNT_FILE, "w").close()


def run_command(cmd_list, ll_file):
    print(f"  Running {' '.join(cmd_list)}")
    try:
        result = subprocess.run(
            cmd_list,
            capture_output=True,
            text=True,
            check=False,
            timeout=30,
        )
        if result.returncode != 0:
            print(f"  ERROR for {ll_file}.")
            print(f"    Command: {' '.join(cmd_list)}")
            print(f"    Stderr: {result.stderr.strip()}")
            print(f"    Stdout: {result.stdout.strip()}")
        return result.returncode, result.stdout.strip(), result.stderr.strip()
    except Exception as e:
        print(f"  An unexpected error occurred for {ll_file}: {e}")
        return -1, "", ""


def cleanup_files(*filenames):
    """Removes specified files, ignoring errors if they don't exist."""
    for filename in filenames:
        try:
            os.remove(filename)
        except Exception as e:
            print(f"  Warning: Could not clean up {filename}: {e}")


def write_crashed_file(num_crashes):
    with open(CRASH_COUNT_FILE, "w") as f_crash:
        f_crash.write(f"{num_crashes}\n")


def write_sanitizer_failures(fail):
    with open(FAILURE_FILE, "a") as f_fail:
        f_fail.write(f"{fail}\n")


def sort_key(file):
    base_name = os.path.splitext(os.path.basename(file))[0]
    match = re.match(r"(\d+)_", base_name)
    if match:
        return int(match.group(1))
    return 0


def main():
    compilation_errors = 0
    sanitizer_failures = set()

    search_pattern = os.path.join(SEARCH_DIR, "*.ll")
    ll_files = glob.glob(search_pattern)

    print(f"Found {len(ll_files)} .ll files. Processing...")
    ll_files = sorted(ll_files, key=sort_key)

    for ll_file in ll_files:
        base_name = os.path.splitext(os.path.basename(ll_file))[0]
        o_file = f"{base_name}.o"
        exe_file = base_name

        print(f"\nProcessing {ll_file}...")

        for sanitizer in SANITIZERS:
            compile_cmd = ["clang", "-c", ll_file, f"-fsanitize={sanitizer}", "-o", o_file]
            compile_retcode, _, _ = run_command(compile_cmd, ll_file)
            if compile_retcode != 0:
                compilation_errors += 1
                print(f"  Compilation error for {ll_file} with sanitizer '{sanitizer}'.")
                cleanup_files(o_file)
                write_crashed_file(compilation_errors)
                continue

            if "crc" in ll_file:
                link_cmd = ["clang", o_file, CRC_HELPER_OBJ_FILE, f"-fsanitize={sanitizer}", "-o", exe_file]
            else:
                link_cmd = ["clang", o_file, f"-fsanitize={sanitizer}", "-o", exe_file]
            link_retcode, _, _ = run_command(link_cmd, ll_file)
            if link_retcode != 0:
                compilation_errors += 1
                print(f"  Compilation error for {ll_file} with sanitizer '{sanitizer}'.")
                cleanup_files(o_file, exe_file)
                write_crashed_file(compilation_errors)
                continue

            run_cmd = [f"./{exe_file}"]
            execute_retcode, _, stderr = run_command(run_cmd, ll_file)
            if execute_retcode != 0 and "ERROR: " in stderr:
                print(
                    f"  SANITIZE ERROR detected for {ll_file} with sanitizer '{sanitizer}' (Exit code: {execute_retcode}). Recording failure."
                )
                write_sanitizer_failures(f"{os.path.basename(ll_file)}->{sanitizer}")

            cleanup_files(o_file, exe_file)

    print(f"Total compilation/linking errors encountered: {compilation_errors}")
    print(f"Total sanitizer failures detected: {len(sanitizer_failures)}")


if __name__ == "__main__":
    main()
