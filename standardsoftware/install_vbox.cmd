rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Microsoft Redistributable C++
set BASEURL=https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main/essentiell
set PROG=VC_redist.x64.exe
rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%
rem --- Silent-Installation des Programms:
%PROG% /Q

rem --- VirtualBox Extension Pack
set BASEURL=https://download.virtualbox.org/virtualbox/7.0.12
set EXTN=Oracle_VM_VirtualBox_Extension_Pack-7.0.12.vbox-extpack
rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%EXTN% -o %SAVEPATH%\%EXTN%

rem --- VirtualBox
set BASEURL=https://download.virtualbox.org/virtualbox/7.0.12
set PROG=VirtualBox-7.0.12-159484-Win.exe
rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%
rem --- Silent-Installation des Programms:
%PROG% --silent --msiparams "VBOX_START=0"

rem --- VirtualBox Konfigurieren
set VMPATH=%SYSTEMDRIVE%\VirtuelleMaschinen
set VBOXMGR="%ProgramFiles%\Oracle\Virtualbox\Vboxmanage.exe"
MKDIR %VMPATH%
%VBOXMGR% extpack install C:\temp\%EXTN% --accept-license=33d7284dc4a0ece381196fda3cfe2ed0e1e8e7ed7f27b9a9ebc4ee22e24bd23c
%VBOXMGR% setproperty machinefolder %VMPATH%
%VBOXMGR% setextradata global GUI/UpdateDate never
