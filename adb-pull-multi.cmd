@echo off
setlocal enabledelayedexpansion

:START
title %0
call:FcolorWhite

if "%~1"=="%~dp0adb_pull.ini" (
  set target=
  for /f "delims=" %%a in (adb_pull.ini) do (
    set tmp_line=%%a
    echo !tmp_line!
    if "!tmp_line:~0,1!"=="#" (
      rem echo !tmp_line:~0,1!
    ) else (
      set target=!target! !tmp_line!
      rem echo !target!
    )
  )
  
  goto START_PULL
)
:PARA_CHECK
call:FcolorGreen
echo Plese input all file full path, seperate by space.
call:FcolorWhite
set /p target=:
if "%target%"=="" (
  goto PARA_CHECK
)

:START_PULL
call adb-pull.cmd %target%
echo.
SHIFT
goto START


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