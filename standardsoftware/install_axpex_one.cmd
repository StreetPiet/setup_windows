rem ------------------------------------------------------------
rem Installiere 
rem ------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=agent_cloud_x64.msi

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%

C:\windows\system32\msiexec.exe /i "agent_cloud_x64.msi" /qn /norestart 

rem %PROG% /S
rem c:\windows\system32\msiexec /i "%PROG%" /passive /l c:\temp\%PROG%.log 