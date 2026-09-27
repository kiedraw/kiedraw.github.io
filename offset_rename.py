from pathlib import Path

directory = Path(".")

offset = 29 
for i, file in enumerate(sorted(directory.iterdir()), start=1):
    if file.is_file():
        try:
            number = int(file.stem)
            new_name = str(number+offset) + file.suffix
            print(f'Renaming file {file} to {new_name}')
            file.rename(directory / new_name)
        except:
            pass
