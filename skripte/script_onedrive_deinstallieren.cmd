
set x86="%SYSTEMROOT%\System32\OneDriveSetup.exe"
set x64="%SYSTEMROOT%\SysWOW64\OneDriveSetup.exe"

echo OneDrive beenden
taskkill /f /im OneDrive.exe 
ping 127.0.0.1 -n 3 

echo OneDrive deinstallieren
if exist %x64% (
%x64% /uninstall
) else (
%x86% /uninstall
)
ping 127.0.0.1 -n 3 

echo OneDrive letzte Reste entfernen
rd "%USERPROFILE%\OneDrive" /Q /S 
rd "C:\OneDriveTemp" /Q /S 
rd "%LOCALAPPDATA%\Microsoft\OneDrive" /Q /S 
rd "%PROGRAMDATA%\Microsoft OneDrive" /Q /S 
del "%appdata%\Microsoft\Windows\Start Menu\programs\OneDrive.lnk"

echo OneDrive aus Datei Explorer entfernen
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f 
REG DELETE "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /f 
