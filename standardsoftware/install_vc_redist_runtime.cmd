rem ----------------------------------------------------------------
rem Installiere Microsoft Visual C++ 2015-2022 Redistributable (x64)
rem ----------------------------------------------------------------

set BASEURL=https://glpi.albrecht-elektrotechnik.local/repo/standardsoftware
set PROG=VC_redist.x64.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k %BASEURL%/%PROG% -o c:\temp\%PROG%

%PROG% /install /quiet /norestart

rem ---- Beispiele -------------------------------------------------
rem %PROG% /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem c:\windows\system32\msiexec /i "%PROG%" /passive /l c:\temp\%PROG%.log 