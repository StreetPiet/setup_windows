rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://github.com/audacity/audacity/releases/download/Audacity-3.4.2
set PROG=audacity-win-3.4.2-64bit.exe

rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
%PROG% /VERYSILENT /NORESTART /ALLUSERS


rem --- Installiere C++ Redistibutable
rem set BASEURL=https://raw.githubusercontent.com/StreetPiet/setup_windows/main/essentiell
rem set PROG=VC_redist.x64.exe
rem curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG% & %PROG% /Q

rem ---- Beispiele ---------------------------------------------
rem %PROG% /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem %PROG% /install /quiet /norestart
rem %SYSTEMDRIVE%\windows\system32\msiexec /i "%PROG%" /passive /l %SAVEPATH%\%PROG%.log 
