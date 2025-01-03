@echo off
if not exist "Sage, Datapack" (
	echo Couldn't find the datapack!
	echo If you deleted the file "Sage, Datapack" then restart the tutorial on GitHub.
	echo If you ran the file as administrator, close this window and re-run it!
	pause
	exit
)
set "datadir=%cd%"
cd "%appdata%/.minecraft/saves"
set "msg=Failed to find an open world to install Sage."
for /d %%d in (*) do (
	if exist "%%d\session.lock" (
		echo Testing file lock..
		copy "%%d\session.lock" "%%d\sagelocktest.txt"
		if errorlevel 1 (
			echo Loaded World Found! Installing..
			if exist "%%d\datapacks/Sage, Datapack" (
				echo WARNING! This world already has sage installed!
				echo Close this window if you do not want it overwritten!
			)
			pause
			rmdir "%%d/datapacks/Sage, Datapack"
			mkdir "%%d/datapacks/Sage, Datapack"
			robocopy "%datadir%/Sage, Datapack" "%%d/datapacks/Sage, Datapack" /E
			set "msg='Installed, leave and reenter the world to play Sage!'"
		) else (
			echo Files are unlocked, world is not loaded.
			del "%%d\sagelocktest.txt"
		)
		echo ------------------
	)
)
echo %msg%
pause