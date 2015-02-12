# PowerLS ![build status](https://ci.appveyor.com/api/projects/status/github/JRJurman/PowerLS?svg=true&retina=true)
Powershell ls that mimics the look of Unix-like ls

## Installing
If you have [PSGet](http://psget.net/) you can easily install like so:
```powershell
install-module powerls
```

If you want to install from a copy of this repo, follow the directions under [usage](#usage)

## Colors
Right now only does 3 different colors:
- Blue for Directories
- Gray for Hidden files
- Green for Files
- White for files with no extension

## Example Image
![image](https://cloud.githubusercontent.com/assets/326557/6094051/aafb8bde-aee6-11e4-98b7-14f399863232.png)

## Usage
From the root directory, run:
```powershell
import-module powerls
powerls
```

## Alias to ls
```powershell
Set-Alias -Name ls -Value PowerLS -Option AllScope
```
