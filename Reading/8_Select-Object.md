# Select-Object

The ```Select-Object``` cmdlet selects specified properties of an object or set of objects. It is different than ```Where-Object``` because Where-Object restrict which objects are return by property and ```Select-Object``` returns all objects with the selected properties.  
They are good to be used together.

```PowerShell
Get-Process | Where-Object {$_.Name -eq "WmiPrvSE"} | Select-Object -Property Name, ID
```
