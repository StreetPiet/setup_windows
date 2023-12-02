rem ------------------------------------------------------------
rem Installiere 
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=

MKDIR %SYSTEMDRIVE%\temp\ & CD /D %SYSTEMDRIVE%\temp
curl -k %BASEURL%/%PROG% -o %SYSTEMDRIVE%\temp\%PROG%

rem ---- Beispiele ---------------------------------------------
rem %PROG% /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem %PROG% /install /quiet /norestart
rem c:\windows\system32\msiexec /i "%PROG%" /passive /l c:\temp\%PROG%.log 