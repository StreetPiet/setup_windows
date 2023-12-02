rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://7-zip.org/a
set PROG=7z2301-x64.msi
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
MKDIR %SAVEPATH% & CD /D %SAVEPATH%
curl -k %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
%SYSTEMDRIVE%\windows\system32\msiexec /i "%PROG%" /passive /l %SAVEPATH%\%PROG%.log 

rem ---- Beispiele ---------------------------------------------
rem %PROG% /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem %PROG% /install /quiet /norestart
rem c:\windows\system32\msiexec /i "%PROG%" /passive /l %SAVEPATH%\%PROG%.log 