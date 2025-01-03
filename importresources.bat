@echo off
if not exist "Sage, Resources" (
	echo Couldn't find the resource pack!
	echo If you deleted the file "Sage, Resources" then restart the tutorial on GitHub.
	echo If you ran the file as administrator, close this window and re-run it!
	pause
	exit
)
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