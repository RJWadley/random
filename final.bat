cd %appdata% 
cd .minecraft
curl https://raw.githubusercontent.com/RJWadley/mmc-launch/master/JREPL.BAT --output jrepl.bat
set DispName="Scarycrumb45"

SET /A test=%random% %% 4 + 1

if %test%==1 (SET DispName=Mom)
if %test%==2 (SET DispName=Chris)
if %test%==3 (SET DispName=Josie)
if %test%==4 (SET DispName=Robbie)

echo %DispName%

jrepl.bat "Scarycrumb45" "%DispName%" /f launcher_profiles.json /o - && cd "C:\Program Files (x86)\Minecraft Launcher\" && start MinecraftLauncher.exe
