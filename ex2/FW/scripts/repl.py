import os

folder_path = "."

for filename in os.listdir(folder_path):
    if filename.endswith(".sh"):
        file_path = os.path.join(folder_path, filename)
        with open(file_path, 'r') as file:
            file_lines = file.readlines()

        # Find and replace "outfiles" with "outfiles_32"
        for i, line in enumerate(file_lines):
            file_lines[i] = line.replace("outfiles_64", "outfiles_128")

        # Reverse the list of lines and replace the last occurrence of "16" with "32"
        reversed_lines = file_lines[::-1]
        for i, line in enumerate(reversed_lines):
            if "64" in line:
                reversed_lines[i] = line.replace("64", "128", 1)
                break

        # Revert the list back to the original order and write to the file
        with open(file_path, 'w') as file:
            file.writelines(reversed_lines[::-1])
