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
REM   Removes all drivers (W2K and later)
REM
REM --------------------------------------------------------------------------
REM

if "%1" == "" goto out

rem set flg=-v

rem PCIcan
removedrv %flg "PCI\VEN_10E8&DEV_8406"
rem PCIcan II
removedrv %flg "PCI\VEN_10E8&DEV_8407"

removedrv %flg "PCI\VEN_1A07&DEV_0006"
removedrv %flg "PCI\VEN_1A07&DEV_0007"
removedrv %flg "PCI\VEN_1A07&DEV_0008"
removedrv %flg "PCI\VEN_1A07&DEV_0009"
removedrv %flg "PCI\VEN_1A07&DEV_000A"
removedrv %flg "PCI\VEN_1A07&DEV_000B"

rem PCIEcan
removedrv %flg "PCI\VEN_1A07&DEV_000D&SUBSYS_000D1A07&REV_01"
removedrv %flg "PCI\VEN_1A07&DEV_000E&SUBSYS_000E1A07&REV_01"
removedrv %flg "PCI\VEN_1A07&DEV_000F&SUBSYS_000F1A07&REV_01"
removedrv %flg "PCI\VEN_1A07&DEV_0010&SUBSYS_00101A07&REV_01"
removedrv %flg "PCI\VEN_1A07&DEV_0011&SUBSYS_00111A07&REV_01"

rem LAPcan
removedrv %flg "PCMCIA\KVASER-LAPCAN-2278"
removedrv %flg "PCMCIA\KVASER-LapCAN-01EE-000C"
removedrv %flg "PCMCIA\KVASER-LAPCAN-2BDE"
removedrv %flg "PCMCIA\KVASER-LAPCAN-01EE-001D"
removedrv %flg "PCMCIA\KVASER-LAPCAN-8C86"

rem LAPcan II
removedrv %flg "PCMCIA\KVASER-LAPCAN_II-482C"
removedrv %flg "PCMCIA\KVASER-LAPCAN_II-01EE-0073"
removedrv %flg "PCMCIA\KVASER-LAPCAN_II-0A2D"

removedrv %flg "USB\VID_0BFD&PID_0001&REV_0100"
removedrv %flg "USB\VID_0BFD&PID_0002&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0003&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0004&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0005&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0006&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0007&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0008&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0009&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_000A&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_000B&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_000C&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_000D&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_000E&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_000F&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0010&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0011&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0012&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0013&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0014&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0016&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0017&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0018&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0019&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_001A&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_001B&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_001C&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_001D&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_001E&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_001F&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0020&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0021&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0022&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0023&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0024&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0025&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0026&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0027&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0028&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0029&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_002A&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_002B&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_002C&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_002D&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_002E&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_002F&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0030&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0031&REV_0001"
rem Minihydra
removedrv %flg "USB\VID_0BFD&PID_0100&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0101&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0102&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0103&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0104&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0105&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0107&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0108&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0109&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_010A&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_010B&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_010C&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_010D&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_010E&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_010F&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_0110&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_0111&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_0112&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_0113&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_0114&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_0115&REV_0001"
removedrv %flg "USB\VID_OBFD&PID_0116&REV_0001"

removedrv %flg "USB\VID_0BFD&PID_0120&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0121&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0122&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0123&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0124&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0125&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0126&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0127&REV_0001"
removedrv %flg "USB\VID_0BFD&PID_0128&REV_0001"



rem Simulated
removedrv %flg "kcanc"
rem Virtual
removedrv %flg "kcanv"

rem kvnetenum, kcanlr
removedrv %flg "root\kvnetenum"
removedrv %flg "{D26B6F67-69F6-4EB8-8594-D9F0E0139601}\kcanlr"
removedrv %flg "{D26B6F67-69F6-4EB8-8594-D9F0E0139601}\kcanyr"



:out
