rem -----------------------------------------------------------------------
rem Media-Pack
rem 
rem curl -k -L https://raw.githubusercontent.com/StreetPiet/setup_windows/main/win10_initial_install.cmd -o start.cmd
rem
rem -----------------------------------------------------------------------

set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Ordner: Standardsoftware
set STDURL=https://raw.githubusercontent.com/StreetPiet/setup_windows/main/standardsoftware
curl -kLO %STDURL%/install_audacity.cmd  & call install_audacity.cmd
curl -kLO %STDURL%/install_vlc.cmd       & call install_vlc.cmd
curl -kLO %STDURL%/install_handbrake.cmd & call install_handbrake.cmd
