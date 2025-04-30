#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <input_file1.ll> <input_file2.ll>"
    echo "  Example: $0 file1.ll file2.ll"
    exit 1
fi

file1="$1"
file2="$2"
parser_script="./parse_predictor_stdout.sh" 

echo "Running python3 main.py $file1 $file2..."
eval_output=$(python3 main.py "$file1" "$file2" | "$parser_script")
eval "$eval_output"
echo "Variable assignments evaluated."

echo "--- Results ---"
echo "Alive2 Error Status:                    $alive2_error"
echo "Alive2 Incorrect Status:                $alive2_incorrect"
echo "Alive2 No Prove Status:                 $alive2_no_prove"
echo "Alive2 Correct Status:                  $alive2_correct"
echo "Timeout Status:                         $timeout"
echo "Regular Compile Crash Status:           $regular_compile_crash"
echo "Regular Executed Status:                $regular_executed"
echo "Regular Different Output Status:        $regular_different_output"
echo "Regular Undeterminable Output Status:   $regular_undeterminable_output"
echo "Regular Same Output Status:             $regular_same_output"
echo "CRC Injection Failure Status:           $crc_injection_failure"
echo "CRC Compile Crash Status:               $crc_compile_crash"
echo "CRC Executed Status:                    $crc_executed"
echo "CRC No Hash Found Status:               $crc_no_hash_found"
echo "CRC Logic Failed Status:                $crc_logic_failed"
echo "CRC Logic Undeterminable Status:        $crc_logic_undeterminable"
echo "CRC Succeeded Status:                   $crc_succeeded"

# Example conditional logic
# if [[ "$crc_succeeded" == "true" && "$regular_same_output" == "true" ]]; then
#     echo "Verification successful based on CRC and regular output."
# elif [[ "$alive2_incorrect" == "true" ]]; then
#     echo "Warning: Alive2 reported incorrect transformation for $file1 -> $file2"
# fi

echo -e "\nRun script finished."
exit 0
