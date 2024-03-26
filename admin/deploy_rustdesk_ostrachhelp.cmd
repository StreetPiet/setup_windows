@echo off

REM Assign the value random password to the password variable
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
set alfanum=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
set rustdesk_pw=
for /L %%b in (1, 1, 12) do (
    set /A rnd_num=!RANDOM! %% 62
    for %%c in (!rnd_num!) do (
        set rustdesk_pw=!rustdesk_pw!!alfanum:~%%c,1!
    )
)

REM Get your config string from your Web portal and Fill Below
set rustdesk_cfg=0nI9gDS4RVb2VHWXBjNnhGZHlmdalEeTFXT0IUYBBTW6FzZtBXe0MmcuBVTzpnI6ISeltmIsIiI6ISawFmIsISZk5CcsVGaoNWYyR3cv5Cdy9GcwV3ciojI5FGblJnIsISZk5CcsVGaoNWYyR3cv5Cdy9GcwV3ciojI0N3boJye

REM ############################### Please Do Not Edit Below This Line #########################################

if not exist C:\Temp\ md C:\Temp\
cd C:\Temp\

set RUSTVER=1.2.3-1
curl -L "https://github.com/rustdesk/rustdesk/releases/download/%RUSTVER%/rustdesk-%RUSTVER%-x86_64.exe" -o rustdesk.exe
         
rustdesk.exe --silent-install
timeout /t 20

cd "C:\Program Files\RustDesk\"
rustdesk.exe --install-service
timeout /t 20

for /f "delims=" %%i in ('rustdesk.exe --get-id ^| more') do set rustdesk_id=%%i

rustdesk.exe --config %rustdesk_cfg%

rustdesk.exe --password %rustdesk_pw%

echo ...............................................
REM Show the value of the ID Variable
echo RustDesk ID: %rustdesk_id%

REM Show the value of the Password Variable
echo Password: %rustdesk_pw%
echo ...............................................
