rem -----------------------------------------------------------------
rem Installiere Windows10Debloater
rem -----------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Lade Debloater .ZIP
set BASEURL=https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main/skripte
set PROG=Windows10Debloater-master.zip
curl -k -L %BASEURL%/%PROG% -o %PROG%
powershell.exe -command "Expand-Archive -Path %PROG% -DestinationPath . "
CD Windows10Debloater-master
powershell.exe -command "Windows10Debloater.ps1"