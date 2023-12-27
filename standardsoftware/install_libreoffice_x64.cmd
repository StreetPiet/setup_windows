rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set VERSION=7.6.4
set BASEURL=https://download.documentfoundation.org/libreoffice/stable/%VERSION%/win/x86_64
set PROG=LibreOffice_%VERSION%_Win_x86-64.msi

rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
msiexec /i %PROG% /qn /norestart PRODUCTLANGUAGE=1031 LANGUAGE=1031 RebootYesNo=No QUICKSTART=0 UI_LANGS=de ADDLOCAL=ALL /l %SAVEPATH%\%PROG%.log
