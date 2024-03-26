rem -----------------------------------------------------------------------
rem Office-Pack
rem -----------------------------------------------------------------------

set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Ordner: Standardsoftware
set STDURL=https://support.ostrachhelp.de/OstrachHELP/setup_windows/raw/branch/main/standardsoftware
curl -kLO %STDURL%/install_greenshot.cmd       & call install_greenshot.cmd
curl -kLO %STDURL%/install_sumatrapdf.cmd      & call install_sumatrapdf.cmd
curl -kLO %STDURL%/install_pdf24.cmd           & call install_pdf24.cmd
curl -kLO %STDURL%/install_libreoffice_x64.cmd & call install_libreoffice_x64.cmd
curl -kLO %STDURL%/install_microsip.cmd        & call install_microsip.cmd


