# Hashing in Windows

To get hashes in powershell you use the ```Get-FileHash``` cmdlet. The ```Get-FileHash``` cmdlet computes the hash value for a file by using a specified hash algorithm.

```PowerShell
Get-FileHash $pshome\powershell.exe
```

By default, PowerShell uses SHA256 when hashing. It can be changed by using ```-Algorithm``` parameter.

```PowerShell
Get-FileHash $pshome\powershell.exe -Algorithm SHA384
```

The algorithms that you can use are:

- SHA1
- SHA256
- SHA384
- SHA512
- MD5

You can also specify the path either with ```-Path``` or ```-LiteralPath``` parameter. The difference between ```-Path``` and ```-LiteralPath``` is that ```-LiteralPath``` no characters are interpreted as wildcard characters.
