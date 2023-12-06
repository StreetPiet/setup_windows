rem ------------------------------------------------------------
rem Installationsroutine
rem ------------------------------------------------------------

rem --- Option: Download in ein temporäres Verzeichnis
rem --- Kann für z.B. für GLPI abgeschaltet werden
set SAVEPATH=%SYSTEMDRIVE%\TEMP\install
MKDIR %SAVEPATH% & CD /D %SAVEPATH%

rem --- Download Basis-URL, Dateiname und TEMP-Verzeichnis
set BASEURL=https://download.pdf24.org
set PROG=pdf24-creator-11.15.1-x64.msi

rem --- Lade Installationsdatei herunter
curl -k -L %BASEURL%/%PROG% -o %SAVEPATH%\%PROG%

rem --- Silent-Installation des Programms:
(
echo Windows Registry Editor Version 5.00
echo 
echo [HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\PDFPrint]
echo "Language"="German"
echo "assistant.closeAfterSave"=dword:00000001
echo "assistant.closeAfterEmail"=dword:00000001
echo "assistant.openPDFAfterSave"=dword:00000000
echo "assistant.mailNamePrompt"=dword:00000001
echo "assistant.joinFilesUseFirstName"=dword:00000000
echo "assistant.fixedSaveDir"=""
echo "EmailInterface"="mapi"
echo "NoTrayIcon"=dword:00000000
echo "NoOnlineConverter"=dword:00000001
echo "NoShellContextMenuExtension"=dword:00000000
echo "NoShellFileContextMenuExtension"=dword:00000000
echo "NoShellDirectoryContextMenuExtension"=dword:00000000
echo "NoShellBackgroundContextMenuExtension"=dword:00000000
echo "NoOnlinePdfTools"=dword:00000001
echo "NoCloudPrint"=dword:00000001
echo "NoEmbeddedBrowser"=dword:00000001
echo "NoPDF24MailInterface"=dword:00000000
echo "NoTwainImport"=dword:00000000
echo "NoScreenCapture"=dword:00000000
echo "NoFax"=dword:00000001
echo "NoFaxProfile"=dword:00000001
echo "NoMail"=dword:00000000
echo "NoDelayedToForegroundOnNewFile"=dword:00000000
echo "NoOCR"=dword:00000000
echo "DeletePrintJobsWithError"=dword:00000000
) > PDF24_stdsettings.reg

rem --- installiere programm
%SYSTEMDRIVE%\windows\system32\msiexec /i "%PROG%" /passive /log c:\temp\pdf-creator24.log REGISTERREADER=No AUTOUPDATE=No FAXPRINTER=No 

rem --- warte 10 sek.
ping -n 3 127.0.0.1

rem --- importiere standardeinstellungen
reg import PDF24_stdsettings.reg

