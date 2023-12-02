rem ------------------------------------------------------------
rem Installiere Greenshot
rem ------------------------------------------------------------

set BASEURL=https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.10.6
set PROG=Greenshot-INSTALLER-1.2.10.6-RELEASE.exe

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%
curl -k %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

(
echo [Setup]
echo Lang=de
echo Dir=
echo Group=Greenshot
echo NoIcons=0
echo Tasks=
) > greenshot.inf

%PROG% /NORESTART /VERYSILENT /SUPPRESSMSGBOXES /SP- /LOADINF=greenshot.inf