rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set VERSION=120.0.1
set BASEURL=https://download-installer.cdn.mozilla.net/pub/firefox/releases/%VERSION%/win64/de
set PROG=Firefox%%20Setup%%20%VERSION%.msi

rem --- Lade Installationsdatei herunter
echo %BASEURL%/%PROG%
curl -kLO "%BASEURL%/%PROG%"

%SYSTEMDRIVE%\windows\system32\msiexec /i "%PROG%" /passive /l %SAVEPATH%\%PROG%.log TASKBAR_SHORTCUT=true DESKTOP_SHORTCUT=false 
