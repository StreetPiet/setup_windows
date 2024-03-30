rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Installiere C++ Redistibutable
set BASEURL=https://raw.githubusercontent.com/StreetPiet/setup_windows/main/binaries
set PROG=VC_redist.x64.exe
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG% & %PROG% /Q

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set VERSION=2.7.7
set BASEURL=https://github.com/keepassxreboot/keepassxc/releases/download/%VERSION%
set PROG=KeePassXC-%VERSION%-Win64.msi

rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
%SYSTEMDRIVE%\windows\system32\msiexec /i "%PROG%" /passive /l %SAVEPATH%\%PROG%.log 

