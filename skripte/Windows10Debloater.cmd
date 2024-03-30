rem -----------------------------------------------------------------
rem Installiere Windows10Debloater
rem -----------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Lade Debloater .ZIP
set BASEURL=https://raw.githubusercontent.com/StreetPiet/setup_windows/main/skripte
set PROG=Windows10Debloater-master.zip
curl -k -L %BASEURL%/%PROG% -o %PROG%
powershell.exe -command "Expand-Archive -Force -Path %PROG% -DestinationPath . "
CD Windows10Debloater-master
powershell.exe -ExecutionPolicy Unrestricted -File "Win11Debloat.ps1" -RunDefaults