rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- TortoiseGIT
set BASEURL=https://download.tortoisegit.org/tgit/2.15.0.0
set PROG=TortoiseGit-2.15.0.0-64bit.msi
rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%
%SYSTEMDRIVE%\windows\system32\msiexec /i "%PROG%" /passive /l %SAVEPATH%\%PROG%.log 

rem --- Sprachpaket Deutsch
set BASEURL=https://download.tortoisegit.org/tgit/2.15.0.0
set PROG=TortoiseGit-LanguagePack-2.15.0.0-64bit-de.msi
rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%
%SYSTEMDRIVE%\windows\system32\msiexec /i "%PROG%" /passive /l %SAVEPATH%\%PROG%.log 



