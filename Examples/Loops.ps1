# Expanding on Getting File Information. Please complete Get_File_Info.ps1 first.

# Story Line: Using if statements for advanced filtering.


# Using the Get-ChildItem cmdlet, how would you only get .exe files in C:\Windows\ with no recursion.

Get-ChildItem -Path C:\Windows\* -Include *.exe

# Using an if statement, make so only exe files are only printed if they are over 1 MB


$files = Get-ChildItem -Path C:\Windows\* -Include *.exe

foreach ($exe in $files) {
    if ($exe.length -gt "1000000") {
        $exe
    }
}


# Now make it so any exe over 1 MB gets hashed with SHA256 and anything under gets hashed with SHA512

$files = Get-ChildItem -Path C:\Windows\* -Include *.exe

foreach ($exe in $files) {
    if ($exe.length -gt "1000000") {
        Get-FileHash $exe -Algorithm SHA256 | Select-Object Path,Hash
    } else {
        Get-FileHash $exe -Algorithm SHA512 | Select-Object Path,Hash
    }
}

