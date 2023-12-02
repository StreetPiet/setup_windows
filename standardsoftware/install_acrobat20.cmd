rem --------------------------------
rem installiere Acrobat Reader DC 20
rem --------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=AcroRdrDC2000920063_de_DE.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%
%PROG% /sAll /rs /sl "1031" /l