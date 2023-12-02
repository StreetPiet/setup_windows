rem ------------------------------------------------------------
rem Installiere LibreWolf
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=librewolf-119.0.1-1-windows-x86_64-setup.exe

MKDIR %SYSTEMDRIVE%\temp\ & CD /D %SYSTEMDRIVE%\temp
curl -k %BASEURL%/%PROG% -o %PROG%

%PROG% /S
