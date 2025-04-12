import os


# Renames files in a directory numerically and adds the original identifier (string before the first '_') as a comment.
def rename_and_add_comment(directory_path, new_directory):
    file_counter = 1
    processed_identifiers = set()

    for filename in os.listdir(directory_path):
        if filename.endswith(("_O0_opt.ll", "_O0.ll", "_O1_opt.ll", "_O1.ll")):
            filepath = os.path.join(directory_path, filename)

            # Extract long identifier as the string before the first underscore
            parts = filename.split("_", 1)  # Split at the first underscore
            if len(parts) > 1:
                id = parts[0]
                rest_of_filename = parts[1]  # Everything after the first underscore
            else:
                print(
                    f"Warning: Filename '{filename}' does not contain an underscore as expected. Skipping identifier extraction."
                )
                continue  # Skip to the next file if no underscore is found

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
                print(
                    f"Warning: Filename '{filename}' does not match expected pattern after identifier. Skipping."
                )
                continue  # Skip if the rest of the filename doesn't match expected patterns

            if id not in processed_identifiers:
                new_prefix = str(file_counter)
                processed_identifiers.add(id)
                file_counter += 1
            else:
                # If identifier already processed, get its assigned number
                new_prefix = str(list(processed_identifiers).index(id) + 1)

            new_filename = f"{new_prefix}_{opt_level}"
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


if __name__ == "__main__":
    directory_to_process = "./miscomp_tests/"
    new_directory = "./miscomp_tests_renamed/"
    rename_and_add_comment(directory_to_process, new_directory)
