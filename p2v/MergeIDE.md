# MergeIDE anwendung

###Achtung! Dies ist nur eine rohfassung!

* Kopie der Maschine mit Disk2VHD oder klonen der Festplatte mit qemu-img
* Anlegen einer passenden VM in Proxmox
* beschreibern der VM-Festplatten mittels qemu-img convert
* booten mit HIRENS Boot CD in ein Windows PE 
* Download von MergeIDE V3 und ausführen der Batchdatei


# Windows Server 2003
Replacement steps:

```
    Set the CD/DVD 1 as the boot disk and put the “WinPE.iso”.
    Edit virtual machine, add a CD/DVD drive and put “windows2003R2_ mouse keyboard driver. iso”.
    Start the virtual machine and boot to WinPE. After that, enter the original system c:\windows\system32\drivers and back up the following 5 files: i8042prt.sys, kbdclass.sys, mouclass.sys, mouhid.sys, and mountmgr.sys.
    Copy these 5 sys files from the “windows2003R2_mouse keyboard driver.iso” to the c:\windows\system32\drivers directory and overwrite the original file.
    Power off the virtual machine and set boot from disk. The mouse and keyboard should be able to use after power on the virtual machine and wait 3-5 minutes at the Login interface

    NOTE: If you unable to confirm whether it is Win2003R2, you can see the modification time of other .sys files in the c:\windows\system32\drivers directory. If the modification time is July 3, 2007, it is the R2 version, which can be directly replaced.

    If the steps above does not solve the issue, backup original system registry (%SystemRoot%\System32\Config\System) via WinPE. After, mount the original system registry System to the WinPE registry. Next, delete the “Enum” registry key below the corresponding item and umount the original system registry. After rebooting, the system will automatically re-scan hardware information and update the registry.
```