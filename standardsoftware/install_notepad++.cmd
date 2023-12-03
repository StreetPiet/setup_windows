rem ------------------------------------------------------------
rem Installiere Notepad++
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

set BASEURL=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.6
set PROG=npp.8.6.Installer.exe

curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Deinstalliere alte Version
if exist "%%programfiles%%\Notepad++\uninstall.exe" "%%programfiles%%\Notepad++\uninstall.exe" /S
if exist "%%programfiles(x86)%%\ Notepad++\uninstall.exe" "%%programfiles(x86)%%\Notepad++\uninstall.exe" /S

rem --- Installiere Notepad++
%PROG% /S /noUpdater

