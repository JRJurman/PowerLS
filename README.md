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
![powerls-on-powershell](https://cloud.githubusercontent.com/assets/140910/17007117/b05917f2-4eab-11e6-98b9-3aa0ed94c15c.png)
![powerls-on-powershell-ise](https://cloud.githubusercontent.com/assets/140910/17007271/de449a50-4eac-11e6-8201-3e8fa76a160e.png)



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
