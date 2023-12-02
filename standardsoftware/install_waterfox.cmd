rem ------------------------------------------------------------
rem Installiere Waterfox
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=Waterfox%%20Setup%%20G6.0.6.exe

rem MKDIR %SYSTEMDRIVE%\temp\ & CD /D %SYSTEMDRIVE%\temp
curl -k %BASEURL%/%PROG% -o %PROG%

%PROG% /S
