# PowerLS
Powershell ls that mimics the look of Unix-like ls

## Colors
Right now only does 3 different colors:
- Blue for Directories
- Gray for Hidden files
- Green for Files
- White for files with no extension

## Example Image
![image](https://cloud.githubusercontent.com/assets/326557/6094051/aafb8bde-aee6-11e4-98b7-14f399863232.png)

## Usage
```powershell
import-module powerls
powerls
```

## Alias to ls
```powershell
Set-Alias -Name ls -Value PowerLS -Option AllScope
```
