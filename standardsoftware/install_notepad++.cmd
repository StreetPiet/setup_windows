rem ------------------------------------------------------------
rem Installiere KeePass XC
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=npp.8.5.8.Installer.x64.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%

rem --- Deinstalliere alte Version
if exist "%%programfiles%%\Notepad++\uninstall.exe" "%%programfiles%%\Notepad++\uninstall.exe" /S
if exist "%%programfiles(x86)%%\ Notepad++\uninstall.exe" "%%programfiles(x86)%%\Notepad++\uninstall.exe" /S

rem --- Installiere Notepad++
%PROG% /S