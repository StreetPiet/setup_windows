rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://github.com/Hibbiki/chromium-win64/releases/download/v120.0.6099.71-r1217362
set PROG=mini_installer.sync.exe

rem --- Lade Installationsdatei herunter
curl -k -L "%BASEURL%/%PROG%" -o %SAVEPATH%\%PROG%

%PROG% --install --silent --system-level

