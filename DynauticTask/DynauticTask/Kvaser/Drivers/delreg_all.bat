@echo off
REM
REM                         Copyright 2002 by KVASER AB
REM                   P.O Box 4076 SE-51104 KINNAHULT, SWEDEN
REM                          WWW: http://www.kvaser.com
REM
REM This software is furnished under a license and may be used and copied
REM only in accordance with the terms of such license.
REM
REM Description:
REM   Removes registry entries as a part of a brute-force cleanup
REM
REM --------------------------------------------------------------------------
REM

goto label_%1

:label_W2K
rem
rem Remove devices: W2K. (No Vector conflicts here.)
rem

rem PCIcan, PCIcanx
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_10E8&DEV_8406&SUBSYS_00000000&REV_00"
rem PCIcan II
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_10E8&DEV_8407&SUBSYS_00000000&REV_00"
rem PC104+, PCIcanx II, PCIEcan
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_0006&SUBSYS_00061A07&REV_00"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_0007&SUBSYS_00071A07&REV_00"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_0008&SUBSYS_00081A07&REV_00"
rem Reserved for future use
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_0009&SUBSYS_00091A07&REV_00"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_000A&SUBSYS_000A1A07&REV_00"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_000B&SUBSYS_000B1A07&REV_00"
rem PCIEcan 4xHS, 2xHS, HS (with CAN-FD)
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_000D&SUBSYS_000D1A07&REV_01"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_000E&SUBSYS_000E1A07&REV_01"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_000F&SUBSYS_000F1A07&REV_01"
rem Mini PCI Express HS v2
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_0010&SUBSYS_00101A07&REV_01"
rem Mini PCI Express 2xHS v2
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCI\VEN_1A07&DEV_0011&SUBSYS_00111A07&REV_01"


rem LAPcan
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCMCIA\KVASER-LAPCAN-2278"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCMCIA\KVASER-LapCAN-01EE-000C"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCMCIA\KVASER-LAPCAN-2BDE"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCMCIA\KVASER-LAPCAN-01EE-001D"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCMCIA\KVASER-LAPCAN-8C86"
rem LAPcan II
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCMCIA\KVASER-LAPCAN_II-482C"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCMCIA\KVASER-LAPCAN_II-01EE-0073"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\PCMCIA\KVASER-LAPCAN_II-0A2D"

delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0001"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0002"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0003"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0004"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0005"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0006"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0007"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0008"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0009"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_000A"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_000B"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_000C"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_000D"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_000E"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_000F"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0010"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0011"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0012"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0013"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0014"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0016"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0017"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0018"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0019"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_001A"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_001B"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_001C"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_001D"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_001E"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_001F"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0020"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0021"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0022"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0023"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0024"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0025"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0026"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0027"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0028"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0029"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_002A"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_002B"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_002C"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_002D"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_002E"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_002F"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0030"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0031"
rem Minihydra
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0100"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0101"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0102"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0103"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0104"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0105"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0106"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0107"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0108"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0109"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_010A"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_OBFD&PID_010B"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_OBFD&PID_010C"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_OBFD&PID_010D"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_010E"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0110"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0111"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0112"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0113"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0114"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0115"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0116"

delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0120"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0121"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0122"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0123"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0124"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0125"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0126"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0127"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\USB\VID_0BFD&PID_0128"

rem Simulated + Virtual
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\Root\CanDevices"

goto out


:label_W98
rem
rem Remove devices: W98. (No Vector conflicts here.)
rem

rem PCIcan, PCIcanx
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_10E8&DEV_8406&SUBSYS_00000000&REV_00"
rem PCIcan II
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_10E8&DEV_8407&SUBSYS_00000000&REV_00"
rem PC104+, PCIcanx II, PCIEcan
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_0006&SUBSYS_00061A06&REV_00"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_0007&SUBSYS_00071A07&REV_00"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_0008&SUBSYS_00081A07&REV_00"
rem Reserved for future use
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_0009&SUBSYS_00091A07&REV_00"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_000A&SUBSYS_000A1A07&REV_00"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_000B&SUBSYS_000B1A07&REV_00"
rem PCIEcan 4xHS, 2xHS, HS (with CAN-FD)
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_000D&SUBSYS_000D1A07&REV_01"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_000E&SUBSYS_000E1A07&REV_01"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_000F&SUBSYS_000F1A07&REV_01"
rem Mini PCI Express HS v2
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_0010&SUBSYS_00101A07&REV_01"
rem Mini PCI Express 2xHS v2
delreg -L "%temp%\canlib_unstall.log" "Enum\PCI\VEN_1A07&DEV_0011&SUBSYS_00111A07&REV_01"


