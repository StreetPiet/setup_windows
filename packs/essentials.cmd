rem -----------------------------------------------------------------------
rem Essentials
rem
rem Must-have Programme für Jedermann
rem -----------------------------------------------------------------------

set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Ordner: Standardsoftware
set STDURL=https://support.ostrachhelp.de/OstrachHELP/setup_windows/raw/branch/main/standardsoftware
curl -kLO %STDURL%/install_7zip.cmd & call install_7zip.cmd
curl -kLO %STDURL%/install_putty.cmd & call install_putty.cmd
curl -kLO %STDURL%/install_firefox.cmd & call install_firefox.cmd
curl -kLO %STDURL%/install_keepass.cmd & call install_keepass.cmd
curl -kLO %STDURL%/install_notepad++.cmd & call install_notepad++.cmd
curl -kLO %STDURL%/install_vlc.cmd & call install_vlc.cmd