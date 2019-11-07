@echo off
setlocal enabledelayedexpansion

title %0
set DEST_DIR=/mnt/extsd/
echo adb devices
adb devices

if "%~1"=="" (
  call:FcolorRed
  echo ----------Please Input Parameter----------
  call:FcolorWhite
  goto END
)


:PUSH
echo -----------------------------------
call:FcolorGreen
set target=%~1
echo %target% ^=^=^=^=^> %DEST_DIR%

echo adb push "%target%" %DEST_DIR%
adb push "%target%" %DEST_DIR%
call:FcolorWhite

SHIFT
if not "%~1"=="" (
  goto PUSH
)
echo -----------------------------------
echo All files pushed.
echo.
echo adb shell ls %DEST_DIR%
adb shell ls %DEST_DIR%
echo.

:END
rem pause
call cmd



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