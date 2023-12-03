rem ------------------------------------------------------------
rem Installiere KeePass XC
rem ------------------------------------------------------------

set BASEURL=https://objects.githubusercontent.com/github-production-release-asset-2e65be/33014811/76df79ff-5931-489a-b101-fb144d7d37ba?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231203%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231203T004631Z&X-Amz-Expires=300&X-Amz-Signature=0818b588748884aa34bbcb3f28da108dfe9fd5cc65a62c7e6c4aac4e5c3f750f&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=33014811&response-content-disposition=attachment%3B%20filename%3Dnpp.8.6.Installer.x64.exe&response-content-type=application%2Foctet-stream
set PROG=npp.8.6.Installer.x64.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k -L %BASEURL% -o c:\temp\%PROG%

rem --- Deinstalliere alte Version
if exist "%%programfiles%%\Notepad++\uninstall.exe" "%%programfiles%%\Notepad++\uninstall.exe" /S
if exist "%%programfiles(x86)%%\ Notepad++\uninstall.exe" "%%programfiles(x86)%%\Notepad++\uninstall.exe" /S

rem --- Installiere Notepad++
%PROG% /S /noUpdater