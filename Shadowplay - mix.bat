:next

if "%~1" == "" goto done

ffmpeg.exe -i "%~1" ^
-filter_complex "[0:a:0][0:a:1]amerge=inputs=2,pan=stereo|c0=c0+c2|c1=c1+c3[amerge]" ^
-map 0:v:0 ^
-map "[amerge]" ^
-map 0:a:0 ^
-map 0:a:1 ^
-c:v copy ^
-c:a:0 aac -b:a 192k ^
-c:a:1 copy ^
-c:a:2 copy ^
"%~n1 - mixed%~x1"

shift
goto next

:done
exit
