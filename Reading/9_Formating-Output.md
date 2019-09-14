# Formatting Output

PowerShell has built in cmdlets that lets you format that output that you get. The two most common ones are```Format-List``` and ```Format-Table```.

## ```Format-List```

Using ```Format-List``` generates output as a list of properties in which each property appears on a new line.

```PowerShell
Get-Process | Format-List
```

You can specify the properties that you use by adding the ```-Property``` parameter.

```PowerShell
Get-Process | Format-List -Properties Name,Path
```

If you run the example, then you will see that it can generator a long list which can make the results that you want hard to find. If you are expecting multiple outputs then it is recommended to use ```Format-Table```.

## ```Format-Table```

The ```Format-Table``` cmdlet formats the output of a command as a table with the selected properties of the object in each column.

```PowerShell
Get-Service | Format-Table
```

The object type determines the default layout and properties that are displayed in each column, but you can use the ```-Property``` parameter to select the properties that you want to see.

```PowerShell
Get-Service | Format-Table -Property DisplayName,Status
```
