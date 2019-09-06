# Execution Policy

PowerShell's execution policy is a security feature that controls the conditions under which PowerShell loads configuration files and runs scripts. This helps prevent the execution of malicious scripts.

## Execution Policy Types

There are 5 types of execution policy.

1. AllSigned
   1. Scripts can run.
   2. Requires that all scripts and configuration files be signed by a trusted publisher, including scripts that you write on the local computer.
2. Bypass
   1. Nothing is blocked and there are no warnings or prompts.
3. RemoteSigned
   1. The default execution policy for Windows server computers.
   2. Scripts can run.
   3. Requires a digital signature from a trusted publisher on scripts and configuration files that are downloaded from the internet. (Include email)
   4. Doesn't require digital signatures on scripts that are written on the local computer and not downloaded from the internet.
4. Restricted
   1. The default execution policy for Windows client computers.
   2. Permits individual commands, but will not run scripts.
5. Unrestricted
   1. The default execution policy for non-Windows computers and cannot be changed.
   2. Unsigned scripts can run. There is a risk of running malicious scripts.

## Execution Policy Scope

You can set an execution policy to only apply to a particular scope. Those scopes are:

1. MachinePolicy
   1. Set by a Group Policy for all users of the computer.
2. UserPolicy
   1. Set by a Group Policy for the current user of the computer.
3. Process
   1. The Process scope only affects the current PowerShell session.
4. CurrentUser
   1. The execution policy affects only the current user.
5. LocalMachine
   1. The execution policy affects all users on the current computer.

## Getting Execution Policy

To get the effective execution policy:

```PowerShell
Get-ExecutionPolicy
```

This is the most restrictive policy that currently affects you.  
  
To get the execution polices for all scopes:

```powershell
Get-ExecutionPolicy -List
```

This will show you each policy per scope.

You can also get the execution policy for a specific scope.

```powershell
Get-ExecutionPolocy -Scope Process
```

## Changing Execution Policy

To change the execution policy use ```Set-ExecutionPolicy```.
**To change the LocalMachine scope you need to run PowerShell as an Administrator**
To change your execution policy:

```powershell
Set-ExecutionPolicy -ExecutionPolicy AllSigned
```

You can also set the scope that you are changing the policy for.

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Execution Policy for a Single Session

If you want to test a script without changing the execution policy then you can specify an execution policy for a new PowerShell section.

```powershell
pwsh.exe -ExecutionPolicy ByPass
```
