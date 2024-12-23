@echo off
chcp 65001 >nul
cls
title PHARAOH MULTITOOL
set /p user="[38;2;255;255;0m [Enter any user] ↪ "
:loop
cls
set /p password="[38;2;0;0;255m [Enter the password] ↪ "

if "%password%"=="root" goto cpass
if "%password%" neq "root" goto ipass

:ipass
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Incorrect pass!', 'Incorrect pass!') }"
goto loop

:cpass
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Correct pass!', 'Correct pass!') }"
goto menu

:menu
cls 
echo.
echo [38;2;0;0;255m██████╗ ██╗  ██╗ █████╗ ██████╗  █████╗  ██████╗ ██╗  ██╗[0m
echo [38;2;51;51;204m██╔══██╗██║  ██║██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██║  ██║[0m
echo [38;2;102;102;153m██████╔╝███████║███████║██████╔╝███████║██║   ██║███████║[0m
echo [38;2;153;153;102m██╔═══╝ ██╔══██║██╔══██║██╔══██╗██╔══██║██║   ██║██╔══██║[0m
echo [38;2;204;204;51m██║     ██║  ██║██║  ██║██║  ██║██║  ██║╚██████╔╝██║  ██║[0m
echo [38;2;255;255;0m╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝[0m
echo.
echo [38;2;51;51;204m    ════════════ Logged in as: %user% ════════════
echo.
echo.
set /p help="[38;2;255;255;0m     ╚═══➤ Type "help" for commands: "

if "%help%"=="help" goto menu2
if "%help%" neq "help" goto menu

:menu2
cls
echo [38;2;0;0;255m██████╗ ██╗  ██╗ █████╗ ██████╗  █████╗  ██████╗ ██╗  ██╗[0m
echo [38;2;51;51;204m██╔══██╗██║  ██║██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██║  ██║[0m
echo [38;2;102;102;153m██████╔╝███████║███████║██████╔╝███████║██║   ██║███████║[0m
echo [38;2;153;153;102m██╔═══╝ ██╔══██║██╔══██║██╔══██╗██╔══██║██║   ██║██╔══██║[0m
echo [38;2;204;204;51m██║     ██║  ██║██║  ██║██║  ██║██║  ██║╚██████╔╝██║  ██║[0m
echo [38;2;255;255;0m╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝[0m
echo.
echo [38;2;51;51;204m    ════════════ Logged in as: %user% ════════════
echo.
echo [38;2;255;255;0m  ╔ ═════ ════════════════ ════════════════ ══════ ╗
echo [38;2;255;255;0m     1. IP GEO  》 2. WEBHOOK SPAM  》 3. CREDITS
echo.                                           
echo [38;2;255;255;0m         4. TOKEN MSG SENDER  》 5. GITHUB                                                                
echo  [38;2;255;255;0m ╚ ═════ ════════════════ ════════════════ ══════ ╝
echo.
set /p choice="[38;2;51;51;204m    ╚═══════════════➤  "
if "%choice%"=="1" goto ip
if "%choice%"=="2" goto webhook
if "%choice%"=="3" goto credits
if "%choice%"=="4" goto py
if "%choice%"=="5" goto cosoon
if "%choice%" neq "1" goto menu
if "%choice%" neq "2" goto menu
if "%choice%" neq "3" goto menu
if "%choice%" neq "4" goto menu
if "%choice%" neq "5" goto menu

:cosoon
cls
start https://github.com/K1ngbobb
timeout 2 >nul
goto menu2


:py
start nuker.py
timeout 2>nul
goto menu2

:ip
cls
echo [38;2;0;0;255m  ══════════ IP GEOLOCATION ══════════
echo.
echo.
set /p ip="[38;2;255;255;0m  ╚═════➤ IP: "

curl "https://ipinfo.io/%ip%/json" -o success.json
echo [38;2;255;255;0m══════════════════════════════
echo.
echo [38;2;255;255;0mIP Geolocation for %ip%:
type success.json
del success.json
echo [38;2;255;255;0m══════════════════════════════
pause >nul
goto menu2


:webhook
cls
echo.
echo [38;2;255;255;0m     ↜═════ Discord webhook spammer ↜═════
echo.
set /p "webhook= [38;2;0;0;255m╚═════➤ Enter Discord webhook URL for Message Sender: "
echo.
set /p "message= [38;2;255;255;0m╚═════➤ Enter the message to send: "
echo.
set /p "delay=[38;2;0;0;255m╚═════➤ Delay between sending messages: "
echo.
set /p "num_times= [38;2;255;255;0m╚═════➤ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
    cls
    echo [38;2;255;255;0m ══➤ Sent message number %%n
    timeout /t %delay% >nul
)
echo.
echo [38;2;0;0;255m%num_times% Messages have been sent successfully.
timeout 2>nul
goto menu2

:credits
cls
echo   ↜═════↜═════↜═════
timeout 1 >nul
echo         CREDITS:
timeout 1 >nul
echo         KINGBOB
timeout 1 >nul
echo.    
echo        ABOUT ME:  
timeout 1 >nul
echo        Hungarian 
timeout 1 >nul
echo      Lucky num: 5
timeout 1 >nul
echo     Fav animal: cat
timeout 1 >nul
echo   ↜═════↜═════↜═════
pause >nul
goto menu2

