@echo off
set /p v0="Volume for Stream 0 (1.0 = unchanged): "
set /p v1="Volume for Stream 1 (1.0 = unchanged): "

:next

if "%~1" == "" goto done

ffmpeg.exe -i "%~1" ^
-filter_complex "[0:a:0]volume=%v0%[a0];[0:a:1]volume=%v1%[a1];[a0][a1]amix=inputs=2[amix]" ^
-map 0:v:0 ^
-map "[amix]" ^
-map 0:a:0 ^
-map 0:a:1 ^
-c:v copy ^
-c:a:0 aac -b:a 192k ^
-c:a:1 copy ^
-c:a:2 copy ^
"%~n1 - mixed + volume adjusted%~x1"

shift
goto next

:done
exit
