rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main/binaries
set PROG=MicroSIP-3.21.3.zip

rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Unzipper erstellen
Call :UnZipFile "EXT%PROG%" "%PROG%"
GOTO INSTALL

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%SAVEPATH%\unzipper.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

rem --- Silent-Installation des Programms:
:INSTALL


rem --- Installiere C++ Redistibutable
rem set BASEURL=https://support.ostrachhelp.de/OstrachNET/setup_windows/raw/branch/main/essentiell
rem set PROG=VC_redist.x64.exe
rem curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG% & %PROG% /Q

rem ---- Beispiele ---------------------------------------------
rem %PROG% /S
rem %PROG% /VERYSILENT /NORESTART /ALLUSERS
rem %PROG% /install /quiet /norestart
rem %SYSTEMDRIVE%\windows\system32\msiexec /i "%PROG%" /passive /l %SAVEPATH%\%PROG%.log 
