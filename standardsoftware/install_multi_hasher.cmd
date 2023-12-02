rem ------------------------------------------------------------
rem Installiere 
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=MultiHasher_Setup.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%

rem ---- Beispiele ---------------------------------------------
rem %PROG% /S
 %PROG% /SILENT /VERYSILENT /NORESTART /ALLUSERS
rem %PROG% /install /quiet /norestart
rem c:\windows\system32\msiexec /i "%PROG%" /passive /l c:\temp\%PROG%.log 