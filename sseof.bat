set /p time="sseof "

:next

if "%~1" == "" goto done

ffmpeg.exe ^
-sseof -%time% ^
-i "%~1" ^
-map 0 ^
-c copy ^
-avoid_negative_ts make_zero ^
"%~n1 - shortened%~x1"

ren "%~1" "%~n1%~x1"

shift
goto next

:done
exit
