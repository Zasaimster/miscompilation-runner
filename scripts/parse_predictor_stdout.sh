#!/bin/bash

# start of the json output
MARKER="==========Miscompilation Prediction Output=========="

# 1. Use awk to find the marker and extract the JSON block from stdin.
# 2. Pipe the extracted JSON string to jq.
# 3. Use jq to output shell variable assignment commands (e.g., key="value").

# Process the input stream (stdin) directly
awk -v marker="$MARKER" '
BEGIN { p=0; j=0; brace_count=0 }
$0 ~ marker { p=1; next }
p && /\{/ && !j { j=1 }   # If 'p' is set, '{' found, and not already in JSON ('j'=0), start JSON ('j'=1)
j {                      # If inside JSON block ('j'=1)
    print $0;
    # Count braces on the current line
    brace_count += gsub(/\{/, "{", $0);
    brace_count -= gsub(/\}/, "}", $0);
    if (brace_count <= 0) {
        exit;
    }
}
' | jq -r '
    try (
        # Iterate through each key-value pair
        to_entries | .[] |
        "\(.key)=\"\(.value)\""
    ) catch .
'

# Check the exit status of the pipeline (specifically jq)
if [[ $? -ne 0 ]]; then
  echo "Error: Failed to parse JSON." >&2
  exit 1
fi

exit 0
