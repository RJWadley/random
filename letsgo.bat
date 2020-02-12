set DispName="Scarycrumb45"

rem Ask user of batch file for the number of users.
set /P "DispName=Enter Display Name (%DispName%): "

jrepl.bat "Scarycrumb45" "%DispName%" /f launcher_profiles.json /o -
start "C:\Program Files (x86)\Minecraft Launcher"
