import sys
import re
import os

input_file = sys.argv[1]
return_codes = set()
i = 0
num_entries = 0
with open(input_file, "r") as f_in:
    for entry in f_in:
        num_entries += 1
        # if i > 0:
        #     break
        entry = entry.strip()
        if not entry:
            continue
        output_file_path = os.path.join("test_outs", f"{entry}.out")
        has_neg_ret_code = False
        with open(output_file_path, "r") as f_out:
            content = f_out.read()
            if "code is dead" in content:
                print(f"Found in {output_file_path}")
        #     # print(output_file_path + content)
        #     matches = re.findall(r"Return code: (-?\d+)", content)
        #     for code_str in matches:
        #         code = int(code_str)
        #         return_codes.add(code)
        #         if code < 0:
        #             has_neg_ret_code = True
        #             # i += 1
        #             print(f"Found in {output_file_path}")
        # if has_neg_ret_code:
        #     i += 1

print(f"Total entries: {num_entries}")
print(i)
print(return_codes)
