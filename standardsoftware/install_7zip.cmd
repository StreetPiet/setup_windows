rem ------------------------------------------------------------
rem Installiere 7-Zip
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=7z2301-x64.msi

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%
c:\windows\system32\msiexec /i "%PROG%" /passive /l c:\temp\%PROG%.log 