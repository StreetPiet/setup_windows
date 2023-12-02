rem ------------------------------------------------------------
rem Installiere VLC
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=vlc-3.0.20-win64.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%

rem ---- Beispiele ---------------------------------------------
%PROG% /language=de /L=1031 /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem %PROG% /install /quiet /norestart
rem c:\windows\system32\msiexec /i "%PROG%" /passive /l c:\temp\%PROG%.log 