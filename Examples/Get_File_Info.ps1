# Getting File Information

# Story Line: Basic Folder and File information Gathering


# Please write and run the command that you would need to get all the files in your home directory (Typically at C:\Users\<USERNAME>)

Get-ChildItem -Path C:\Users\Jake

# You can also user $HOME to get the current users home directory

# Modify the command so that it would get all hidden files and recurse through all sub-folders. (You do not have to run it because it can take some time if you have a lot of files.)

Get-ChildItem -Path C:\Users\Jake -Recurse -Force

# Modify the command so that it prints the name and last write time for each file in the your home directory. Set a variable equal to the command. Hint: foreach and Get-Member

$homefiles = Get-ChildItem $HOME
foreach ($file in $homefiles) {
    $file | Select-Object Name,LastWriteTime
}

