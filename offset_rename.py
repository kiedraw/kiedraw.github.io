from pathlib import Path
import os

directory = Path("part_2")

offset = 23 
for i, file in enumerate(sorted(directory.iterdir()), start=1):
    if file.is_file():
        try:
            number = int(file.stem)
            new_name = str(number+offset) + file.suffix
            print(f'Renaming file {file} to {new_name}')
            os.rename(file, "img/" + new_name)
        except:
            pass
