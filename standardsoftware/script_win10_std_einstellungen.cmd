@echo off
@rem Stand 2022-09-22
echo --------------------------------------------------------------------------
echo I Windows Standardeinstellungen laden...                                 I
echo --------------------------------------------------------------------------

rem Registry Eintrag:
rem reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v WindowsSettings /f /d "c:\temp\WindowsSettings.cmd > c:\temp\%USERNAME%_WindowsSettings.log"
rem GLPI: reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v WindowsSettings /f /d "c:\temp\WindowsSettings.cmd > c:\temp\%%USERNAME%%_WindowsSettings.log"
ping 127.0.0.1 > NUL

rem ---- OneDrive deaktivieren ------------------------------------------------
taskkill /f /im OneDrive.exe
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f 
REG DELETE "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDrive" /f

rem ---- Dateinamenerweiterungen einschalten
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f

rem ---- Energieeinstellungen
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 10
powercfg /change hibernate-timeout-ac 0
powercfg /change hibernate-timeout-dc 10
powercfg /change monitor-timeout-ac 30
powercfg /change monitor-timeout-dc 10
powercfg /change disk-timeout-ac 0
powercfg /change disk-timeout-dc 20
rem ---- FastBoot ausschalten
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d 0 /f

rem ---- Energiesparplan auf Höchstleistung setzen
powercfg /SETACTIVE /SCHEME_MIN

rem ---- Beim Zuklappen des Bildschirms nichts unternehmen
powercfg /SETDCVALUEINDEX SCHEME_MIN SUB_BUTTONS LIDACTION 0
powercfg /SETACVALUEINDEX SCHEME_MIN SUB_BUTTONS LIDACTION 0

rem ---- Beim drücken des Netzschalters herunterfahren
powercfg /SETDCVALUEINDEX SCHEME_MIN SUB_BUTTONS PBUTTONACTION 3
powercfg /SETACVALUEINDEX SCHEME_MIN SUB_BUTTONS PBUTTONACTION 3

rem ---- Beim drücken der Energiespartaste energie sparen
powercfg /SETDCVALUEINDEX SCHEME_MIN SUB_BUTTONS SleepButtonAction 1
powercfg /SETACVALUEINDEX SCHEME_MIN SUB_BUTTONS SleepButtonAction 1

rem ---- Cortana & Taskansicht ausschalten
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCortanaButton /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f

rem ---- Zeige alle Symbole in der Taskleiste
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t REG_DWORD /d 0 /f

rem ---- Live Kacheln im Startmenue abschalten
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v NoTileApplicationNotification /t REG_DWORD /d 1 /f

rem ---- 3D-Objects Ordner im Explorer ausblenden
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace" /v {0DB7E03F-FC29-4DC6-9020-FF41B59E513A} /f

rem ---- Schalte Newsfeed in der Taskleiste bei Windows 10 21H1 ab
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2 /f

rem ---- Logoff!
rem shutdown -L

