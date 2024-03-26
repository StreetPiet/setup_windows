rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Installiere .NET Runtime
set BASEURL=https://support.ostrachhelp.de/OstrachHELP/setup_windows/raw/branch/main/essentiell
set PROG=install_windowsdesktop-runtime-6.0.23-x64.cmd
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG% & call %PROG%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://github.com/HandBrake/HandBrake/releases/download/1.7.1
set PROG=HandBrake-1.7.1-x86_64-Win_GUI.exe
rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%
rem --- Silent-Installation des Programms:
%PROG% /S







