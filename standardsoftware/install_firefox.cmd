rem ------------------------------------------------------------
rem Installiere 
rem ------------------------------------------------------------

set BASEURL=https://download.mozilla.org/?product=firefox-stub&os=win&lang=de
set PROG=Firefox_Installer.exe

rem MKDIR C:\temp\ & CD /D C:\temp
curl -k "%BASEURL%" -o %PROG%

(
echo [Install]
echo TaskbarShortcut=true
echo DesktopShortcut=true
echo StartMenuShortcuts=true
) > FirefoxInstaller_setup.ini

%PROG% /INI=FirefoxInstaller_setup.ini
