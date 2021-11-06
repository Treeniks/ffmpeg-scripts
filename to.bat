@echo off
set /p time="to "

:next

if "%~1" == "" goto done

ffmpeg.exe ^
-i "%~1" ^
-to %time% ^
-map 0 ^
-c copy ^
"%~n1 - shortened%~x1"

shift
goto next

:done
exit