rem LAPcan
delreg -L "%temp%\canlib_unstall.log" "Enum\PCMCIA\KVASER-LAPCAN-2278"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCMCIA\KVASER-LapCAN-01EE-000C"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCMCIA\KVASER-LAPCAN-2BDE"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCMCIA\KVASER-LAPCAN-01EE-001D"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCMCIA\KVASER-LAPCAN-8C86"
rem LAPcan II
delreg -L "%temp%\canlib_unstall.log" "Enum\PCMCIA\KVASER-LAPCAN_II-482C"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCMCIA\KVASER-LAPCAN_II-01EE-0073"
delreg -L "%temp%\canlib_unstall.log" "Enum\PCMCIA\KVASER-LAPCAN_II-0A2D"

delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0001"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0002"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0003"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0004"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0005"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0006"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0007"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0008"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0009"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_000A"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_000B"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_000C"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_000D"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_000E"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_000F"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0010"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0011"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0012"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0013"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0014"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0016"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0017"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0018"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0019"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_001A"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_001B"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_001C"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_001D"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_001E"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_001F"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0020"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0021"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0022"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0023"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0024"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0025"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0026"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0027"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0028"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0029"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_002A"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_002B"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_002C"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_002D"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_002E"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_002F"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0030"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0031"
rem Minihydra
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0100"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0101"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0102"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0103"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0104"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0105"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0106"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0107"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0108"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0109"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_010A"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_OBFD&PID_010B"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_OBFD&PID_010C"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_OBFD&PID_010D"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_010E"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_010F"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0110"

delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0120"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0121"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0122"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0123"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0124"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0125"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0126"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0127"
delreg -L "%temp%\canlib_unstall.log" "Enum\USB\VID_0BFD&PID_0128"

rem Simulated + Virtual
delreg -L "%temp%\canlib_unstall.log" "Enum\Root\CanDevices"

goto out


:label_canlib32_w2k
rem
rem W2K for CANLIB <= 3.2, will also kill Vector
rem
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Control\Class\{C114EDBC-EA0A-11d3-A4E1-00104B47F2AB}"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Control\Class\{D26B6F67-69F6-4EB8-8594-D9F0E0139601}"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\Root\CanDevices"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Control\Class\CanDevices"
goto out

:label_canlib32_w98
rem
rem W98 for CANLIB <= 3.2, will also kill Vector
rem
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Services\Class\CanDevices"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\Root\CanDevices"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Services\Class\{C114EDBC-EA0A-11d3-A4E1-00104B47F2AB}"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Services\Class\{D26B6F67-69F6-4EB8-8594-D9F0E0139601}"
goto out


:label_canlib33_w2k
rem
rem W2K for CANLIB >= 3.3
rem
rem 6292.. is a GUID used for alpha tests of 64-bit drivers
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Control\Class\{6292F46D-4420-4342-BDCD-E703838C6D5B}"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Control\Class\{D26B6F67-69F6-4EB8-8594-D9F0E0139601}"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\Root\CanDevices"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Control\Class\CanDevices"
goto out

:label_canlib33_w98
rem
rem W98 for CANLIB >= 3.3
rem
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Services\Class\CanDevices"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Enum\Root\CanDevices"
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Services\Class\{D26B6F67-69F6-4EB8-8594-D9F0E0139601}"
goto out

:label_vectorclass_w2k
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Control\Class\{C114EDBC-EA0A-11d3-A4E1-00104B47F2AB}"
goto out

:label_vectorclass_w98
delreg -L "%temp%\canlib_unstall.log" "System\CurrentControlSet\Services\Class\{C114EDBC-EA0A-11d3-A4E1-00104B47F2AB}"
goto out




:label_
:out
