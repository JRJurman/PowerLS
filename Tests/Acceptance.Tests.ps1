$ROOT = Split-Path -Parent $MyInvocation.MyCommand.Path

Describe "Importing" {
    Context "When importing the module" {
        It "Should have no warnings" {
            $warn = $false
            $out = (powershell -noprofile "Import-Module $ROOT\..\PowerLS.psm1")
            $out | % { $warn = $warn -or ($_ -Match "WARNING") }
            $warn | Should be $false
        }
    }
}