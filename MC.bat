@echo off
echo 1 - Clear logs
echo 2 - Clear Crash report
echo 3 - Clear config
echo 4 - Clear logs Tl
echo 5 - Clear All not config
echo 6 - Clear logs, Crash, logs Tl

set /p var="-> "

if "%var%"=="1" goto first   
if "%var%"=="2" goto second
if "%var%"=="3" goto third
if "%var%"=="4" goto fourth
if "%var%"=="5" goto fifth
if "%var%"=="6" goto sixth

:first
rd /S /Q "%AppData%\.minecraft\logs"
echo Cleared 1!
timeout 2
exit

:second
rd /S /Q "%AppData%\.minecraft\crash-reports"
echo Cleared 2!
timeout 2
exit
 
:third
rd /S /Q "%AppData%\.minecraft\config"
echo Cleared 3!
timeout 2
exit

:fourth
rd /S /Q "%AppData%\Roaming\.tlauncher\logs"
echo Cleared 4!
timeout 2
exit

:fifth
rd /S /Q "%AppData%\.minecraft\logs"
rd /S /Q "%AppData%\.minecraft\crash-reports"
rd /S /Q "%AppData%\.minecraft\.mixin.out"
rd /S /Q "%AppData%\.minecraft\config"
rd /S /Q "%AppData%\.minecraft\tlLoader"
REM rd /S /Q %AppData%\.minecraft\baritone
rd /S /Q "%AppData%\Roaming\.tlauncher\logs"
echo Cleared 5!
timeout 2
exit

:sixth
rd /S /Q "%AppData%\Roaming\.tlauncher\logs"
rd /S /Q "%AppData%\.minecraft\crash-reports"
rd /S /Q "%AppData%\.minecraft\.mixin.out"
rd /S /Q "%AppData%\.minecraft\tlLoader"
rd /S /Q "%AppData%\Roaming\.tlauncher\logs"
echo Cleared 6!
timeout 2
exit