rem -----------------------------------------------------------------------
rem Standardinstallation für ein frisch installiertes Windows 10 Pro
rem 
rem curl -k -L https://raw.githubusercontent.com/StreetPiet/setup_windows/main/win10_initial_install.cmd -o start.cmd
rem
rem -----------------------------------------------------------------------

set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Windows Tweaks
set GITURL=https://raw.githubusercontent.com/StreetPiet/setup_windows/main
curl -kLO %GITURL%/skripte/script_win10_std_einstellungen.cmd & call script_win10_std_einstellungen.cmd
curl -kLO %GITURL%/skripte/script_onedrive_deinstallieren.cmd & call script_onedrive_deinstallieren.cmd
curl -kLO %GITURL%/skripte/Windows10Debloater.cmd             & call Windows10Debloater.cmd

rem --- Software-Pack: Essentials
curl -kLO %GITURL%/packs/essentials.cmd & call essentials.cmd
curl -kLO %GITURL%/essentiell/install_backuptools.cmd & call install_backuptools.cmd
CD /D %SAVEPATH%

