rem ----------------------------------------------------------------
rem Installiere Microsoft Visual C++ 2015-2022 Redistributable (x64)
rem ----------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

set BASEURL=https://raw.githubusercontent.com/StreetPiet/setup_windows/main/binaries
set PROG=windowsdesktop-runtime-6.0.23-win-x64.exe
rem --- Lade Installationsdatei herunter
curl -kL %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%
rem --- Silent-Installation des Programms:
%PROG% /install /quiet /norestart
