# Powershell unix-like ls
# written by Jesse Jurman (JRJurman)

write-host "" # add newline at top

# the first (and only) argument should be a redirect, if we need it
# we separate it out to redirect the checking for a directory
if ($args.count -ne 0) {
  $redirect = $args[0]
}
else {
  $redirect = "."
}

# get the console buffersize
$buffer = Get-Host
$bufferwidth = $buffer.ui.rawui.buffersize.width

# get all the files and folders
$childs = Get-ChildItem $redirect

# get the longest string and get the length
$lnStr = $childs | select-object Name | sort-object { "$_".length } -descending | select-object -first 1
$len = $lnStr.name.length

# keep track of how long our line is so far
$count = 0

# extra space to give some breather space
$breather = 4

# for every element, print the line
foreach ($e in $childs) {

  $newName = $e.name + (" "*($len - $e.name.length+$breather))
  $count += $newName.length

  # determine color we should be printing
  # Blue for folders, Green for files, and Gray for hidden files
  if (Test-Path ($redirect + "\" + $e) -pathtype container) { #folders
    write-host $newName -nonewline -foregroundcolor blue
  }
  elseif ($newName -match "^\..*$") { #hidden files
    write-host $newName -nonewline -foregroundcolor darkgray
  }
  elseif ($newName -match "\.[^\.]*") { #normal files
    write-host $newName -nonewline -foregroundcolor green
  }
  else { #others...
    write-host $newName -nonewline -foregroundcolor white
  }

  if ( $count -ge ($bufferwidth - ($len+$breather)) ) {
    write-host ""
    $count = 0
  }

}

write-host "" # add newline at bottom
write-host "" # add newline at bottom
