rem ----------------------------------------------------------------
rem Installiere Microsoft Visual C++ 2015-2022 Redistributable (x64)
rem ----------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

set BASEURL=https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main/essentiell
set PROG=VC_redist.x64.exe
rem --- Lade Installationsdatei herunter
curl -k %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%
rem --- Silent-Installation des Programms:
%PROG% /Q
