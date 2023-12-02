rem ------------------------------------------------------------
rem Installiere Gimp
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=gimp-2.10.36-setup.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%

%PROG% /VERYSILENT /NORESTART /ALLUSERS
