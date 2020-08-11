@echo off
setlocal enabledelayedexpansion

set CURE_NAME=%0
title %CURE_NAME%
echo -------------------Start of %CURE_NAME% -------------------
if "%~1"=="" (
  echo Please Input Target File.
  goto END
)

set /p width=Please Input The Width:
set /p height=Please Input The Height:
echo %width% %height%
:LOOP
echo -----------------------------------
set target=%~1
call:FcolorGreen
echo %target% 
call:FcolorWhite

copy %target% %target%.yuv >%CURE_NAME%.log 2>&1
if exist %target%.bmp (
  del /F %target%.bmp
)
ffmpeg -pix_fmt yuv420p -s %width%*%height% -i %target%.yuv %target%.bmp >>%CURE_NAME%.log 2>&1
del /F %target%.yuv 

SHIFT
if not "%~1"=="" (
  goto LOOP
)
echo -----------------------------------
REM echo.
REM echo dir %DEST_DIR%
REM dir %DEST_DIR%

:END
echo -------------------End of %CURE_NAME% -------------------
pause
REM call cmd



:FcolorBlack
cmd /cecho [1;30m
goto:eof
:FcolorRed
cmd /cecho [1;31m
goto:eof
:FcolorGreen
cmd /cecho [1;32m
goto:eof
:FcolorYellow
cmd /cecho [1;33m
goto:eof
:FcolorBlue
cmd /cecho [1;34m
goto:eof
:FcolorPurple
cmd /cecho [1;35m
goto:eof
:FcolorCyan
cmd /cecho [1;36m
goto:eof
:FcolorWhite
cmd /cecho [1;37m
goto:eof
:BcolorBlack
cmd /cecho [1;40m
goto:eof
:BcolorRed
cmd /cecho [1;41m
goto:eof
:BcolorGreen
cmd /cecho [1;42m
goto:eof
:BcolorYellow
cmd /cecho [1;43m
goto:eof
:BcolorBlue
cmd /cecho [1;44m
goto:eof
:BcolorPurple
cmd /cecho [1;45m
goto:eof
:BcolorCyan
cmd /cecho [1;46m
goto:eof
:BcolorWhite
cmd /cecho [1;47m
goto:eof