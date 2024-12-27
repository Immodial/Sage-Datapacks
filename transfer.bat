set "datadir=%cd%"
cd "%appdata%/.minecraft/resourcepacks"
rmdir /s /q "Sage, Resources"
mkdir "Sage, Resources"
cd %datadir%
robocopy "Sage, Resources" "%appdata%/.minecraft/resourcepacks/Sage, Resources" /E