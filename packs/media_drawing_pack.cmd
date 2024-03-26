rem -----------------------------------------------------------------------
rem Media-Pack
rem 
rem curl -k -L https://support.ostrachhelp.de/OstrachHELP/setup_windows/raw/branch/main/win10_initial_install.cmd -o start.cmd
rem
rem -----------------------------------------------------------------------

set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Ordner: Standardsoftware
set STDURL=https://support.ostrachhelp.de/OstrachHELP/setup_windows/raw/branch/main/standardsoftware
curl -kLO %STDURL%/install_gimp.cmd      & call install_gimp.cmd
curl -kLO %STDURL%/install_inkscape.cmd  & call install_inkscape.cmd
curl -kLO %STDURL%/install_blender.cmd   & call install_blender.cmd
curl -kLO %STDURL%/install_freecad.cmd   & call install_freecad.cmd
