rem ------------------------------------------------------------
rem Installiere 
rem ------------------------------------------------------------

set BASEURL=https://dl2.cdn.filezilla-project.org/client
set PROG=FileZilla_3.66.1_win64-setup.exe

MKDIR C:\temp\ & CD /D C:\temp
curl -k "%BASEURL%/%PROG%?h=od6T6ObVh3-eWWW32MTEKg&x=1701558975" -o c:\temp\%PROG%

%PROG% /S /user=all 

rem ---- Beispiele ---------------------------------------------
rem %PROG% /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem c:\windows\system32\msiexec /i "%PROG%" /passive /l c:\temp\%PROG%.log 