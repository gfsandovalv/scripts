import re
import subprocess


get_file_name = 'zenity  --file-selection --title="Choose a directory" --file-filter=main.tex'
process = subprocess.Popen(get_file_name.split(), stdout=subprocess.PIPE)
path_to_file, error = process.communicate()


# Delete the name of the file from the path_to_file 
path_to_file = str(path_to_file)
path_to_file = re.sub('^..', '', path_to_file)
path_to_file = re.sub('...$', '', path_to_file)
path = path_to_file[::-1] # Reverse string
path = re.sub('^[^/]+','', path)[::-1]

open_file = 'texstudio ' + path_to_file
open_terminal = 'gnome-terminal --working-directory=' + path

print(open_file)
print(open_terminal)

subprocess.Popen(open_file.split(), stdout=subprocess.PIPE)
subprocess.Popen(open_terminal.split(), stdout=subprocess.PIPE)

