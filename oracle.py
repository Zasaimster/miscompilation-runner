import argparse
import json
import os
import shutil
import sys

from common import HYPHENS, RUNTIME_DIR
from oracles import (
    regular as regular_oracle,
    alive2 as alive2_oracle,
    crc as crc_oracle,
)

# "alive2_error": False,
# "alive2_incorrect": False,
# "alive2_no_prove": False,
# "alive2_correct": False,
# "timeout": False,
# "regular_compile_crash": False,
# "regular_execution_crash": False,
# "regular_undefined_execution": False,
# "regular_executed": False,
# "regular_different_output": False,
# "regular_undeterminable_output": False,
# "regular_same_output": False,
# "crc_compile_crash": False,
# "crc_execution_crash": False,
# "crc_undefined_execution": False,
# "crc_executed": False,
# "crc_no_hash_found": False,
# "crc_logic_failed": False,
# "crc_logic_undeterminable": False,
# "crc_succeeded": False


def parse_args():
    parser = argparse.ArgumentParser(
        description="Run oracle comparison between two LLVM IR files.",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    # Input Files
    parser.add_argument(
        "-i",
        "--input",
        required=True,
        nargs="+",
        metavar="INPUT_FILE",
        dest="input_files",
        help="Path(s) to the input LLVM IR files (e.g., P1.ll P2.ll).",
    )

    # Output File
    parser.add_argument(
        "-o",
        "--output",
        required=True,
        metavar="OUTPUT_JSON",
        dest="output_file",
        help="Path to the output JSON file for results.",
    )

    # Directory Paths
    parser.add_argument(
        "--LLVM_DIR",
        required=False,
        metavar="PATH",
        dest="llvm_dir",
        help="Path to the LLVM build/bin directory (e.g., my/llvm/llvm-project/build/bin)",
    )
    parser.add_argument(
        "--ALIVE_DIR",
        required=False,
        metavar="PATH",
        dest="alive_dir",
        help="Path to the Alive2 build directory (e.g., my/alive2-project/build).",
    )

    # Disable Flags
    parser.add_argument(
        "--exec-disabled", action="store_true", dest="exec_disabled", help="Disable the execution-based oracle checks."
    )
    parser.add_argument(
        "--crc-disabled", action="store_true", dest="crc_disabled", help="Disable the CRC-based oracle checks."
    )
    parser.add_argument(
        "--alive2-disabled", action="store_true", dest="alive2_disabled", help="Disable the Alive2-based oracle checks."
    )

    # Additional options
    parser.add_argument(
        "--mark-diff-numhashes-undeterminable",
        action="store_true",
        dest="mark_diff_numhashes_undeterminable",
        help="Mark the number of hashes as undeterminable if the CRC oracle finds a different number of hashes.",
    )

    args = parser.parse_args()

    # 1. Validate output file path (--output)
    output_path = args.output_file
    output_dir = os.path.dirname(output_path)
    # If output_dir is empty, it the file is in the current directory '.'
    if not output_dir:
        output_dir = "."

    # Check if the parent directory exists and is a directory
    if not os.path.isdir(output_dir):
        parser.error(
            f"The parent directory for the output file does not exist or is not a directory: '{output_dir}' (from path '{output_path}')"
        )

    # 2. Validate LLVM build path
    if args.llvm_dir is not None:
        llvm_path = args.llvm_dir
        if not os.path.isdir(llvm_path):
            parser.error(f"--LLVM_DIR path provided is not an existing directory: '{llvm_path}'")

        llvm_clang_path = os.path.join(llvm_path, "clang")
        if not os.path.isfile(llvm_clang_path):
            parser.error(f"--LLVM_DIR provided does not seem to contain 'clang': '{llvm_path}'")

        if not args.crc_disabled:
            llvm_clang_path = os.path.join(llvm_path, "opt")
            if not os.path.isfile(llvm_clang_path):
                parser.error(
                    f"--LLVM_DIR provided does not seem to contain 'opt' (required for CRC oracle): '{llvm_path}'"
                )

    # 3. Require exactly 2 input files
    if len(args.input_files) != 2:
        parser.error(f"Expected exactly 2 input files for --input, but got {len(args.input_files)}.")

    # 4. Ensure both files exist and are files
    for file_path in args.input_files:
        if not os.path.isfile(file_path):
            print(f"Error: Input file not found or is not a regular file: '{file_path}'", file=sys.stderr)
            sys.exit(1)

    return args


def main():
    args = parse_args()

    p_file, p_prime_file = args.input_files
    output_file = args.output_file
    llvm_dir = args.llvm_dir
    alive_dir = args.alive_dir
    exec_disabled = args.exec_disabled
    crc_disabled = args.crc_disabled
    alive2_disabled = args.alive2_disabled
    mark_diff_numhashes_undeterminable = args.mark_diff_numhashes_undeterminable

    # Set executable commands
    binary_execs = {
        "clang": "clang",
        "opt": "opt",
        "alive": "alive-tv",
    }
    if llvm_dir:
        binary_execs["clang"] = f"{llvm_dir}/clang"
        binary_execs["opt"] = f"{llvm_dir}/opt"
    if alive_dir:
        binary_execs["alive"] = f"{alive_dir}/alive-tv"

    # Setup runtime directory
    try:
        # Clear runtime if it exists (avoid overfilling with files, but keep between runs for analysis)
        if os.path.exists(RUNTIME_DIR):
            shutil.rmtree(RUNTIME_DIR)
        os.makedirs(RUNTIME_DIR, exist_ok=True)
    except OSError as e:
        print(f"Error creating directory '{RUNTIME_DIR}': {e}", file=sys.stderr)
        sys.exit(1)

    summary = {}
    if not exec_disabled:
        regular_summary = regular_oracle.run(p_file, p_prime_file, binary_execs)
        summary.update(regular_summary)

    if not alive2_disabled:
        alive2_summary = alive2_oracle.run(p_file, p_prime_file, binary_execs)
        summary.update(alive2_summary)

    if not crc_disabled:
        crc_summary = crc_oracle.run(p_file, p_prime_file, binary_execs, mark_diff_numhashes_undeterminable)
        summary.update(crc_summary)
        # Update common fields correctly
        if not exec_disabled:
            summary["timeout"] = regular_summary["timeout"] or crc_summary["timeout"]

    json_summary = {k: str(v).lower() for k, v in summary.items()}
    json_output = json.dumps(json_summary, indent=4)
    print(f"\n{HYPHENS}Miscompilation Prediction Output{HYPHENS}")
    print(json_output)

    try:
        with open(output_file, "w") as f:
            f.write(json_output)
        print(f"\nResults successfully written to: {output_file}")
    except Exception as e:
        print(f"\nError writing results to file {output_file}: {e}")


if __name__ == "__main__":
    print(f"Command: {' '.join(sys.argv)}")
    main()

# test cases
# - all parameters
# - invalid executable paths
# - not a real input file
# - invalid IR files
# - all combos of oracles (including no oracle)
# - try to replicate how the code failed (no relative paths, local path, absolute path(?))
# - != 2 input files
