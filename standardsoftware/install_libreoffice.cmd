rem ------------------------------------------------------------
rem Installiere LibreOffice
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=LibreOffice_7.6.2_Win_x86.msi

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%

rem ---- Beispiele ---------------------------------------------
rem %PROG% /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem %PROG% /install /quiet /norestart
msiexec /i %PROG% /qn /norestart PRODUCTLANGUAGE=1031 LANGUAGE=1031 RebootYesNo=No QUICKSTART=0 UI_LANGS=de ADDLOCAL=ALL /l c:\temp\%PROG%.log
