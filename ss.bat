@echo off
set /p time="ss "

:next

if "%~1" == "" goto done

ffmpeg.exe ^
-ss %time% ^
-i "%~1" ^
-map 0 ^
-c copy ^
-avoid_negative_ts make_zero ^
"%~n1 - shortened%~x1"

shift
goto next

:done
exit
