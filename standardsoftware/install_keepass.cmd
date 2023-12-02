rem ------------------------------------------------------------
rem Installiere KeePass XC
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=KeePassXC-2.7.6-Win64.msi

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG%            -o c:\temp\%PROG%
curl -k %BASEURL%/VC_redist.x64.exe -o c:\temp\VC_redist.x64.exe

c:\temp\VC_redist.x64.exe /Q
c:\windows\system32\msiexec /i "%PROG%" /passive