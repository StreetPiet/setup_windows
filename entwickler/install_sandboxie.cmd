rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- TortoiseGIT
set BASEURL=https://github.com/sandboxie-plus/Sandboxie/releases/download/v1.12.3
set PROG=Sandboxie-Plus-x64-v1.12.3.exe
rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

%PROG% /lang=1031 /install /S
