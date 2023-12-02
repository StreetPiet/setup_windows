rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.10.6
set PROG=Greenshot-INSTALLER-1.2.10.6-RELEASE.exe

rem --- Lade Installationsdatei herunter
curl -k %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
(
echo [Setup]
echo Lang=de
echo Dir=
echo Group=Greenshot
echo NoIcons=0
echo Tasks=
) > greenshot.inf

%PROG% /NORESTART /VERYSILENT /SUPPRESSMSGBOXES /SP- /LOADINF=greenshot.inf
