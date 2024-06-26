rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem https://download-installer.cdn.mozilla.net/pub/firefox/releases/120.0.1/win64/de/Firefox%20Setup%20120.0.1.msi

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://download.mozilla.org/?product=firefox-stub&os=win&lang=de
set PROG=Firefox_Installer.exe

rem --- Lade Installationsdatei herunter
curl -k -L "%BASEURL%" -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
(
echo [Install]
echo TaskbarShortcut=true
echo DesktopShortcut=true
echo StartMenuShortcuts=true
echo RegisterDefaultAgent=true
) > FirefoxInstaller_setup.ini

%PROG% /INI=FirefoxInstaller_setup.ini

