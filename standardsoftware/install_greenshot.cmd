rem ------------------------------------------------------------
rem Installiere Greenshot
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=Greenshot%%201.2.10.6.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%

(
echo [Setup]
echo Lang=de
echo Dir=
echo Group=Greenshot
echo NoIcons=0
echo Tasks=
) > greenshot.inf

%PROG% /NORESTART /VERYSILENT /SUPPRESSMSGBOXES /SP- /LOADINF=greenshot.inf