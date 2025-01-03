@echo off
set "datadir=%cd%"
cd "%appdata%/.minecraft/resourcepacks"
if exist "Sage, Resources" (
	echo WARNING! You already have a version of Sage Resource Pack installed!
	echo Close this window if you do not want it updated!
	pause
)
rmdir /s /q "Sage, Resources"
mkdir "Sage, Resources"
cd %datadir%
robocopy "Sage, Resources" "%appdata%/.minecraft/resourcepacks/Sage, Resources" /E
echo Successfully placed new resource pack in folder!
pause