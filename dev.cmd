rem ------------------------------------------------------------------------
rem Für Entwickler:
rem     Klont das windows_setup Repository nach C:\TEMP
rem     Benötigt:GIT for windows_setup
rem ------------------------------------------------------------------------

MKDIR %SYSTEMDRIVE%\temp
CD /D %SYSTEMDRIVE%\temp
git clone https://support.ostrachhelp.de/OstrachNET/setup_windows.git
CD setup_windows
git pull