rem ----------------------------------------------------------------
rem Installiere Disk2VHD und DoubleDriver
rem ----------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\SETUP
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

set BASEURL=https://support.ostrachhelp.de/OstrachHELP/setup_windows/raw/branch/main/binaries
set PROG=Disk2vhd.zip
curl -kLO %BASEURL%/%PROG%
powershell.exe "& {Expand-Archive %PROG% -Force -DestinationPath .}"
del %PROG%

set BASEURL=https://support.ostrachhelp.de/OstrachHELP/setup_windows/raw/branch/main/binaries
set PROG=Double%%20Driver.zip
curl -kLO %BASEURL%/%PROG%
powershell.exe "& {Expand-Archive %PROG% -Force -DestinationPath .}"
del %PROG%

rem --- Sichere alle Treiber:
cd /D "%SAVEPATH%\Double Driver"
ddc b /target:%SAVEPATH%\Treiber
