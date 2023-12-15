rem -----------------------------------------------------------------------
rem Standardinstallation für ein frisch installiertes Windows 11 rem 
rem -----------------------------------------------------------------------

set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Windows Tweaks
set GITURL=https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main
curl -kLO %GITURL%/skripte/script_win10_std_einstellungen.cmd & call script_win11_std_einstellungen.cmd
curl -kLO %GITURL%/skripte/script_onedrive_deinstallieren.cmd & call script_onedrive_deinstallieren.cmd
curl -kLO %GITURL%/skripte/Windows11Debloater.cmd             & call Windows11Debloater.cmd

rem --- Software-Pack: Essentials
curl -kLO %GITURL%/packs/essentials.cmd & call essentials.cmd
