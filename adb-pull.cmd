@echo off
setlocal enabledelayedexpansion

set CURE_NAME=%0
title %CURE_NAME%
echo -------------------Start of %CURE_NAME% -------------------
set DEST_DIR=FromBoard\
if "%~1"=="" (
  set NO_PARA=true
)else (
  set NO_PARA=false
)
echo adb devices
adb devices


:PULL
echo -----------------------------------
set target=%~1
:PARA_CHECK
if "%target%"=="" (
  echo Plese input one file full path.
  set /p target=:
)
if "%target%"=="" (
  goto PARA_CHECK
)
call:FcolorGreen
echo %target% ^=^=^=^=^> %DEST_DIR%
echo adb pull "%target%" %DEST_DIR%
adb pull "%target%" %DEST_DIR%
call:FcolorWhite

SHIFT
if not "%~1"=="" (
  goto PULL
)
echo -----------------------------------
echo All files pulled to %DEST_DIR%.
REM echo.
REM echo dir %DEST_DIR%
REM dir %DEST_DIR%

:END
if %NO_PARA%==true (
  goto PULL
)
echo -------------------End of %CURE_NAME% -------------------
REM pause
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