rem ------------------------------------------------
rem Installiere Meshcentral 
rem ------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=albrecht-elektrotechnik-fernwartung64-AL-Computer.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k -L %BASEURL%/%PROG% -o c:\temp\%PROG%

%PROG% -fullinstall
