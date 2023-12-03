rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://dl2.cdn.filezilla-project.org/client
set PROG=FileZilla_3.66.1_win64-setup.exe

rem --- Lade Installationsdatei herunter
curl -k -L "%BASEURL%/%PROG%?h=od6T6ObVh3-eWWW32MTEKg&x=1701558975" -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
%PROG% /S /user=all 
