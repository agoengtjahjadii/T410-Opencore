
DRIVER

//Add
- XhciDxe.efi : Used for Sandy Bridge and older when no XHCI driver is built into the firmware
- AudioDxe.efi 

//remove 
- OpenPartitionDxe.efi : Required to boot macOS 10.7-10.9 recovery
    NB : Note: OpenDuet users(ie. without UEFI) will have this driver built-in, not requiring it


//consider
-OpenHfsPlus.efi : karna partisi HfsPlus yang akan dipakai di high sierra




KEXT
//Add
- AHCIprotInjector.kext : sata support

//remove
- AppleIntele1000e : coba tanpa inject lan dulu
- SMCBatteryManager.kext : Belum wajib untuk boot
- SMCSuperIO.kext : belum wajib untuk boot
ACPI




-------------- config.plist -------------------
//change
- kernel/force : fix template jadi IO80211Family

//consider
- Misc/security/secureBootModel : dibiarkan enable dulu
