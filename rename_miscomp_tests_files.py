import difflib
import os


# Renames files in a directory numerically and adds the original identifier (string before the first '_') as a comment.
def rename_and_add_comment(directory_path, new_directory):
    identifiers = {}
    files_to_process = []

    # First pass: Identify all unique identifiers and collect files to process
    unique_ids = set()
    for filename in os.listdir(directory_path):
        if filename.endswith(("_O0_opt.ll", "_O0.ll", "_O1_opt.ll", "_O1.ll")):
            filepath = os.path.join(directory_path, filename)
            parts = filename.split("_", 1)
            if len(parts) > 1:
                id = parts[0]
                unique_ids.add(id)
                files_to_process.append((filename, filepath))
            else:
                print(
                    f"Warning: Filename '{filename}' does not contain an underscore as expected. Skipping identifier extraction for dictionary population."
                )

    # Sort the unique identifiers alphabetically
    sorted_ids = sorted(list(unique_ids))

    # Populate the identifiers dictionary with sorted IDs
    file_counter = 1
    for id in sorted_ids:
        identifiers[id] = file_counter
        file_counter += 1

    # Second pass: Process files in deterministic order based on sorted identifiers
    for filename, filepath in files_to_process:
        parts = filename.split("_", 1)
        id = parts[0]
        rest_of_filename = parts[1]

        # Extract opt_level and opt_type from the rest of the filename
        if rest_of_filename.startswith("O0_opt.ll"):
            opt_level = "O0"
            opt = True
        elif rest_of_filename.startswith("O0.ll"):
            opt_level = "O0"
            opt = False
        elif rest_of_filename.startswith("O1_opt.ll"):
            opt_level = "O1"
            opt = True
        elif rest_of_filename.startswith("O1.ll"):
            opt_level = "O1"
            opt = False
        else:
            print(f"Warning: Filename '{filename}' does not match expected pattern after identifier. Skipping.")
            continue  # Skip if the rest of the filename doesn't match expected patterns

        new_id = identifiers[id]

        new_filename = f"{new_id}_{opt_level}"
        if opt:
            new_filename += "_opt"
        new_filename += ".ll"
        new_filepath = os.path.join(new_directory, new_filename)

        try:
            with open(filepath, "r") as f:
                content = f.read()

            comment_line = f"; {id}\n"
            new_content = comment_line + content

            with open(new_filepath, "w") as f:
                f.write(new_content)

            print(f"Renamed '{filename}' to '{new_filename}' and added comment.")

        except Exception as e:
            print(f"Error processing '{filename}': {e}")
            print(e)

    print("Renaming and comment insertion process completed.")


# Split line into code and comment parts from the first ';'.
def get_code_comment_parts(line):
    comment_index = line.find(";")
    if comment_index != -1:
        code_part = line[:comment_index].strip()
        comment_part = line[comment_index:].strip()
        return code_part, comment_part
    else:
        return line.strip(), None  # no comment


def is_diff_significant(matched_lines):
    """
    Determines if an added/removed line is important or not.
    A diff line can be ignored IF:
    - a comment line (begins with ';')
    - the changed part of the line is only in the comment
    - line is metadata (begins with '!')
    - the line is an atri bute (begins with 'attributes')
    """
    removed, added = matched_lines
    if len(removed) != len(added):
        return True

    for i in range(len(removed)):
        r, a = removed[i], added[i]
        # print(r, a)
        # Skip full comment lines
        if r[0] == ";" and a[0] == ";":
            continue
        # Skip attribute changes
        if r.split()[0] == "attributes" and a.split()[0] == "attributes":
            continue
        # Skip metadata changes
        if r[0] == "!" and a[0] == "!":
            continue

        code_removed, comment_removed = get_code_comment_parts(r)
        code_added, comment_added = get_code_comment_parts(a)
        # If code is different, save. Code AND comments cannot be same (otherwise, it wouldn't be stored here), so save it for further evaluation
        if code_removed == code_added and comment_removed != comment_added:
            continue

        return True

    return False


def match_lines(f1, f2):
    """
    Matches line diffs between f1 and f2
    """
    diff = difflib.ndiff(f1, f2)

    removed = []
    added = []

    for line in diff:
        if line.startswith("+ "):
            added.append(line[2:])
        elif line.startswith("- "):
            removed.append(line[2:])

    return removed, added


# todo: handle midline comments and attributes
def filter_identical_pairs(dir, new_dir):
    """
    Identifies pairs of files based on the naming convention x_O*.ll and x_O*_opt.ll
    in the given folder and prints the diff for each pair.

    Args:
        folder_path (str, optional): Path to the folder containing the files. Defaults to the current directory.
    """
    file_pairs = {}
    for filename in os.listdir(dir):
        if filename.endswith(".ll") and "crc" not in filename:
            parts = filename.split("_opt.ll")
            if len(parts) == 2:
                base_name = parts[0]
                file_type = "opt"
            else:
                parts = filename.split(".ll")
                if len(parts) == 2:
                    base_name = parts[0]
                    file_type = "base"
                else:
                    continue  # Skip files that don't match the pattern
            if base_name not in file_pairs:
                file_pairs[base_name] = {}
            file_pairs[base_name][file_type] = filename

    num_comment_only = 0
    for base_name, files in file_pairs.items():
        # if base_name != "1_O1":
        #     continue
        if "base" in files and "opt" in files:
            base_file = os.path.join(dir, files["base"])
            opt_file = os.path.join(dir, files["opt"])
            filtered_base_file = os.path.join(new_dir, files["base"])
            filtered_opt_file = os.path.join(new_dir, files["opt"])

            try:
                with open(base_file, "r") as f1, open(opt_file, "r") as f2:
                    text1 = f1.readlines()
                    text2 = f2.readlines()
                matched_lines = match_lines(text1, text2)
                if is_diff_significant(matched_lines):
                    print(f"Significant diff found between {files['base']} and {files['opt']}")
                    with open(filtered_base_file, "w") as f1, open(filtered_opt_file, "w") as f2:
                        f1.writelines(text1)
                        f2.writelines(text2)
            except Exception as e:
                print(f"Error processing files {files['base']} and {files['opt']}: {e}")
    print(num_comment_only)


if __name__ == "__main__":
    directory_to_process = "../miscomp_tests/"
    new_directory = "./miscomp_tests_renamed/"
    filtered_dir = "./miscomp_tests_renamed_filtered/"
    os.makedirs(f"{new_directory}/runtime/", exist_ok=True)
    os.makedirs(filtered_dir, exist_ok=True)
    rename_and_add_comment(directory_to_process, new_directory)
    filter_identical_pairs(new_directory, filtered_dir)
