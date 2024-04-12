@echo off
title Artificial Virtual Intelligence
color 06

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION




cls

python -c "import pyttsx3; engine = pyttsx3.init(); voices = engine.getProperty('voices'); engine.setProperty('voice', voices[1].id); engine.say('Hello. How can i assist you today??'); engine.runAndWait()"


:menuLOOP


echo    __    _  _  ____ 
echo   /__\  ( \/ )(_  _)                    + $AM
echo  /(__)\  \  /  _)(_                   Ver:1.0
echo (__)(__)()\/()(____)                  (C)2024
echo.  

ping -n 1 8.8.8.8 > nul
if %errorlevel% == 0 (
    set status=Online
) else (
    set status=Offline
)

echo.= WELCOME ========== %time% = %status% ===
echo.

for /f "tokens=1,2,* delims=_ " %%A in ('findstr /b /c:":menu_" "%~f0"') do echo.    %%B  %%C

set "quotes[0]=The only way to do great work is to love what you do. - Steve Jobs"
set "quotes[1]=Believe you can and you're halfway there. - Theodore Roosevelt"
set "quotes[2]=Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill"
set "quotes[3]=It does not matter how slowly you go as long as you do not stop. - Confucius"
set "quotes[4]=Hardships often prepare ordinary people for an extraordinary destiny. - C.S. Lewis"
set "quotes[5]=The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt"
set "quotes[6]=The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt"
set "quotes[7]=What you get by achieving your goals is not as important as what you become by achieving your goals. - Zig Ziglar"
set "quotes[8]=The only way to achieve the impossible is to believe it is possible. - Charles Kingsleigh (Alice in Wonderland)"
set "quotes[9]=You are never too old to set another goal or to dream a new dream. - C.S. Lewis"
set /a "index=%random% %% 10"
echo. 
echo "!quotes[%index%]!"



set choice=
echo.&set /p choice=Enter command: ||GOTO:menuLOOP
echo.&call :menu_%%choice%%
GOTO :menuLOOP

:menu_WWW Internet Speed total_iteration
speedtest-cli

GOTO :EOF

:menu_XXX Locker
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDPrivate
:CONFIRM
echo Are you sure to lock this folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Enter password to Unlock Your Secure Folder
set/p "pass=>"
if NOT %pass%== 12321 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDPrivate
md Private
echo Private created successfully
goto End
:End
GOTO :EOF

:menu_CMD New Command Line
cmd.exe
GOTO :EOF

:menu_ 
GOTO :EOF

:menu_CLS Clear Screen
cls
GOTO :EOF

:menu_EXT Exit AVI
exit
GOTO :EOF
