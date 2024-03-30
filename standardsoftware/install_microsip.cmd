rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://raw.githubusercontent.com/StreetPiet/setup_windows/main/binaries
set PROG=MicroSIP-3.21.3.zip

rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Unzipping....
powershell.exe "& {Expand-Archive %PROG% -DestinationPath %PROG%EXT}"

rem --- Silent-Installation des Programms:
MKDIR "%Programfiles(x86)%\MicroSIP"
COPY %PROG%EXT\*.* "%Programfiles(x86)%\MicroSIP\"

rem --- Verknüpfung
set VBS=link.vbs
echo Set oWS = WScript.CreateObject("WScript.Shell")                >%VBS%
echo sLinkFile = "C:\Users\Public\Desktop\MicroSIP.lnk"             >>%VBS%
echo Set oLink = oWS.CreateShortcut(sLinkFile)                      >>%VBS%
echo oLink.TargetPath = "%Programfiles(x86)%\MicroSIP\microsip.exe" >>%VBS%
echo oLink.Save                                                     >>%VBS%

cscript /nologo %VBS%

rem MKLINK C:\Users\Public\Desktop\MicroSIP "%Programfiles(x86)%\MicroSIP\microsip.exe"