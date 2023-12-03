rem -----------------------------------------------------------------------
rem Standardinstallation für ein frisch installiertes Windows 10 Pro
rem 
rem curl -k -L https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main/win10_initial_install.cmd -o start.cmd
rem
rem -----------------------------------------------------------------------

set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Windows Tweaks
set GITURL=https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main
curl -k -L %GITURL%/skripte/script_win10_std_einstellungen.cmd -o script.cmd & call script.cmd
curl -k -L %GITURL%/skripte/script_onedrive_deinstallieren.cmd -o script.cmd & call script.cmd
curl -k -L %GITURL%/skripte/Windows10Debloater.cmd -o script.cmd & call script.cmd

rem --- Essentielle Software
curl -k -L https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main/essentiell/install_vc_redist_runtime.cmd -o script.cmd & call script.cmd
set GITURL=https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main/standardsoftware
curl -k -L %GITURL%/install_7zip.cmd -o script.cmd & call script.cmd
curl -k -L %GITURL%/install_firefox.cmd -o script.cmd & call script.cmd
curl -k -L "%GITURL%/install_notepad++.cmd" -o script.cmd & call script.cmd
