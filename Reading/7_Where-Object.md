# Where-Object

```Where-Object``` selects objects from a collection based on their property values.  
There are two different ways to construct a ```Where-Object``` command, **Script block** and **Comparison statement**.

- **Script Block**
  - Needs property name, a comparison operator, and a property value.
  - ```Get-ChildItem | Where-Object {$_.Extension -eq "txt"}```
  - Gets all the item in the current folder with and extension of txt.
- **Comparison statement**
  - You use the same items as a script block but it is written more like natural language.
  - ```Get-ChildItem | Where-Object -Property Extension -eq -Value "txt"```
  - ```Get-ChildItem | Where-Object Extension -eq "txt"```
  - Both of the above commands do the same thing as the one in the script block.

If you want to have multiple conditions that you have to use [logical operators](6.1_Logical-Operators.md).
