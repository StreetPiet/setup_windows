rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem https://download-installer.cdn.mozilla.net/pub/firefox/releases/120.0.1/win64/de/Firefox%20Setup%20120.0.1.msi

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://download.mp3tag.de
set PROG=mp3tagv323-x64-setup.exe

rem --- Lade Installationsdatei herunter
curl -k -L "%BASEURL%/%PROG%" -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
(
echo [shortcuts]
echo startmenu=1
echo desktop=1
echo explorer=1
echo quicklaunch=1
echo [addons]
echo quickpick=1
echo [language]
echo language=langid
) > mp3tag.ini

%PROG% /INI=mp3tag.ini
