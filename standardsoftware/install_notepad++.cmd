rem ------------------------------------------------------------
rem Installiere KeePass XC
rem ------------------------------------------------------------

set BASEURL=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.6
set PROG=npp.8.6.Installer.x64.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k -L %BASEURL%/%PROG% -o c:\temp\%PROG%

rem --- Deinstalliere alte Version
if exist "%%programfiles%%\Notepad++\uninstall.exe" "%%programfiles%%\Notepad++\uninstall.exe" /S
if exist "%%programfiles(x86)%%\ Notepad++\uninstall.exe" "%%programfiles(x86)%%\Notepad++\uninstall.exe" /S

rem --- Installiere Notepad++
%PROG% /S /noUpdater