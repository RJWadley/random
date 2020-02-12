@echo off

rem Exit this batch file if file config.json does not exist in current directory.

cd %appdata%\.minecraft

if not exist launcher_profiles.json goto :EOF

rem Define a default value for number of users.
set DispName="Scarycrumb45"

rem Ask user of batch file for the number of users.
set /P "DispName=Enter Display Name (%DispName%): "


powershell -Command "(gc launcher_profiles.json) -replace 'Scarycrumb45', '%DispName%' | Out-File -encoding ASCII launcher_profiles.json"

rem Delete the used environment variable.
set "DispName="

