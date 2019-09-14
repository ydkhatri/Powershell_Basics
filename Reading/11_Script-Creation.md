# Making Powershell Scripts

Creating PowerShell scripts is straight forward. As long as you save your scripts as a .ps1 then Windows will interpret it as a PowerShell script. You will need to set your [execution policy](2._Execution-Policy.md) to a minium of remote signed, if the script was created on the same system that it is being run on. If you are using scripts that were created remotely then you will have to adjust your [execution policy](2._Execution-Policy.md) to match.  

You do not need any special development tools, you can create PowerShell scripts in notepad. Windows comes with an development tool that gets install with PowerShell. It is called PowerShell ISE. It shows you all the commands, has a PowerShell terminal open as well as a scripting session. PowerShell ISE will complete commands and let you know what options that you can preform. It also preforms some basic error checking.
