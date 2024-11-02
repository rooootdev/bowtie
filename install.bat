@echo off
setlocal

powershell -Command "if ($null -ne $PSVersionTable) { exit 0 } else { exit 1 }"
if %ERRORLEVEL% NEQ 0 (
    echo PowerShell is not available.
    exit /B 1
)

set "command=iex (iwr https://roooot.dev/ps/bowtie/bt.ps1)"
for /f "delims=" %%i in ('powershell -Command "$PROFILE"') do set "path=%%i"

if not exist "%path%" (
    echo [ - ] %path% does not exist?
)

echo %command% >> "%path%"
echo [ i ] installed bowtie

powershell.exe -Command "iex (iwr https://roooot.dev/ps/bowtie/bt.ps1)"

pause
endlocal
