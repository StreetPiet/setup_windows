rem -----------------------------------------------------------------
rem Installiere Windows11Debloater
rem https://github.com/Raphire/Win11Debloat
rem -----------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Lade Debloater .ZIP
set BASEURL=https://raw.githubusercontent.com/StreetPiet/setup_windows/main/skripte
set PROG=Win11Debloat-master.zip
curl -kLO %BASEURL%/%PROG%
powershell.exe -command "Expand-Archive -Force -Path %PROG% -DestinationPath . "
CD Win11Debloat-master
powershell.exe -ExecutionPolicy Unrestricted -File "Win11Debloat.ps1" -Silent -RunDefaults -RemoveGamingApps -RemoveCommApps -RemoveW11Outlook -DisableBing -DisableTelemetry -DisableLockscreenTips -TaskbarAlignLeft -RevertContextMenu -ShowKnownFileExt -HideSearchTb -HideTaskview -DisableCopilot -DisableWidgets -HideChat -DisableSuggestions -HideDupliDrive
