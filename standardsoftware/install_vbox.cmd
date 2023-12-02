rem ------------------------------------------------------------
rem Installiere 
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware/virtualbox
set PROG=VirtualBox-7.0.12-159484-Win.exe
set EXTN=Oracle_VM_VirtualBox_Extension_Pack-7.0.12.vbox-extpack
set REDIST=VC_redist.x64.exe
set VMPATH=%SYSTEMDRIVE%\VirtuelleMaschinen
set VBOXMGR="%ProgramFiles%\Oracle\Virtualbox\Vboxmanage.exe"


MKDIR %VMPATH%
MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%
curl -k %BASEURL%/%EXTN% -o c:\temp\%EXTN%
curl -k %BASEURL%/%REDIST% -o c:\temp\%REDIST%

%REDIST% /Q

%PROG% --silent --msiparams "VBOX_START=0"
%VBOXMGR% extpack install C:\temp\%EXTN% --accept-license=33d7284dc4a0ece381196fda3cfe2ed0e1e8e7ed7f27b9a9ebc4ee22e24bd23c
%VBOXMGR%  setproperty machinefolder %VMPATH%
%VBOXMGR%  setextradata global GUI/UpdateDate never

rem ---- Beispiele ---------------------------------------------
rem %PROG% /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem %PROG% /install /quiet /norestart
rem c:\windows\system32\msiexec /i "%PROG%" /passive /l c:\temp\%PROG%.log 