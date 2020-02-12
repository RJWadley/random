cd %appdata% 
cd .minecraft
curl https://raw.githubusercontent.com/RJWadley/mmc-launch/master/JREPL.BAT --output jrepl.bat
set DispName="Scarycrumb45"
rem Ask user of batch file for the number of users.
set /P "DispName=Enter Display Name (%DispName%): "
jrepl.bat "Scarycrumb45" "%DispName%" /f launcher_profiles.json /o - & cd "C:\Program Files (x86)\Minecraft Launcher\" && start MinecraftLauncher.exe