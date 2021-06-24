/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLWdvrB1.aml, Thu Jun 24 19:10:36 2021
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000F56A (62826)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xA5
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-6I   "
 *     OEM Revision     0x00001450 (5200)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("", "DSDT", 1, "LENOVO", "TP-6I   ", 0x00001450)
{
    External (_SB_.PCI0.SAT1.PRIM.GTME, UnknownObj)
    External (_SB_.PCI0.SAT1.PRT1, UnknownObj)
    External (_SB_.PCI0.SAT1.SCND.GTME, UnknownObj)
    External (_SB_.PCI0.SAT1.SCND.MSTR, UnknownObj)
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)
    External (PDC2, UnknownObj)
    External (PDC3, UnknownObj)
    External (PDC4, UnknownObj)
    External (PDC5, UnknownObj)
    External (PDC6, UnknownObj)
    External (PDC7, UnknownObj)
    External (SSBY, UnknownObj)

    Scope (\_PR)
    {
        Processor (CPU0, 0x00, 0x00001010, 0x06){}
        Processor (CPU1, 0x01, 0x00001010, 0x06){}
        Processor (CPU2, 0x02, 0x00001010, 0x06){}
        Processor (CPU3, 0x03, 0x00001010, 0x06){}
        Processor (CPU4, 0x04, 0x00001010, 0x06){}
        Processor (CPU5, 0x05, 0x00001010, 0x06){}
        Processor (CPU6, 0x06, 0x00001010, 0x06){}
        Processor (CPU7, 0x07, 0x00001010, 0x06){}
    }

    Scope (\)
    {
        Method (PNTF, 1, NotSerialized)
        {
            If ((\PPMF & 0x01000000))
            {
                If ((((PDC0 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC0 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU0, Arg0)
                }

                If ((((PDC1 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC1 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU1, Arg0)
                }

                If ((((PDC2 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC2 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU2, Arg0)
                }

                If ((((PDC3 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC3 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU3, Arg0)
                }

                If ((((PDC4 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC4 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU4, Arg0)
                }

                If ((((PDC5 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC5 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU5, Arg0)
                }

                If ((((PDC6 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC6 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU6, Arg0)
                }

                If ((((PDC7 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC7 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU7, Arg0)
                }
            }
            ElseIf (((Arg0 == 0x80) || ((Arg0 == 0x81) || (Arg0 == 
                0x82))))
            {
                Notify (\_PR.CPU0, Arg0)
            }
        }
    }

    OperationRegion (MNVS, SystemMemory, 0xBB6E7000, 0x1000)
    Field (MNVS, DWordAcc, NoLock, Preserve)
    {
        Offset (0xE00), 
        GAPA,   32, 
        GAPL,   32, 
        DCKI,   32, 
        DCKS,   32, 
        VCDL,   1, 
        VCDC,   1, 
        VCDT,   1, 
        VCDD,   1, 
        VIGD,   1, 
        VCSS,   1, 
        VCDB,   1, 
        VCIN,   1, 
        VPDF,   1, 
        Offset (0xE12), 
        VLID,   4, 
        VVPO,   4, 
        BRLV,   4, 
        BRFQ,   2, 
        BRHB,   1, 
        BREV,   1, 
        CDFL,   8, 
        CDAH,   8, 
        PMOD,   2, 
        PDIR,   1, 
        PDMA,   1, 
        Offset (0xE17), 
        LFDC,   1, 
        Offset (0xE18), 
        C2NA,   1, 
        C3NA,   1, 
        C4NA,   1, 
        C6NA,   1, 
        C7NA,   1, 
        Offset (0xE19), 
        Offset (0xE1A), 
            ,   2, 
            ,   1, 
        NHPS,   1, 
        NPME,   1, 
        Offset (0xE1B), 
        UOPT,   8, 
        BTID,   32, 
        DPP0,   1, 
        DPP1,   1, 
        DPP2,   1, 
        DPP3,   1, 
        DPP4,   1, 
        DPP5,   1, 
        Offset (0xE21), 
        Offset (0xE22), 
        TCRT,   16, 
        TPSV,   16, 
        TTC1,   16, 
        TTC2,   16, 
        TTSP,   16, 
        SRAH,   8, 
        SRHE,   8, 
        SRE1,   8, 
        SRE2,   8, 
        SRE3,   8, 
        SRE4,   8, 
        SRE5,   8, 
        SRE6,   8, 
        SRU1,   8, 
        SRU2,   8, 
        SRU3,   8, 
        SRU7,   8, 
        SRU4,   8, 
        SRU5,   8, 
        SRU8,   8, 
        SRPB,   8, 
        SRLP,   8, 
        SRSA,   8, 
        SRSM,   8, 
        CWAC,   1, 
        CWAS,   1, 
        CWUE,   1, 
        CWUS,   1, 
        Offset (0xE40), 
        CWAP,   16, 
        CWAT,   16, 
        DBGC,   1, 
        Offset (0xE45), 
        FS1L,   16, 
        FS1M,   16, 
        FS1H,   16, 
        FS2L,   16, 
        FS2M,   16, 
        FS2H,   16, 
        FS3L,   16, 
        FS3M,   16, 
        FS3H,   16, 
        TATC,   1, 
            ,   6, 
        TATL,   1, 
        TATW,   8, 
        TNFT,   4, 
        TNTT,   4, 
        TDFA,   4, 
        TDTA,   4, 
        TDFD,   4, 
        TDTD,   4, 
        TCFA,   4, 
        TCTA,   4, 
        TCFD,   4, 
        TCTD,   4, 
        TSFT,   4, 
        TSTT,   4, 
        TIT0,   8, 
        TCR0,   16, 
        TPS0,   16, 
        TIT1,   8, 
        TCR1,   16, 
        TPS1,   16, 
        TIT2,   8, 
        TCR2,   16, 
        TPS2,   16, 
        TIF0,   8, 
        TIF1,   8, 
        TIF2,   8, 
        Offset (0xE75), 
        TCZ1,   8, 
        TCZ2,   8, 
        TCZ3,   8, 
        BTHI,   1, 
        Offset (0xE79), 
        HDIR,   1, 
        HDEH,   1, 
        HDSP,   1, 
        HDPP,   1, 
        HDUB,   1, 
        HDMC,   1, 
        Offset (0xE7A), 
        TPMP,   1, 
        TPMS,   1, 
        Offset (0xE7B), 
        BIDE,   4, 
        IDET,   4, 
            ,   1, 
        DTSE,   1, 
        Offset (0xE7D), 
        DTS0,   8, 
        DTS1,   8, 
        DT00,   1, 
        DT01,   1, 
        DT02,   1, 
        DT03,   1, 
        Offset (0xE80), 
        LIDB,   1, 
        C4WR,   1, 
        C4AC,   1, 
        ODDX,   1, 
        CMPR,   1, 
        Offset (0xE81), 
        PH01,   8, 
        PH02,   8, 
        PH03,   8, 
        PPRQ,   8, 
        PPLO,   8, 
        PPRP,   8, 
        PPOR,   8, 
        TPRS,   8, 
        TPMV,   8, 
        MOR,    8, 
        RSV0,   8, 
        IPAT,   4, 
        IPSC,   1, 
        IDMM,   1, 
        IDMS,   2, 
        HVCO,   3, 
        IF1E,   1, 
        ISSC,   1, 
        LIDS,   1, 
        IBIA,   2, 
        IBTT,   8, 
        ITVF,   4, 
        ITVM,   4, 
        TCG0,   1, 
        TCG1,   1, 
        Offset (0xE91), 
        SWGP,   8, 
        IPMS,   8, 
        IPMB,   120, 
        IPMR,   24, 
        IPMO,   24, 
        IPMA,   8, 
        Offset (0xEAD), 
        ASFT,   8, 
        Offset (0xEB0), 
        CHKC,   32, 
        CHKE,   32, 
        ATRB,   32, 
        Offset (0xEBD), 
        PPCR,   8, 
        TPCR,   5, 
        Offset (0xEBF), 
        ATMB,   128, 
        PPCA,   8, 
        TPCA,   5, 
        Offset (0xED1), 
        BFWB,   296
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xC00), 
        WITM,   8, 
        WSEL,   8, 
        WLS0,   8, 
        WLS1,   8, 
        WLS2,   8, 
        WLS3,   8, 
        WLS4,   8, 
        WLS5,   8, 
        WLS6,   8, 
        WLS7,   8, 
        WENC,   8, 
        WKBD,   8, 
        WPTY,   8, 
        WPAS,   1032, 
        WPNW,   1032, 
        WSPM,   8, 
        WSPS,   8, 
        WSMN,   8, 
        WSMX,   8, 
        WSEN,   8, 
        WSKB,   8
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB00), 
        DBGS,   1024
    }

    OperationRegion (GNVS, SystemMemory, 0xBB6B55F2, 0x0200)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        Offset (0x10), 
        PWRS,   8, 
        Offset (0x1E), 
        Offset (0x28), 
        APIC,   8, 
        MPEN,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        BDSP,   8, 
        PTY1,   8, 
        PTY2,   8, 
        PSCL,   8, 
        TVF1,   8, 
        TVF2,   8, 
        GETM,   8, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0xAA), 
        ASLB,   32, 
        Offset (0xDF), 
        PAVP,   8, 
        Offset (0x15B), 
        PNHM,   32, 
        TBAB,   32, 
        Offset (0x180), 
        BUSH,   16, 
        BUSM,   16, 
        BUSL,   16, 
        HIST,   32, 
        LPST,   32, 
        LWST,   32, 
        FREH,   32, 
        FREL,   32, 
        SVST,   32, 
        GVEN,   8, 
        GVAC,   8, 
        GVDC,   8, 
        STCL,   8, 
        APCL,   8, 
        OSPX,   1, 
        OSC4,   1, 
        Offset (0x1A4), 
        SPEN,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
        Offset (0x1A5), 
        FTPS,   8, 
        IPEN,   1
    }

    Scope (\_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (\_OSI ("Windows 2001"))
                {
                    \WNTF = 0x01
                    \WXPF = 0x01
                    \WSPV = 0x00
                }

                If (\_OSI ("Windows 2001 SP1"))
                {
                    \WSPV = 0x01
                }

                If (\_OSI ("Windows 2001 SP2"))
                {
                    \WSPV = 0x02
                }

                If (\_OSI ("Windows 2006"))
                {
                    \WVIS = 0x01
                }

                If (\_OSI ("Windows 2009"))
                {
                    \WIN7 = 0x01
                }

                If (\_OSI ("Windows 2012"))
                {
                    \WIN8 = 0x01
                }

                If (\_OSI ("Linux"))
                {
                    \LNUX = 0x01
                }

                If (\_OSI ("FreeBSD"))
                {
                    \LNUX = 0x01
                }
            }
            ElseIf ((\SCMP (\_OS, "Microsoft Windows NT") == Zero))
            {
                \WNTF = 0x01
            }

            If ((\_REV >= 0x02))
            {
                \H8DR = 0x01
            }

            \OSIF = 0x01
            \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
            \_SB.PCI0.LPC.MOU.MHID ()
            If (\LNUX)
            {
                \_SB.PCI0.LPC.EC.SAUM (0x02)
                \UCMS (0x1C)
            }

            \_SB.PCI0.RID = \SRAH
            If (VIGD)
            {
                \_SB.PCI0.VID.RID = \SRHE
            }
            Else
            {
                \_SB.PCI0.PEG.RID = \SRHE
            }

            \_SB.PCI0.EXP1.RID = \SRE1
            \_SB.PCI0.EXP2.RID = \SRE2
            \_SB.PCI0.EXP3.RID = \SRE3
            \_SB.PCI0.EXP4.RID = \SRE4
            \_SB.PCI0.EHC1.RID = \SRU7
            \_SB.PCI0.EHC2.RID = \SRU8
            \_SB.PCI0.LPC.RID = \SRLP
            \_SB.PCI0.SAT1.RID = \SRSA
            \_SB.PCI0.SMBU.RID = \SRSM
            Local1 = \VHYB (0x05, 0x00)
            If ((Local1 & 0x80))
            {
                If (\WIN7)
                {
                    If (((Local1 & 0x03) != 0x03))
                    {
                        \VHYB (0x06, 0x03)
                    }
                }
                ElseIf (((Local1 & 0x03) == 0x03))
                {
                    \VHYB (0x06, 0x02)
                }
            }
        }

        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRA))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRA |= 0x80
            }

            Name (BUFA, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y00)
                    {}
            })
            CreateWordField (BUFA, \_SB.LNKA._Y00._INT, IRA1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRA & 0x8F)
                If (VPIR (Local0))
                {
                    IRA1 = (0x01 << Local0)
                }
                Else
                {
                    IRA1 = 0x00
                }

                Return (BUFA) /* \_SB_.LNKA.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRA2)
                FindSetRightBit (IRA2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRA & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRA = Local1
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRB))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRB |= 0x80
            }

            Name (BUFB, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y01)
                    {}
            })
            CreateWordField (BUFB, \_SB.LNKB._Y01._INT, IRB1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRB & 0x8F)
                If (VPIR (Local0))
                {
                    IRB1 = (0x01 << Local0)
                }
                Else
                {
                    IRB1 = 0x00
                }

                Return (BUFB) /* \_SB_.LNKB.BUFB */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRB2)
                FindSetRightBit (IRB2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRB & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRB = Local1
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRC))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRC |= 0x80
            }

            Name (BUFC, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y02)
                    {}
            })
            CreateWordField (BUFC, \_SB.LNKC._Y02._INT, IRC1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRC & 0x8F)
                If (VPIR (Local0))
                {
                    IRC1 = (0x01 << Local0)
                }
                Else
                {
                    IRC1 = 0x00
                }

                Return (BUFC) /* \_SB_.LNKC.BUFC */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRC2)
                FindSetRightBit (IRC2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRC & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRC = Local1
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRD))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRD |= 0x80
            }

            Name (BUFD, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y03)
                    {}
            })
            CreateWordField (BUFD, \_SB.LNKD._Y03._INT, IRD1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRD & 0x8F)
                If (VPIR (Local0))
                {
                    IRD1 = (0x01 << Local0)
                }
                Else
                {
                    IRD1 = 0x00
                }

                Return (BUFD) /* \_SB_.LNKD.BUFD */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRD2)
                FindSetRightBit (IRD2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRD & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRD = Local1
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRE))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRE |= 0x80
            }

            Name (BUFE, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y04)
                    {}
            })
            CreateWordField (BUFE, \_SB.LNKE._Y04._INT, IRE1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRE & 0x8F)
                If (VPIR (Local0))
                {
                    IRE1 = (0x01 << Local0)
                }
                Else
                {
                    IRE1 = 0x00
                }

                Return (BUFE) /* \_SB_.LNKE.BUFE */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRE2)
                FindSetRightBit (IRE2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRE & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRE = Local1
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRF))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRF |= 0x80
            }

            Name (BUFF, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y05)
                    {}
            })
            CreateWordField (BUFF, \_SB.LNKF._Y05._INT, IRF1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRF & 0x8F)
                If (VPIR (Local0))
                {
                    IRF1 = (0x01 << Local0)
                }
                Else
                {
                    IRF1 = 0x00
                }

                Return (BUFF) /* \_SB_.LNKF.BUFF */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRF2)
                FindSetRightBit (IRF2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRF & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRF = Local1
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRG))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRG |= 0x80
            }

            Name (BUFG, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y06)
                    {}
            })
            CreateWordField (BUFG, \_SB.LNKG._Y06._INT, IRG1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRG & 0x8F)
                If (VPIR (Local0))
                {
                    IRG1 = (0x01 << Local0)
                }
                Else
                {
                    IRG1 = 0x00
                }

                Return (BUFG) /* \_SB_.LNKG.BUFG */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRG2)
                FindSetRightBit (IRG2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRG & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRG = Local1
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRH))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRH |= 0x80
            }

            Name (BUFH, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y07)
                    {}
            })
            CreateWordField (BUFH, \_SB.LNKH._Y07._INT, IRH1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRH & 0x8F)
                If (VPIR (Local0))
                {
                    IRH1 = (0x01 << Local0)
                }
                Else
                {
                    IRH1 = 0x00
                }

                Return (BUFH) /* \_SB_.LNKH.BUFH */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRH2)
                FindSetRightBit (IRH2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRH & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRH = Local1
            }
        }

        Method (VPIR, 1, NotSerialized)
        {
            Local0 = 0x01
            If ((Arg0 & 0x80))
            {
                Local0 = 0x00
            }
            Else
            {
                Local1 = (Arg0 & 0x0F)
                If ((Local1 < 0x03))
                {
                    Local0 = 0x00
                }
                ElseIf (((Local1 == 0x08) || (Local1 == 0x0D)))
                {
                    Local0 = 0x00
                }
            }

            Return (Local0)
        }

        Device (MEM)
        {
            Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
            Name (MEMS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x000A0000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0x000C0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadOnly,
                    0x000C4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
                Memory32Fixed (ReadOnly,
                    0x000C8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0A)
                Memory32Fixed (ReadOnly,
                    0x000CC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0B)
                Memory32Fixed (ReadOnly,
                    0x000D0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0C)
                Memory32Fixed (ReadOnly,
                    0x000D4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0D)
                Memory32Fixed (ReadOnly,
                    0x000D8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0E)
                Memory32Fixed (ReadOnly,
                    0x000DC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0F)
                Memory32Fixed (ReadOnly,
                    0x000E0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadOnly,
                    0x000E4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadOnly,
                    0x000E8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadOnly,
                    0x000EC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadOnly,
                    0x000F0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00100000,         // Address Base
                    0x01EE0000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadOnly,
                    0xFEC00000,         // Address Base
                    0x00140000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadOnly,
                    0xFED4C000,         // Address Base
                    0x012B4000,         // Address Length
                    _Y16)
            })
            CreateDWordField (MEMS, \_SB.MEM._Y08._LEN, MC0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y09._LEN, MC4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0A._LEN, MC8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0B._LEN, MCCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0C._LEN, MD0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0D._LEN, MD4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0E._LEN, MD8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0F._LEN, MDCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y10._LEN, ME0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y11._LEN, ME4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y12._LEN, ME8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y13._LEN, MECL)  // _LEN: Length
            CreateBitField (MEMS, \_SB.MEM._Y08._RW, MC0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y09._RW, MC4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0A._RW, MC8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0B._RW, MCCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0C._RW, MD0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0D._RW, MD4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0E._RW, MD8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0F._RW, MDCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y10._RW, ME0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y11._RW, ME4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y12._RW, ME8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y13._RW, MECW)  // _RW_: Read-Write Status
            CreateDWordField (MEMS, \_SB.MEM._Y14._BAS, MEB1)  // _BAS: Base Address
            CreateDWordField (MEMS, \_SB.MEM._Y14._LEN, MEL1)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y15._LEN, MEL2)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y16._LEN, MEL3)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.UNCR.SAD.PAM1 & 0x03)
                If (Local0)
                {
                    MC0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MC0W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM1 & 0x30)
                If (Local0)
                {
                    MC4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MC4W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM2 & 0x03)
                If (Local0)
                {
                    MC8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MC8W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM2 & 0x30)
                If (Local0)
                {
                    MCCL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MCCW = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM3 & 0x03)
                If (Local0)
                {
                    MD0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MD0W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM3 & 0x30)
                If (Local0)
                {
                    MD4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MD4W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM4 & 0x03)
                If (Local0)
                {
                    MD8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MD8W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM4 & 0x30)
                If (Local0)
                {
                    MDCL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MDCW = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM5 & 0x03)
                If (Local0)
                {
                    ME0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        ME0W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM5 & 0x30)
                If (Local0)
                {
                    ME4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        ME4W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM6 & 0x03)
                If (Local0)
                {
                    ME8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        ME8W = 0x01
                    }
                }

                Local0 = (\_SB.UNCR.SAD.PAM6 & 0x30)
                If (Local0)
                {
                    MECL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MECW = 0x01
                    }
                }

                MEL1 = (\MEMX - MEB1) /* \_SB_.MEM_.MEB1 */
                If ((\_SB.PCI0.LPC.TPM._STA () != 0x0F))
                {
                    MEL2 = 0x01400000
                    MEL3 = 0x00
                }

                Return (MEMS) /* \_SB_.MEM_.MEMS */
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (\H8DR)
                {
                    Return (\_SB.PCI0.LPC.EC.HPLD)
                }
                ElseIf ((\RBEC (0x46) & 0x04))
                {
                    Return (0x01)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x1D, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWLO = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWLO = 0x00
                    }
                }
                ElseIf (Arg0)
                {
                    \MBEC (0x32, 0xFF, 0x04)
                }
                Else
                {
                    \MBEC (0x32, 0xFB, 0x00)
                }
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x1D, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWFN = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWFN = 0x00
                    }
                }
                ElseIf (Arg0)
                {
                    \MBEC (0x32, 0xFF, 0x10)
                }
                Else
                {
                    \MBEC (0x32, 0xEF, 0x00)
                }
            }
        }

        Device (UNCR)
        {
            Name (_BBN, 0xFF)  // _BBN: BIOS Bus Number
            Name (_ADR, 0x00)  // _ADR: Address
            Name (RID, 0x00)
            Name (_HID, EisaId ("PNP0A03") /* PCI Bus */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x00FF,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0001,             // Length
                    ,, )
            })
            Device (SAD)
            {
                Name (_ADR, 0x01)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (SADC, PCI_Config, 0x00, 0x0100)
                Field (SADC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    PAM0,   8, 
                    PAM1,   8, 
                    PAM2,   8, 
                    PAM3,   8, 
                    PAM4,   8, 
                    PAM5,   8, 
                    PAM6,   8
                }
            }
        }

        Device (PCI0)
        {
            Name (_BBN, 0x00)  // _BBN: BIOS Bus Number
            Name (_ADR, 0x00)  // _ADR: Address
            Name (RID, 0x00)
            Name (_S3D, 0x02)  // _S3D: S3 Device State
            Name (LRRT, Package (0x19)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    \_SB.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    \_SB.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x01, 
                    \_SB.LNKF, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    \_SB.LNKG, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    \_SB.LNKH, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    \_SB.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    \_SB.LNKF, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    \_SB.LNKG, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    \_SB.LNKH, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    \_SB.LNKH, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }
            })
            Name (ARRT, Package (0x19)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x01, 
                    0x00, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    0x00, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    0x00, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    0x00, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (\GPIC)
                {
                    Return (ARRT) /* \_SB_.PCI0.ARRT */
                }
                Else
                {
                    Return (LRRT) /* \_SB_.PCI0.LRRT */
                }
            }

            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            OperationRegion (MHCS, PCI_Config, 0x40, 0xC0)
            Field (MHCS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x70), 
                    ,   4, 
                TLUD,   12
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FE,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x00FF,             // Length
                    ,, )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y17, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y18, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y19, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y20, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y21, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y22, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00100000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y23, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED4BFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000C000,         // Length
                    ,, _Y24, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (_CRS, \_SB.PCI0._Y17._LEN, C0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y18._LEN, C4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y19._LEN, C8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1A._LEN, CCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1B._LEN, D0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1C._LEN, D4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1D._LEN, D8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1E._LEN, DCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1F._LEN, E0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y20._LEN, E4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y21._LEN, E8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y22._LEN, ECLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y23._MIN, XXMN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y23._MAX, XXMX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y23._LEN, XXLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y24._MIN, F4MN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y24._MAX, F4MX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y24._LEN, F4LN)  // _LEN: Length
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                If (!\OSIF)
                {
                    \_SB._INI ()
                }

                If ((\PNHM == 0x000106E0))
                {
                    Local0 = (\_SB.PCI0.IIO1.TOUD++ << 0x1A)
                }
                Else
                {
                    Local0 = (TLUD << 0x14)
                }

                \MEMX = Local0
                XXMN = Local0
                XXLN = ((XXMX - XXMN) + 0x01)
                If (((\TPRS & 0x01) != 0x01))
                {
                    F4LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM1 & 0x03))
                {
                    C0LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM1 & 0x30))
                {
                    C4LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM2 & 0x03))
                {
                    C8LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM2 & 0x30))
                {
                    CCLN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM3 & 0x03))
                {
                    D0LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM3 & 0x30))
                {
                    D4LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM4 & 0x03))
                {
                    D8LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM4 & 0x30))
                {
                    DCLN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM5 & 0x03))
                {
                    E0LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM5 & 0x30))
                {
                    E4LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM6 & 0x03))
                {
                    E8LN = 0x00
                }

                If ((\_SB.UNCR.SAD.PAM6 & 0x30))
                {
                    ECLN = 0x00
                }
            }

            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, 0x00, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                CreateDWordField (Arg0, 0x00, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                Name (UID0, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
                CreateDWordField (UID0, 0x00, EID0)
                CreateDWordField (UID0, 0x04, EID1)
                CreateDWordField (UID0, 0x08, EID2)
                CreateDWordField (UID0, 0x0C, EID3)
                If ((((IID0 == EID0) && (IID1 == EID1)) && ((IID2 == 
                    EID2) && (IID3 == EID3))))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    CTRL &= 0x0D
                    If (!(CDW1 & 0x01))
                    {
                        If ((CTRL & 0x01))
                        {
                            If (!\VIGD)
                            {
                                \_SB.PCI0.PEG.HPGP = 0x00
                                \_SB.PCI0.PEG.GMGP = 0x00
                            }

                            \_SB.PCI0.EXP4.HPCE = 0x00
                            \_SB.PCI0.EXP4.HPCS = 0x01
                            \_SB.PCI0.EXP4.PDC = 0x01
                            \NHPS = 0x01
                        }

                        If ((CTRL & 0x04))
                        {
                            If (!\VIGD)
                            {
                                \_SB.PCI0.PEG.PMGP = 0x00
                                \_SB.PCI0.PEG.GMGP = 0x00
                            }

                            If (\_SB.PCI0.EXP1.PMCE)
                            {
                                \_SB.PCI0.EXP1.PMCE = 0x00
                                \_SB.PCI0.EXP1.PMCS = 0x01
                            }

                            If (\_SB.PCI0.EXP2.PMCE)
                            {
                                \_SB.PCI0.EXP2.PMCE = 0x00
                                \_SB.PCI0.EXP2.PMCS = 0x01
                            }

                            If (\_SB.PCI0.EXP3.PMCE)
                            {
                                \_SB.PCI0.EXP3.PMCE = 0x00
                                \_SB.PCI0.EXP3.PMCS = 0x01
                            }

                            If (\_SB.PCI0.EXP4.PMCE)
                            {
                                \_SB.PCI0.EXP4.PMCE = 0x00
                                \_SB.PCI0.EXP4.PMCS = 0x01
                            }

                            If (\_SB.PCI0.EXP5.PMCE)
                            {
                                \_SB.PCI0.EXP5.PMCE = 0x00
                                \_SB.PCI0.EXP5.PMCS = 0x01
                            }

                            \_SB.PCI0.LPC.EXPE = 0x00
                            \NPME = 0x01
                        }
                    }

                    If ((Arg1 != 0x01))
                    {
                        CDW1 |= 0x0A
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                }
                Else
                {
                    CDW1 |= 0x06
                }

                Return (Arg3)
            }

            Mutex (MDGS, 0x07)
            Name (VDEE, 0x01)
            Name (VDDA, Buffer (0x02){})
            CreateBitField (VDDA, 0x00, VUPC)
            CreateBitField (VDDA, 0x01, VQDL)
            CreateBitField (VDDA, 0x02, VQDC)
            CreateBitField (VDDA, 0x03, VQD0)
            CreateBitField (VDDA, 0x04, VQD1)
            CreateBitField (VDDA, 0x05, VQD2)
            CreateBitField (VDDA, 0x06, VSDL)
            CreateBitField (VDDA, 0x07, VSDC)
            CreateBitField (VDDA, 0x08, VSD0)
            CreateBitField (VDDA, 0x09, VSD1)
            CreateBitField (VDDA, 0x0A, VSD2)
            CreateBitField (VDDA, 0x0B, VSD3)
            CreateBitField (VDDA, 0x0C, VSD4)
            CreateBitField (VDDA, 0x0D, VSD5)
            CreateBitField (VDDA, 0x0E, MSWT)
            Device (VID)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (VPCG, PCI_Config, 0x00, 0x0100)
                Field (VPCG, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD4), 
                    VPWR,   8
                }

                Name (MIDL, 0x0400)
                Name (MIDC, 0x0100)
                Name (MID0, 0x0300)
                Name (MID1, 0x0301)
                Name (MID2, 0x0302)
                Name (MID3, 0x0303)
                Name (MID4, 0x0304)
                Name (MID5, 0x0305)
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Noop
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Noop
                }

                Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                {
                    Noop
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                    Noop
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Noop
                }

                Method (VSWT, 0, NotSerialized)
                {
                    GHDS (0x00)
                }

                Method (VLOC, 1, NotSerialized)
                {
                    If ((Arg0 == \_SB.LID._LID ()))
                    {
                        \VSLD (Arg0)
                        If ((VPWR == 0x00))
                        {
                            CLID = Arg0
                            GNOT (0x02, 0x00)
                        }
                    }
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    Arg0 &= 0x03
                    If ((Arg0 == 0x02))
                    {
                        Local0 = 0x14
                        While (Local0)
                        {
                            Local0--
                            Acquire (MDGS, 0xFFFF)
                            If ((0x00 == MSWT))
                            {
                                MSWT = 0x01
                                Local0 = 0x00
                                VDEE = Arg0
                            }

                            Release (MDGS)
                            Sleep (0xC8)
                        }
                    }
                    Else
                    {
                        Acquire (MDGS, 0xFFFF)
                        If ((VDEE == 0x02))
                        {
                            MSWT = 0x00
                        }

                        If ((Arg0 > 0x02))
                        {
                            VDEE = 0x01
                        }
                        Else
                        {
                            VDEE = Arg0
                        }

                        Release (MDGS)
                    }
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                    {
                        MIDL = 0x0410
                        MIDC = 0x80000100
                        MID0 = 0x80006330
                        MID1 = 0x80007331
                        MID2 = 0x80086342
                        MID3 = 0x80087355
                        MID4 = 0x80086354
                        MID5 = 0x80087343
                        If ((\WVIS && ISOP ()))
                        {
                            Return (Package (0x04)
                            {
                                0x80000100, 
                                0x80006330, 
                                0x80007331, 
                                0x80000410
                            })
                        }

                        Return (\_SB.PCI0.PEG.VID._DOD ())
                    }

                    NDID = 0x00
                    If ((DIDL != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL2 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL3 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL4 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL5 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL6 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL7 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL8 != 0x00))
                    {
                        NDID++
                    }

                    If ((NDID == 0x01))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            0xFFFFFFFF
                        })
                        TMP1 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        Return (TMP1) /* \_SB_.PCI0.VID_._DOD.TMP1 */
                    }

                    If ((NDID == 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP2 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP2 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        Return (TMP2) /* \_SB_.PCI0.VID_._DOD.TMP2 */
                    }

                    If ((NDID == 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP3 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP3 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP3 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        Return (TMP3) /* \_SB_.PCI0.VID_._DOD.TMP3 */
                    }

                    If ((NDID == 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP4 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP4 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP4 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP4 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        Return (TMP4) /* \_SB_.PCI0.VID_._DOD.TMP4 */
                    }

                    If ((NDID == 0x05))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP5 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP5 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP5 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP5 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        TMP5 [0x04] = (0x80010000 | (0x0F0F & DDL5))
                        Return (TMP5) /* \_SB_.PCI0.VID_._DOD.TMP5 */
                    }

                    If ((NDID == 0x06))
                    {
                        Name (TMP6, Package (0x06)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP6 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP6 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP6 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP6 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        TMP6 [0x04] = (0x80010000 | (0x0F0F & DDL5))
                        TMP6 [0x05] = (0x80010000 | (0x0F0F & DDL6))
                        Return (TMP6) /* \_SB_.PCI0.VID_._DOD.TMP6 */
                    }

                    If ((NDID == 0x07))
                    {
                        Name (TMP7, Package (0x07)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP7 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP7 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP7 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP7 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        TMP7 [0x04] = (0x80010000 | (0x0F0F & DDL5))
                        TMP7 [0x05] = (0x80010000 | (0x0F0F & DDL6))
                        TMP7 [0x06] = (0x80010000 | (0x0F0F & DDL7))
                        Return (TMP7) /* \_SB_.PCI0.VID_._DOD.TMP7 */
                    }

                    If ((NDID > 0x07))
                    {
                        Name (TMP8, Package (0x08)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP8 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP8 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP8 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP8 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        TMP8 [0x04] = (0x80010000 | (0x0F0F & DDL5))
                        TMP8 [0x05] = (0x80010000 | (0x0F0F & DDL6))
                        TMP8 [0x06] = (0x80010000 | (0x0F0F & DDL7))
                        TMP8 [0x07] = (0x80010000 | (0x0F0F & DDL8))
                        Return (TMP8) /* \_SB_.PCI0.VID_._DOD.TMP8 */
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Method (VDSW, 1, NotSerialized)
                {
                    If ((VPWR == 0x00))
                    {
                        GDCK (Arg0)
                    }
                }

                Method (VCAD, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If (((DIDL & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL2 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL3 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL4 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL5 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL6 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL7 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL8 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }

                    If (((CPDL & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL2 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL3 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL4 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL5 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL6 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL7 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL8 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }

                    If (((CADL & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL2 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL3 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL4 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL5 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL6 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL7 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL8 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }

                    Return (Local0)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    If (((NADL & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL2 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL3 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL4 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL5 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL6 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL7 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL8 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Device (LCD0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                        {
                            Return (0x0410)
                        }
                        Else
                        {
                            Return (0x0400)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MIDL))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MIDL))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSDL = (Arg0 & 0x01)
                    }
                }

                Device (CRT0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                        {
                            Return (0x80000100)
                        }
                        Else
                        {
                            Return (0x0100)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MIDC))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MIDC))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSDC = (Arg0 & 0x01)
                    }
                }

                Device (DVI0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                        {
                            Return (0x80006330)
                        }
                        Else
                        {
                            Return (0x0300)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID0))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID0))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD0 = (Arg0 & 0x01)
                    }
                }

                Device (DVI1)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                        {
                            Return (0x80007331)
                        }
                        Else
                        {
                            Return (0x0301)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID1))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID1))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD1 = (Arg0 & 0x01)
                    }
                }

                Device (DVI2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                        {
                            Return (0x80086342)
                        }
                        Else
                        {
                            Return (0x0302)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD2 = (Arg0 & 0x01)
                    }
                }

                Device (DVI3)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                        {
                            Return (0x80087355)
                        }
                        Else
                        {
                            Return (0x0303)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID3))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID3))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD3 = (Arg0 & 0x01)
                    }
                }

                Device (DVI4)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                        {
                            Return (0x80086354)
                        }
                        Else
                        {
                            Return (0x0304)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID4))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID4))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD4 = (Arg0 & 0x01)
                    }
                }

                Device (DVI5)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((\WVIS && (\VHYB (0x03, 0x00) >= 0x01)))
                        {
                            Return (0x80087343)
                        }
                        Else
                        {
                            Return (0x0305)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID5))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID5))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD5 = (Arg0 & 0x01)
                    }
                }

                OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x12), 
                        ,   1, 
                    GIVD,   1, 
                        ,   2, 
                    GUMA,   3, 
                    Offset (0x14), 
                        ,   4, 
                    GMFN,   1, 
                    Offset (0x18), 
                    Offset (0xA4), 
                    ASLE,   8, 
                    Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                    Offset (0xB0), 
                        ,   12, 
                    CDVL,   1, 
                    Offset (0xB2), 
                    Offset (0xB5), 
                    LBPC,   8, 
                    Offset (0xBC), 
                    ASLS,   32
                }

                OperationRegion (IGDM, SystemMemory, \ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                    DMOD,   32, 
                    Offset (0x100), 
                    DRDY,   32, 
                    CSTS,   32, 
                    CEVT,   32, 
                    Offset (0x120), 
                    DIDL,   32, 
                    DDL2,   32, 
                    DDL3,   32, 
                    DDL4,   32, 
                    DDL5,   32, 
                    DDL6,   32, 
                    DDL7,   32, 
                    DDL8,   32, 
                    CPDL,   32, 
                    CPL2,   32, 
                    CPL3,   32, 
                    CPL4,   32, 
                    CPL5,   32, 
                    CPL6,   32, 
                    CPL7,   32, 
                    CPL8,   32, 
                    CADL,   32, 
                    CAL2,   32, 
                    CAL3,   32, 
                    CAL4,   32, 
                    CAL5,   32, 
                    CAL6,   32, 
                    CAL7,   32, 
                    CAL8,   32, 
                    NADL,   32, 
                    NDL2,   32, 
                    NDL3,   32, 
                    NDL4,   32, 
                    NDL5,   32, 
                    NDL6,   32, 
                    NDL7,   32, 
                    NDL8,   32, 
                    ASLP,   32, 
                    TIDX,   32, 
                    CHPD,   32, 
                    CLID,   32, 
                    CDCK,   32, 
                    SXSW,   32, 
                    EVTS,   32, 
                    CNOT,   32, 
                    NRDY,   32, 
                    Offset (0x200), 
                    SCIE,   1, 
                    GEFC,   4, 
                    GXFC,   3, 
                    GESF,   8, 
                    Offset (0x204), 
                    PARM,   32, 
                    DSLP,   32, 
                    Offset (0x300), 
                    ARDY,   32, 
                    ASLC,   32, 
                    TCHE,   32, 
                    ALSI,   32, 
                    BCLP,   32, 
                    PFIT,   32, 
                    CBLV,   32, 
                    BCLM,   320, 
                    CPFM,   32, 
                    EPFM,   32, 
                    PLUT,   592, 
                    PFMB,   32, 
                    CCDV,   32, 
                    PCFT,   32, 
                    Offset (0x400), 
                    GVD1,   49152, 
                    PHED,   32, 
                    BDDC,   2048
                }

                Name (DBTB, Package (0x15)
                {
                    0x00, 
                    0x07, 
                    0x38, 
                    0x01C0, 
                    0x0E00, 
                    0x3F, 
                    0x01C7, 
                    0x0E07, 
                    0x01F8, 
                    0x0E38, 
                    0x0FC0, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x7000, 
                    0x7007, 
                    0x7038, 
                    0x71C0, 
                    0x7E00
                })
                Name (CDCT, Package (0x05)
                {
                    Package (0x02)
                    {
                        0xE4, 
                        0x0140
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        0x00, 
                        0x00
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }
                })
                Name (DBTC, Package (0x15)
                {
                    0x00, 
                    0x02, 
                    0x01, 
                    0x08, 
                    0x00, 
                    0x03, 
                    0x0A, 
                    0x00, 
                    0x09, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x04, 
                    0x06, 
                    0x05, 
                    0x0C, 
                    0x00
                })
                Name (SUCC, 0x01)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    If ((GEFC == 0x04))
                    {
                        GXFC = GBDA ()
                    }

                    If ((GEFC == 0x06))
                    {
                        GXFC = SBCB ()
                    }

                    GEFC = 0x00
                    \_SB.PCI0.LPC.SCIS = 0x01
                    GSSE = 0x00
                    SCIE = 0x00
                    Return (Zero)
                }

                Method (GBDA, 0, Serialized)
                {
                    If ((GESF == 0x00))
                    {
                        PARM = 0x0241
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x01))
                    {
                        PARM = 0x0202
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x04))
                    {
                        PARM &= 0xEFFF0000
                        PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                        PARM |= IBTT /* \_SB_.PCI0.VID_.PARM */
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x05))
                    {
                        If (\_SB.LID._LID ())
                        {
                            LIDS = 0x01
                        }
                        Else
                        {
                            LIDS = 0x00
                        }

                        PARM = IPSC /* \IPSC */
                        PARM += 0x01
                        PARM += 0x0300
                        PARM += 0x00010000
                        PARM |= (LIDS << 0x10)
                        PARM |= (IBIA << 0x14)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x06))
                    {
                        PARM = ITVF /* \ITVF */
                        PARM |= (ITVM << 0x04)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x07))
                    {
                        PARM = 0x01
                        PARM |= (0x03 << 0x0B)
                        PARM |= (0x03 << 0x11)
                        PARM |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 
                            0x15) /* \_SB_.PCI0.VID_.PARM */
                        GESF = 0x01
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x0A))
                    {
                        PARM = 0x00
                        GESF = 0x00
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    GESF = Zero
                    Return (CRIT) /* \_SB_.PCI0.VID_.CRIT */
                }

                Name (EXTD, 0x00)
                Method (SBCB, 0, Serialized)
                {
                    If ((GESF == 0x00))
                    {
                        PARM = 0x0101
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x01))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x03))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x04))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x05))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x06))
                    {
                        ITVF = (PARM & 0x0F)
                        ITVM = ((PARM & 0xF0) >> 0x04)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x07))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x08))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x09))
                    {
                        EXTD = (PARM & 0x80000000)
                        Local0 = (PARM & 0xFF)
                        If ((Local0 <= 0x14))
                        {
                            IBTT = DerefOf (DBTC [Local0])
                        }
                        Else
                        {
                            IBTT = 0x00
                        }

                        If (IBTT)
                        {
                            \UCMS (0x17)
                        }

                        IBTT = (PARM & 0xFF)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x0A))
                    {
                        IPSC = ((PARM & 0x03) - 0x01)
                        \UCMS (0x1A)
                        If (((PARM >> 0x08) & 0xFF))
                        {
                            IPAT = ((PARM >> 0x08) & 0xFF)
                            IPAT--
                        }

                        IBIA = ((PARM >> 0x14) & 0x07)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x0B))
                    {
                        IF1E = ((PARM >> 0x01) & 0x01)
                        If ((PARM & (0x0F << 0x0D)))
                        {
                            IDMS = ((PARM >> 0x0D) & 0x0F)
                            IDMM = 0x00
                        }
                        Else
                        {
                            IDMS = ((PARM >> 0x11) & 0x0F)
                            IDMM = 0x01
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x10))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x11))
                    {
                        PARM = (LIDS << 0x08)
                        PARM += 0x0100
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x12))
                    {
                        If ((PARM & 0x01))
                        {
                            If (((PARM >> 0x01) == 0x01))
                            {
                                ISSC = 0x01
                            }
                            Else
                            {
                                GESF = Zero
                                Return (CRIT) /* \_SB_.PCI0.VID_.CRIT */
                            }
                        }
                        Else
                        {
                            ISSC = 0x00
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x13))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    If ((GESF == 0x14))
                    {
                        PAVP = (PARM & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.VID_.SUCC */
                }

                Method (PDRD, 0, NotSerialized)
                {
                    If (!DRDY)
                    {
                        Sleep (ASLP)
                    }

                    Return (!DRDY)
                }

                Method (PSTS, 0, NotSerialized)
                {
                    If ((CSTS > 0x02))
                    {
                        Sleep (ASLP)
                    }

                    Return ((CSTS == 0x03))
                }

                Method (GNOT, 2, NotSerialized)
                {
                    If (PDRD ())
                    {
                        Return (0x01)
                    }

                    CEVT = Arg0
                    CSTS = 0x03
                    If (((CHPD == 0x00) && (Arg1 == 0x00)))
                    {
                        If ((Arg0 != 0x01))
                        {
                            If ((\WXPF && !\WVIS))
                            {
                                Notify (\_SB.PCI0, Arg1)
                            }
                            Else
                            {
                                Notify (\_SB.PCI0.VID, Arg1)
                            }
                        }
                    }

                    Notify (\_SB.PCI0.VID, 0x80) // Status Change
                    Return (0x00)
                }

                Method (GHDS, 1, NotSerialized)
                {
                    TIDX = Arg0
                    Return (GNOT (0x01, 0x00))
                }

                Method (GLID, 1, NotSerialized)
                {
                    CLID = Arg0
                    Return (GNOT (0x02, 0x00))
                }

                Method (GLIS, 1, NotSerialized)
                {
                    CLID = Arg0
                    Return (0x00)
                }

                Method (GDCK, 1, NotSerialized)
                {
                    CDCK = Arg0
                    Return (GNOT (0x04, 0x80))
                }

                Method (GDCS, 1, NotSerialized)
                {
                    CDCK = Arg0
                }

                Method (PARD, 0, NotSerialized)
                {
                    If (!ARDY)
                    {
                        Sleep (ASLP)
                    }

                    Return (!ARDY)
                }

                Method (AINT, 2, NotSerialized)
                {
                    If (!(TCHE & (0x01 << Arg0)))
                    {
                        Return (0x01)
                    }

                    If (PARD ())
                    {
                        Return (0x01)
                    }

                    If ((Arg0 == 0x02))
                    {
                        PFIT ^= 0x07
                        PFIT |= 0x80000000
                        ASLC = 0x04
                    }
                    ElseIf ((Arg0 == 0x01))
                    {
                        BCLP = Arg1
                        BCLP |= 0x80000000
                        ASLC = 0x0A
                    }
                    ElseIf ((Arg0 == 0x03))
                    {
                        PFMB = Arg1
                        PFMB |= 0x80000100
                    }
                    ElseIf ((Arg0 == 0x00))
                    {
                        ALSI = Arg1
                        ASLC = 0x01
                    }
                    Else
                    {
                        Return (0x01)
                    }

                    ASLE = 0x01
                    Return (0x00)
                }
            }

            Device (LPC)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Device (SIO)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (SCRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x1180,             // Range Minimum
                            0x1180,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x15E0,             // Range Minimum
                            0x15E0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1600,             // Range Minimum
                            0x1600,             // Range Maximum
                            0x01,               // Alignment
                            0x42,               // Length
                            )
                        IO (Decode16,
                            0x1644,             // Range Minimum
                            0x1644,             // Range Maximum
                            0x01,               // Alignment
                            0x3C,               // Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00001000,         // Address Length
                            _Y25)
                        Memory32Fixed (ReadWrite,
                            0xFED1C000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED10000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED18000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED19000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED45000,         // Address Base
                            0x00007000,         // Address Length
                            )
                    })
                    CreateDWordField (SCRS, \_SB.PCI0.LPC.SIO._Y25._BAS, TRMB)  // _BAS: Base Address
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        TRMB = \TBAB
                        If ((\_SB.PCI0.LPC.TPM._STA () == 0x0F))
                        {
                            Return (SCRS) /* \_SB_.PCI0.LPC_.SIO_.SCRS */
                        }
                        Else
                        {
                            Local0 = (SizeOf (SCRS) - 0x02)
                            Name (BUF0, Buffer (Local0){})
                            Local0 += SizeOf (\_SB.PCI0.LPC.TPM.BUF1)
                            Name (BUF1, Buffer (Local0){})
                            BUF0 = SCRS /* \_SB_.PCI0.LPC_.SIO_.SCRS */
                            Concatenate (BUF0, \_SB.PCI0.LPC.TPM.BUF1, BUF1) /* \_SB_.PCI0.LPC_.SIO_._CRS.BUF1 */
                            Return (BUF1) /* \_SB_.PCI0.LPC_.SIO_._CRS.BUF1 */
                        }
                    }
                }

                OperationRegion (LPCS, PCI_Config, 0x00, 0x0100)
                Field (LPCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    SERQ,   8, 
                    Offset (0x68), 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                    Offset (0x80), 
                    XU1A,   3, 
                        ,   1, 
                    XU2A,   3, 
                    Offset (0x81), 
                    XPA,    2, 
                        ,   2, 
                    XFA,    1, 
                    Offset (0x82), 
                    XU1E,   1, 
                    XU2E,   1, 
                    XPE,    1, 
                    XFE,    1, 
                    Offset (0x84), 
                    XG1E,   1, 
                        ,   1, 
                    XG1A,   14, 
                    Offset (0x88), 
                    XG2E,   1, 
                        ,   1, 
                    XG2A,   14, 
                    Offset (0xA0), 
                        ,   2, 
                    CLKR,   1, 
                        ,   7, 
                    EXPE,   1, 
                    Offset (0xA2)
                }

                OperationRegion (LPIO, SystemIO, 0x1180, 0x80)
                Field (LPIO, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                        ,   3, 
                    DOI0,   1, 
                    DOI1,   1, 
                    DOI2,   1, 
                    Offset (0x0D), 
                    Offset (0x0E), 
                        ,   6, 
                    GLIS,   1, 
                    Offset (0x0F), 
                    Offset (0x10)
                }

                OperationRegion (PMIO, SystemIO, 0x1000, 0x80)
                Field (PMIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x42), 
                        ,   1, 
                    SWGE,   1, 
                    Offset (0x64), 
                        ,   9, 
                    SCIS,   1, 
                    Offset (0x66)
                }

                OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
                Field (IO_T, ByteAcc, NoLock, Preserve)
                {
                    TRPI,   16, 
                    Offset (0x04), 
                    Offset (0x06), 
                    Offset (0x08), 
                    TRP0,   8, 
                    Offset (0x0A), 
                    Offset (0x0B), 
                    Offset (0x0C), 
                    Offset (0x0D), 
                    Offset (0x0E), 
                    Offset (0x0F), 
                    Offset (0x10)
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\WNTF && !\WXPF))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x0F)
                        }

                        Return (0x00)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, BusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (FPU)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (KBD)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (MOU)
                {
                    Name (_HID, EisaId ("IBM3780"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (MHID, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.PADD)
                        {
                            _HID = 0x80374D24
                        }
                        Else
                        {
                            _HID = 0x1500AE30
                        }
                    }
                }

                OperationRegion (IMGA, SystemIO, 0x15E0, 0x10)
                Field (IMGA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x03), 
                    WAKR,   16, 
                    Offset (0x0C), 
                    GAIX,   8, 
                    Offset (0x0E), 
                    GADT,   8, 
                    Offset (0x10)
                }

                IndexField (GAIX, GADT, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x50), 
                        ,   3, 
                    IVPW,   1, 
                    DVPW,   1, 
                    BLPL,   1, 
                    Offset (0x51), 
                    TP4R,   1, 
                    PADR,   1, 
                    BPAD,   1, 
                        ,   1, 
                        ,   1, 
                    PADD,   1, 
                    Offset (0x60), 
                    EPWG,   1, 
                        ,   1, 
                    CSON,   1, 
                    DSCI,   1, 
                    DSCS,   1, 
                    DLAN,   1, 
                    Offset (0xC2), 
                    GAID,   8
                }

                OperationRegion (NCFG, SystemIO, 0x2E, 0x02)
                Field (NCFG, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x07), 
                    LDN,    8, 
                    Offset (0x20), 
                    SIOD,   8, 
                    Offset (0x22), 
                    SCF2,   8, 
                    Offset (0x24), 
                    SCF4,   8, 
                        ,   2, 
                    PPSE,   1, 
                        ,   4, 
                    PNF,    1, 
                    FDCD,   1, 
                    PPD,    1, 
                    SP2D,   1, 
                    SP1D,   1, 
                        ,   1, 
                    GPSR,   2, 
                    Offset (0x27), 
                    SRID,   8, 
                    Offset (0x29), 
                    SCF9,   8, 
                    Offset (0x2B), 
                    Offset (0x30), 
                    LDA,    1, 
                    Offset (0x31), 
                    Offset (0x60), 
                    IOHI,   8, 
                    IOLW,   8, 
                    Offset (0x70), 
                    IRQN,   4, 
                    IRQW,   1, 
                    Offset (0x71), 
                    IRQT,   1, 
                    IRQL,   1, 
                    Offset (0x72), 
                    Offset (0x74), 
                    DMA0,   3, 
                    Offset (0x75), 
                    DMA1,   3, 
                    Offset (0x76)
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xF0), 
                    PTRS,   1, 
                    PPMC,   1, 
                        ,   2, 
                    PERA,   1, 
                    PMDS,   3
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xF0), 
                    STRS,   1, 
                    SPMC,   1, 
                    SBSY,   1, 
                        ,   4, 
                    SBSE,   1
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xF0), 
                    GPPS,   8, 
                    GPPC,   8, 
                    GPER,   8
                }

                OperationRegion (CFGS, SystemIO, 0x164E, 0x02)
                Field (CFGS, ByteAcc, NoLock, Preserve)
                {
                    NDXS,   8, 
                    ATAS,   8
                }

                IndexField (NDXS, ATAS, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x07), 
                    LDNS,   8, 
                    Offset (0x20), 
                    Offset (0x21), 
                    Offset (0x22), 
                    Offset (0x23), 
                    Offset (0x24), 
                    Offset (0x25), 
                        ,   2, 
                    PSES,   1, 
                        ,   4, 
                    PNFS,   1, 
                    DCDS,   1, 
                    PPDS,   1, 
                    SP2S,   1, 
                    SP1S,   1, 
                        ,   1, 
                    PSRS,   2, 
                    Offset (0x27), 
                    RIDS,   8, 
                    Offset (0x29), 
                    CCSS,   2, 
                    CCES,   1, 
                    MCSS,   1, 
                    MESS,   1, 
                    Offset (0x2A), 
                    Offset (0x2B), 
                    Offset (0x30), 
                    LDAS,   1, 
                    Offset (0x31), 
                    Offset (0x60), 
                    OHIS,   8, 
                    OLWS,   8, 
                    Offset (0x70), 
                    RQNS,   4, 
                    RQWS,   1, 
                    Offset (0x71), 
                    RQTS,   1, 
                    RQLS,   1, 
                    Offset (0x72), 
                    Offset (0x74), 
                    MA0S,   3, 
                    Offset (0x75), 
                    MA1S,   3, 
                    Offset (0x76)
                }

                IndexField (NDXS, ATAS, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xF0), 
                    TRSS,   1, 
                    PMCS,   1, 
                    BSYS,   1, 
                        ,   4, 
                    SESS,   1
                }

                OperationRegion (NSDL, SystemIO, 0x164C, 0x01)
                Field (NSDL, ByteAcc, NoLock, Preserve)
                {
                    DLPC,   8
                }

                OperationRegion (NSIO, SystemIO, 0x1680, 0x0C)
                Field (NSIO, ByteAcc, NoLock, Preserve)
                {
                    DRST,   1, 
                    DLPD,   1, 
                    ULRT,   1, 
                    ULPD,   1, 
                    Offset (0x01), 
                        ,   4, 
                    DKI0,   1, 
                    Offset (0x02), 
                    Offset (0x09), 
                    DKI1,   1, 
                    DKI2,   1
                }

                OperationRegion (DSIO, SystemIO, 0x1620, 0x0C)
                Field (DSIO, ByteAcc, NoLock, Preserve)
                {
                        ,   1, 
                    DUSB,   1, 
                    Offset (0x01)
                }

                Device (UART)
                {
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x1D, 
                        0x03
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        If (\H8DR)
                        {
                            If (Arg0)
                            {
                                \_SB.PCI0.LPC.EC.HWRI = 0x01
                            }
                            Else
                            {
                                \_SB.PCI0.LPC.EC.HWRI = 0x00
                            }
                        }
                        ElseIf (Arg0)
                        {
                            \MBEC (0x32, 0xFF, 0x40)
                        }
                        Else
                        {
                            \MBEC (0x32, 0xBF, 0x00)
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((SIOD == 0xFF))
                        {
                            Return (0x00)
                        }
                        ElseIf (XU1E)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x0D)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        XU1E = 0x00
                        LDN = 0x03
                        IRQN = 0x00
                        LDA = 0x00
                        SP1D = 0x01
                    }

                    Name (U1BF, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y26)
                        IRQNoFlags (_Y27)
                            {}
                    })
                    CreateWordField (U1BF, \_SB.PCI0.LPC.UART._Y26._MIN, U1MN)  // _MIN: Minimum Base Address
                    CreateWordField (U1BF, \_SB.PCI0.LPC.UART._Y26._MAX, U1MX)  // _MAX: Maximum Base Address
                    CreateWordField (U1BF, \_SB.PCI0.LPC.UART._Y27._INT, U1IQ)  // _INT: Interrupts
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        LDN = 0x03
                        Local0 = ((IOHI << 0x08) | IOLW) /* \_SB_.PCI0.LPC_.IOLW */
                        U1MN = Local0
                        U1MX = Local0
                        Local0 = IRQN /* \_SB_.PCI0.LPC_.IRQN */
                        If (Local0)
                        {
                            U1IQ = (0x01 << IRQN) /* \_SB_.PCI0.LPC_.IRQN */
                        }
                        Else
                        {
                            U1IQ = 0x00
                        }

                        Return (U1BF) /* \_SB_.PCI0.LPC_.UART.U1BF */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        }
                        StartDependentFn (0x01, 0x00)
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        }
                        StartDependentFn (0x01, 0x00)
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        }
                        StartDependentFn (0x01, 0x00)
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        }
                        StartDependentFn (0x02, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,5,7}
                        }
                        StartDependentFn (0x02, 0x00)
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4,5,7}
                        }
                        StartDependentFn (0x02, 0x00)
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,5,7}
                        }
                        StartDependentFn (0x02, 0x00)
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4,5,7}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateByteField (Arg0, 0x02, RUIL)
                        CreateByteField (Arg0, 0x03, RUIH)
                        CreateWordField (Arg0, 0x02, RUIO)
                        CreateWordField (Arg0, 0x09, RUIQ)
                        LDN = 0x03
                        LDA = 0x00
                        IOLW = RUIL /* \_SB_.PCI0.LPC_.UART._SRS.RUIL */
                        IOHI = RUIH /* \_SB_.PCI0.LPC_.UART._SRS.RUIH */
                        If (RUIQ)
                        {
                            FindSetRightBit (RUIQ, Local0)
                            IRQN = Local0--
                        }
                        Else
                        {
                            IRQN = 0x00
                        }

                        SP1D = 0x00
                        LDA = 0x01
                        If ((RUIO == 0x03F8))
                        {
                            XU1A = 0x00
                        }
                        ElseIf ((RUIO == 0x02F8))
                        {
                            XU1A = 0x01
                        }
                        ElseIf ((RUIO == 0x03E8))
                        {
                            XU1A = 0x07
                        }
                        ElseIf ((RUIO == 0x02E8))
                        {
                            XU1A = 0x05
                        }
                        Else
                        {
                            Fatal (0x02, 0x90020000, 0x01AA)
                        }

                        XU1E = 0x01
                        SSBY = 0x01
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        LDN = 0x03
                        If (LDA)
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        LDN = 0x03
                        LDA = 0x01
                        SSBY = 0x01
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        LDN = 0x03
                        LDA = 0x00
                        SSBY = 0x00
                    }
                }

                Device (LPT)
                {
                    Name (_HID, EisaId ("PNP0400") /* Standard LPT Parallel Port */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((SIOD == 0xFF))
                        {
                            Return (0x00)
                        }
                        ElseIf ((\PMOD != 0x03))
                        {
                            If (XPE)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        XPE = 0x00
                        LDN = 0x01
                        IRQN = 0x00
                        LDA = 0x00
                        PPD = 0x01
                    }

                    Name (PPBF, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y28)
                        IRQNoFlags (_Y29)
                            {}
                    })
                    CreateWordField (PPBF, \_SB.PCI0.LPC.LPT._Y28._MIN, LPN0)  // _MIN: Minimum Base Address
                    CreateWordField (PPBF, \_SB.PCI0.LPC.LPT._Y28._MAX, LPX0)  // _MAX: Maximum Base Address
                    CreateByteField (PPBF, \_SB.PCI0.LPC.LPT._Y28._LEN, LPL0)  // _LEN: Length
                    CreateWordField (PPBF, \_SB.PCI0.LPC.LPT._Y29._INT, LPIQ)  // _INT: Interrupts
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((\PMOD == 0x03))
                        {
                            Return (PPBF) /* \_SB_.PCI0.LPC_.LPT_.PPBF */
                        }

                        LDN = 0x01
                        Local0 = ((IOHI << 0x08) | IOLW) /* \_SB_.PCI0.LPC_.IOLW */
                        LPN0 = Local0
                        LPX0 = Local0
                        If ((Local0 == 0x03BC))
                        {
                            LPL0 = 0x03
                        }
                        Else
                        {
                            LPL0 = 0x08
                        }

                        Local0 = IRQN /* \_SB_.PCI0.LPC_.IRQN */
                        If (Local0)
                        {
                            LPIQ = (0x01 << IRQN) /* \_SB_.PCI0.LPC_.IRQN */
                        }
                        Else
                        {
                            LPIQ = 0x00
                        }

                        Return (PPBF) /* \_SB_.PCI0.LPC_.LPT_.PPBF */
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        If (\PMOD)
                        {
                            Return (PEPP) /* \_SB_.PCI0.LPC_.LPT_.PEPP */
                        }
                        Else
                        {
                            Return (PLPT) /* \_SB_.PCI0.LPC_.LPT_.PLPT */
                        }
                    }

                    Name (PLPT, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        EndDependentFn ()
                    })
                    Name (PEPP, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateByteField (Arg0, 0x02, RLIL)
                        CreateByteField (Arg0, 0x03, RLIH)
                        CreateWordField (Arg0, 0x02, RLIO)
                        CreateWordField (Arg0, 0x09, RLIQ)
                        LDN = 0x01
                        LDA = 0x00
                        IOLW = RLIL /* \_SB_.PCI0.LPC_.LPT_._SRS.RLIL */
                        IOHI = RLIH /* \_SB_.PCI0.LPC_.LPT_._SRS.RLIH */
                        If (RLIQ)
                        {
                            FindSetRightBit (RLIQ, Local0)
                            IRQN = Local0--
                        }
                        Else
                        {
                            IRQN = 0x00
                        }

                        If ((\PMOD == 0x00))
                        {
                            If (\PDIR)
                            {
                                PMDS = 0x01
                            }
                            Else
                            {
                                PMDS = 0x00
                            }
                        }
                        ElseIf ((\PMOD == 0x01))
                        {
                            PMDS = 0x02
                        }
                        Else
                        {
                            PMDS = 0x03
                        }

                        PPD = 0x00
                        LDA = 0x01
                        If ((RLIO == 0x0378))
                        {
                            XPA = 0x00
                        }
                        ElseIf ((RLIO == 0x0278))
                        {
                            XPA = 0x01
                        }
                        ElseIf ((RLIO == 0x03BC))
                        {
                            XPA = 0x02
                        }
                        Else
                        {
                            Fatal (0x02, 0x90020000, 0x01CF)
                        }

                        XPE = 0x01
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        LDN = 0x01
                        If (LDA)
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        LDN = 0x01
                        LDA = 0x01
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        LDN = 0x01
                        LDA = 0x00
                    }
                }

                Device (ECP)
                {
                    Name (_HID, EisaId ("PNP0401") /* ECP Parallel Port */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((SIOD == 0xFF))
                        {
                            Return (0x00)
                        }
                        ElseIf ((\PMOD == 0x03))
                        {
                            If (XPE)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        XPE = 0x00
                        LDN = 0x01
                        IRQN = 0x00
                        LDA = 0x00
                        PPD = 0x01
                    }

                    Name (EPBF, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y2A)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y2B)
                        IRQNoFlags (_Y2C)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y2D)
                            {}
                    })
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2A._MIN, ECN0)  // _MIN: Minimum Base Address
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2A._MAX, ECX0)  // _MAX: Maximum Base Address
                    CreateByteField (EPBF, \_SB.PCI0.LPC.ECP._Y2A._LEN, ECL0)  // _LEN: Length
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2B._MIN, ECN1)  // _MIN: Minimum Base Address
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2B._MAX, ECX1)  // _MAX: Maximum Base Address
                    CreateByteField (EPBF, \_SB.PCI0.LPC.ECP._Y2B._LEN, ECL1)  // _LEN: Length
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2C._INT, ECIQ)  // _INT: Interrupts
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2D._DMA, ECDQ)  // _DMA: Direct Memory Access
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((\PMOD != 0x03))
                        {
                            Return (EPBF) /* \_SB_.PCI0.LPC_.ECP_.EPBF */
                        }

                        LDN = 0x01
                        Local0 = ((IOHI << 0x08) | IOLW) /* \_SB_.PCI0.LPC_.IOLW */
                        ECN0 = Local0
                        ECX0 = Local0
                        ECN1 = (Local0 + 0x0400)
                        ECX1 = (Local0 + 0x0400)
                        If ((Local0 == 0x03BC))
                        {
                            ECL0 = 0x03
                            ECL1 = 0x03
                        }
                        Else
                        {
                            ECL0 = 0x08
                            ECL1 = 0x08
                        }

                        Local0 = IRQN /* \_SB_.PCI0.LPC_.IRQN */
                        If (Local0)
                        {
                            ECIQ = (0x01 << IRQN) /* \_SB_.PCI0.LPC_.IRQN */
                        }
                        Else
                        {
                            ECIQ = 0x00
                        }

                        Local0 = DMA0 /* \_SB_.PCI0.LPC_.DMA0 */
                        If ((Local0 < 0x04))
                        {
                            ECDQ = (0x01 << Local0)
                        }
                        Else
                        {
                            ECDQ = 0x00
                        }

                        Return (EPBF) /* \_SB_.PCI0.LPC_.ECP_.EPBF */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0678,             // Range Minimum
                                0x0678,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IO (Decode16,
                                0x07BC,             // Range Minimum
                                0x07BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0678,             // Range Minimum
                                0x0678,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IO (Decode16,
                                0x07BC,             // Range Minimum
                                0x07BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateByteField (Arg0, 0x02, RLIL)
                        CreateByteField (Arg0, 0x03, RLIH)
                        CreateWordField (Arg0, 0x02, RLIO)
                        CreateWordField (Arg0, 0x11, RLIQ)
                        CreateByteField (Arg0, 0x14, RLDQ)
                        LDN = 0x01
                        LDA = 0x00
                        PMDS = 0x07
                        PERA = 0x01
                        IOLW = RLIL /* \_SB_.PCI0.LPC_.ECP_._SRS.RLIL */
                        IOHI = RLIH /* \_SB_.PCI0.LPC_.ECP_._SRS.RLIH */
                        If (RLIQ)
                        {
                            FindSetRightBit (RLIQ, Local0)
                            IRQN = Local0--
                        }
                        Else
                        {
                            IRQN = 0x00
                        }

                        If ((RLDQ & 0x0F))
                        {
                            FindSetRightBit (RLDQ, Local0)
                            DMA0 = Local0--
                        }
                        Else
                        {
                            DMA0 = 0x04
                        }

                        PPD = 0x00
                        LDA = 0x01
                        If ((RLIO == 0x0378))
                        {
                            XPA = 0x00
                        }
                        ElseIf ((RLIO == 0x0278))
                        {
                            XPA = 0x01
                        }
                        ElseIf ((RLIO == 0x03BC))
                        {
                            XPA = 0x02
                        }
                        Else
                        {
                            Fatal (0x02, 0x90020000, 0x039F)
                        }

                        XPE = 0x01
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        LDN = 0x01
                        If (LDA)
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        LDN = 0x01
                        LDA = 0x01
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        LDN = 0x01
                        LDA = 0x00
                    }
                }

                Device (TPM)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        TPHY (0x00)
                        If ((TPMV == 0x01))
                        {
                            Return (0x0201D824)
                        }

                        If ((TPMV == 0x02))
                        {
                            Return (0x0435CF4D)
                        }

                        If ((TPMV == 0x03))
                        {
                            Return (0x02016D08)
                        }

                        If ((TPMV == 0x04))
                        {
                            Return (0x01016D08)
                        }

                        If (((TPMV == 0x05) || (TPMV == 0x06)))
                        {
                            Return (0x0010A35C)
                        }

                        If ((TPMV == 0x08))
                        {
                            Return (0x00128D06)
                        }

                        If ((TPMV == 0x09))
                        {
                            Return ("INTC0102")
                        }

                        If ((TPMV == 0x0A))
                        {
                            Return ("SMO1200")
                        }

                        Return (0x310CD041)
                    }

                    Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
                    Name (_UID, 0x01)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        TPHY (0x00)
                        If (TPRS)
                        {
                            Return (0x0F)
                        }

                        Return (0x00)
                    }

                    Name (BUF1, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00005000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF1) /* \_SB_.PCI0.LPC_.TPM_.BUF1 */
                    }

                    Method (UCMP, 2, NotSerialized)
                    {
                        If ((0x10 != SizeOf (Arg0)))
                        {
                            Return (0x00)
                        }

                        If ((0x10 != SizeOf (Arg1)))
                        {
                            Return (0x00)
                        }

                        Local0 = 0x00
                        While ((Local0 < 0x10))
                        {
                            If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0]
                                )))
                            {
                                Return (0x00)
                            }

                            Local0++
                        }

                        Return (0x01)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        Name (PPRC, 0x00)
                        Name (RQS1, Package (0x02)
                        {
                            0x0C, 
                            0x0D
                        })
                        Name (TTMP, Buffer (0x01)
                        {
                             0x00                                             // .
                        })
                        CreateByteField (TTMP, 0x00, TMPV)
                        If ((UCMP (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */) == 0x01))
                        {
                            If ((Arg2 == 0x00))
                            {
                                Return (Buffer (0x01)
                                {
                                     0x7F                                             // .
                                })
                            }

                            If ((Arg2 == 0x01))
                            {
                                Return (Buffer (0x04)
                                {
                                    "1.0"
                                })
                            }

                            If ((Arg2 == 0x02))
                            {
                                If (TPRS)
                                {
                                    PPRC = 0x00
                                    If (LFLS ())
                                    {
                                        PPRC = 0x02
                                    }
                                    Else
                                    {
                                        If ((DerefOf (Arg3 [0x00]) == 0x00))
                                        {
                                            PPRQ = 0x00
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x01))
                                        {
                                            PPRQ = 0x01
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x02))
                                        {
                                            PPRQ = 0x02
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x03))
                                        {
                                            PPRQ = 0x03
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x04))
                                        {
                                            PPRQ = 0x04
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x05))
                                        {
                                            PPRQ = 0x05
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x06))
                                        {
                                            PPRQ = 0x06
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x07))
                                        {
                                            PPRQ = 0x07
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x08))
                                        {
                                            PPRQ = 0x08
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x09))
                                        {
                                            PPRQ = 0x09
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x0A))
                                        {
                                            PPRQ = 0x0A
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x0B))
                                        {
                                            PPRQ = 0x0B
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x0C))
                                        {
                                            PPRQ = 0x0C
                                            Return (0x01)
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x0D))
                                        {
                                            PPRQ = 0x0D
                                            Return (0x01)
                                        }

                                        If ((DerefOf (Arg3 [0x00]) == 0x0E))
                                        {
                                            PPRQ = 0x0E
                                        }

                                        If ((DerefOf (Arg3 [0x00]) >= 0x0F))
                                        {
                                            Return (0x01)
                                        }

                                        SFLS ()
                                        Return (PPRC) /* \_SB_.PCI0.LPC_.TPM_._DSM.PPRC */
                                    }
                                }

                                Return (0x01)
                            }

                            If ((Arg2 == 0x03))
                            {
                                Name (TMP1, Package (0x02)
                                {
                                    0x00, 
                                    0xFFFFFFFF
                                })
                                If (LFLS ())
                                {
                                    TMP1 [0x00] = 0x01
                                    Return (TMP1) /* \_SB_.PCI0.LPC_.TPM_._DSM.TMP1 */
                                }

                                TMP1 [0x01] = PPRQ /* \PPRQ */
                                Return (TMP1) /* \_SB_.PCI0.LPC_.TPM_._DSM.TMP1 */
                            }

                            If ((Arg2 == 0x04))
                            {
                                Return (0x01)
                            }

                            If ((Arg2 == 0x05))
                            {
                                Name (TMP2, Package (0x03)
                                {
                                    0x00, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                If (LFLS ())
                                {
                                    TMP2 [0x00] = 0x01
                                    Return (TMP2) /* \_SB_.PCI0.LPC_.TPM_._DSM.TMP2 */
                                }

                                TMP2 [0x01] = PPLO /* \PPLO */
                                If ((PPLO > 0x0E))
                                {
                                    TMP2 [0x02] = 0xFFFFFFF1
                                    Return (TMP2) /* \_SB_.PCI0.LPC_.TPM_._DSM.TMP2 */
                                }

                                If ((PPRQ == 0x1F))
                                {
                                    TMP2 [0x02] = 0xFFFFFFF1
                                    Return (TMP2) /* \_SB_.PCI0.LPC_.TPM_._DSM.TMP2 */
                                }

                                If (PPOR)
                                {
                                    TMP2 [0x02] = 0xFFFFFFF0
                                    Return (TMP2) /* \_SB_.PCI0.LPC_.TPM_._DSM.TMP2 */
                                }

                                TMP2 [0x02] = 0x00
                                Return (TMP2) /* \_SB_.PCI0.LPC_.TPM_._DSM.TMP2 */
                            }

                            If ((Arg2 == 0x06))
                            {
                                CreateByteField (Arg3, 0x04, LAN0)
                                CreateByteField (Arg3, 0x05, LAN1)
                                If (((LAN0 == 0x65) || (LAN0 == 0x45)))
                                {
                                    If (((LAN1 == 0x6E) || (LAN1 == 0x4E)))
                                    {
                                        Return (0x00)
                                    }
                                }

                                Return (0x01)
                            }

                            Return (0x01)
                        }

                        If ((UCMP (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* Unknown UUID */) == 0x01))
                        {
                            If ((Arg2 == 0x00))
                            {
                                Return (Buffer (0x01)
                                {
                                     0x01                                             // .
                                })
                            }

                            If ((Arg2 == 0x01))
                            {
                                If ((DerefOf (Arg3 [0x00]) == 0x00))
                                {
                                    If (LFLS ())
                                    {
                                        Return (0x02)
                                    }

                                    MOR = 0x00
                                    SFLS ()
                                    Return (0x00)
                                }

                                If ((DerefOf (Arg3 [0x00]) == 0x01))
                                {
                                    If (LFLS ())
                                    {
                                        Return (0x02)
                                    }

                                    MOR = 0x01
                                    SFLS ()
                                    Return (0x00)
                                }
                            }

                            Return (0x01)
                        }

                        Return (Buffer (0x01)
                        {
                             0x00                                             // .
                        })
                    }

                    Method (LFLS, 0, NotSerialized)
                    {
                        Name (TMPB, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateByteField (TMPB, 0x00, LPCT)
                        CreateByteField (TMPB, 0x01, SSUM)
                        TPHY (0x00)
                        LPCT = PH02 /* \PH02 */
                        If (LPCT)
                        {
                            SSUM = 0x00
                            SSUM += PH01 /* \PH01 */
                            SSUM += PH02 /* \PH02 */
                            SSUM += PH03 /* \PH03 */
                            SSUM += PPRQ /* \PPRQ */
                            SSUM += PPLO /* \PPLO */
                            SSUM += PPRP /* \PPRP */
                            SSUM += PPOR /* \PPOR */
                            SSUM += TPRS /* \TPRS */
                            SSUM += TPMV /* \TPMV */
                            SSUM += MOR /* \MOR_ */
                            SSUM += RSV0 /* \RSV0 */
                            If (SSUM){}
                            Else
                            {
                                Return (0x00)
                            }

                            Return (0x02)
                        }
                    }

                    Method (SFLS, 0, NotSerialized)
                    {
                        Name (TMPB, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateByteField (TMPB, 0x00, LPCT)
                        CreateByteField (TMPB, 0x01, SSUM)
                        LPCT = PH02 /* \PH02 */
                        If (LPCT)
                        {
                            SSUM = 0x00
                            SSUM += PH01 /* \PH01 */
                            SSUM += PH02 /* \PH02 */
                            SSUM += PH03 /* \PH03 */
                            SSUM += PPRQ /* \PPRQ */
                            SSUM += PPLO /* \PPLO */
                            SSUM += PPRP /* \PPRP */
                            SSUM += PPOR /* \PPOR */
                            SSUM += TPRS /* \TPRS */
                            SSUM += TPMV /* \TPMV */
                            SSUM += MOR /* \MOR_ */
                            SSUM += RSV0 /* \RSV0 */
                            PH03 = (0x00 - SSUM) /* \_SB_.PCI0.LPC_.TPM_.SFLS.SSUM */
                            TPHY (0x01)
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x02)
                        }
                    }
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (_GPE, 0x11)  // _GPE: General Purpose Events
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((Arg0 == 0x03))
                        {
                            \H8DR = Arg1
                        }
                    }

                    OperationRegion (ECOR, EmbeddedControl, 0x00, 0x0100)
                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        HDBM,   1, 
                            ,   1, 
                            ,   1, 
                        HFNE,   1, 
                            ,   1, 
                            ,   1, 
                        HLDM,   1, 
                        Offset (0x01), 
                            ,   1, 
                        BTCM,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        HBPR,   1, 
                        BTPC,   1, 
                        Offset (0x02), 
                        HDUE,   1, 
                            ,   4, 
                        SNLK,   1, 
                        Offset (0x03), 
                            ,   1, 
                        HETE,   1, 
                            ,   3, 
                        HAUM,   2, 
                        Offset (0x05), 
                        HSPA,   1, 
                        Offset (0x06), 
                        HSUN,   8, 
                        HSRP,   8, 
                        Offset (0x0C), 
                        HLCL,   8, 
                        Offset (0x0E), 
                        HFNS,   2, 
                        Offset (0x0F), 
                            ,   6, 
                        NULS,   1, 
                        Offset (0x10), 
                        HAM0,   8, 
                        HAM1,   8, 
                        HAM2,   8, 
                        HAM3,   8, 
                        HAM4,   8, 
                        HAM5,   8, 
                        HAM6,   8, 
                        HAM7,   8, 
                        HAM8,   8, 
                        HAM9,   8, 
                        HAMA,   8, 
                        HAMB,   8, 
                        HAMC,   8, 
                        HAMD,   8, 
                        HAME,   8, 
                        HAMF,   8, 
                        Offset (0x23), 
                        HANT,   8, 
                        Offset (0x26), 
                            ,   1, 
                            ,   1, 
                        HANA,   2, 
                            ,   1, 
                            ,   1, 
                        Offset (0x2A), 
                        HATR,   8, 
                        HT0H,   8, 
                        HT0L,   8, 
                        HT1H,   8, 
                        HT1L,   8, 
                        HFSP,   8, 
                            ,   6, 
                        HMUT,   1, 
                        Offset (0x31), 
                            ,   2, 
                        HUWB,   1, 
                        Offset (0x32), 
                        HWPM,   1, 
                        HWLB,   1, 
                        HWLO,   1, 
                        HWDK,   1, 
                        HWFN,   1, 
                        HWBT,   1, 
                        HWRI,   1, 
                        HWBU,   1, 
                        HWLU,   1, 
                        Offset (0x34), 
                            ,   7, 
                        HPLO,   1, 
                        Offset (0x36), 
                        Offset (0x38), 
                        HB0S,   7, 
                        HB0A,   1, 
                        HB1S,   7, 
                        HB1A,   1, 
                        HCMU,   1, 
                            ,   2, 
                        OVRQ,   1, 
                        DCBD,   1, 
                        DCWL,   1, 
                        DCWW,   1, 
                        HB1I,   1, 
                            ,   1, 
                        KBLT,   1, 
                        BTPW,   1, 
                        BTDT,   1, 
                        HUBS,   1, 
                        BDPW,   1, 
                        BDDT,   1, 
                        HUBB,   1, 
                        Offset (0x46), 
                            ,   1, 
                        BTWK,   1, 
                        HPLD,   1, 
                            ,   1, 
                        HPAC,   1, 
                        BTST,   1, 
                        Offset (0x47), 
                        HPBU,   1, 
                            ,   1, 
                        HBID,   1, 
                            ,   3, 
                        HBCS,   1, 
                        HPNF,   1, 
                            ,   1, 
                        GSTS,   1, 
                            ,   2, 
                        HLBU,   1, 
                        DOCD,   1, 
                        HCBL,   1, 
                        Offset (0x49), 
                        SLUL,   1, 
                        Offset (0x4C), 
                        HTMH,   8, 
                        HTML,   8, 
                        HWAK,   16, 
                        HMPR,   8, 
                            ,   7, 
                        HMDN,   1, 
                        Offset (0x78), 
                        TMP0,   8, 
                        Offset (0x80), 
                        Offset (0x81), 
                        HIID,   8, 
                        Offset (0x83), 
                        HFNI,   8, 
                        HSPD,   16, 
                        Offset (0x88), 
                        TSL0,   7, 
                        TSR0,   1, 
                        TSL1,   7, 
                        TSR1,   1, 
                        TSL2,   7, 
                        TSR2,   1, 
                        TSL3,   7, 
                        TSR3,   1, 
                        Offset (0x8D), 
                        HDAA,   3, 
                        HDAB,   3, 
                        HDAC,   2, 
                        Offset (0xB0), 
                        HDEN,   32, 
                        HDEP,   32, 
                        HDEM,   8, 
                        HDES,   8, 
                        Offset (0xC8), 
                        ATMX,   8, 
                        HWAT,   8, 
                        Offset (0xCC), 
                        PWMH,   8, 
                        PWML,   8, 
                        Offset (0xED), 
                            ,   4, 
                        HDDD,   1
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        If (\H8DR)
                        {
                            HSPA = 0x00
                        }
                        Else
                        {
                            \MBEC (0x05, 0xFE, 0x00)
                        }

                        BINI ()
                        \_SB.PCI0.LPC.EC.HKEY.WGIN ()
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (LED, 2, NotSerialized)
                    {
                        Local0 = (Arg0 | Arg1)
                        If (\H8DR)
                        {
                            HLCL = Local0
                        }
                        Else
                        {
                            \WBEC (0x0C, Local0)
                        }
                    }

                    Name (BAON, 0x00)
                    Name (WBON, 0x00)
                    Method (BEEP, 1, NotSerialized)
                    {
                        If ((Arg0 == 0x05))
                        {
                            WBON = 0x00
                        }

                        Local2 = WBON /* \_SB_.PCI0.LPC_.EC__.WBON */
                        If (BAON)
                        {
                            If ((Arg0 == 0x00))
                            {
                                BAON = 0x00
                                If (WBON)
                                {
                                    Local0 = 0x03
                                    Local1 = 0x08
                                }
                                Else
                                {
                                    Local0 = 0x00
                                    Local1 = 0x00
                                }
                            }
                            Else
                            {
                                Local0 = 0xFF
                                Local1 = 0xFF
                                If ((Arg0 == 0x11))
                                {
                                    WBON = 0x00
                                }

                                If ((Arg0 == 0x10))
                                {
                                    WBON = 0x01
                                }
                            }
                        }
                        Else
                        {
                            Local0 = Arg0
                            Local1 = 0xFF
                            If ((Arg0 == 0x0F))
                            {
                                Local0 = Arg0
                                Local1 = 0x08
                                BAON = 0x01
                            }

                            If ((Arg0 == 0x11))
                            {
                                Local0 = 0x00
                                Local1 = 0x00
                                WBON = 0x00
                            }

                            If ((Arg0 == 0x10))
                            {
                                Local0 = 0x03
                                Local1 = 0x08
                                WBON = 0x01
                            }
                        }

                        If ((Arg0 == 0x03))
                        {
                            WBON = 0x00
                            If (Local2)
                            {
                                Local0 = 0x07
                                If (((\SPS == 0x03) || (\SPS == 0x04)))
                                {
                                    Local2 = 0x00
                                    Local0 = 0xFF
                                    Local1 = 0xFF
                                }
                            }
                        }

                        If ((Arg0 == 0x07))
                        {
                            If (Local2)
                            {
                                Local2 = 0x00
                                Local0 = 0xFF
                                Local1 = 0xFF
                            }
                        }

                        If (\H8DR)
                        {
                            If ((Local2 && !WBON))
                            {
                                HSRP = 0x00
                                HSUN = 0x00
                                Sleep (0x64)
                            }

                            If ((Local1 != 0xFF))
                            {
                                HSRP = Local1
                            }

                            If ((Local0 != 0xFF))
                            {
                                HSUN = Local0
                            }
                        }
                        Else
                        {
                            If ((Local2 && !WBON))
                            {
                                \WBEC (0x07, 0x00)
                                \WBEC (0x06, 0x00)
                                Sleep (0x64)
                            }

                            If ((Local1 != 0xFF))
                            {
                                \WBEC (0x07, Local1)
                            }

                            If ((Local0 != 0xFF))
                            {
                                \WBEC (0x06, Local0)
                            }
                        }

                        If ((Arg0 == 0x03)){}
                        If ((Arg0 == 0x07))
                        {
                            Sleep (0x01F4)
                        }
                    }

                    Method (EVNT, 1, NotSerialized)
                    {
                        If (\H8DR)
                        {
                            If (Arg0)
                            {
                                HAM7 |= 0x01
                                HAM5 |= 0x04
                            }
                            Else
                            {
                                HAM7 &= 0xFE
                                HAM5 &= 0xFB
                            }
                        }
                        ElseIf (Arg0)
                        {
                            \MBEC (0x17, 0xFF, 0x01)
                            \MBEC (0x15, 0xFF, 0x04)
                        }
                        Else
                        {
                            \MBEC (0x17, 0xFE, 0x00)
                            \MBEC (0x15, 0xFB, 0x00)
                        }
                    }

                    PowerResource (PUBS, 0x03, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                Local0 = HUBS /* \_SB_.PCI0.LPC_.EC__.HUBS */
                            }
                            Else
                            {
                                Local0 = (\RBEC (0x3B) & 0x10)
                            }

                            If (Local0)
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (\H8DR)
                            {
                                HUBS = 0x01
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xFF, 0x10)
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (\H8DR)
                            {
                                HUBS = 0x00
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xEF, 0x00)
                            }
                        }
                    }

                    Method (CHKS, 0, NotSerialized)
                    {
                        Local0 = 0x03E8
                        While (HMPR)
                        {
                            Sleep (0x01)
                            Local0--
                            If (!Local0)
                            {
                                Return (0x8080)
                            }
                        }

                        If (HMDN)
                        {
                            Return (Zero)
                        }

                        Return (0x8081)
                    }

                    Method (LPMD, 0, NotSerialized)
                    {
                        Local0 = 0x00
                        Local1 = 0x00
                        Local2 = 0x00
                        If (\H8DR)
                        {
                            If (HPAC)
                            {
                                If (HPLO)
                                {
                                    Local0 = \LPST
                                }
                                ElseIf ((HWAT < 0x5A))
                                {
                                    If (HB0A)
                                    {
                                        If (((HB0S & 0x10) || ((HB0S & 0x0F) < 0x02)))
                                        {
                                            Local1 = 0x01
                                        }
                                    }
                                    Else
                                    {
                                        Local1 = 0x01
                                    }

                                    If (HB1A)
                                    {
                                        If (((HB1S & 0x10) || ((HB1S & 0x0F) < 0x02)))
                                        {
                                            Local2 = 0x01
                                        }
                                    }
                                    Else
                                    {
                                        Local2 = 0x01
                                    }

                                    If ((Local1 && Local2))
                                    {
                                        Local0 = \LPST
                                    }
                                }
                            }
                        }
                        ElseIf ((\RBEC (0x46) & 0x10))
                        {
                            If ((\RBEC (0x34) & 0x80))
                            {
                                Local0 = \LPST
                            }
                            ElseIf ((\RBEC (0xC9) < 0x5A))
                            {
                                Local3 = \RBEC (0x38)
                                If ((Local3 & 0x80))
                                {
                                    If (((Local3 & 0x10) || ((Local3 & 0x0F) < 0x02)))
                                    {
                                        Local1 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local2 = 0x01
                                }

                                Local3 = \RBEC (0x39)
                                If ((Local3 & 0x80))
                                {
                                    If (((Local3 & 0x10) || ((Local3 & 0x0F) < 0x02)))
                                    {
                                        Local1 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local2 = 0x01
                                }

                                If ((Local1 && Local2))
                                {
                                    Local0 = \LPST
                                }
                            }
                        }

                        Return (Local0)
                    }

                    Method (CLPM, 0, NotSerialized)
                    {
                        If ((\PPMF & 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                Local0 = LPMD ()
                                If (Local0)
                                {
                                    \STEP (0x04)
                                }
                                Else
                                {
                                    \STEP (0x05)
                                }
                            }
                        }
                    }

                    Mutex (MCPU, 0x07)
                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1001)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1002)
                        }
                        Else
                        {
                            Noop
                        }
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1003)
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1004)
                        }
                        Else
                        {
                            Notify (\_SB.SLPB, 0x80) // Status Change
                        }
                    }

                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x10))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1005)
                        }
                    }

                    Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x20))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1006)
                        }
                    }

                    Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x40))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1007)
                        }
                        Else
                        {
                            If ((\VHYB (0x03, 0x00) == 0x03))
                            {
                                Notify (\_SB.PCI0.VID, 0x80) // Status Change
                                Return (0x00)
                            }

                            If (VIGD)
                            {
                                \_SB.PCI0.VID.VSWT ()
                            }
                            Else
                            {
                                \_SB.PCI0.PEG.VID.VSWT ()
                            }
                        }
                    }

                    Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x80))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1008)
                        }
                        ElseIf (!\WNTF)
                        {
                            VEXP ()
                        }
                    }

                    Method (_Q18, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0100))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1009)
                        }

                        Noop
                    }

                    Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0200))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100A)
                        }
                    }

                    Method (_Q1A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0400))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100B)
                        }
                    }

                    Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100C)
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x1000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100D)
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x2000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100E)
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x4000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100F)
                        }
                    }

                    Method (_Q1F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00020000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1012)
                        }

                        \UCMS (0x0E)
                    }

                    Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00040000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1013)
                        }
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1019)
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101A)
                        }
                    }

                    Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        Notify (\_SB.PCI0.PEG.VID, 0xDF) // Hardware-Specific
                        Sleep (0x01F4)
                        Notify (AC, 0x80) // Status Change
                        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        PWRS = 0x01
                        If ((\PPMF & 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x00)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        ATMC ()
                    }

                    Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        Notify (\_SB.PCI0.PEG.VID, 0xDF) // Hardware-Specific
                        Sleep (0x01F4)
                        Notify (AC, 0x80) // Status Change
                        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        PWRS = 0x00
                        If ((\PPMF & 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x01)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        ATMC ()
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (VIGD)
                        {
                            \_SB.PCI0.VID.GLIS (0x01)
                        }
                        ElseIf (\WVIS)
                        {
                            \_SB.PCI0.VID.GLIS (0x01)
                        }

                        If (VIGD)
                        {
                            \_SB.PCI0.VID.VLOC (0x01)
                        }
                        Else
                        {
                            \_SB.PCI0.PEG.VID.VLOC (0x01)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5002)
                        Notify (\_SB.LID, 0x80) // Status Change
                    }

                    Method (_Q2B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (VIGD)
                        {
                            \_SB.PCI0.VID.GLIS (0x00)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5001)
                        \UCMS (0x0D)
                        Notify (\_SB.LID, 0x80) // Status Change
                    }

                    Method (_Q3D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                    }

                    Method (_Q48, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((\PPMF & 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x04)
                            }
                        }
                    }

                    Method (_Q49, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((\PPMF & 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x05)
                            }
                        }
                    }

                    Method (_Q7F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Fatal (0x01, 0x80010000, 0x039A)
                    }

                    Method (_Q4E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6011)
                    }

                    Method (_Q4F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        If (HB0A)
                        {
                            Notify (BAT0, 0x80) // Status Change
                        }

                        If (HB1A)
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        Notify (BAT0, 0x81) // Information Change
                    }

                    Method (_Q4B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q4C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        If (HB1A)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
                        }
                        Else
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                            If (^BAT1.XB1S)
                            {
                                Notify (\_SB.PCI0.LPC.EC.BAT1, 0x03) // Eject Request
                            }
                        }
                    }

                    Method (_Q4D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((^BAT1.SBLI == 0x01))
                        {
                            Sleep (0x0A)
                            If ((HB1A && (SLUL == 0x00)))
                            {
                                ^BAT1.XB1S = 0x01
                                Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01) // Device Check
                            }
                        }
                        ElseIf ((SLUL == 0x01))
                        {
                            ^BAT1.XB1S = 0x00
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x03) // Eject Request
                        }

                        If ((^BAT1.B1ST & ^BAT1.XB1S))
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((^BAT1.B1ST & ^BAT1.XB1S))
                        {
                            CLPM ()
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (BATW, 1, NotSerialized)
                    {
                        Local0 = \_SB.PCI0.LPC.EC.BAT1.XB1S
                        If ((HB1A && !SLUL))
                        {
                            Local1 = 0x01
                        }
                        Else
                        {
                            Local1 = 0x00
                        }

                        If ((Local0 ^ Local1))
                        {
                            \_SB.PCI0.LPC.EC.BAT1.XB1S = Local1
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01) // Device Check
                        }
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBRC,   16, 
                        SBFC,   16, 
                        SBAE,   16, 
                        SBRS,   16, 
                        SBAC,   16, 
                        SBVO,   16, 
                        SBAF,   16, 
                        SBBS,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                            ,   15, 
                        SBCM,   1, 
                        SBMD,   16, 
                        SBCC,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBDC,   16, 
                        SBDV,   16, 
                        SBOM,   16, 
                        SBSI,   16, 
                        SBDT,   16, 
                        SBSN,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBCH,   32
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBMN,   128
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBDN,   128
                    }

                    Mutex (BATM, 0x07)
                    Method (GBIF, 3, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (Arg2)
                        {
                            HIID = (Arg0 | 0x01)
                            Local7 = SBCM /* \_SB_.PCI0.LPC_.EC__.SBCM */
                            Arg1 [0x00] = (Local7 ^ 0x01)
                            HIID = Arg0
                            If (Local7)
                            {
                                Local1 = (SBFC * 0x0A)
                            }
                            Else
                            {
                                Local1 = SBFC /* \_SB_.PCI0.LPC_.EC__.SBFC */
                            }

                            Arg1 [0x02] = Local1
                            HIID = (Arg0 | 0x02)
                            If (Local7)
                            {
                                Local0 = (SBDC * 0x0A)
                            }
                            Else
                            {
                                Local0 = SBDC /* \_SB_.PCI0.LPC_.EC__.SBDC */
                            }

                            Arg1 [0x01] = Local0
                            Divide (Local1, 0x14, Local2, Arg1 [0x05])
                            If (Local7)
                            {
                                Arg1 [0x06] = 0xC8
                            }
                            ElseIf (SBDV)
                            {
                                Divide (0x00030D40, SBDV, Local2, Arg1 [0x06])
                            }
                            Else
                            {
                                Arg1 [0x06] = 0x00
                            }

                            Arg1 [0x04] = SBDV /* \_SB_.PCI0.LPC_.EC__.SBDV */
                            Local0 = SBSN /* \_SB_.PCI0.LPC_.EC__.SBSN */
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Local2 = 0x04
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                SERN [Local2] = (Local1 + 0x30)
                                Local2--
                            }

                            Arg1 [0x0A] = SERN /* \_SB_.PCI0.LPC_.EC__.GBIF.SERN */
                            HIID = (Arg0 | 0x06)
                            Arg1 [0x09] = SBDN /* \_SB_.PCI0.LPC_.EC__.SBDN */
                            HIID = (Arg0 | 0x04)
                            Name (BTYP, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                            })
                            BTYP = SBCH /* \_SB_.PCI0.LPC_.EC__.SBCH */
                            Arg1 [0x0B] = BTYP /* \_SB_.PCI0.LPC_.EC__.GBIF.BTYP */
                            HIID = (Arg0 | 0x05)
                            Arg1 [0x0C] = SBMN /* \_SB_.PCI0.LPC_.EC__.SBMN */
                        }
                        Else
                        {
                            Arg1 [0x01] = 0xFFFFFFFF
                            Arg1 [0x05] = 0x00
                            Arg1 [0x06] = 0x00
                            Arg1 [0x02] = 0xFFFFFFFF
                        }

                        Release (BATM)
                        Return (Arg1)
                    }

                    Method (GBST, 4, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If ((Arg1 & 0x20))
                        {
                            Local0 = 0x02
                        }
                        ElseIf ((Arg1 & 0x40))
                        {
                            Local0 = 0x01
                        }
                        Else
                        {
                            Local0 = 0x00
                        }

                        If ((Arg1 & 0x0F)){}
                        Else
                        {
                            Local0 |= 0x04
                        }

                        If (((Arg1 & 0x0F) == 0x0F))
                        {
                            Local0 = 0x04
                            Local1 = 0x00
                            Local2 = 0x00
                            Local3 = 0x00
                        }
                        Else
                        {
                            HIID = Arg0
                            Local3 = SBVO /* \_SB_.PCI0.LPC_.EC__.SBVO */
                            If (Arg2)
                            {
                                Local2 = (SBRC * 0x0A)
                            }
                            Else
                            {
                                Local2 = SBRC /* \_SB_.PCI0.LPC_.EC__.SBRC */
                            }

                            Local1 = SBAC /* \_SB_.PCI0.LPC_.EC__.SBAC */
                            If ((Local1 >= 0x8000))
                            {
                                If ((Local0 & 0x01))
                                {
                                    Local1 = (0x00010000 - Local1)
                                }
                                Else
                                {
                                    Local1 = 0x00
                                }
                            }
                            ElseIf (!(Local0 & 0x02))
                            {
                                Local1 = 0x00
                            }

                            If (Arg2)
                            {
                                Local1 *= Local3
                                Divide (Local1, 0x03E8, Local7, Local1)
                            }
                        }

                        Arg3 [0x00] = Local0
                        Arg3 [0x01] = Local1
                        Arg3 [0x02] = Local2
                        Arg3 [0x03] = Local3
                        Release (BATM)
                        Return (Arg3)
                    }

                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Name (B0ST, 0x00)
                        Name (BT0I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT0P, Package (0x04){})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                B0ST = HB0A /* \_SB_.PCI0.LPC_.EC__.HB0A */
                            }
                            ElseIf ((\RBEC (0x38) & 0x80))
                            {
                                B0ST = 0x01
                            }
                            Else
                            {
                                B0ST = 0x00
                            }

                            If (B0ST)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Local7 = 0x00
                            Local6 = 0x0A
                            While ((!Local7 && Local6))
                            {
                                If (HB0A)
                                {
                                    If (((HB0S & 0x0F) == 0x0F))
                                    {
                                        Sleep (0x03E8)
                                        Local6--
                                    }
                                    Else
                                    {
                                        Local7 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local6 = 0x00
                                }
                            }

                            Return (GBIF (0x00, BT0I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            Local0 = (DerefOf (BT0I [0x00]) ^ 0x01)
                            Return (GBST (0x00, HB0S, Local0, BT0P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            HAM4 &= 0xEF
                            If (Arg0)
                            {
                                Local1 = Arg0
                                If (!DerefOf (BT0I [0x00]))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                HT0L = (Local1 & 0xFF)
                                HT0H = ((Local1 >> 0x08) & 0xFF)
                                HAM4 |= 0x10
                            }
                        }
                    }

                    Device (BAT1)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, 0x01)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Name (B1ST, 0x00)
                        Name (SBLI, 0x01)
                        Name (XB1S, 0x00)
                        Name (BT1I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT1P, Package (0x04){})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                If (HB1A)
                                {
                                    B1ST = 0x01
                                    If (SLUL)
                                    {
                                        SBLI = 0x01
                                        XB1S = 0x00
                                    }
                                    Else
                                    {
                                        SBLI = 0x00
                                        XB1S = 0x01
                                    }
                                }
                                Else
                                {
                                    B1ST = 0x00
                                    SBLI = 0x01
                                    XB1S = 0x00
                                }
                            }
                            ElseIf ((\RBEC (0x39) & 0x80))
                            {
                                B1ST = 0x01
                                If ((\RBEC (0x49) & 0x01))
                                {
                                    SBLI = 0x01
                                    XB1S = 0x00
                                }
                                Else
                                {
                                    SBLI = 0x00
                                    XB1S = 0x01
                                }
                            }
                            Else
                            {
                                B1ST = 0x00
                                SBLI = 0x01
                                XB1S = 0x00
                            }

                            If (B1ST)
                            {
                                If (XB1S)
                                {
                                    Return (0x1F)
                                }
                                ElseIf (\WNTF)
                                {
                                    Return (0x00)
                                }
                                Else
                                {
                                    Return (0x1F)
                                }
                            }
                            ElseIf (\WNTF)
                            {
                                Return (0x00)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Local7 = 0x00
                            Local6 = 0x0A
                            While ((!Local7 && Local6))
                            {
                                If (HB1A)
                                {
                                    If (((HB1S & 0x0F) == 0x0F))
                                    {
                                        Sleep (0x03E8)
                                        Local6--
                                    }
                                    Else
                                    {
                                        Local7 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local6 = 0x00
                                }
                            }

                            Return (GBIF (0x10, BT1I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            Local0 = (DerefOf (BT1I [0x00]) ^ 0x01)
                            Return (GBST (0x10, HB1S, Local0, BT1P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            HAM4 &= 0xDF
                            If (Arg0)
                            {
                                Local1 = Arg0
                                If (!DerefOf (BT1I [0x00]))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                HT1L = (Local1 & 0xFF)
                                HT1H = ((Local1 >> 0x08) & 0xFF)
                                HAM4 |= 0x20
                            }
                        }
                    }

                    Device (AC)
                    {
                        Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (\H8DR)
                            {
                                If (HPAC)
                                {
                                    If (DOCD)
                                    {
                                        If (\_SB.PCI0.LPC.EPWG)
                                        {
                                            Return (0x01)
                                        }
                                        Else
                                        {
                                            Return (0x00)
                                        }
                                    }
                                    Else
                                    {
                                        Return (0x01)
                                    }
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }
                            ElseIf ((\RBEC (0x46) & 0x10))
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HKEY)
                    {
                        Name (_HID, EisaId ("IBM0068"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (MHKV, 0, NotSerialized)
                        {
                            Return (0x0100)
                        }

                        Name (DHKC, 0x00)
                        Name (DHKB, 0x01)
                        Mutex (XDHK, 0x07)
                        Name (DHKH, 0x00)
                        Name (DHKW, 0x00)
                        Name (DHKS, 0x00)
                        Name (DHKD, 0x00)
                        Name (DHKN, 0x080C)
                        Name (DHKT, 0x00)
                        Name (DHWW, 0x00)
                        Method (MHKA, 0, NotSerialized)
                        {
                            Return (0x07FFFFFF)
                        }

                        Method (MHKN, 0, NotSerialized)
                        {
                            Return (DHKN) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKN */
                        }

                        Method (MHKK, 1, NotSerialized)
                        {
                            If (DHKC)
                            {
                                Return ((DHKN & Arg0))
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (MHKM, 2, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If ((Arg0 > 0x20))
                            {
                                Noop
                            }
                            Else
                            {
                                Local0 = (One << Arg0--)
                                If ((Local0 & 0x07FFFFFF))
                                {
                                    If (Arg1)
                                    {
                                        DHKN |= Local0 /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKN */
                                    }
                                    Else
                                    {
                                        DHKN &= (Local0 ^ 0xFFFFFFFF)
                                    }
                                }
                                Else
                                {
                                    Noop
                                }
                            }

                            Release (XDHK)
                        }

                        Method (MHKS, 0, NotSerialized)
                        {
                            Notify (\_SB.SLPB, 0x80) // Status Change
                        }

                        Method (MHKC, 1, NotSerialized)
                        {
                            DHKC = Arg0
                        }

                        Method (MHKP, 0, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (DHWW)
                            {
                                Local1 = DHWW /* \_SB_.PCI0.LPC_.EC__.HKEY.DHWW */
                                DHWW = Zero
                            }
                            ElseIf (DHKW)
                            {
                                Local1 = DHKW /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKW */
                                DHKW = Zero
                            }
                            ElseIf (DHKD)
                            {
                                Local1 = DHKD /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKD */
                                DHKD = Zero
                            }
                            ElseIf (DHKS)
                            {
                                Local1 = DHKS /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKS */
                                DHKS = Zero
                            }
                            ElseIf (DHKT)
                            {
                                Local1 = DHKT /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKT */
                                DHKT = Zero
                            }
                            Else
                            {
                                Local1 = DHKH /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKH */
                                DHKH = Zero
                            }

                            Release (XDHK)
                            Return (Local1)
                        }

                        Method (MHKE, 1, NotSerialized)
                        {
                            DHKB = Arg0
                            Acquire (XDHK, 0xFFFF)
                            DHKH = Zero
                            DHKW = Zero
                            DHKS = Zero
                            DHKD = Zero
                            DHKT = Zero
                            DHWW = Zero
                            Release (XDHK)
                        }

                        Method (MHKQ, 1, NotSerialized)
                        {
                            If (DHKB)
                            {
                                If (DHKC)
                                {
                                    Acquire (XDHK, 0xFFFF)
                                    If ((Arg0 < 0x1000)){}
                                    ElseIf ((Arg0 < 0x2000))
                                    {
                                        DHKH = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x3000))
                                    {
                                        DHKW = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x4000))
                                    {
                                        DHKS = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x5000))
                                    {
                                        DHKD = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x6000))
                                    {
                                        DHKH = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x7000))
                                    {
                                        DHKT = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x8000))
                                    {
                                        DHWW = Arg0
                                    }
                                    Else
                                    {
                                    }

                                    Release (XDHK)
                                    Notify (HKEY, 0x80) // Status Change
                                }
                                ElseIf ((Arg0 == 0x1004))
                                {
                                    Notify (\_SB.SLPB, 0x80) // Status Change
                                }
                            }
                        }

                        Method (MHKB, 1, NotSerialized)
                        {
                            If ((Arg0 == 0x00))
                            {
                                \_SB.PCI0.LPC.EC.BEEP (0x11)
                                \LIDB = 0x00
                            }
                            ElseIf ((Arg0 == 0x01))
                            {
                                \_SB.PCI0.LPC.EC.BEEP (0x10)
                                \LIDB = 0x01
                            }
                            Else
                            {
                            }
                        }

                        Method (MHKD, 0, NotSerialized)
                        {
                            If (VIGD)
                            {
                                \_SB.PCI0.VID.VLOC (0x00)
                            }
                            Else
                            {
                                \_SB.PCI0.PEG.VID.VLOC (0x00)
                            }
                        }

                        Method (MHQC, 1, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                If ((Arg0 == 0x00))
                                {
                                    Return (\CWAC)
                                }
                                ElseIf ((Arg0 == 0x01))
                                {
                                    Return (\CWAP)
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    Return (\CWAT)
                                }
                                Else
                                {
                                    Noop
                                }
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHGC, 0, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (CKC4 (0x00))
                                {
                                    Local0 = 0x03
                                }
                                Else
                                {
                                    Local0 = 0x04
                                }

                                Release (XDHK)
                                Return (Local0)
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHSC, 1, NotSerialized)
                        {
                            If ((\CWAC && \WNTF))
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (\OSC4)
                                {
                                    If ((Arg0 == 0x03))
                                    {
                                        If (!\CWAS)
                                        {
                                            \PNTF (0x81)
                                            \CWAS = 0x01
                                        }
                                    }
                                    ElseIf ((Arg0 == 0x04))
                                    {
                                        If (\CWAS)
                                        {
                                            \PNTF (0x81)
                                            \CWAS = 0x00
                                        }
                                    }
                                    Else
                                    {
                                        Noop
                                    }
                                }

                                Release (XDHK)
                            }
                            Else
                            {
                                Noop
                            }
                        }

                        Method (CKC4, 1, NotSerialized)
                        {
                            Local0 = 0x00
                            If (\C4WR)
                            {
                                If (!\C4AC)
                                {
                                    Local0 |= 0x01
                                }
                            }

                            If (\C4NA)
                            {
                                Local0 |= 0x02
                            }

                            If ((\CWAC && \CWAS))
                            {
                                Local0 |= 0x04
                            }

                            If ((\CWUE && \CWUS))
                            {
                                Local0 |= 0x08
                            }

                            Local0 &= ~Arg0
                            Return (Local0)
                        }

                        Method (MHQE, 0, NotSerialized)
                        {
                            Return (\C4WR)
                        }

                        Method (MHGE, 0, NotSerialized)
                        {
                            If ((\C4WR && \C4AC))
                            {
                                Return (0x04)
                            }

                            Return (0x03)
                        }

                        Method (MHSE, 1, NotSerialized)
                        {
                            If (\C4WR)
                            {
                                Local0 = \C4AC
                                If ((Arg0 == 0x03))
                                {
                                    \C4AC = 0x00
                                    If ((Local0 ^ \C4AC))
                                    {
                                        If (\OSC4)
                                        {
                                            \PNTF (0x81)
                                        }
                                    }
                                }
                                ElseIf ((Arg0 == 0x04))
                                {
                                    \C4AC = 0x01
                                    If ((Local0 ^ \C4AC))
                                    {
                                        If (\OSC4)
                                        {
                                            \PNTF (0x81)
                                        }
                                    }
                                }
                            }
                        }

                        Method (UAWO, 1, NotSerialized)
                        {
                            Return (\UAWS (Arg0))
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Name (INDV, 0x00)
                        Method (MHQI, 0, NotSerialized)
                        {
                            If ((\IPMS & 0x01))
                            {
                                INDV |= 0x01
                            }

                            If ((\IPMS & 0x02))
                            {
                                INDV |= 0x02
                            }

                            If ((\IPMS & 0x04))
                            {
                                INDV |= 0x0100
                            }

                            If ((\IPMS & 0x08))
                            {
                                INDV |= 0x0200
                            }

                            If ((\IPMS & 0x10))
                            {
                                INDV |= 0x04
                            }

                            Return (INDV) /* \_SB_.PCI0.LPC_.EC__.HKEY.INDV */
                        }

                        Method (MHGI, 1, NotSerialized)
                        {
                            Name (RETB, Buffer (0x10){})
                            CreateByteField (RETB, 0x00, MHGS)
                            Local0 = (0x01 << Arg0)
                            If ((INDV & Local0))
                            {
                                If ((Arg0 == 0x00))
                                {
                                    CreateField (RETB, 0x08, 0x78, BRBU)
                                    BRBU = \IPMB
                                    MHGS = 0x10
                                }
                                ElseIf ((Arg0 == 0x01))
                                {
                                    CreateField (RETB, 0x08, 0x18, RRBU)
                                    RRBU = \IPMR
                                    MHGS = 0x04
                                }
                                ElseIf ((Arg0 == 0x08))
                                {
                                    CreateField (RETB, 0x10, 0x18, ODBU)
                                    CreateByteField (RETB, 0x01, MHGZ)
                                    ODBU = \IPMO
                                    If ((^^BDEV == 0x03))
                                    {
                                        If (\H8DR)
                                        {
                                            Local1 = ^^HPBU /* \_SB_.PCI0.LPC_.EC__.HPBU */
                                        }
                                        Else
                                        {
                                            Local1 = (\RBEC (0x47) & 0x01)
                                        }

                                        If (!Local1)
                                        {
                                            MHGZ |= 0x04 /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGZ */
                                        }

                                        If ((^^BSTS == 0x00))
                                        {
                                            MHGZ |= 0x01 /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGZ */
                                            MHGZ |= 0x02 /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGZ */
                                        }
                                    }

                                    MHGS = 0x05
                                }
                                ElseIf ((Arg0 == 0x09))
                                {
                                    CreateField (RETB, 0x10, 0x08, AUBU)
                                    AUBU = \IPMA
                                    RETB [0x01] = 0x01
                                    MHGS = 0x03
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    Local1 = \VDYN (0x00, 0x00)
                                    RETB [0x02] = (Local1 & 0x0F)
                                    Local1 >>= 0x04
                                    RETB [0x01] = (Local1 & 0x0F)
                                    MHGS = 0x03
                                }
                            }

                            Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.RETB */
                        }

                        Method (MHSI, 2, NotSerialized)
                        {
                            Local0 = (0x01 << Arg0)
                            If ((INDV & Local0))
                            {
                                If ((Arg0 == 0x08))
                                {
                                    If (Arg1)
                                    {
                                        If (\H8DR)
                                        {
                                            Local1 = ^^HPBU /* \_SB_.PCI0.LPC_.EC__.HPBU */
                                        }
                                        Else
                                        {
                                            Local1 = (\RBEC (0x47) & 0x01)
                                        }

                                        If (!Local1)
                                        {
                                            ^^BDEV = ^^BGID (0x00)
                                            ^^NBIN (Local1)
                                        }
                                    }
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    \VDYN (0x01, Arg1)
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x04000000))
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101B)
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (MMTG, 0, NotSerialized)
                        {
                            Local0 = 0x0101
                            If (HDMC)
                            {
                                Local0 |= 0x00010000
                            }

                            Return (Local0)
                        }

                        Method (MMTS, 1, NotSerialized)
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf ((Arg0 == 0x02))
                            {
                                \_SB.PCI0.LPC.EC.LED (0x0E, 0x80)
                            }
                            ElseIf ((Arg0 == 0x03))
                            {
                                \_SB.PCI0.LPC.EC.LED (0x0E, 0xC0)
                            }
                            Else
                            {
                                \_SB.PCI0.LPC.EC.LED (0x0E, 0x00)
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (PWMC, 0, NotSerialized)
                        {
                            Return (0x01)
                        }

                        Method (PWMG, 0, NotSerialized)
                        {
                            Local0 = \_SB.PCI0.LPC.EC.PWMH
                            Local0 <<= 0x08
                            Local0 |= \_SB.PCI0.LPC.EC.PWML
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                        {
                            If (DOCD)
                            {
                                Sleep (0x64)
                                If (\_SB.PCI0.LPC.EPWG)
                                {
                                    Noop
                                }
                                ElseIf (HPAC)
                                {
                                    _Q27 ()
                                }

                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
                            }
                            Else
                            {
                                Sleep (0x64)
                                If (HPAC)
                                {
                                    _Q26 ()
                                }

                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                            }
                        }

                        Method (DKID, 0, NotSerialized)
                        {
                            Local0 = \_SB.PCI0.LPC.DOI0
                            Local1 = \_SB.PCI0.LPC.DOI1
                            Local2 = \_SB.PCI0.LPC.DOI2
                            Local0 |= (Local1 << 0x01)
                            Local0 |= (Local2 << 0x02)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (GDKS, 0, NotSerialized)
                        {
                            Local0 = 0x00
                            If ((\_SB.PCI0.LPC.EC.DOCD == 0x01))
                            {
                                Local0 |= 0x01
                                Local1 = \_SB.PCI0.LPC.EC.DKID ()
                                Local1 <<= 0x08
                                Local0 |= Local1
                            }

                            If ((\_SB.PCI0.LPC.EC.HB1A == 0x01))
                            {
                                If ((\_SB.PCI0.LPC.EC.SLUL == 0x01))
                                {
                                    Local0 |= 0x04
                                }
                            }

                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6000)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (NUMG, 0, NotSerialized)
                        {
                            Local0 = 0x01
                            If (\_SB.PCI0.LPC.EC.SNLK)
                            {
                                Local0 &= ~0x02
                            }
                            Else
                            {
                                Local0 |= 0x02
                            }

                            If (\_SB.PCI0.LPC.EC.NULS)
                            {
                                Local0 |= 0x0100
                            }
                            Else
                            {
                                Local0 &= ~0x0100
                            }

                            Return (Local0)
                        }
                    }
                }
            }

            Device (PEG)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name (LART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (AART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (AART) /* \_SB_.PCI0.PEG_.AART */
                    }
                    Else
                    {
                        Return (LART) /* \_SB_.PCI0.PEG_.LART */
                    }
                }

                Mutex (MDGS, 0x07)
                Name (VDEE, 0x01)
                Name (VDDA, Buffer (0x04){})
                CreateBitField (VDDA, 0x00, VUPC)
                CreateBitField (VDDA, 0x01, VQDL)
                CreateBitField (VDDA, 0x02, VQDC)
                CreateBitField (VDDA, 0x03, VQD0)
                CreateBitField (VDDA, 0x04, VQD1)
                CreateBitField (VDDA, 0x05, VQD2)
                CreateBitField (VDDA, 0x06, VQD3)
                CreateBitField (VDDA, 0x07, VQD4)
                CreateBitField (VDDA, 0x08, VQD5)
                CreateBitField (VDDA, 0x09, VSDL)
                CreateBitField (VDDA, 0x0A, VSDC)
                CreateBitField (VDDA, 0x0B, VSD0)
                CreateBitField (VDDA, 0x0C, VSD1)
                CreateBitField (VDDA, 0x0D, VSD2)
                CreateBitField (VDDA, 0x0E, VSD3)
                CreateBitField (VDDA, 0x0F, VSD4)
                CreateBitField (VDDA, 0x10, VSD5)
                CreateBitField (VDDA, 0x11, MSWT)
                CreateBitField (VDDA, 0x12, VWST)
                Device (VID)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (VPCG, PCI_Config, 0x00, 0x0100)
                    Field (VPCG, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x64), 
                        VPWR,   8
                    }

                    Name (_S3D, 0x03)  // _S3D: S3 Device State
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        \VUPS (0x02)
                        VQDL = \VCDL
                        VQDC = \VCDC
                        VQD0 = \VCDT
                        VQD1 = \VCDD
                    }

                    Name (DGOS, 0x00)
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            If (DGOS)
                            {
                                _ON ()
                                \VHYB (0x09, 0x00)
                                \_SB.PCI0.PEG.VID.HDAS = Zero
                                \SWTT (0x01)
                                DGOS = Zero
                            }
                        }
                    }

                    Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                    {
                        Noop
                    }

                    Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                    {
                        Noop
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            If ((\_SB.PCI0.PEG.VID.OMPR == 0x03))
                            {
                                \SWTT (0x00)
                                _OFF ()
                                DGOS = One
                                \_SB.PCI0.PEG.VID.OMPR = 0x02
                            }
                        }
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        \VHYB (0x02, 0x00)
                        \VHYB (0x00, 0x01)
                        Sleep (0x32)
                        \VHYB (0x02, 0x01)
                        \VHYB (0x08, 0x01)
                        Sleep (0xC8)
                        \VHYB (0x04, 0x00)
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            \MISA (0x11BA, 0xDF, 0x00)
                        }
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            \MISA (0x11BA, 0xDF, 0x20)
                        }

                        \VHYB (0x08, 0x00)
                        \VHYB (0x02, 0x00)
                        \VHYB (0x00, 0x00)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            Return (0x0F)
                        }

                        If ((RISA (0x118E) & 0x02))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (\CMPB (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0") /* Unknown UUID */))
                        {
                            Return (NVOP (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (\_SB.PCI0.VID._DSM (Arg0, Arg1, Arg2, Arg3))
                    }

                    Name (_IRC, 0x00)  // _IRC: Inrush Current
                    OperationRegion (ATRP, SystemMemory, \ATRB, 0x00010000)
                    Field (ATRP, AnyAcc, Lock, Preserve)
                    {
                        IDX0,   262144, 
                        IDX1,   262144
                    }

                    Method (_ROM, 2, Serialized)  // _ROM: Read-Only Memory
                    {
                        If ((Arg0 >= 0x8000))
                        {
                            Return (GETB ((Arg0 - 0x8000), Arg1, IDX1))
                        }

                        If (((Arg0 + Arg1) > 0x8000))
                        {
                            Local0 = (0x8000 - Arg0)
                            Local1 = (Arg1 - Local0)
                            Local3 = GETB (Arg0, Local0, IDX0)
                            Local4 = GETB (0x00, Local1, IDX1)
                            Concatenate (Local3, Local4, Local5)
                            Return (Local5)
                        }

                        Return (GETB (Arg0, Arg1, IDX0))
                    }

                    Method (GETB, 3, Serialized)
                    {
                        Local0 = (Arg0 * 0x08)
                        Local1 = (Arg1 * 0x08)
                        CreateField (Arg2, Local0, Local1, TBF3)
                        Return (TBF3) /* \_SB_.PCI0.PEG_.VID_.GETB.TBF3 */
                    }

                    Method (VSWT, 0, NotSerialized)
                    {
                        If (\WVIS)
                        {
                            Local0 = \VEVT (0x07)
                        }
                        Else
                        {
                            Local0 = \VEVT (0x05)
                        }

                        Local1 = (0xFF & Local0)
                        If (Local1)
                        {
                            ASWT (Local1, 0x01)
                        }
                    }

                    Method (VLOC, 1, NotSerialized)
                    {
                        If ((Arg0 == \_SB.LID._LID ()))
                        {
                            \VSLD (Arg0)
                            If (((VPWR & 0x03) == 0x00))
                            {
                                If (Arg0)
                                {
                                    Local0 = \VEVT (0x01)
                                }
                                Else
                                {
                                    Local0 = \VEVT (0x02)
                                }

                                Local1 = (0x0F & Local0)
                                If (Local1)
                                {
                                    ASWT (Local1, 0x00)
                                }
                            }
                        }
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        If ((Arg0 == 0x02))
                        {
                            Local0 = 0x14
                            While (Local0)
                            {
                                Local0--
                                Acquire (MDGS, 0xFFFF)
                                If ((0x00 == MSWT))
                                {
                                    MSWT = 0x01
                                    Local0 = 0x00
                                    VDEE = Arg0
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }
                        }
                        Else
                        {
                            Acquire (MDGS, 0xFFFF)
                            If ((VDEE == 0x02))
                            {
                                MSWT = 0x00
                            }

                            If ((Arg0 > 0x02))
                            {
                                VDEE = 0x01
                            }
                            Else
                            {
                                VDEE = Arg0
                            }

                            Release (MDGS)
                        }
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            Return (Package (0x04)
                            {
                                0x80086342, 
                                0x80087343, 
                                0x80086354, 
                                0x80087355
                            })
                        }

                        If (\WVIS)
                        {
                            Return (Package (0x08)
                            {
                                0x80000100, 
                                0x80006330, 
                                0x80007331, 
                                0x80086342, 
                                0x80087343, 
                                0x80086354, 
                                0x80087355, 
                                0x80000410
                            })
                        }
                        Else
                        {
                            Return (Package (0x08)
                            {
                                0x0100, 
                                0x0114, 
                                0x0111, 
                                0x0115, 
                                0x0112, 
                                0x0116, 
                                0x0113, 
                                0x0110
                            })
                        }
                    }

                    Method (MXDS, 1, NotSerialized)
                    {
                        If (!Arg0)
                        {
                            Return (!!(\RISA (0x11BA) & 0x10))
                        }
                        Else
                        {
                            \SWTT (0x01)
                            \MISA (0x11BA, 0xAB, 0x10)
                        }
                    }

                    Method (MXMX, 1, NotSerialized)
                    {
                        While (One)
                        {
                            Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_0 = ToInteger (Arg0)
                            If ((_T_0 == 0x00))
                            {
                                \MISA (0x11BA, 0x9F, 0x00)
                            }
                            ElseIf ((_T_0 == 0x02))
                            {
                                Return (((\RISA (0x11BA) & 0x40) == 0x00))
                            }

                            Break
                        }

                        Return (0x01)
                    }

                    Method (ASWT, 2, NotSerialized)
                    {
                        If ((0x01 == VDEE))
                        {
                            Local1 = (0x01 & Arg1)
                            \VSDS (Arg0, Local1)
                        }
                        Else
                        {
                            Local0 = 0x14
                            While (Local0)
                            {
                                Local0--
                                Acquire (MDGS, 0xFFFF)
                                If ((0x00 == MSWT))
                                {
                                    Local0 = 0x00
                                    If ((0x01 & Arg1))
                                    {
                                        VUPC = 0x01
                                    }
                                    Else
                                    {
                                        VUPC = 0x00
                                    }

                                    If ((0x01 & Arg0))
                                    {
                                        VQDL = 0x01
                                    }
                                    Else
                                    {
                                        VQDL = 0x00
                                    }

                                    If ((0x02 & Arg0))
                                    {
                                        VQDC = 0x01
                                    }
                                    Else
                                    {
                                        VQDC = 0x00
                                    }

                                    If ((0x04 & Arg0))
                                    {
                                        VQD0 = 0x01
                                    }
                                    Else
                                    {
                                        VQD0 = 0x00
                                    }

                                    If ((0x08 & Arg0))
                                    {
                                        VQD1 = 0x01
                                    }
                                    Else
                                    {
                                        VQD1 = 0x00
                                    }

                                    If ((0x10 & Arg0))
                                    {
                                        VQD2 = 0x01
                                    }
                                    Else
                                    {
                                        VQD2 = 0x00
                                    }

                                    If ((0x20 & Arg0))
                                    {
                                        VQD3 = 0x01
                                    }
                                    Else
                                    {
                                        VQD3 = 0x00
                                    }

                                    If ((0x40 & Arg0))
                                    {
                                        VQD4 = 0x01
                                    }
                                    Else
                                    {
                                        VQD4 = 0x00
                                    }

                                    If ((0x80 & Arg0))
                                    {
                                        VQD5 = 0x01
                                    }
                                    Else
                                    {
                                        VQD5 = 0x00
                                    }
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }

                            If ((0x02 & Arg1))
                            {
                                Notify (VID, 0x81) // Information Change
                            }
                            Else
                            {
                                Notify (VID, 0x80) // Status Change
                            }
                        }
                    }

                    Method (VDSW, 1, NotSerialized)
                    {
                        If ((VPWR == 0x00))
                        {
                            If (Arg0)
                            {
                                Local0 = \VEVT (0x03)
                            }
                            Else
                            {
                                Local0 = \VEVT (0x04)
                            }

                            Local1 = (0x0F & Local0)
                            If (Local1)
                            {
                                ASWT (Local1, 0x00)
                            }
                        }
                    }

                    Device (LCD0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (\WVIS)
                            {
                                If (\_SB.PCI0.VID.ISHV ())
                                {
                                    Return (0x0410)
                                }
                                Else
                                {
                                    Return (0x80000410)
                                }
                            }
                            Else
                            {
                                Return (0x0110)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDL)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQDL) /* \_SB_.PCI0.PEG_.VQDL */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSDL = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (CRT0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (\WVIS)
                            {
                                Return (0x80000100)
                            }
                            Else
                            {
                                Return (0x0100)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x01)
                            If (\VCSS)
                            {
                                If (\VCDC)
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    Return (0x1D)
                                }
                            }
                            ElseIf (\VCDC)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQDC) /* \_SB_.PCI0.PEG_.VQDC */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSDC = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (\WVIS)
                            {
                                Return (0x80007331)
                            }
                            Else
                            {
                                Return (0x0111)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD1) /* \_SB_.PCI0.PEG_.VQD1 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD1 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (\WVIS)
                            {
                                Return (0x80006330)
                            }
                            Else
                            {
                                Return (0x0114)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD0) /* \_SB_.PCI0.PEG_.VQD0 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD0 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (\WVIS)
                            {
                                Return (0x80087355)
                            }
                            Else
                            {
                                Return (0x0112)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD3) /* \_SB_.PCI0.PEG_.VQD3 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD3 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (\WVIS)
                            {
                                Return (0x80086342)
                            }
                            Else
                            {
                                Return (0x0115)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD2) /* \_SB_.PCI0.PEG_.VQD2 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD2 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (\WVIS)
                            {
                                Return (0x80087343)
                            }
                            Else
                            {
                                Return (0x0113)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD5) /* \_SB_.PCI0.PEG_.VQD5 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD5 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (\WVIS)
                            {
                                Return (0x80086354)
                            }
                            Else
                            {
                                Return (0x0116)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD4) /* \_SB_.PCI0.PEG_.VQD4 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD4 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Method (DSWT, 1, NotSerialized)
                    {
                        If (VSDL)
                        {
                            Local0 = 0x01
                        }
                        Else
                        {
                            Local0 = 0x00
                        }

                        If (VSDC)
                        {
                            Local0 |= 0x02
                        }

                        If (VSD0)
                        {
                            Local0 |= 0x08
                        }

                        If (Local0)
                        {
                            If (VUPC)
                            {
                                \VSDS (Local0, Arg0)
                            }
                        }
                        Else
                        {
                            Noop
                        }
                    }
                }

                Scope (\_SB.PCI0)
                {
                    Device (WMI1)
                    {
                        Name (_HID, "*pnp0c14")  // _HID: Hardware ID
                        Name (_UID, "MXM2")  // _UID: Unique ID
                        Name (_WDG, Buffer (0x0190)
                        {
                            /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,  // <\.....N
                            /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,  // .w...*,.
                            /* 0010 */  0x4D, 0x58, 0x01, 0x02, 0x40, 0x2F, 0x1A, 0x92,  // MX..@/..
                            /* 0018 */  0xC4, 0x0D, 0x2D, 0x40, 0xAC, 0x18, 0xB4, 0x84,  // ..-@....
                            /* 0020 */  0x44, 0xEF, 0x9E, 0xD2, 0xD0, 0x00, 0x01, 0x08,  // D.......
                            /* 0028 */  0x61, 0xD3, 0x2A, 0xC1, 0xA9, 0x9F, 0x74, 0x4C,  // a.*...tL
                            /* 0030 */  0x90, 0x1F, 0x95, 0xCB, 0x09, 0x45, 0xCF, 0x3E,  // .....E.>
                            /* 0038 */  0xD9, 0x00, 0x01, 0x08, 0x64, 0x35, 0x4F, 0xEF,  // ....d5O.
                            /* 0040 */  0xC8, 0x48, 0x94, 0x48, 0x85, 0xC8, 0xB4, 0x6C,  // .H.H...l
                            /* 0048 */  0x26, 0xB8, 0x42, 0xC0, 0xDA, 0x00, 0x01, 0x08,  // &.B.....
                            /* 0050 */  0x06, 0x80, 0x84, 0x42, 0x86, 0x88, 0x0E, 0x49,  // ...B...I
                            /* 0058 */  0x8C, 0x72, 0x2B, 0xDC, 0xA9, 0x3A, 0x8A, 0x09,  // .r+..:..
                            /* 0060 */  0xDB, 0x00, 0x01, 0x08, 0x62, 0xDE, 0x6B, 0xE0,  // ....b.k.
                            /* 0068 */  0x75, 0xEE, 0xF4, 0x48, 0xA5, 0x83, 0xB2, 0x3E,  // u..H...>
                            /* 0070 */  0x69, 0xAB, 0xF8, 0x91, 0x80, 0x00, 0x01, 0x08,  // i.......
                            /* 0078 */  0x0F, 0xBD, 0xDE, 0x3A, 0x5F, 0x0C, 0xED, 0x46,  // ...:_..F
                            /* 0080 */  0xAB, 0x2E, 0x04, 0x96, 0x2B, 0x4F, 0xDC, 0xBC,  // ....+O..
                            /* 0088 */  0x81, 0x00, 0x01, 0x08, 0x54, 0x59, 0x06, 0x85,  // ....TY..
                            /* 0090 */  0x14, 0x83, 0x06, 0x4A, 0x8B, 0xB4, 0xCC, 0xAB,  // ...J....
                            /* 0098 */  0x45, 0x03, 0x2E, 0x88, 0xE0, 0x00, 0x01, 0x08,  // E.......
                            /* 00A0 */  0x3F, 0x5E, 0x8F, 0x02, 0x53, 0x88, 0xA5, 0x45,  // ?^..S..E
                            /* 00A8 */  0x80, 0x47, 0x3D, 0x24, 0x62, 0xF5, 0xA7, 0x34,  // .G=$b..4
                            /* 00B0 */  0xE1, 0x00, 0x01, 0x08, 0xEE, 0x63, 0x9E, 0x30,  // .....c.0
                            /* 00B8 */  0xB0, 0xED, 0xB6, 0x4F, 0x91, 0x73, 0xF6, 0x80,  // ...O.s..
                            /* 00C0 */  0x01, 0x3E, 0x73, 0x11, 0xE2, 0x00, 0x01, 0x08,  // .>s.....
                            /* 00C8 */  0xAA, 0x56, 0x52, 0x4A, 0x2C, 0x43, 0xAE, 0x4C,  // .VRJ,C.L
                            /* 00D0 */  0xB4, 0x9F, 0xDC, 0xA7, 0x07, 0x62, 0x2B, 0xAD,  // .....b+.
                            /* 00D8 */  0xE3, 0x00, 0x01, 0x08, 0xCC, 0x1D, 0x96, 0x67,  // .......g
                            /* 00E0 */  0x83, 0x16, 0x21, 0x44, 0xA1, 0x54, 0x68, 0xED,  // ..!D.Th.
                            /* 00E8 */  0xE0, 0xFF, 0x90, 0xD2, 0xE4, 0x00, 0x01, 0x08,  // ........
                            /* 00F0 */  0x5A, 0x7C, 0xAD, 0xB9, 0xEF, 0x6F, 0x4C, 0x48,  // Z|...oLH
                            /* 00F8 */  0x80, 0xD3, 0x59, 0xA9, 0x21, 0x73, 0x67, 0x50,  // ..Y.!sgP
                            /* 0100 */  0xE5, 0x00, 0x01, 0x08, 0xE9, 0xB5, 0xD5, 0xF7,  // ........
                            /* 0108 */  0x93, 0xCD, 0x43, 0x46, 0x98, 0x98, 0xA4, 0x5B,  // ..CF...[
                            /* 0110 */  0x2F, 0x2A, 0xE3, 0xE5, 0xE6, 0x00, 0x01, 0x08,  // /*......
                            /* 0118 */  0xC2, 0xE2, 0xA8, 0x69, 0x22, 0xF5, 0x3A, 0x46,  // ...i".:F
                            /* 0120 */  0x89, 0x08, 0xC7, 0xE4, 0x65, 0x39, 0xC8, 0xB1,  // ....e9..
                            /* 0128 */  0xE7, 0x00, 0x01, 0x08, 0x1B, 0xA5, 0x46, 0xAF,  // ......F.
                            /* 0130 */  0x23, 0x5C, 0x43, 0x4C, 0x96, 0x09, 0x3C, 0xBB,  // #\CL..<.
                            /* 0138 */  0x95, 0x53, 0xD5, 0xA5, 0xE8, 0x00, 0x01, 0x08,  // .S......
                            /* 0140 */  0xF2, 0x22, 0xD8, 0xA6, 0x67, 0x3A, 0xC7, 0x4D,  // ."..g:.M
                            /* 0148 */  0xAA, 0xD1, 0x55, 0x50, 0x2A, 0x61, 0x62, 0xE8,  // ..UP*ab.
                            /* 0150 */  0xE9, 0x00, 0x01, 0x08, 0x29, 0x0A, 0xD2, 0x99,  // ....)...
                            /* 0158 */  0x50, 0x93, 0x14, 0x41, 0xAA, 0x90, 0x28, 0xF0,  // P..A..(.
                            /* 0160 */  0xEB, 0x83, 0xD3, 0x08, 0xEA, 0x00, 0x01, 0x08,  // ........
                            /* 0168 */  0x66, 0x02, 0x22, 0x53, 0x55, 0x2F, 0x18, 0x4E,  // f."SU/.N
                            /* 0170 */  0x9E, 0x9C, 0xD0, 0x8C, 0x67, 0x43, 0xD6, 0xFD,  // ....gC..
                            /* 0178 */  0xEB, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,  // ....!...
                            /* 0180 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                            /* 0188 */  0xC9, 0x06, 0x29, 0x10, 0x58, 0x4D, 0x01, 0x00   // ..).XM..
                        })
                        Method (WMMX, 3, NotSerialized)
                        {
                            CreateDWordField (Arg2, 0x00, FUNC)
                            CreateDWordField (Arg2, 0x04, ARGS)
                            CreateDWordField (Arg2, 0x08, XARG)
                            If ((FUNC == 0x444F445F))
                            {
                                If ((Arg1 == 0x10))
                                {
                                    Return (\_SB.PCI0.VID._DOD ())
                                }
                                Else
                                {
                                    Return (\_SB.PCI0.PEG.VID._DOD ())
                                }
                            }
                            ElseIf ((FUNC == 0x5343445F))
                            {
                                If ((SizeOf (Arg2) >= 0x08))
                                {
                                    If ((ARGS == 0x80000100))
                                    {
                                        If ((Arg1 == 0x10))
                                        {
                                            Return (\_SB.PCI0.VID.CRT0._DCS ())
                                        }
                                        Else
                                        {
                                            Return (\_SB.PCI0.PEG.VID.CRT0._DCS ())
                                        }
                                    }
                                    ElseIf ((ARGS == 0x80007331))
                                    {
                                        If ((Arg1 != 0x10))
                                        {
                                            Return (\_SB.PCI0.PEG.VID.DVI0._DCS ())
                                        }
                                    }
                                }
                            }
                            ElseIf ((SizeOf (Arg2) >= 0x04))
                            {
                                If ((FUNC == 0x534F525F))
                                {
                                    If ((SizeOf (Arg2) >= 0x08))
                                    {
                                        If ((Arg1 == 0x10)){}
                                        Else
                                        {
                                            Return (\_SB.PCI0.PEG.VID._ROM (ARGS, XARG))
                                        }
                                    }
                                }
                                ElseIf ((FUNC == 0x4D53445F))
                                {
                                    If ((SizeOf (Arg2) >= 0x18))
                                    {
                                        CreateField (Arg2, 0x00, 0x80, MUID)
                                        CreateDWordField (Arg2, 0x10, REVI)
                                        CreateDWordField (Arg2, 0x14, SFNC)
                                        CreateDWordField (Arg2, 0x18, YARG)
                                        If ((Arg1 != 0x10))
                                        {
                                            Return (\_SB.PCI0.VID._DSM (MUID, REVI, SFNC, YARG))
                                        }
                                    }
                                }
                                ElseIf ((FUNC == 0x584D584D))
                                {
                                    If ((SizeOf (Arg2) >= 0x08))
                                    {
                                        Return (0x01)
                                    }
                                }
                                ElseIf ((FUNC == 0x5344584D))
                                {
                                    If ((SizeOf (Arg2) >= 0x08))
                                    {
                                        If ((Arg1 == 0x10))
                                        {
                                            Return (\_SB.PCI0.VID.MXDS (XARG))
                                        }
                                        Else
                                        {
                                            Return (\_SB.PCI0.PEG.VID.MXDS (XARG))
                                        }
                                    }
                                }
                            }

                            Return (0x00)
                        }

                        Name (WQXM, Buffer (0x029C)
                        {
                            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                            /* 0008 */  0x8B, 0x02, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,  // ........
                            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                            /* 0018 */  0x18, 0xD2, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                            /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0xE6, 0x80, 0x42, 0x04,  // ......B.
                            /* 0028 */  0x92, 0x43, 0xA4, 0x30, 0x30, 0x28, 0x0B, 0x20,  // .C.00(. 
                            /* 0030 */  0x86, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x04, 0x84,  // ...&&@..
                            /* 0038 */  0xBC, 0x0A, 0xB0, 0x29, 0xC0, 0x24, 0x88, 0xFA,  // ...).$..
                            /* 0040 */  0xF7, 0x87, 0x28, 0x09, 0x0E, 0x25, 0x04, 0x42,  // ..(..%.B
                            /* 0048 */  0x12, 0x05, 0x98, 0x17, 0xA0, 0x5B, 0x80, 0x61,  // .....[.a
                            /* 0050 */  0x01, 0xB6, 0x05, 0x98, 0x16, 0xE0, 0x18, 0x92,  // ........
                            /* 0058 */  0x4A, 0x03, 0xA7, 0x04, 0x96, 0x02, 0x21, 0xA1,  // J.....!.
                            /* 0060 */  0x02, 0x94, 0x0B, 0xF0, 0x2D, 0x40, 0x3B, 0xA2,  // ....-@;.
                            /* 0068 */  0x24, 0x0B, 0xB0, 0x0C, 0x23, 0x02, 0x8F, 0x82,  // $...#...
                            /* 0070 */  0xA1, 0x71, 0x68, 0xEC, 0x30, 0x2C, 0x13, 0x4C,  // .qh.0,.L
                            /* 0078 */  0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45, 0x60, 0xDC,  // .8...E`.
                            /* 0080 */  0x4E, 0x05, 0xC8, 0x15, 0x20, 0x4C, 0x80, 0x78,  // N... L.x
                            /* 0088 */  0x54, 0x61, 0x34, 0x07, 0x45, 0xE0, 0x42, 0x63,  // Ta4.E.Bc
                            /* 0090 */  0x64, 0x40, 0xC8, 0xA3, 0x00, 0xAB, 0xA3, 0xD0,  // d@......
                            /* 0098 */  0xA4, 0x12, 0xD8, 0xBD, 0x00, 0x8D, 0x02, 0xB4,  // ........
                            /* 00A0 */  0x09, 0x70, 0x28, 0x40, 0xA1, 0x00, 0x6B, 0x18,  // .p(@..k.
                            /* 00A8 */  0x72, 0x06, 0x21, 0x5B, 0xD8, 0xC2, 0x68, 0x50,  // r.![..hP
                            /* 00B0 */  0x80, 0x45, 0x14, 0x8D, 0xE0, 0x2C, 0x2A, 0x9E,  // .E...,*.
                            /* 00B8 */  0x93, 0x50, 0x02, 0xDA, 0x1B, 0x82, 0xF0, 0x8C,  // .P......
                            /* 00C0 */  0xD9, 0x18, 0x9E, 0x10, 0x83, 0x54, 0x86, 0x21,  // .....T.!
                            /* 00C8 */  0x88, 0xB8, 0x11, 0x8E, 0xA5, 0xFD, 0x41, 0x10,  // ......A.
                            /* 00D0 */  0xF9, 0xAB, 0xD7, 0xB8, 0x1D, 0x69, 0x34, 0xA8,  // .....i4.
                            /* 00D8 */  0xB1, 0x26, 0x38, 0x76, 0x8F, 0xE6, 0x84, 0x3B,  // .&8v...;
                            /* 00E0 */  0x17, 0x20, 0x7D, 0x6E, 0x02, 0x39, 0xBA, 0xD3,  // . }n.9..
                            /* 00E8 */  0xA8, 0x73, 0xD0, 0x64, 0x78, 0x0C, 0x2B, 0xC1,  // .s.dx.+.
                            /* 00F0 */  0x7F, 0x80, 0x4F, 0x01, 0x78, 0xD7, 0x80, 0x9A,  // ..O.x...
                            /* 00F8 */  0xFE, 0xC1, 0x33, 0x41, 0x70, 0xA8, 0x21, 0x7A,  // ..3Ap.!z
                            /* 0100 */  0xD4, 0xE1, 0x4E, 0xE0, 0xBC, 0x8E, 0x84, 0x41,  // ..N....A
                            /* 0108 */  0x1C, 0xD1, 0x71, 0x63, 0x67, 0x75, 0x32, 0x07,  // ..qcgu2.
                            /* 0110 */  0x5D, 0xAA, 0x00, 0xB3, 0x07, 0x00, 0x0D, 0x2E,  // ].......
                            /* 0118 */  0xC1, 0x69, 0x9F, 0x49, 0xE8, 0xF7, 0x80, 0xF3,  // .i.I....
                            /* 0120 */  0xE9, 0x79, 0x6C, 0x6C, 0x10, 0xA8, 0x91, 0xF9,  // .yll....
                            /* 0128 */  0xFF, 0x0F, 0xED, 0x41, 0x9E, 0x56, 0xCC, 0x90,  // ...A.V..
                            /* 0130 */  0xCF, 0x02, 0x87, 0xC5, 0xC4, 0x1E, 0x19, 0xE8,  // ........
                            /* 0138 */  0x78, 0xC0, 0x7F, 0x00, 0x78, 0x34, 0x88, 0xF0,  // x...x4..
                            /* 0140 */  0x66, 0xE0, 0xF9, 0x9A, 0x60, 0x50, 0x08, 0x39,  // f...`P.9
                            /* 0148 */  0x19, 0x0F, 0x4A, 0xCC, 0xF9, 0x80, 0xCC, 0x25,  // ..J....%
                            /* 0150 */  0xC4, 0x43, 0xC0, 0x31, 0xC4, 0x08, 0x7A, 0x46,  // .C.1..zF
                            /* 0158 */  0x45, 0x23, 0x6B, 0x22, 0x3E, 0x03, 0x78, 0xDC,  // E#k">.x.
                            /* 0160 */  0x96, 0x05, 0x42, 0x09, 0x0C, 0xEC, 0x73, 0xC3,  // ..B...s.
                            /* 0168 */  0x3B, 0x84, 0x61, 0x71, 0xA3, 0x09, 0xEC, 0xF3,  // ;.aq....
                            /* 0170 */  0x85, 0x05, 0x0E, 0x0A, 0x05, 0xEB, 0xBB, 0x42,  // .......B
                            /* 0178 */  0xCC, 0xE7, 0x81, 0xE3, 0x3C, 0x60, 0x0B, 0x9F,  // ....<`..
                            /* 0180 */  0x28, 0x01, 0x3E, 0x24, 0x8F, 0x06, 0xDE, 0x20,  // (.>$... 
                            /* 0188 */  0xE1, 0x5B, 0x3F, 0x02, 0x10, 0xE0, 0x27, 0x06,  // .[?...'.
                            /* 0190 */  0x13, 0x58, 0x1E, 0x30, 0x7A, 0x94, 0xF6, 0x2B,  // .X.0z..+
                            /* 0198 */  0x00, 0x21, 0xF8, 0x8B, 0xC5, 0x53, 0xC0, 0xEB,  // .!...S..
                            /* 01A0 */  0x40, 0x84, 0x63, 0x81, 0x29, 0x72, 0x6C, 0x68,  // @.c.)rlh
                            /* 01A8 */  0x78, 0x7E, 0x70, 0x88, 0x1E, 0xF5, 0x5C, 0xC2,  // x~p...\.
                            /* 01B0 */  0x1F, 0x4D, 0x94, 0x53, 0x38, 0x1C, 0x1F, 0x39,  // .M.S8..9
                            /* 01B8 */  0x8C, 0x10, 0xFE, 0x49, 0xE3, 0xC9, 0xC3, 0x9A,  // ...I....
                            /* 01C0 */  0xEF, 0x00, 0x9A, 0xD2, 0x5B, 0xC0, 0xFB, 0x83,  // ....[...
                            /* 01C8 */  0x47, 0x80, 0x11, 0x20, 0xE1, 0x68, 0x82, 0x89,  // G.. .h..
                            /* 01D0 */  0x7C, 0x3A, 0x01, 0xD5, 0xFF, 0xFF, 0x74, 0x02,  // |:....t.
                            /* 01D8 */  0xB8, 0xBA, 0x01, 0x14, 0x37, 0x6A, 0x9D, 0x49,  // ....7j.I
                            /* 01E0 */  0x7C, 0x2C, 0xF1, 0xAD, 0xE4, 0xBC, 0x43, 0xC5,  // |,....C.
                            /* 01E8 */  0x7F, 0x93, 0x78, 0x3A, 0xF1, 0x34, 0x1E, 0x4C,  // ..x:.4.L
                            /* 01F0 */  0x42, 0x44, 0x89, 0x18, 0x21, 0xA2, 0xEF, 0x27,  // BD..!..'
                            /* 01F8 */  0x46, 0x08, 0x15, 0x31, 0x6C, 0xA4, 0x37, 0x80,  // F..1l.7.
                            /* 0200 */  0xE7, 0x13, 0xE3, 0x84, 0x08, 0xF4, 0x74, 0xC2,  // ......t.
                            /* 0208 */  0x42, 0x3E, 0x34, 0xA4, 0xE1, 0x74, 0x02, 0x50,  // B>4..t.P
                            /* 0210 */  0xE0, 0xFF, 0x7F, 0x3A, 0x81, 0x1F, 0xF5, 0x74,  // ...:...t
                            /* 0218 */  0x82, 0x1E, 0xAE, 0x4F, 0x19, 0x18, 0xE4, 0x03,  // ...O....
                            /* 0220 */  0xF2, 0xA9, 0xC3, 0xF7, 0x1F, 0x13, 0xF8, 0x78,  // .......x
                            /* 0228 */  0xC2, 0x45, 0x1D, 0x4F, 0x50, 0xA7, 0x07, 0x1F,  // .E.OP...
                            /* 0230 */  0x4F, 0xD8, 0x19, 0xE1, 0x2C, 0x1E, 0x03, 0x7C,  // O...,..|
                            /* 0238 */  0x3A, 0xC1, 0xDC, 0x13, 0x7C, 0x3A, 0x01, 0xDB,  // :...|:..
                            /* 0240 */  0x68, 0x60, 0x1C, 0x4F, 0xC0, 0x77, 0x74, 0xC1,  // h`.O.wt.
                            /* 0248 */  0x1D, 0x4F, 0xC0, 0x30, 0x18, 0x18, 0xE7, 0x13,  // .O.0....
                            /* 0250 */  0xE0, 0x31, 0x5E, 0xDC, 0x31, 0xC0, 0x43, 0xE0,  // .1^.1.C.
                            /* 0258 */  0x03, 0x78, 0xDC, 0x38, 0x3D, 0x2B, 0x9D, 0x14,  // .x.8=+..
                            /* 0260 */  0xF2, 0x24, 0xC2, 0x07, 0x85, 0x39, 0xB0, 0xE0,  // .$...9..
                            /* 0268 */  0x14, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83,  // ......U.
                            /* 0270 */  0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52,  // 25.4...R
                            /* 0278 */  0x63, 0xC6, 0xCE, 0x19, 0x0E, 0xF8, 0x10, 0xD0,  // c.......
                            /* 0280 */  0x89, 0xC0, 0xF2, 0x9E, 0x0D, 0x02, 0xB1, 0x0C,  // ........
                            /* 0288 */  0x0A, 0x81, 0x58, 0xFA, 0xAB, 0x45, 0x20, 0x0E,  // ..X..E .
                            /* 0290 */  0x0E, 0xA2, 0xFF, 0x3F, 0x88, 0x23, 0xD2, 0x0A,  // ...?.#..
                            /* 0298 */  0xC4, 0xFF, 0x7F, 0x7F                           // ....
                        })
                    }
                }

                OperationRegion (PEGC, PCI_Config, 0x00, 0x0100)
                Field (PEGC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xEC), 
                    GMGP,   1, 
                    HPGP,   1, 
                    PMGP,   1
                }
            }

            Device (IIO1)
            {
                Name (_ADR, 0x00080000)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (IIOC, PCI_Config, 0x00, 0x0100)
                Field (IIOC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                        ,   26, 
                    TOUD,   6
                }
            }

            Device (IGBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x04
                })
            }

            Device (EXP1)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP1.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP1.LPRT */
                    }
                }
            }

            Device (EXP2)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKA, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP2.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP2.LPRT */
                    }
                }
            }

            Device (EXP3)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP3.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP3.LPRT */
                    }
                }
            }

            Device (EXP4)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x5A), 
                        ,   3, 
                    PDC,    1, 
                        ,   2, 
                    PDS,    1, 
                    Offset (0x5B), 
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   6, 
                    HPCE,   1, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   6, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    PDSF = PDS /* \_SB_.PCI0.EXP4.PDS_ */
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKC, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x12
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP4.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP4.LPRT */
                    }
                }

                Name (PDSF, 0x00)
                Device (SLOT)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x01)
                    }
                }
            }

            Device (EXP5)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP5.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP5.LPRT */
                    }
                }
            }

            Device (PCI1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Name (RID, 0x00)
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }

            Device (SAT2)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }

            Device (SMBU)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                OperationRegion (EHCS, PCI_Config, 0x00, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   8, 
                    Offset (0x64)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    PWKI = 0x01
                    PWUC = 0x23
                }

                Name (_PRW, Package (0x03)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03, 
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Device (URTH)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (URMH)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, ToPLD (
                            PLD_Revision           = 0x1,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x0,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "UNKNOWN",
                            PLD_VerticalPosition   = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        Device (PRT0)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "RIGHT",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x1,
                                PLD_EjectRequired      = 0x1,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRT1)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "LEFT",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "HORIZONTALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x1,
                                PLD_EjectRequired      = 0x1,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x02, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "RIGHT",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "HORIZONTALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x1,
                                PLD_EjectRequired      = 0x1,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRT7)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }
                    }
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                OperationRegion (EHCS, PCI_Config, 0x00, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   6, 
                    Offset (0x64)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    PWKI = 0x01
                    PWUC = 0x13
                }

                Name (_PRW, Package (0x03)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03, 
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Device (URTH)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (URMH)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, ToPLD (
                            PLD_Revision           = 0x1,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x0,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "UNKNOWN",
                            PLD_VerticalPosition   = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        Device (PRT8)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "LEFT",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "HORIZONTALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x1,
                                PLD_EjectRequired      = 0x1,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRT9)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "LEFT",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "HORIZONTALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x1,
                                PLD_EjectRequired      = 0x1,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRTA)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRTB)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRTC)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "BACK",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "HORIZONTALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x1,
                                PLD_EjectRequired      = 0x1,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }

                        Device (PRTD)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        }
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x04
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    Noop
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BDEV, 0xFF)
            Name (BSTS, 0x00)
            Name (BHKE, 0x00)
            Method (_Q2C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If ((BSTS == 0x00))
                {
                    BDEV = BGID (0x00)
                    NBRE (BDEV)
                }
            }

            Method (_Q2D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                BDEV = BGID (0x00)
                NBIN (BDEV)
            }

            Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                Local0 = BGID (0x00)
                If ((Local0 == 0x0F))
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    NBEJ (BDEV)
                    BDEV = Local0
                    If ((\BIDE == 0x03))
                    {
                        \_SB.PCI0.SAT1.PRIM.GTME = 0x00
                        \_SB.PCI0.SAT1.SCND.GTME = 0x00
                    }
                }
                ElseIf (HPBU){}
                Else
                {
                    BDEV = Local0
                    NBIN (Local0)
                }
            }

            Name (ODEJ, 0x00)
            Method (_Q44, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    ODEJ = 0x01
                    BDEV = BGID (0x00)
                    NBIN (BDEV)
                    ODEJ = 0x00
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x3006)
                }
            }

            Method (NBRE, 1, NotSerialized)
            {
                If ((Arg0 < 0x0C))
                {
                    If ((\BIDE == 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x03) // Eject Request
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT1, 0x03) // Eject Request
                    }
                }

                If ((Arg0 == 0x10))
                {
                    If ((HPAC || HB0A))
                    {
                        If (\WNTF)
                        {
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x03) // Eject Request
                        }
                    }
                    Else
                    {
                        BEEP (0x0F)
                        BSTS = 0x02
                    }
                }
            }

            Method (NBEJ, 1, NotSerialized)
            {
                If ((BSTS == 0x00))
                {
                    If ((Arg0 < 0x0C))
                    {
                        If ((\BIDE == 0x03))
                        {
                            Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01) // Device Check
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SAT1.PRT1, 0x01) // Device Check
                        }
                    }

                    If ((Arg0 == 0x10))
                    {
                        If (\WNTF)
                        {
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01) // Device Check
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x81) // Information Change
                        }
                    }
                }

                BEEP (0x00)
                BSTS = 0x00
            }

            Method (NBIN, 1, NotSerialized)
            {
                If ((Arg0 < 0x0C))
                {
                    BEN (0x01)
                    If ((\BIDE == 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01) // Device Check
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT1, 0x01) // Device Check
                    }
                }

                If ((Arg0 == 0x10))
                {
                    If (\WNTF)
                    {
                        \_SB.PCI0.LPC.EC.BAT1.XB1S = 0x01
                        Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01) // Device Check
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.LPC.EC.BAT1, 0x81) // Information Change
                    }
                }

                BEEP (0x00)
                BSTS = 0x00
            }

            Method (BEJ0, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    BSTS = 0x01
                    If (BHKE)
                    {
                        BHKE = 0x00
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x3003)
                    }
                }
                Else
                {
                    BSTS = 0x00
                }
            }

            Method (BEJ3, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    BSTS = 0x01
                }
                Else
                {
                    BSTS = 0x00
                }
            }

            Method (BPTS, 1, NotSerialized)
            {
                HDBM = 0x01
                If ((BSTS != 0x00))
                {
                    BDEV = 0x0F
                    BSTS = 0x00
                }

                BHKE = 0x00
                BUWK (0x00)
            }

            Method (BWAK, 1, NotSerialized)
            {
                BUWK (0x00)
                Local0 = BGID (0x00)
                If ((BSTS == 0x00))
                {
                    If ((Local0 != BDEV))
                    {
                        NBEJ (BDEV)
                        BDEV = Local0
                        NBIN (Local0)
                    }
                    ElseIf ((\LFDC || (BDEV != 0x0D)))
                    {
                        If ((Local0 != 0x0F))
                        {
                            If (HPBU)
                            {
                                If ((Arg0 <= 0x02)){}
                                Else
                                {
                                    NBRE (Local0)
                                }
                            }
                        }
                    }
                }

                If ((BDEV < 0x0C))
                {
                    \_SB.PCI0.LPC.GLIS = 0x00
                }
                Else
                {
                    \_SB.PCI0.LPC.GLIS = 0x01
                }
            }

            Method (BDIS, 0, NotSerialized)
            {
                If (!\_SB.PCI0.LPC.CSON)
                {
                    If (!\_SB.PCI0.LPC.GLIS)
                    {
                        \_SB.PCI0.LPC.GLIS = 0x01
                    }

                    \_SB.PCI0.LPC.CSON = 0x01
                    \IDET = 0x0F
                }
            }

            Method (BPON, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    \_SB.PCI0.LPC.CSON = 0x00
                    If (\_SB.PCI0.LPC.GLIS)
                    {
                        \_SB.PCI0.LPC.GLIS = 0x00
                    }
                }
            }

            Method (BEN, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    BPON (Arg0)
                    If ((Arg0 && (ODEJ == 0x01)))
                    {
                        \_SB.PCI0.LPC.EC.HANT = 0x09
                    }

                    If (Arg0)
                    {
                        IRDY ()
                    }
                }
            }

            Method (BSTA, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    Return (0x00)
                }

                BINI ()
                If ((Arg0 == 0x01))
                {
                    Return ((BDEV < 0x0C))
                }

                Return (0x00)
            }

            Method (BUWK, 1, NotSerialized)
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWBU = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWBU = 0x00
                    }
                }
                ElseIf (Arg0)
                {
                    \MBEC (0x32, 0xFF, 0x80)
                }
                Else
                {
                    \MBEC (0x32, 0x7F, 0x00)
                }
            }

            Method (BINI, 0, NotSerialized)
            {
                If ((BDEV == 0xFF))
                {
                    BDEV = BGID (0x00)
                }
            }

            Method (BGID, 1, NotSerialized)
            {
                If (Arg0)
                {
                    Local0 = 0xFF
                }
                Else
                {
                    If (\H8DR)
                    {
                        Local1 = HPBU /* \_SB_.PCI0.LPC_.EC__.HPBU */
                        Local2 = HBID /* \_SB_.PCI0.LPC_.EC__.HBID */
                    }
                    Else
                    {
                        Local2 = RBEC (0x47)
                        Local1 = (Local2 & 0x01)
                        Local2 &= 0x04
                        Local2 >>= 0x02
                    }

                    If (Local2)
                    {
                        Local0 = 0x0F
                    }
                    ElseIf (HDUB)
                    {
                        Local0 = 0x0F
                    }
                    ElseIf (((\IDET == 0x03) || (\IDET == 0x06)))
                    {
                        Local0 = \IDET
                    }
                    Else
                    {
                        Local0 = 0x07
                    }

                    If ((Local0 == 0x0F))
                    {
                        If (\H8DR)
                        {
                            If (HB1A)
                            {
                                Local0 = 0x10
                            }
                        }
                        ElseIf ((\RBEC (0x39) & 0x80))
                        {
                            Local0 = 0x10
                        }
                    }

                    If ((Local0 == 0x0F)){}
                }

                If ((\HDUB && (Local0 < 0x0C)))
                {
                    Local0 = 0x0F
                }

                Return (Local0)
            }

            Method (IRDY, 0, NotSerialized)
            {
                Local0 = 0x01F4
                Local1 = 0x3C
                Local2 = Zero
                While (Local1)
                {
                    Sleep (Local0)
                    Local3 = \BCHK ()
                    If (!Local3)
                    {
                        Break
                    }

                    If ((Local3 == 0x02))
                    {
                        Local2 = One
                        Break
                    }

                    Local1--
                }

                Return (Local2)
            }
        }

        Scope (\_SB.PCI0.LPC.EC.BAT1)
        {
            Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device, x=0-9
            {
                B1ST = 0x00
                SBLI = 0x01
                XB1S = 0x00
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (RPTS, 1, NotSerialized)
            {
                Noop
            }

            Method (RWAK, 1, NotSerialized)
            {
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                \UCMS (0x18)
            }

            Method (SAUM, 1, NotSerialized)
            {
                If ((Arg0 > 0x03))
                {
                    Noop
                }
                ElseIf (\H8DR)
                {
                    HAUM = Arg0
                }
                Else
                {
                    \MBEC (0x03, 0x9F, (Arg0 << 0x05))
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BRTW, Package (0x12)
            {
                0x64, 
                0x64, 
                0x01, 
                0x03, 
                0x04, 
                0x05, 
                0x06, 
                0x08, 
                0x0A, 
                0x0D, 
                0x11, 
                0x16, 
                0x1D, 
                0x26, 
                0x31, 
                0x3F, 
                0x50, 
                0x64
            })
            Name (BRTB, Package (0x03)
            {
                Package (0x10)
                {
                    0x03, 
                    0x07, 
                    0x09, 
                    0x0C, 
                    0x0F, 
                    0x14, 
                    0x19, 
                    0x21, 
                    0x2B, 
                    0x38, 
                    0x4A, 
                    0x61, 
                    0x7E, 
                    0xA0, 
                    0xCC, 
                    0xFF
                }, 

                Package (0x10)
                {
                    0x03, 
                    0x07, 
                    0x09, 
                    0x0C, 
                    0x0F, 
                    0x14, 
                    0x19, 
                    0x21, 
                    0x2B, 
                    0x38, 
                    0x4A, 
                    0x61, 
                    0x7E, 
                    0xA0, 
                    0xCC, 
                    0xFF
                }, 

                Package (0x05)
                {
                    0x00DC, 
                    0x00DC, 
                    0x03, 
                    0x03, 
                    0x03
                }
            })
            Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x8000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1010)
                }

                If (\NBCF)
                {
                    If ((\WVIS && (\VHYB (0x03, 0x00) == 0x03)))
                    {
                        If (((\RISA (0x11BA) & 0x10) == 0x10))
                        {
                            Notify (\_SB.PCI0.PEG.VID.LCD0, 0x86) // Device-Specific
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.VID.LCD0, 0x86) // Device-Specific
                        }
                    }
                    ElseIf (\VIGD)
                    {
                        Notify (\_SB.PCI0.VID.LCD0, 0x86) // Device-Specific
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.PEG.VID.LCD0, 0x86) // Device-Specific
                    }
                }
                ElseIf (\VIGD)
                {
                    \BRLV = \UCMS (0x15)
                    Local0 = \BRLV
                    If ((Local0 != 0x0F))
                    {
                        Local0++
                        \BRLV = Local0
                    }

                    \UCMS (0x16)
                    \_SB.PCI0.LPC.EC.BRNS ()
                }
                Else
                {
                    \UCMS (0x04)
                }
            }

            Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\VCDB)
                {
                    \VCDB = 0x00
                    \BRLV = \UCMS (0x15)
                    \UCMS (0x16)
                    \_SB.PCI0.LPC.EC.BRNS ()
                    Return (0x00)
                }

                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00010000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1011)
                }

                If (\NBCF)
                {
                    If ((\WVIS && (\VHYB (0x03, 0x00) == 0x03)))
                    {
                        If (((\RISA (0x11BA) & 0x10) == 0x10))
                        {
                            Notify (\_SB.PCI0.PEG.VID.LCD0, 0x87) // Device-Specific
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.VID.LCD0, 0x87) // Device-Specific
                        }
                    }
                    ElseIf (\VIGD)
                    {
                        Notify (\_SB.PCI0.VID.LCD0, 0x87) // Device-Specific
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.PEG.VID.LCD0, 0x87) // Device-Specific
                    }
                }
                ElseIf (\VIGD)
                {
                    \BRLV = \UCMS (0x15)
                    Local0 = \BRLV
                    If (Local0)
                    {
                        Local0--
                        \BRLV = Local0
                    }

                    \UCMS (0x16)
                    \_SB.PCI0.LPC.EC.BRNS ()
                }
                Else
                {
                    \UCMS (0x05)
                }
            }

            Method (BRNS, 0, NotSerialized)
            {
                Local0 = \BRLV
                If (\_SB.PCI0.VID.DRDY)
                {
                    If ((0x00 == Local0))
                    {
                        Local1 = DerefOf (DerefOf (BRTB [0x02]) [0x03])
                        Local2 = DerefOf (DerefOf (BRTB [0x02]) [0x00])
                    }
                    Else
                    {
                        Local1 = DerefOf (DerefOf (BRTB [0x02]) [0x04])
                        Local2 = DerefOf (DerefOf (BRTB [0x02]) [0x01])
                    }

                    Local2 = (Local1 | (Local2 << 0x09))
                    \_SB.PCI0.VID.AINT (0x03, Local2)
                    Local1 = 0x00
                    If (\BRHB)
                    {
                        Local1 = 0x01
                    }

                    Local2 = DerefOf (DerefOf (BRTB [Local1]) [Local0])
                    \_SB.PCI0.VID.AINT (0x01, Local2)
                }
                Else
                {
                    \UCMS (0x12)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00800000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1018)
                }

                \UCMS (0x03)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00080000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1014)
                }

                \UCMS (0x0B)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                FNST ()
            }

            Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                FNST ()
            }

            Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                FNST ()
            }

            Method (FNST, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = HFNS /* \_SB_.PCI0.LPC_.EC__.HFNS */
                    Local1 = HFNE /* \_SB_.PCI0.LPC_.EC__.HFNE */
                }
                Else
                {
                    Local0 = (\RBEC (0x0E) & 0x03)
                    Local1 = (\RBEC (0x00) & 0x08)
                }

                If (Local1)
                {
                    If ((Local0 == 0x00))
                    {
                        \UCMS (0x11)
                    }

                    If ((Local0 == 0x01))
                    {
                        \UCMS (0x0F)
                    }

                    If ((Local0 == 0x02))
                    {
                        \UCMS (0x10)
                    }
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Name (WGFL, 0x00)
            Method (WLSW, 0, NotSerialized)
            {
                Return (\_SB.PCI0.LPC.EC.GSTS)
            }

            Method (GWAN, 0, NotSerialized)
            {
                Local0 = 0x00
                If ((WGFL & 0x01))
                {
                    Local0 |= 0x01
                }

                If ((WGFL & 0x08))
                {
                    Return (Local0)
                }

                If (WPWS ())
                {
                    Local0 |= 0x02
                }

                If ((WGFL & 0x04))
                {
                    Local0 |= 0x04
                }

                Return (Local0)
            }

            Method (SWAN, 1, NotSerialized)
            {
                If ((Arg0 & 0x02))
                {
                    WPWC (0x01)
                }
                Else
                {
                    WPWC (0x00)
                }

                If ((Arg0 & 0x04))
                {
                    WGFL |= 0x04
                    \WGSV (0x02)
                }
                Else
                {
                    WGFL &= ~0x04
                    \WGSV (0x03)
                }
            }

            Method (GBDC, 0, NotSerialized)
            {
                Local0 = 0x00
                If ((WGFL & 0x10))
                {
                    Local0 |= 0x01
                }

                If ((WGFL & 0x80))
                {
                    Return (Local0)
                }

                If (BPWS ())
                {
                    Local0 |= 0x02
                }

                If ((WGFL & 0x40))
                {
                    Local0 |= 0x04
                }

                Return (Local0)
            }

            Method (SBDC, 1, NotSerialized)
            {
                If ((Arg0 & 0x02))
                {
                    BPWC (0x01)
                }
                Else
                {
                    BPWC (0x00)
                }

                If ((Arg0 & 0x04))
                {
                    WGFL |= 0x40
                    \BLTH (0x02)
                }
                Else
                {
                    WGFL &= ~0x40
                    \BLTH (0x03)
                }
            }

            Method (GUWB, 0, NotSerialized)
            {
                Local0 = 0x00
                If ((WGFL & 0x0100))
                {
                    Local0 |= 0x01
                }

                If (UPWS ())
                {
                    Local0 |= 0x02
                }

                Return (Local0)
            }

            Method (SUWB, 1, NotSerialized)
            {
                If ((Arg0 & 0x02))
                {
                    UPWC (0x01)
                }
                Else
                {
                    UPWC (0x00)
                }
            }

            Method (WPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.DCWW
                }
                Else
                {
                    Local0 = ((\RBEC (0x3A) & 0x40) >> 0x06)
                }

                Return (Local0)
            }

            Method (WTGL, 0, NotSerialized)
            {
                If ((WGFL & 0x01))
                {
                    WPWC (!WPWS ())
                }
            }

            Method (WPWC, 1, NotSerialized)
            {
                If ((Arg0 && ((WGFL & 0x01) && !(WGFL & 0x08
                    ))))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCWW = One
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x40)
                    }

                    WGFL |= 0x02
                }
                Else
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCWW = Zero
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xBF, 0x00)
                    }

                    WGFL &= ~0x02
                }
            }

            Method (BPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.DCBD
                }
                Else
                {
                    Local0 = ((\RBEC (0x3A) & 0x10) >> 0x04)
                }

                Return (Local0)
            }

            Method (BTGL, 0, NotSerialized)
            {
                If ((WGFL & 0x10))
                {
                    BPWC (!BPWS ())
                }
            }

            Method (BPWC, 1, NotSerialized)
            {
                If ((Arg0 && ((WGFL & 0x10) && !(WGFL & 0x80
                    ))))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCBD = One
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x10)
                    }

                    WGFL |= 0x20
                }
                Else
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCBD = Zero
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xEF, 0x00)
                    }

                    WGFL &= ~0x20
                }
            }

            Method (UPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.HUWB
                }
                Else
                {
                    Local0 = ((\RBEC (0x31) & 0x04) >> 0x02)
                }

                Return (Local0)
            }

            Method (UPWC, 1, NotSerialized)
            {
                If ((Arg0 && (WGFL & 0x0100)))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.HUWB = One
                    }
                    Else
                    {
                        \MBEC (0x31, 0xFF, 0x04)
                    }

                    WGFL |= 0x0200
                }
                Else
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.HUWB = Zero
                    }
                    Else
                    {
                        \MBEC (0x31, 0xFB, 0x00)
                    }

                    WGFL &= ~0x0200
                }

                \UCMS (0x1B)
            }

            Method (WGIN, 0, NotSerialized)
            {
                WGFL = 0x00
                WGFL = \WGSV (0x01)
                If (\WIN8)
                {
                    If ((WGFL && 0x10))
                    {
                        BPWC (0x01)
                    }
                }

                If (WPWS ())
                {
                    WGFL |= 0x02
                }

                If (BPWS ())
                {
                    WGFL |= 0x20
                }

                If (UPWS ())
                {
                    WGFL |= 0x0200
                }
            }

            Method (WGPS, 1, NotSerialized)
            {
                If ((Arg0 >= 0x04))
                {
                    \BLTH (0x05)
                }

                If (!(WGFL & 0x04))
                {
                    WPWC (0x00)
                }

                If (!(WGFL & 0x40))
                {
                    BPWC (0x00)
                }
            }

            Method (WGWK, 1, NotSerialized)
            {
                If ((WGFL & 0x20))
                {
                    BPWC (0x01)
                }

                If ((WGFL & 0x02))
                {
                    WPWC (0x01)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x7000)
            }
        }

        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_WDG, Buffer (0xA0)
            {
                /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,  // .#.Qw..F
                /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,  // ....>.M.
                /* 0010 */  0x41, 0x30, 0x80, 0x05, 0x64, 0x9A, 0x47, 0x98,  // A0..d.G.
                /* 0018 */  0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25,  // .33N...%
                /* 0020 */  0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06,  // ....A1..
                /* 0028 */  0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D,  // .TKj..3M
                /* 0030 */  0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3,  // .U......
                /* 0038 */  0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74,  // A2.....t
                /* 0040 */  0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E,  // z.}L..i.
                /* 0048 */  0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06,  // !...A3..
                /* 0050 */  0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44,  // ...~(C|D
                /* 0058 */  0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D,  // ...I.]S.
                /* 0060 */  0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A,  // A4......
                /* 0068 */  0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A,  // 2.\E..0.
                /* 0070 */  0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01,  // ~..FA5..
                /* 0078 */  0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B,  // ..Q&..iK
                /* 0080 */  0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7,  // .N....;.
                /* 0088 */  0x41, 0x36, 0x01, 0x06, 0x21, 0x12, 0x90, 0x05,  // A6..!...
                /* 0090 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0098 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x00   // ..).BA..
            })
            Name (RETN, Package (0x05)
            {
                "Success", 
                "Not Supported", 
                "Invalid Parameter", 
                "Access Denied", 
                "System Busy"
            })
            Name (ITEM, Package (0x68)
            {
                Package (0x02)
                {
                    0x1E, 
                    "WakeOnLAN"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FlashOverLAN"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "EthernetLANOptionROM"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HarddriveDMA"
                }, 

                Package (0x02)
                {
                    0x04, 
                    "WirelessLANandWiMAXRadios"
                }, 

                Package (0x02)
                {
                    0x18, 
                    "SerialPort"
                }, 

                Package (0x02)
                {
                    0x10, 
                    "SerialPortIO"
                }, 

                Package (0x02)
                {
                    0x06, 
                    "SerialPortIRQ"
                }, 

                Package (0x02)
                {
                    0x18, 
                    "ParallelPort"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "ParallelPortMode"
                }, 

                Package (0x02)
                {
                    0x11, 
                    "ParallelPortIO"
                }, 

                Package (0x02)
                {
                    0x07, 
                    "ParallelPortIRQ"
                }, 

                Package (0x02)
                {
                    0x08, 
                    "ParallelPortDMA"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTA"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTB"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTC"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTD"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTE"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTF"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTG"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTH"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBBIOSSupport"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AlwaysOnUSB"
                }, 

                Package (0x02)
                {
                    0x19, 
                    "TrackPoint"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "TouchPad"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnKeyLock"
                }, 

                Package (0x02)
                {
                    0x0A, 
                    "ThinkPadNumLock"
                }, 

                Package (0x02)
                {
                    0x17, 
                    "PowerOnNumLock"
                }, 

                Package (0x02)
                {
                    0x0B, 
                    "PrimaryVideo"
                }, 

                Package (0x02)
                {
                    0x0C, 
                    "BootDisplayDevice"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "LCDBrightness"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TimerWakeWithBattery"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SpeedStep"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "SpeedStepModeAC"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "SpeedStepModeBattery"
                }, 

                Package (0x02)
                {
                    0x14, 
                    "AdaptiveThermalManagementAC"
                }, 

                Package (0x02)
                {
                    0x14, 
                    "AdaptiveThermalManagementBattery"
                }, 

                Package (0x02)
                {
                    0x0D, 
                    "CDROMSpeed"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "CPUPowerManagement"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "PCIPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PowerControlBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LowBatteryAlarm"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "KeyboardBeep"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ExtendedMemoryTest"
                }, 

                Package (0x02)
                {
                    0x0E, 
                    "SATAControllerMode"
                }, 

                Package (0x02)
                {
                    0x1D, 
                    "CoreMultiProcessing"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VirtualizationTechnology"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "LegacyDevicesOnMiniDock"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Passphrase"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LockBIOSSetting"
                }, 

                Package (0x02)
                {
                    0x16, 
                    "MinimumPasswordLength"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtUnattendedBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordResetService"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPredesktopAuthentication"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "FingerprintReaderPriority"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "FingerprintSecurityMode"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "SecurityChip"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSUpdateByEndUsers"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "DataExecutionPrevention"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "EthernetLANAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "WirelessLANAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "WirelessWANAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "BluetoothAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "WirelessUSBAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ModemAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "USBPortAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "IEEE1394Access"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "SerialPortAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ParallelPortAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "CardBusSlotAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ExpressCardAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "PCIExpressSlotAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "UltrabayAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "MemoryCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "SmartCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "IntegratedCameraAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "MicrophoneAccess"
                }, 

                Package (0x02)
                {
                    0x15, 
                    "BootMode"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "StartupOptionKeys"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "BootDeviceListF12Option"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "BootOrder"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "NetworkBootOrder"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "WiMAXAccess"
                }, 

                Package (0x02)
                {
                    0x1A, 
                    "GraphicsDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TXTFeature"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VTdFeature"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AMTControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPasswordAuthentication"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "FingerprintReaderAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OsDetectionForSwitchableGraphics"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ComputraceModuleActivation"
                }, 

                Package (0x02)
                {
                    0x1B, 
                    "PCIExpressPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ATpModuleActivation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FullTheftProtectionModuleActivation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "RemoteDisableModuleActivation"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "eSATAPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HardwarePasswordManager"
                }, 

                Package (0x02)
                {
                    0x1C, 
                    "AlwaysOnUSBMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HyperThreadingTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnCtrlKeySwap"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OnByAcAttach"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HostBasedConfiguration"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AMTUnprovisioning"
                }
            })
            Name (VSEL, Package (0x1F)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Enable", 
                    "Disable"
                }, 

                Package (0x02)
                {
                    "Disable", 
                    "Automatic"
                }, 

                Package (0x04)
                {
                    "Inactive", 
                    "Disable", 
                    "Active", 
                    ""
                }, 

                Package (0x04)
                {
                    "On", 
                    "", 
                    "Off", 
                    ""
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "High"
                }, 

                Package (0x04)
                {
                    "3", 
                    "4", 
                    "5", 
                    "7"
                }, 

                Package (0x02)
                {
                    "5", 
                    "7"
                }, 

                Package (0x03)
                {
                    "0", 
                    "1", 
                    "3"
                }, 

                Package (0x03)
                {
                    "OutputOnly", 
                    "BiDirectional", 
                    "ECP"
                }, 

                Package (0x02)
                {
                    "Independent", 
                    "Synchronized"
                }, 

                Package (0x02)
                {
                    "PCIExpress", 
                    "Internal"
                }, 

                Package (0x10)
                {
                    "LCD", 
                    "VGA", 
                    "Digital", 
                    "Digital1onDock", 
                    "Digital2onDock", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "High", 
                    "Normal", 
                    "Silent"
                }, 

                Package (0x02)
                {
                    "Compatibility", 
                    "AHCI"
                }, 

                Package (0x02)
                {
                    "External", 
                    "InternalOnly"
                }, 

                Package (0x04)
                {
                    "3F8", 
                    "2F8", 
                    "3E8", 
                    "2E8"
                }, 

                Package (0x03)
                {
                    "378", 
                    "278", 
                    "3BC"
                }, 

                Package (0x10)
                {
                    "Disable", 
                    "AutoSelect", 
                    "", 
                    "3", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "", 
                    "9", 
                    "10", 
                    "11", 
                    "", 
                    "", 
                    "", 
                    ""
                }, 

                Package (0x04)
                {
                    "MaximumPerformance", 
                    "BatteryOptimized", 
                    "MaximumBattery", 
                    "Automatic"
                }, 

                Package (0x04)
                {
                    "", 
                    "", 
                    "MaximizePerformance", 
                    "Balanced"
                }, 

                Package (0x02)
                {
                    "Quick", 
                    "Diagnostics"
                }, 

                Package (0x0D)
                {
                    "Disable", 
                    "", 
                    "", 
                    "", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "8", 
                    "9", 
                    "10", 
                    "11", 
                    "12"
                }, 

                Package (0x04)
                {
                    "Auto", 
                    "On", 
                    "Off", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "Enable", 
                    "Disable", 
                    ""
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "", 
                    "Automatic", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "IntegratedGfx", 
                    "DiscreteGfx", 
                    "SwitchableGfx"
                }, 

                Package (0x02)
                {
                    "Automatic", 
                    "Disable"
                }, 

                Package (0x04)
                {
                    "Automatic", 
                    "BlackBerry", 
                    "iPodiPhone", 
                    "OtherUSBDevices"
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "", 
                    "", 
                    "Enable"
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "Enable", 
                    "ACOnly", 
                    "ACandBattery"
                }
            })
            Name (VLST, Package (0x0F)
            {
                "HDD0", 
                "HDD1", 
                "HDD2", 
                "HDD3", 
                "PCILAN", 
                "ATAPICD0", 
                "ATAPICD1", 
                "", 
                "USBFDD", 
                "USBCD", 
                "USBHDD", 
                "", 
                "", 
                "", 
                "NODEV"
            })
            Name (PENC, Package (0x02)
            {
                "ascii", 
                "scancode"
            })
            Name (PKBD, Package (0x03)
            {
                "us", 
                "fr", 
                "gr"
            })
            Name (PTYP, Package (0x08)
            {
                "pap", 
                "pop", 
                "uhdp1", 
                "mhdp1", 
                "uhdp2", 
                "mhdp2", 
                "uhdp3", 
                "mhdp3"
            })
            Mutex (MWMI, 0x07)
            Name (PCFG, Buffer (0x18){})
            Name (IBUF, Buffer (0x0100){})
            Name (ILEN, 0x00)
            Name (PSTR, Buffer (0x81){})
            Method (WQA0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((\WMIS (0x00, Arg0) != 0x00))
                {
                    Release (MWMI)
                    Return ("")
                }

                Local0 = DerefOf (ITEM [\WITM])
                Local1 = DerefOf (Local0 [0x00])
                Local2 = DerefOf (Local0 [0x01])
                If ((Local1 < 0x64))
                {
                    Concatenate (Local2, ",", Local6)
                    Local3 = DerefOf (VSEL [Local1])
                    Concatenate (Local6, DerefOf (Local3 [\WSEL]), Local7)
                }
                Else
                {
                    Local3 = SizeOf (VLST)
                    If ((\WLS0 <= Local3))
                    {
                        Concatenate (Local2, ",", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS0]), Local2)
                    }

                    If ((\WLS1 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS1]), Local2)
                    }

                    If ((\WLS2 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS2]), Local2)
                    }

                    If ((\WLS3 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS3]), Local2)
                    }

                    If ((\WLS4 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS4]), Local2)
                    }

                    If ((\WLS5 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS5]), Local2)
                    }

                    If ((\WLS6 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS6]), Local2)
                    }

                    If ((\WLS7 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS7]), Local2)
                    }

                    Local7 = Local2
                }

                Release (MWMI)
                Return (Local7)
            }

            Method (WMA1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == 0x00))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = CARG (Arg2)
                    If ((Local0 == 0x00))
                    {
                        Local0 = WSET ()
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA2, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x02, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA3, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x03, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA4, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x04, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WQA5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = \WMIS (0x05, 0x00)
                PCFG [0x00] = \WSPM
                PCFG [0x04] = \WSPS
                PCFG [0x08] = \WSMN
                PCFG [0x0C] = \WSMX
                PCFG [0x10] = \WSEN
                PCFG [0x14] = \WSKB
                Release (MWMI)
                Return (PCFG) /* \_SB_.WMI1.PCFG */
            }

            Method (WMA6, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == 0x00))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = CARG (Arg2)
                    If ((Local0 == 0x00))
                    {
                        If ((ILEN != 0x00))
                        {
                            Local0 = SPAS (IBUF)
                        }

                        If ((Local0 == 0x00))
                        {
                            Local0 = \WMIS (0x06, 0x00)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (CARG, 1, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If ((Local0 == 0x00))
                {
                    IBUF = 0x00
                    ILEN = 0x00
                    Return (0x00)
                }

                If ((ObjectType (Arg0) != 0x02))
                {
                    Return (0x02)
                }

                If ((Local0 >= 0xFF))
                {
                    Return (0x02)
                }

                IBUF = Arg0
                Local0--
                Local1 = DerefOf (IBUF [Local0])
                If (((Local1 == 0x3B) || (Local1 == 0x2A)))
                {
                    IBUF [Local0] = 0x00
                    ILEN = Local0
                }
                Else
                {
                    ILEN = SizeOf (Arg0)
                }

                Return (0x00)
            }

            Method (SCMP, 3, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If ((Local0 == 0x00))
                {
                    Return (0x00)
                }

                Local0++
                Name (STR1, Buffer (Local0){})
                STR1 = Arg0
                Local0--
                Local1 = 0x00
                Local2 = Arg2
                While ((Local1 < Local0))
                {
                    Local3 = DerefOf (STR1 [Local1])
                    Local4 = DerefOf (Arg1 [Local2])
                    If ((Local3 != Local4))
                    {
                        Return (0x00)
                    }

                    Local1++
                    Local2++
                }

                Local4 = DerefOf (Arg1 [Local2])
                If ((Local4 == 0x00))
                {
                    Return (0x01)
                }

                If (((Local4 == 0x2C) || (Local4 == 0x3A)))
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Method (GITM, 1, NotSerialized)
            {
                Local0 = 0x00
                Local1 = SizeOf (ITEM)
                While ((Local0 < Local1))
                {
                    Local3 = DerefOf (DerefOf (ITEM [Local0]) [0x01])
                    If (SCMP (Local3, Arg0, 0x00))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (GSEL, 3, NotSerialized)
            {
                Local0 = 0x00
                Local1 = SizeOf (Arg0)
                While ((Local0 < Local1))
                {
                    Local2 = DerefOf (Arg0 [Local0])
                    If (SCMP (Local2, Arg1, Arg2))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (SLEN, 2, NotSerialized)
            {
                Local0 = DerefOf (Arg0 [Arg1])
                Return (SizeOf (Local0))
            }

            Method (CLRP, 0, NotSerialized)
            {
                \WPAS = 0x00
                \WPNW = 0x00
            }

            Method (GPAS, 2, NotSerialized)
            {
                Local0 = Arg1
                Local1 = 0x00
                While ((Local1 <= 0x80))
                {
                    Local2 = DerefOf (Arg0 [Local0])
                    If (((Local2 == 0x2C) || (Local2 == 0x00)))
                    {
                        PSTR [Local1] = 0x00
                        Return (Local1)
                    }

                    PSTR [Local1] = Local2
                    Local0++
                    Local1++
                }

                PSTR [Local1] = 0x00
                Return (Ones)
            }

            Method (CPAS, 2, NotSerialized)
            {
                CLRP ()
                Local0 = Arg1
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == 0x00))
                {
                    Return (0x02)
                }

                \WPAS = PSTR /* \_SB_.WMI1.PSTR */
                Local0 += Local1
                Local0++
                Local6 = GSEL (PENC, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WENC = Local6
                If ((Local6 == 0x00))
                {
                    Local0 += SLEN (PENC, 0x00)
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local6 = GSEL (PKBD, Arg0, Local0)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WKBD = Local6
                }

                Return (0x00)
            }

            Method (SPAS, 1, NotSerialized)
            {
                CLRP ()
                Local6 = GSEL (PTYP, Arg0, 0x00)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WPTY = Local6
                Local0 = SLEN (PTYP, Local6)
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If (((Local1 == Ones) || (Local1 == 0x00)))
                {
                    Return (0x02)
                }

                \WPAS = PSTR /* \_SB_.WMI1.PSTR */
                Local0 += Local1
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == 0x00))
                {
                    PSTR = 0x00
                }

                \WPNW = PSTR /* \_SB_.WMI1.PSTR */
                Local0 += Local1
                Local0++
                Local6 = GSEL (PENC, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WENC = Local6
                If ((Local6 == 0x00))
                {
                    Local0 += SLEN (PENC, 0x00)
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local6 = GSEL (PKBD, Arg0, Local0)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WKBD = Local6
                }

                Return (0x00)
            }

            Method (WSET, 0, NotSerialized)
            {
                Local0 = ILEN /* \_SB_.WMI1.ILEN */
                Local0++
                Local1 = GITM (IBUF)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                \WITM = Local1
                Local3 = DerefOf (ITEM [Local1])
                Local4 = DerefOf (Local3 [0x01])
                Local2 = SizeOf (Local4)
                Local2++
                Local4 = DerefOf (Local3 [0x00])
                If ((Local4 < 0x64))
                {
                    Local5 = DerefOf (VSEL [Local4])
                    Local6 = GSEL (Local5, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WSEL = Local6
                    Local2 += SLEN (Local5, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }
                Else
                {
                    \WLS0 = 0x3F
                    \WLS1 = 0x3F
                    \WLS2 = 0x3F
                    \WLS3 = 0x3F
                    \WLS4 = 0x3F
                    \WLS5 = 0x3F
                    \WLS6 = 0x3F
                    \WLS7 = 0x3F
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WLS0 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS1 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS2 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS3 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS4 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS5 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS6 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS7 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }
                }

                If (((Local4 == 0x2C) && (Local2 < Local0)))
                {
                    Local2++
                    Local0 = CPAS (IBUF, Local2)
                    If ((Local0 != 0x00))
                    {
                        Return (Local0)
                    }
                }

                Return (\WMIS (0x01, 0x00))
            }

            Name (WQBA, Buffer (0x07C1)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xB1, 0x07, 0x00, 0x00, 0x5A, 0x30, 0x00, 0x00,  // ....Z0..
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x98, 0x51, 0x97, 0x00, 0x01, 0x06, 0x18, 0x42,  // .Q.....B
                /* 0020 */  0x10, 0x11, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,  // .....!..
                /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,  // .PL...EA
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  // .....!..
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  // ..p.@...
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  // (r."....
                /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0xE6, 0x28,  // 1...@H.(
                /* 0050 */  0x28, 0x81, 0x85, 0xC0, 0x11, 0x82, 0x7E, 0x05,  // (.....~.
                /* 0058 */  0x20, 0x74, 0x88, 0x26, 0x83, 0x02, 0x9C, 0x22,  //  t.&..."
                /* 0060 */  0x08, 0xD2, 0x96, 0x05, 0xE8, 0x16, 0xE0, 0x5B,  // .......[
                /* 0068 */  0x80, 0x76, 0x08, 0xA1, 0x55, 0x28, 0xC0, 0xA4,  // .v..U(..
                /* 0070 */  0x00, 0x9F, 0x60, 0xB2, 0x28, 0x40, 0x36, 0x98,  // ..`.(@6.
                /* 0078 */  0x6C, 0xC3, 0x91, 0x61, 0x30, 0x91, 0x63, 0x40,  // l..a0.c@
                /* 0080 */  0x89, 0x19, 0x03, 0x4A, 0xE7, 0x14, 0x64, 0x13,  // ...J..d.
                /* 0088 */  0x58, 0xD0, 0x85, 0xA2, 0x68, 0x1A, 0x51, 0x12,  // X...h.Q.
                /* 0090 */  0x1C, 0xD4, 0x31, 0x44, 0x08, 0x5E, 0xAE, 0x00,  // ..1D.^..
                /* 0098 */  0xC9, 0x13, 0x90, 0xE6, 0x79, 0xC9, 0xFA, 0x20,  // ....y.. 
                /* 00A0 */  0x34, 0x04, 0x36, 0x02, 0x1E, 0x45, 0x02, 0x08,  // 4.6..E..
                /* 00A8 */  0x8B, 0xB1, 0x4C, 0x89, 0x87, 0x41, 0x79, 0x00,  // ..L..Ay.
                /* 00B0 */  0x91, 0x9C, 0xA1, 0xA2, 0x80, 0xED, 0x75, 0x22,  // ......u"
                /* 00B8 */  0x1A, 0xD6, 0x71, 0x32, 0x49, 0x70, 0xA8, 0x51,  // ..q2Ip.Q
                /* 00C0 */  0x5A, 0xA2, 0x00, 0xF3, 0x23, 0xD3, 0x44, 0x8E,  // Z...#.D.
                /* 00C8 */  0xAD, 0xE9, 0x11, 0x0B, 0x92, 0x49, 0x1B, 0x0A,  // .....I..
                /* 00D0 */  0x6A, 0xE8, 0x9E, 0xD6, 0x49, 0x79, 0xA2, 0x11,  // j...Iy..
                /* 00D8 */  0x0F, 0xCA, 0x30, 0x09, 0x3C, 0x0A, 0x86, 0xC6,  // ..0.<...
                /* 00E0 */  0x09, 0xCA, 0x82, 0x90, 0x83, 0x81, 0xA2, 0x00,  // ........
                /* 00E8 */  0x4F, 0xC2, 0x73, 0x2C, 0x5E, 0x80, 0xF0, 0x19,  // O.s,^...
                /* 00F0 */  0x93, 0xA3, 0x40, 0x8C, 0x04, 0x3E, 0x12, 0x78,  // ..@..>.x
                /* 00F8 */  0x34, 0xC7, 0x8C, 0x05, 0x0A, 0x17, 0xF0, 0x7C,  // 4......|
                /* 0100 */  0x8E, 0x21, 0x72, 0xDC, 0x43, 0x8D, 0x71, 0x14,  // .!r.C.q.
                /* 0108 */  0x91, 0x13, 0xBC, 0x03, 0x44, 0x31, 0x5A, 0x41,  // ....D1ZA
                /* 0110 */  0xF3, 0x16, 0x62, 0xB0, 0x68, 0x06, 0xEB, 0x19,  // ..b.h...
                /* 0118 */  0x9C, 0x0C, 0x3A, 0xC1, 0xFF, 0xFF, 0x08, 0xB8,  // ..:.....
                /* 0120 */  0x0C, 0x08, 0x79, 0x14, 0x60, 0x75, 0x50, 0x9A,  // ..y.`uP.
                /* 0128 */  0x86, 0x09, 0xBA, 0x17, 0x60, 0x4D, 0x80, 0x31,  // ....`M.1
                /* 0130 */  0x01, 0x1A, 0x31, 0xA4, 0x4C, 0x80, 0xB3, 0xFB,  // ..1.L...
                /* 0138 */  0x82, 0x66, 0xD4, 0x96, 0x00, 0x73, 0x02, 0xB4,  // .f...s..
                /* 0140 */  0x09, 0xF0, 0x86, 0x20, 0x94, 0xF3, 0x8C, 0x72,  // ... ...r
                /* 0148 */  0x2C, 0xA7, 0x18, 0xE5, 0x61, 0x20, 0xE6, 0xCB,  // ,...a ..
                /* 0150 */  0x40, 0xD0, 0x28, 0x31, 0x62, 0x9E, 0x4B, 0x5C,  // @.(1b.K\
                /* 0158 */  0xC3, 0x46, 0x88, 0x11, 0xF2, 0x14, 0x02, 0xC5,  // .F......
                /* 0160 */  0x6D, 0x7F, 0x10, 0x64, 0xD0, 0xB8, 0xD1, 0xFB,  // m..d....
                /* 0168 */  0xB4, 0x70, 0x56, 0x27, 0x70, 0xF4, 0x4F, 0x0A,  // .pV'p.O.
                /* 0170 */  0x26, 0xF0, 0x94, 0x0F, 0xEC, 0xD9, 0xE0, 0x04,  // &.......
                /* 0178 */  0x8E, 0x35, 0x6A, 0x8C, 0x53, 0x49, 0xE0, 0xD8,  // .5j.SI..
                /* 0180 */  0x0F, 0x08, 0x69, 0x00, 0x51, 0x24, 0x78, 0xD4,  // ..i.Q$x.
                /* 0188 */  0x69, 0xC1, 0xE7, 0x02, 0x0F, 0xED, 0xA0, 0x3D,  // i......=
                /* 0190 */  0xC7, 0x13, 0x08, 0x72, 0x08, 0x47, 0xF0, 0xC4,  // ...r.G..
                /* 0198 */  0xF0, 0x40, 0xE0, 0x31, 0xB0, 0x9B, 0x82, 0x8F,  // .@.1....
                /* 01A0 */  0x00, 0x3E, 0x21, 0xE0, 0x5D, 0x03, 0xEA, 0x6A,  // .>!.]..j
                /* 01A8 */  0xF0, 0x60, 0xC0, 0x06, 0x1D, 0x0E, 0x33, 0x5E,  // .`....3^
                /* 01B0 */  0x0F, 0x3F, 0xDC, 0x09, 0x9C, 0xE4, 0x03, 0x06,  // .?......
                /* 01B8 */  0x3F, 0x6C, 0x78, 0x70, 0xB8, 0x79, 0x9E, 0xCC,  // ?lxp.y..
                /* 01C0 */  0x91, 0x95, 0x2A, 0xC0, 0xEC, 0xE1, 0x40, 0x07,  // ..*...@.
                /* 01C8 */  0x09, 0x9F, 0x36, 0xD8, 0x19, 0x00, 0x23, 0x7F,  // ..6...#.
                /* 01D0 */  0x10, 0xA8, 0x91, 0x19, 0xDA, 0xE3, 0x7E, 0xE9,  // ......~.
                /* 01D8 */  0x30, 0xE4, 0x73, 0xC2, 0x61, 0x31, 0xB1, 0xA7,  // 0.s.a1..
                /* 01E0 */  0x0E, 0x3A, 0x1E, 0xF0, 0x5F, 0x46, 0x9E, 0x33,  // .:.._F.3
                /* 01E8 */  0x3C, 0x7D, 0xCF, 0xD7, 0x04, 0xC3, 0x0E, 0x1C,  // <}......
                /* 01F0 */  0x3D, 0x10, 0x43, 0x3F, 0x6C, 0x1C, 0xC6, 0x69,  // =.C?l..i
                /* 01F8 */  0xF8, 0xFE, 0xE1, 0xF3, 0x02, 0x8C, 0x53, 0x80,  // ......S.
                /* 0200 */  0x47, 0xEE, 0xFF, 0xFF, 0x21, 0xC5, 0xA7, 0x09,  // G...!...
                /* 0208 */  0x7E, 0xB4, 0xF0, 0x69, 0x82, 0x5D, 0x0F, 0x4E,  // ~..i.].N
                /* 0210 */  0xE3, 0x39, 0xC0, 0xC3, 0x39, 0x2B, 0x1F, 0x26,  // .9..9+.&
                /* 0218 */  0xC0, 0x76, 0x3F, 0x61, 0x23, 0x7A, 0xB7, 0xF0,  // .v?a#z..
                /* 0220 */  0x68, 0xB0, 0xA7, 0x00, 0xF0, 0x9D, 0x5F, 0xC0,  // h....._.
                /* 0228 */  0x79, 0xD7, 0x60, 0x83, 0x85, 0x71, 0x7E, 0x01,  // y.`..q~.
                /* 0230 */  0x1E, 0x27, 0x04, 0x0F, 0x81, 0x1F, 0x24, 0x3C,  // .'....$<
                /* 0238 */  0x04, 0x3E, 0x80, 0xE7, 0x8F, 0x33, 0xB4, 0xD2,  // .>...3..
                /* 0240 */  0x79, 0x21, 0x07, 0x06, 0xEF, 0x9C, 0x03, 0x63,  // y!.....c
                /* 0248 */  0x14, 0x3C, 0xCF, 0x63, 0xC3, 0x04, 0x0A, 0xF2,  // .<.c....
                /* 0250 */  0x1A, 0x50, 0xA8, 0x67, 0x01, 0x85, 0xF1, 0xA9,  // .P.g....
                /* 0258 */  0x06, 0x78, 0xFD, 0xFF, 0x4F, 0x35, 0xC0, 0xE5,  // .x..O5..
                /* 0260 */  0x70, 0x80, 0x3B, 0x39, 0xC0, 0xBD, 0x17, 0xB0,  // p.;9....
                /* 0268 */  0x8B, 0xC3, 0x73, 0x0D, 0x5C, 0xD1, 0xE7, 0x1A,  // ..s.\...
                /* 0270 */  0xA8, 0xF7, 0x96, 0xE2, 0xC6, 0xA8, 0x6B, 0x4C,  // ......kL
                /* 0278 */  0x90, 0x47, 0x81, 0x47, 0x9A, 0x28, 0xCF, 0x33,  // .G.G.(.3
                /* 0280 */  0xEF, 0x32, 0x11, 0x9E, 0x6D, 0x7C, 0xAD, 0xF1,  // .2..m|..
                /* 0288 */  0x14, 0xE2, 0xF8, 0x5A, 0x63, 0xC4, 0x97, 0x89,  // ...Zc...
                /* 0290 */  0x77, 0x1B, 0xE3, 0x1E, 0xDC, 0x63, 0xCD, 0x43,  // w....c.C
                /* 0298 */  0x8E, 0x41, 0x8E, 0x26, 0xC2, 0x8B, 0x41, 0xC0,  // .A.&..A.
                /* 02A0 */  0xC7, 0x1B, 0x1F, 0x6B, 0xC0, 0x2B, 0xE6, 0x85,  // ...k.+..
                /* 02A8 */  0x22, 0x0B, 0xC7, 0x1A, 0x40, 0xE3, 0xFF, 0xFF,  // "...@...
                /* 02B0 */  0x58, 0x03, 0xDC, 0xB0, 0x1E, 0x50, 0xC0, 0x77,  // X....P.w
                /* 02B8 */  0x64, 0x60, 0x37, 0x14, 0x78, 0x27, 0x14, 0xC0,  // d`7.x'..
                /* 02C0 */  0x4F, 0xE2, 0x17, 0x80, 0x8E, 0x1C, 0x4E, 0x0B,  // O.....N.
                /* 02C8 */  0x22, 0x1B, 0x6F, 0x00, 0x9F, 0x02, 0xA8, 0x1A,  // ".o.....
                /* 02D0 */  0x20, 0x4D, 0x13, 0x36, 0xC1, 0xF4, 0xE4, 0x82,  //  M.6....
                /* 02D8 */  0xF7, 0x91, 0xC0, 0xB9, 0x49, 0x94, 0x7C, 0x58,  // ....I.|X
                /* 02E0 */  0x14, 0xCE, 0x59, 0x0F, 0x22, 0x14, 0xC4, 0x80,  // ..Y."...
                /* 02E8 */  0x0E, 0x72, 0x9C, 0x40, 0x9F, 0x51, 0x7C, 0x10,  // .r.@.Q|.
                /* 02F0 */  0x39, 0xD1, 0x27, 0x42, 0x0F, 0xCA, 0xC3, 0x78,  // 9.'B...x
                /* 02F8 */  0x47, 0x61, 0x27, 0x10, 0x1F, 0x26, 0x3C, 0x76,  // Ga'..&<v
                /* 0300 */  0x1F, 0x13, 0xF8, 0x3F, 0xC6, 0xB3, 0x31, 0xBA,  // ...?..1.
                /* 0308 */  0xD5, 0x60, 0xE8, 0xFF, 0x7F, 0x4E, 0xE1, 0x60,  // .`...N.`
                /* 0310 */  0x3E, 0x88, 0x70, 0x82, 0x8F, 0x46, 0xDD, 0x24,  // >.p..F.$
                /* 0318 */  0x40, 0xA5, 0xEF, 0xA8, 0x00, 0x0A, 0x20, 0xDF,  // @..... .
                /* 0320 */  0x0B, 0x7C, 0x0E, 0x78, 0x36, 0x60, 0x63, 0x78,  // .|.x6`cx
                /* 0328 */  0x14, 0x30, 0x9A, 0xD1, 0x79, 0xF8, 0xC9, 0xA2,  // .0..y...
                /* 0330 */  0xE2, 0x4E, 0x96, 0x82, 0x78, 0xB2, 0x8E, 0x32,  // .N..x..2
                /* 0338 */  0x59, 0xF4, 0x4C, 0x7C, 0xAF, 0xF0, 0x8C, 0xDE,  // Y.L|....
                /* 0340 */  0xB4, 0x3C, 0x47, 0x4F, 0xD8, 0xF7, 0x10, 0x58,  // .<GO...X
                /* 0348 */  0x87, 0x81, 0x90, 0x0F, 0x06, 0x9E, 0x86, 0xE1,  // ........
                /* 0350 */  0x3C, 0x59, 0x0E, 0xE7, 0xC9, 0xF2, 0xB1, 0xF8,  // <Y......
                /* 0358 */  0x1A, 0x02, 0x3E, 0x81, 0xB3, 0x05, 0x39, 0x3C,  // ..>...9<
                /* 0360 */  0x26, 0xD6, 0xA8, 0xE8, 0x55, 0xC8, 0xC3, 0xE3,  // &...U...
                /* 0368 */  0x97, 0x03, 0xCF, 0xE7, 0x19, 0xE1, 0x28, 0x9F,  // ......(.
                /* 0370 */  0x24, 0x70, 0x18, 0xCF, 0x24, 0x1E, 0xA2, 0x6F,  // $p..$..o
                /* 0378 */  0x45, 0xB0, 0x26, 0x72, 0xD2, 0xBE, 0x2D, 0x9C,  // E.&r..-.
                /* 0380 */  0x6C, 0xD0, 0xD7, 0x33, 0xCC, 0xAD, 0x08, 0xF6,  // l..3....
                /* 0388 */  0xFF, 0xFF, 0x56, 0x04, 0xE7, 0x82, 0x06, 0x33,  // ..V....3
                /* 0390 */  0xD3, 0xBD, 0x0A, 0x15, 0xEB, 0x5E, 0x05, 0x88,  // .....^..
                /* 0398 */  0x1D, 0xD6, 0x6B, 0x8F, 0x0F, 0x56, 0x70, 0xEF,  // ..k..Vp.
                /* 03A0 */  0x55, 0x70, 0x2F, 0x55, 0xCF, 0x0A, 0xC7, 0x18,  // Up/U....
                /* 03A8 */  0xFE, 0x61, 0x2A, 0xC6, 0x29, 0xBD, 0x76, 0x1A,  // .a*.).v.
                /* 03B0 */  0x28, 0x4C, 0x94, 0x78, 0xEF, 0x55, 0x1E, 0xE3,  // (L.x.U..
                /* 03B8 */  0x7B, 0x15, 0xBB, 0x42, 0x85, 0x89, 0xF5, 0x72,  // {..B...r
                /* 03C0 */  0x65, 0xD4, 0xD7, 0x89, 0x70, 0x81, 0x82, 0x44,  // e...p..D
                /* 03C8 */  0x7A, 0xB5, 0x8A, 0x12, 0x39, 0xBE, 0x21, 0xDF,  // z...9.!.
                /* 03D0 */  0xAB, 0xC0, 0x2B, 0xE7, 0x5E, 0x05, 0xB2, 0xFF,  // ..+.^...
                /* 03D8 */  0xFF, 0xBD, 0x0A, 0x30, 0x8F, 0xF6, 0x5E, 0x05,  // ...0..^.
                /* 03E0 */  0xC6, 0x6B, 0x03, 0xBB, 0x21, 0xC1, 0x02, 0x7A,  // .k..!..z
                /* 03E8 */  0xB1, 0x02, 0x0C, 0x65, 0xBE, 0x58, 0xD1, 0xBC,  // ...e.X..
                /* 03F0 */  0x17, 0x2B, 0xC4, 0xFF, 0xFF, 0x5C, 0xC2, 0xF4,  // .+...\..
                /* 03F8 */  0x5C, 0xAC, 0xC8, 0x3C, 0xE1, 0xDF, 0xAC, 0x00,  // \..<....
                /* 0400 */  0x4E, 0xFF, 0xFF, 0x6F, 0x56, 0x80, 0xB1, 0x7B,  // N..oV..{
                /* 0408 */  0x11, 0xE6, 0x68, 0x05, 0x2F, 0xE5, 0xCD, 0x8A,  // ..h./...
                /* 0410 */  0xC6, 0x59, 0x86, 0x02, 0x2E, 0x88, 0xC2, 0xF8,  // .Y......
                /* 0418 */  0x66, 0x05, 0x38, 0xBA, 0xAE, 0xE0, 0x86, 0x0C,  // f.8.....
                /* 0420 */  0x17, 0x2C, 0x4A, 0x30, 0x1F, 0x42, 0x3C, 0x9D,  // .,J0.B<.
                /* 0428 */  0x23, 0x7E, 0x48, 0x78, 0x09, 0x78, 0xCC, 0xF1,  // #~Hx.x..
                /* 0430 */  0x80, 0x1F, 0x08, 0x7C, 0xB9, 0x02, 0xD3, 0xFF,  // ...|....
                /* 0438 */  0x9F, 0xC0, 0x27, 0xDF, 0xB3, 0x7C, 0x9B, 0x7A,  // ..'..|.z
                /* 0440 */  0xEF, 0xE5, 0x07, 0xAC, 0xF7, 0x2A, 0x1F, 0x7E,  // .....*.~
                /* 0448 */  0x63, 0xBD, 0x33, 0xBC, 0x5C, 0x79, 0x24, 0x51,  // c.3.\y$Q
                /* 0450 */  0x4E, 0x22, 0x94, 0xEF, 0x56, 0xEF, 0x55, 0x46,  // N"..V.UF
                /* 0458 */  0x89, 0xF8, 0x42, 0xEC, 0x53, 0xB0, 0xA1, 0x8D,  // ..B.S...
                /* 0460 */  0xF2, 0x54, 0x11, 0xDD, 0x78, 0x2F, 0x57, 0xE0,  // .T..x/W.
                /* 0468 */  0x95, 0x74, 0xB9, 0x02, 0x68, 0x32, 0xFC, 0x97,  // .t..h2..
                /* 0470 */  0x2B, 0xF0, 0xDD, 0x1C, 0xB0, 0xD7, 0x24, 0x38,  // +.....$8
                /* 0478 */  0xFF, 0xFF, 0x6B, 0x12, 0xBF, 0x5E, 0x01, 0x7E,  // ..k..^.~
                /* 0480 */  0xB2, 0x5F, 0xAF, 0x68, 0xEE, 0xEB, 0x15, 0x4A,  // ._.h...J
                /* 0488 */  0x14, 0x84, 0x14, 0x01, 0x69, 0xA6, 0xE0, 0xB9,  // ....i...
                /* 0490 */  0x5F, 0x01, 0x9C, 0xF8, 0xFF, 0xDF, 0xAF, 0x00,  // _.......
                /* 0498 */  0xCB, 0xE1, 0xEE, 0x57, 0x40, 0xEF, 0x76, 0x04,  // ...W@.v.
                /* 04A0 */  0x5E, 0x94, 0xB7, 0x23, 0xEC, 0x15, 0x0B, 0x9F,  // ^..#....
                /* 04A8 */  0xF1, 0x8A, 0x45, 0xC3, 0xAC, 0x44, 0xF1, 0xD6,  // ..E..D..
                /* 04B0 */  0x44, 0x61, 0x7C, 0xC5, 0x02, 0x26, 0xFF, 0xFF,  // Da|..&..
                /* 04B8 */  0x2B, 0x16, 0x30, 0x3B, 0x88, 0xE2, 0x46, 0x0D,  // +.0;..F.
                /* 04C0 */  0xF7, 0xE2, 0xE4, 0x5B, 0x8F, 0xE7, 0x1B, 0xD1,  // ...[....
                /* 04C8 */  0x77, 0x18, 0xCC, 0x09, 0x0B, 0xC6, 0x0D, 0x0B,  // w.......
                /* 04D0 */  0xFE, 0x90, 0x1E, 0x86, 0x7D, 0x92, 0x78, 0xC7,  // ....}.x.
                /* 04D8 */  0xF2, 0xD1, 0xCA, 0x20, 0x6F, 0xC0, 0x4F, 0x56,  // ... o.OV
                /* 04E0 */  0x0F, 0x56, 0x51, 0x8C, 0x10, 0xF0, 0x78, 0xDE,  // .VQ...x.
                /* 04E8 */  0x85, 0x7D, 0xB4, 0x7A, 0xD3, 0x32, 0x4A, 0xEC,  // .}.z.2J.
                /* 04F0 */  0x58, 0xBE, 0x50, 0x3D, 0x6B, 0xF9, 0x9A, 0x65,  // X.P=k..e
                /* 04F8 */  0x88, 0xB8, 0x0F, 0xC4, 0xBE, 0x61, 0x01, 0xB6,  // .....a..
                /* 0500 */  0xFF, 0xFF, 0x37, 0x2C, 0xC0, 0xD1, 0xC5, 0x81,  // ..7,....
                /* 0508 */  0x1F, 0x1C, 0xB0, 0x37, 0x2C, 0xC0, 0xE7, 0x4C,  // ...7,..L
                /* 0510 */  0xC1, 0x73, 0xC3, 0x02, 0x36, 0xFF, 0xFF, 0x1B,  // .s..6...
                /* 0518 */  0x16, 0xC0, 0xFF, 0xFF, 0xFF, 0x0D, 0x0B, 0x38,  // .......8
                /* 0520 */  0xDC, 0xAE, 0xB0, 0xB7, 0x2C, 0xEC, 0xED, 0x85,  // ....,...
                /* 0528 */  0xAC, 0x82, 0x86, 0x5A, 0x89, 0x82, 0x7F, 0xAF,  // ...Z....
                /* 0530 */  0x0C, 0x43, 0x6F, 0x58, 0x80, 0xA3, 0x71, 0x7B,  // .CoX..q{
                /* 0538 */  0xD4, 0xE0, 0x38, 0x1B, 0x3C, 0x49, 0x60, 0xCE,  // ..8.<I`.
                /* 0540 */  0xD5, 0xB8, 0xD9, 0x1C, 0x5C, 0xE0, 0x08, 0xBD,  // ....\...
                /* 0548 */  0x83, 0x6A, 0xEE, 0xEC, 0x92, 0x02, 0xE3, 0x96,  // .j......
                /* 0550 */  0x05, 0xF7, 0x52, 0xF5, 0xD0, 0x10, 0xE5, 0x20,  // ..R.... 
                /* 0558 */  0x5E, 0x85, 0x1F, 0xAC, 0x1E, 0xA5, 0x8E, 0xEC,  // ^.......
                /* 0560 */  0xF1, 0xEA, 0x69, 0xD8, 0xC7, 0x2C, 0xDF, 0xB2,  // ..i..,..
                /* 0568 */  0x0C, 0x15, 0xE1, 0x2D, 0x8B, 0x9D, 0x21, 0xE2,  // ...-..!.
                /* 0570 */  0xC5, 0x8A, 0x12, 0xE2, 0xBD, 0x22, 0xB4, 0xEF,  // ....."..
                /* 0578 */  0x5C, 0x06, 0x7F, 0x34, 0x36, 0x6A, 0xD0, 0x97,  // \..46j..
                /* 0580 */  0xE3, 0xB7, 0x2C, 0x78, 0xFF, 0xFF, 0x5B, 0x16,  // ..,x..[.
                /* 0588 */  0x7C, 0x91, 0x7F, 0x15, 0x9D, 0x08, 0x7C, 0xCB,  // |.....|.
                /* 0590 */  0x02, 0xF8, 0x11, 0x0C, 0x42, 0x4E, 0x06, 0x8E,  // ....BN..
                /* 0598 */  0x3E, 0x2F, 0xE0, 0x07, 0xF0, 0x30, 0xE2, 0x21,  // >/...0.!
                /* 05A0 */  0xB1, 0x00, 0x03, 0xA7, 0xF7, 0x25, 0x9F, 0x29,  // .....%.)
                /* 05A8 */  0xF8, 0x01, 0xC3, 0x67, 0x0A, 0x76, 0x3D, 0x88,  // ...g.v=.
                /* 05B0 */  0xFE, 0x18, 0xE0, 0x73, 0x09, 0x66, 0x70, 0xE0,  // ...s.fp.
                /* 05B8 */  0xBF, 0x56, 0x1C, 0xBA, 0x47, 0xF1, 0xFA, 0x60,  // .V..G..`
                /* 05C0 */  0x02, 0x0F, 0x8E, 0xFF, 0xFF, 0x07, 0x07, 0xF7,  // ........
                /* 05C8 */  0xCE, 0x70, 0x44, 0xBE, 0xC3, 0x78, 0x70, 0x60,  // .pD..xp`
                /* 05D0 */  0x3B, 0x08, 0x00, 0x87, 0xC1, 0xE1, 0x43, 0x0D,  // ;.....C.
                /* 05D8 */  0x0E, 0x3D, 0x1E, 0x03, 0x87, 0xF4, 0x79, 0x8C,  // .=....y.
                /* 05E0 */  0x5D, 0x18, 0x1E, 0x72, 0x3C, 0x34, 0xB0, 0x01,  // ]..r<4..
                /* 05E8 */  0x7A, 0x68, 0xC0, 0x72, 0x12, 0x4F, 0x21, 0x87,  // zh.r.O!.
                /* 05F0 */  0x06, 0x66, 0x09, 0x43, 0x03, 0x4A, 0xF1, 0x86,  // .f.C.J..
                /* 05F8 */  0x46, 0xFF, 0xFF, 0x43, 0xE3, 0x43, 0xF2, 0x61,  // F..C.C.a
                /* 0600 */  0x21, 0xE6, 0x53, 0x4E, 0x84, 0xF7, 0x05, 0x9F,  // !.SN....
                /* 0608 */  0xA0, 0x18, 0xFA, 0x6B, 0x8A, 0x6F, 0x17, 0xBE,  // ...k.o..
                /* 0610 */  0x09, 0xE2, 0xC6, 0x07, 0xAE, 0x4B, 0xA7, 0xC7,  // .....K..
                /* 0618 */  0x07, 0x7C, 0x8E, 0x5C, 0x1E, 0x1F, 0xEE, 0xE8,  // .|.\....
                /* 0620 */  0xE4, 0xF1, 0xC1, 0x70, 0x79, 0x95, 0x21, 0x47,  // ...py.!G
                /* 0628 */  0x13, 0x1F, 0xAD, 0xD8, 0xF0, 0xC0, 0x76, 0xD3,  // ......v.
                /* 0630 */  0xF3, 0xF0, 0x80, 0xCF, 0x75, 0x13, 0x8C, 0x57,  // ....u..W
                /* 0638 */  0x48, 0x7E, 0x2D, 0x81, 0x71, 0x82, 0xC2, 0x5F,  // H~-.q.._
                /* 0640 */  0x37, 0xC1, 0xFB, 0xFF, 0xBF, 0x6E, 0x02, 0xCF,  // 7....n..
                /* 0648 */  0x51, 0x70, 0xAD, 0x97, 0x6C, 0x1A, 0xE4, 0x95,  // Qp..l...
                /* 0650 */  0xA3, 0x58, 0x2F, 0x02, 0x0A, 0xE3, 0x33, 0x1B,  // .X/...3.
                /* 0658 */  0xE0, 0x68, 0xAC, 0xCF, 0x6C, 0x60, 0xB9, 0x17,  // .h..l`..
                /* 0660 */  0xB0, 0x1B, 0x1B, 0xDC, 0xD3, 0x1A, 0xEC, 0xBB,  // ........
                /* 0668 */  0xC3, 0xC3, 0xD9, 0x63, 0xDA, 0xA3, 0xDA, 0x03,  // ...c....
                /* 0670 */  0x9A, 0x8F, 0xD8, 0x31, 0xDE, 0xD2, 0x82, 0xC4,  // ...1....
                /* 0678 */  0x89, 0xF0, 0x3A, 0xF0, 0xB4, 0xE6, 0x4B, 0x46,  // ..:...KF
                /* 0680 */  0xBC, 0x40, 0x4F, 0x6B, 0xC6, 0x88, 0xF3, 0xD2,  // .@Ok....
                /* 0688 */  0x66, 0xC4, 0x57, 0x8A, 0x10, 0x0F, 0x6B, 0x3E,  // f.W...k>
                /* 0690 */  0xB9, 0x19, 0xEF, 0x61, 0x22, 0x5C, 0x98, 0x17,  // ...a"\..
                /* 0698 */  0xB6, 0xA7, 0x35, 0x70, 0xFC, 0xFF, 0x4F, 0x6B,  // ..5p..Ok
                /* 06A0 */  0x70, 0xE4, 0x5C, 0xB1, 0x01, 0x9A, 0x5C, 0xF4,  // p.\...\.
                /* 06A8 */  0x71, 0x87, 0x14, 0xB0, 0x5C, 0x1B, 0xD8, 0x2D,  // q...\..-
                /* 06B0 */  0x05, 0xDE, 0x05, 0x1B, 0x38, 0xFF, 0xFF, 0x8F,  // ....8...
                /* 06B8 */  0x28, 0xE0, 0xCB, 0x72, 0xC1, 0xA6, 0x39, 0x2E,  // (..r..9.
                /* 06C0 */  0xD8, 0x28, 0x0E, 0xAB, 0x01, 0xD2, 0x3C, 0xE1,  // .(....<.
                /* 06C8 */  0x5F, 0xAF, 0xC1, 0x3F, 0x09, 0x5F, 0xAF, 0x01,  // _..?._..
                /* 06D0 */  0xDB, 0xB7, 0x58, 0xDC, 0xF5, 0x1A, 0x58, 0xFD,  // ..X...X.
                /* 06D8 */  0xFF, 0xAF, 0xD7, 0xC0, 0x52, 0xF0, 0x48, 0xE9,  // ....R.H.
                /* 06E0 */  0x9D, 0x1A, 0x5C, 0x37, 0x6D, 0x3C, 0xE8, 0x9B,  // ..\7m<..
                /* 06E8 */  0x36, 0x4C, 0x85, 0x36, 0x7D, 0x6A, 0x34, 0x6A,  // 6L.6}j4j
                /* 06F0 */  0xD5, 0xA0, 0x4C, 0x8D, 0x32, 0x0D, 0x6A, 0xF5,  // ..L.2.j.
                /* 06F8 */  0xA9, 0xD4, 0x98, 0xB1, 0xA1, 0x5A, 0xDA, 0x5D,  // .....Z.]
                /* 0700 */  0x82, 0x8A, 0x59, 0x8C, 0x46, 0xE3, 0x28, 0x20,  // ..Y.F.( 
                /* 0708 */  0x54, 0xF6, 0x1F, 0x50, 0x20, 0x0E, 0xF9, 0xD1,  // T..P ...
                /* 0710 */  0x11, 0xA0, 0x83, 0x7D, 0xA7, 0x74, 0x0B, 0x27,  // ...}.t.'
                /* 0718 */  0x6B, 0x13, 0x88, 0xE3, 0x9B, 0x80, 0x68, 0x04,  // k.....h.
                /* 0720 */  0x44, 0x5A, 0x54, 0x00, 0xB1, 0xDC, 0x20, 0x02,  // DZT... .
                /* 0728 */  0xB2, 0x8A, 0x35, 0x09, 0xC8, 0x9A, 0xBF, 0x2F,  // ..5..../
                /* 0730 */  0x02, 0xB7, 0x4E, 0x1D, 0x40, 0x2C, 0x25, 0x08,  // ..N.@,%.
                /* 0738 */  0x4D, 0xB4, 0x70, 0x81, 0x3A, 0x1E, 0x88, 0x06,  // M.p.:...
                /* 0740 */  0x43, 0x68, 0x04, 0xE4, 0x60, 0x14, 0x02, 0xB2,  // Ch..`...
                /* 0748 */  0x8C, 0xCF, 0x9D, 0xC0, 0x2D, 0xC0, 0x0A, 0x10,  // ....-...
                /* 0750 */  0x93, 0x0F, 0x42, 0x05, 0x7B, 0x01, 0x65, 0xEA,  // ..B.{.e.
                /* 0758 */  0x41, 0x04, 0x64, 0xA5, 0x6B, 0x15, 0x90, 0x75,  // A.d.k..u
                /* 0760 */  0x83, 0x08, 0xC8, 0x59, 0xCD, 0x80, 0xB3, 0x8C,  // ...Y....
                /* 0768 */  0x6E, 0x80, 0x98, 0xC2, 0x87, 0x82, 0x40, 0xAC,  // n.....@.
                /* 0770 */  0x49, 0x0F, 0x28, 0x13, 0x08, 0xA2, 0x0B, 0x07,  // I.(.....
                /* 0778 */  0xF1, 0x03, 0xC4, 0xA4, 0x81, 0x08, 0xC8, 0x71,  // .......q
                /* 0780 */  0x7E, 0x25, 0x02, 0x77, 0x1C, 0x45, 0x80, 0xD4,  // ~%.w.E..
                /* 0788 */  0xD1, 0x70, 0x29, 0x08, 0x15, 0xFF, 0x09, 0x13,  // .p).....
                /* 0790 */  0xC8, 0xFF, 0xFF, 0xFD, 0x44, 0x96, 0xC0, 0x28,  // ....D..(
                /* 0798 */  0x08, 0x8D, 0xA0, 0x09, 0x84, 0xC9, 0xF3, 0x04,  // ........
                /* 07A0 */  0xC2, 0x42, 0xFD, 0xFD, 0x34, 0x04, 0x07, 0x51,  // .B..4..Q
                /* 07A8 */  0x35, 0x44, 0xEA, 0x0A, 0x84, 0x05, 0x7E, 0x18,  // 5D....~.
                /* 07B0 */  0x68, 0x30, 0x4E, 0x0F, 0x22, 0x20, 0x27, 0x7D,  // h0N." '}
                /* 07B8 */  0x52, 0x05, 0x22, 0xB9, 0x41, 0x04, 0xE4, 0xFF,  // R.".A...
                /* 07C0 */  0x3F                                             // ?
            })
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Mutex (BFWM, 0x07)
            Method (MHCF, 1, NotSerialized)
            {
                Local0 = \BFWC (Arg0)
                Return (Local0)
            }

            Method (MHPF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x25){})
                Acquire (BFWM, 0xFFFF)
                If ((SizeOf (Arg0) <= 0x25))
                {
                    \BFWB = Arg0
                    If (\BFWP ())
                    {
                        \_SB.PCI0.LPC.EC.CHKS ()
                        \BFWL ()
                    }

                    RETB = \BFWB
                }

                Release (BFWM)
                Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHPF.RETB */
            }

            Method (MHIF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x0A){})
                Acquire (BFWM, 0xFFFF)
                \BFWG (Arg0)
                RETB = \BFWB
                Release (BFWM)
                Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHIF.RETB */
            }

            Method (MHDM, 1, NotSerialized)
            {
                \BDMC (Arg0)
            }
        }

        Name (\VHCC, 0x00)
        Scope (\_SB.PCI0.VID)
        {
            Name (HVMD, 0x00)
            Method (ISHV, 0, NotSerialized)
            {
                If ((HVMD == 0x00))
                {
                    HVMD = \VHYB (0x03, 0x00)
                }

                Return ((HVMD == 0x03))
            }

            Method (ISOP, 0, NotSerialized)
            {
                If ((HVMD == 0x00))
                {
                    HVMD = \VHYB (0x03, 0x00)
                }

                Return ((HVMD == 0x04))
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Name (CTOI, 0x00)
                If ((Arg0 == ToUUID ("9d95a0a0-0060-4d48-b34d-7e5fea129fd4") /* Unknown UUID */))
                {
                    If ((Arg1 != 0x0102))
                    {
                        Return (Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x80                           // ....
                        })
                    }

                    While (One)
                    {
                        Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_0 = ToInteger (Arg2)
                        If ((_T_0 == 0x00))
                        {
                            Return (Buffer (0x04)
                            {
                                 0x0B, 0x00, 0x00, 0x00                           // ....
                            })
                        }
                        ElseIf ((_T_0 == 0x01))
                        {
                            Return (Buffer (0x04)
                            {
                                 0xE3, 0x40, 0x00, 0x03                           // .@..
                            })
                        }
                        ElseIf ((_T_0 == 0x03))
                        {
                            CreateByteField (Arg3, 0x00, PWFC)
                            If ((PWFC == 0x01))
                            {
                                \_SB.PCI0.PEG.VID._ON ()
                            }
                            ElseIf ((PWFC == 0x02))
                            {
                                \_SB.PCI0.PEG.VID._OFF ()
                                Return (0x00)
                            }

                            Return ((\_SB.PCI0.PEG.VID._STA () == 0x0F))
                        }
                        ElseIf ((_T_0 == 0x05))
                        {
                            Name (NFBU, Buffer (0x04)
                            {
                                 0x00                                             // .
                            })
                            CreateField (NFBU, 0x00, 0x04, DAVF)
                            CreateField (NFBU, 0x04, 0x01, LIDF)
                            CreateField (NFBU, 0x08, 0x06, DTOG)
                            If ((DerefOf (Arg3 [0x03]) & 0x80))
                            {
                                Local0 = DerefOf (Arg3 [0x03])
                                Local0 &= 0x3E
                                Local0 >>= 0x01
                                CTOI = Local0
                                DTOG = CTOI /* \_SB_.PCI0.VID_._DSM.CTOI */
                            }
                            ElseIf ((DerefOf (Arg3 [0x03]) & 0x01))
                            {
                                If (!CTOI)
                                {
                                    Local0 = DerefOf (Arg3 [0x01])
                                    Local0 >>= 0x04
                                    Local1 = DerefOf (Arg3 [0x02])
                                    Local1 <<= 0x04
                                    Local0 |= Local1
                                    CTOI = GATD (Local0)
                                }

                                Local2 = CTOI /* \_SB_.PCI0.VID_._DSM.CTOI */
                                Local2++
                                If (\_SB.PCI0.VID.MXDS (0x00))
                                {
                                    If ((Local2 >= 0x10))
                                    {
                                        Local2 = 0x01
                                    }
                                }
                                ElseIf ((Local2 >= 0x04))
                                {
                                    Local2 = 0x01
                                }

                                DTOG = Local2
                                DAVF = One
                            }
                            Else
                            {
                                If (!CTOI)
                                {
                                    If ((DerefOf (Arg3 [0x03]) & 0x01))
                                    {
                                        Local0 = DerefOf (Arg3 [0x01])
                                        Local0 >>= 0x04
                                        Local1 = DerefOf (Arg3 [0x02])
                                        Local1 <<= 0x04
                                        Local0 |= Local1
                                        CTOI = GATD (Local0)
                                    }
                                }

                                DTOG = CTOI /* \_SB_.PCI0.VID_._DSM.CTOI */
                            }

                            Return (NFBU) /* \_SB_.PCI0.VID_._DSM.NFBU */
                        }
                        ElseIf ((_T_0 == 0x06))
                        {
                            Return (Package (0x25)
                            {
                                0x0410, 
                                0x2C, 
                                0x80000100, 
                                0x2C, 
                                0x0410, 
                                0x80000100, 
                                0x2C, 
                                0x80006330, 
                                0x2C, 
                                0x0410, 
                                0x80006330, 
                                0x2C, 
                                0x80007331, 
                                0x2C, 
                                0x0410, 
                                0x80007331, 
                                0x2C, 
                                0x80086342, 
                                0x2C, 
                                0x0410, 
                                0x80086342, 
                                0x2C, 
                                0x80087355, 
                                0x2C, 
                                0x0410, 
                                0x80087355, 
                                0x2C, 
                                0x80086354, 
                                0x2C, 
                                0x0410, 
                                0x80086354, 
                                0x2C, 
                                0x80087343, 
                                0x2C, 
                                0x0410, 
                                0x80087343, 
                                0x2C
                            })
                        }
                        Else
                        {
                            Return (Buffer (0x04)
                            {
                                 0x02, 0x00, 0x00, 0x80                           // ....
                            })
                        }

                        Break
                    }
                }
                ElseIf ((Arg0 == ToUUID ("7ed873d3-c2d0-4e4f-a854-0f1317b01c2c") /* Unknown UUID */))
                {
                    If (!ISHV ())
                    {
                        Return (Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x80                           // ....
                        })
                    }

                    If ((Arg1 != 0x01))
                    {
                        Return (Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x80                           // ....
                        })
                    }

                    While (One)
                    {
                        Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        _T_1 = ToInteger (Arg2)
                        If ((_T_1 == 0x00))
                        {
                            Return (Buffer (0x04)
                            {
                                 0x03, 0x00, 0x00, 0x00                           // ....
                            })
                        }
                        ElseIf ((_T_1 == 0x01))
                        {
                            If (ISOP ())
                            {
                                Return (Package (0x05)
                                {
                                    0x04, 
                                    Package (0x02)
                                    {
                                        0x80000100, 
                                        Buffer (0x04)
                                        {
                                             0x01, 0x03, 0x03, 0x00                           // ....
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        0x0410, 
                                        Buffer (0x04)
                                        {
                                             0x02, 0x03, 0x03, 0x00                           // ....
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        0x80006330, 
                                        Buffer (0x04)
                                        {
                                             0x08, 0x03, 0x03, 0x03                           // ....
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        0x80007331, 
                                        Buffer (0x04)
                                        {
                                             0x04, 0x03, 0x03, 0x03                           // ....
                                        }
                                    }
                                })
                            }

                            Return (Package (0x05)
                            {
                                0x04, 
                                Package (0x02)
                                {
                                    0x80000100, 
                                    Buffer (0x04)
                                    {
                                         0x01, 0x03, 0x03, 0x00                           // ....
                                    }
                                }, 

                                Package (0x02)
                                {
                                    0x0410, 
                                    Buffer (0x04)
                                    {
                                         0x02, 0x03, 0x03, 0x00                           // ....
                                    }
                                }, 

                                Package (0x02)
                                {
                                    0x80006330, 
                                    Buffer (0x04)
                                    {
                                         0x08, 0x03, 0x03, 0x03                           // ....
                                    }
                                }, 

                                Package (0x02)
                                {
                                    0x80007331, 
                                    Buffer (0x04)
                                    {
                                         0x04, 0x03, 0x03, 0x03                           // ....
                                    }
                                }
                            })
                        }
                        Else
                        {
                            Return (Buffer (0x04)
                            {
                                 0x02, 0x00, 0x00, 0x80                           // ....
                            })
                        }

                        Break
                    }
                }
            }

            Method (GATD, 1, NotSerialized)
            {
                While (One)
                {
                    Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == 0x80))
                    {
                        Return (0x01)
                    }
                    ElseIf ((_T_0 == 0x01))
                    {
                        Return (0x02)
                    }
                    ElseIf ((_T_0 == 0x81))
                    {
                        Return (0x03)
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Return (0x04)
                    }
                    ElseIf ((_T_0 == 0x82))
                    {
                        Return (0x05)
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Return (0x06)
                    }
                    ElseIf ((_T_0 == 0x84))
                    {
                        Return (0x07)
                    }
                    ElseIf ((_T_0 == 0x08))
                    {
                        Return (0x08)
                    }
                    ElseIf ((_T_0 == 0x88))
                    {
                        Return (0x09)
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        Return (0x0A)
                    }
                    ElseIf ((_T_0 == 0x90))
                    {
                        Return (0x0B)
                    }
                    ElseIf ((_T_0 == 0x20))
                    {
                        Return (0x0C)
                    }
                    ElseIf ((_T_0 == 0xA0))
                    {
                        Return (0x0D)
                    }
                    ElseIf ((_T_0 == 0x40))
                    {
                        Return (0x0E)
                    }
                    ElseIf ((_T_0 == 0xC0))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (0x01)
                    }

                    Break
                }
            }

            Method (MXDS, 1, NotSerialized)
            {
                If (!Arg0)
                {
                    Return (!!(\RISA (0x11BA) & 0x10))
                }
                Else
                {
                    \SWTT (0x00)
                    \MISA (0x11BA, 0xAB, 0x40)
                }
            }

            Method (MXMX, 1, NotSerialized)
            {
                While (One)
                {
                    Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = ToInteger (Arg0)
                    If ((_T_0 == 0x00))
                    {
                        Local0 = 0x60
                        If (ISOP ())
                        {
                            Local0 = 0x40
                        }

                        \MISA (0x11BA, 0x9F, Local0)
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Return (((\RISA (0x11BA) & 0x40) == 0x40))
                    }

                    Break
                }

                Return (0x01)
            }
        }

        Scope (\_SB.PCI0)
        {
            Name (OTM, "OTMACPI 2009-Nov-12 18:18:51")
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Method (GOBT, 1, NotSerialized)
            {
                Name (OPVK, Buffer (0xE6)
                {
                    /* 0000 */  0xE4, 0xB8, 0x4F, 0x51, 0x50, 0x72, 0x8A, 0xC2,  // ..OQPr..
                    /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,  // KV......
                    /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,  // 14859745
                    /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,  // 6985Genu
                    /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  // ine NVID
                    /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  // IA Certi
                    /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  // fied Opt
                    /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  // imus Rea
                    /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  // dy Mothe
                    /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,  // rboard f
                    /* 0050 */  0x6F, 0x72, 0x20, 0x36, 0x38, 0x38, 0x33, 0x32,  // or 68832
                    /* 0058 */  0x35, 0x6E, 0x6F, 0x7A, 0x6F, 0x6D, 0x69, 0x32,  // 5nozomi2
                    /* 0060 */  0x31, 0x44, 0x35, 0x20, 0x20, 0x20, 0x20, 0x20,  // 1D5     
                    /* 0068 */  0x2D, 0x20, 0x40, 0x4A, 0x20, 0x24, 0x55, 0x27,  // - @J $U'
                    /* 0070 */  0x5C, 0x22, 0x54, 0x20, 0x29, 0x5F, 0x47, 0x42,  // \"T )_GB
                    /* 0078 */  0x20, 0x50, 0x2F, 0x41, 0x4F, 0x5C, 0x37, 0x22,  //  P/AO\7"
                    /* 0080 */  0x3D, 0x46, 0x37, 0x39, 0x4B, 0x37, 0x2B, 0x5F,  // =F79K7+_
                    /* 0088 */  0x3F, 0x4B, 0x48, 0x5C, 0x5F, 0x46, 0x58, 0x48,  // ?KH\_FXH
                    /* 0090 */  0x5F, 0x44, 0x57, 0x32, 0x26, 0x4A, 0x46, 0x50,  // _DW2&JFP
                    /* 0098 */  0x52, 0x25, 0x24, 0x2F, 0x46, 0x24, 0x20, 0x2D,  // R%$/F$ -
                    /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,  //  Copyrig
                    /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,  // ht 2010 
                    /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,  // NVIDIA C
                    /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,  // orporati
                    /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,  // on All R
                    /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,  // ights Re
                    /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,  // served-1
                    /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,  // 48597456
                    /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29               // 985(R)
                })
                CreateWordField (Arg0, 0x02, USRG)
                If ((USRG == 0x564B))
                {
                    Return (OPVK) /* \_SB_.PCI0.PEG_.VID_.GOBT.OPVK */
                }

                Return (Zero)
            }
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Name (OMPR, 0x02)
            Name (HDAS, 0x00)
            Method (NVOP, 4, NotSerialized)
            {
                Debug = "------- NV OPTIMUS DSM --------"
                If ((Arg1 != 0x0100))
                {
                    Return (0x80000001)
                }

                While (One)
                {
                    Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = ToInteger (Arg2)
                    If ((_T_0 == 0x00))
                    {
                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        Divide (0x00, 0x08, Local2, Local1)
                        Local2 = (0x01 << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Divide (0x1A, 0x08, Local2, Local1)
                        Local2 = (0x01 << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Divide (0x1B, 0x08, Local2, Local1)
                        Local2 = (0x01 << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Divide (0x10, 0x08, Local2, Local1)
                        Local2 = (0x01 << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x1A))
                    {
                        CreateField (Arg3, 0x18, 0x02, OPCE)
                        CreateField (Arg3, 0x00, 0x01, FLCH)
                        If (ToInteger (FLCH))
                        {
                            OMPR = OPCE /* \_SB_.PCI0.PEG_.VID_.NVOP.OPCE */
                        }

                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        CreateField (Local0, 0x00, 0x01, OPEN)
                        CreateField (Local0, 0x03, 0x02, CGCS)
                        CreateField (Local0, 0x06, 0x01, SHPC)
                        CreateField (Local0, 0x18, 0x03, DGPC)
                        CreateField (Local0, 0x1B, 0x02, HDAC)
                        OPEN = One
                        SHPC = One
                        DGPC = One
                        If (\_SB.PCI0.PEG.VID._STA ())
                        {
                            CGCS = 0x03
                        }

                        HDAC = 0x02
                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x1B))
                    {
                        CreateField (Arg3, 0x00, 0x01, HDAU)
                        CreateField (Arg3, 0x01, 0x01, HDAR)
                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        CreateField (Local0, 0x02, 0x02, RQGS)
                        CreateField (Local0, 0x04, 0x01, PWST)
                        PWST = One
                        If ((\_SB.PCI0.LPC.EC.DOCD && \_SB.PCI0.LPC.EC.AC._PSR ()))
                        {
                            RQGS = One
                        }
                        Else
                        {
                            RQGS = Zero
                        }

                        If (ToInteger (HDAR))
                        {
                            HDAS = ToInteger (HDAU)
                        }

                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        Return (\_SB.PCI0.PEG.VID.GOBT (Arg3))
                    }

                    Break
                }

                Return (0x80000002)
            }
        }

        Scope (\)
        {
            Method (CMPB, 2, NotSerialized)
            {
                Local1 = SizeOf (Arg0)
                If ((Local1 != SizeOf (Arg1)))
                {
                    Return (0x00)
                }

                Local0 = 0x00
                While ((Local0 < Local1))
                {
                    If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0]
                        )))
                    {
                        Return (0x00)
                    }

                    Local0++
                }

                Return (0x01)
            }
        }
    }

    Scope (\_SB.PCI0.LPC.UART)
    {
        Name (_EJD, "_SB.GDCK")  // _EJD: Ejection Dependent Device
    }

    Scope (\_SB.PCI0.LPC.LPT)
    {
        Name (_EJD, "_SB.GDCK")  // _EJD: Ejection Dependent Device
    }

    Scope (\_SB.PCI0.LPC.ECP)
    {
        Name (_EJD, "_SB.GDCK")  // _EJD: Ejection Dependent Device
    }

    Scope (\_SB.PCI0.EHC2.URTH.URMH.PRTC)
    {
        Name (_EJD, "_SB.GDCK")  // _EJD: Ejection Dependent Device
    }

    Scope (\_SB.PCI0.EHC1.URTH.URMH.PRT5)
    {
        Name (_EJD, "_SB.PCI0.EXP4.SLOT")  // _EJD: Ejection Dependent Device
    }

    Scope (\_SB.PCI0.EXP4.SLOT)
    {
        Name (_EJD, "_SB.PCI0.EHC1.URTH.URMH.PRT5")  // _EJD: Ejection Dependent Device
    }

    Name (\_S0, Package (0x04)  // _S0_: S0 System State
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        0x05, 
        0x00, 
        0x00
    })
    Name (\_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        0x06, 
        0x00, 
        0x00
    })
    Name (\_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        0x07, 
        0x00, 
        0x00
    })
    Method (\_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Local0 = 0x01
        If ((Arg0 == \SPS))
        {
            Local0 = 0x00
        }

        If (((Arg0 == 0x00) || (Arg0 >= 0x06)))
        {
            Local0 = 0x00
        }

        If (Local0)
        {
            \SPS = Arg0
            \_SB.PCI0.LPC.EC.HKEY.MHKE (0x00)
            If (\_SB.PCI0.LPC.EC.KBLT)
            {
                \UCMS (0x0D)
            }

            If ((Arg0 == 0x01))
            {
                \FNID = \_SB.PCI0.LPC.EC.HFNI
                \_SB.PCI0.LPC.EC.HFNI = 0x00
                \_SB.PCI0.LPC.EC.HFSP = 0x00
            }

            If ((Arg0 == 0x03))
            {
                \VVPD (0x03)
                \VHCC = \VHYB (0x07, 0x00)
                \TRAP ()
                \ACST = \_SB.PCI0.LPC.EC.AC._PSR ()
            }

            If ((Arg0 == 0x04))
            {
                \VHCC = \VHYB (0x07, 0x00)
                \_SB.SLPB._PSW (0x00)
                If ((\PPMF & 0x01))
                {
                    \STEP (0x07)
                }

                \TRAP ()
                TPHY (0x02)
                \AWON (0x04)
            }

            If ((Arg0 == 0x05))
            {
                \TRAP ()
                TPHY (0x02)
                \AWON (0x05)
            }

            \_SB.PCI0.LPC.EC.BPTS (Arg0)
            If ((Arg0 >= 0x04))
            {
                \_SB.PCI0.LPC.EC.HWLB = 0x00
            }
            Else
            {
                \_SB.PCI0.LPC.EC.HWLB = 0x01
            }

            If ((Arg0 != 0x05))
            {
                \_SB.PCI0.LPC.EC.HCMU = 0x01
                \_SB.PCI0.EXP4.PDSF = \_SB.PCI0.EXP4.PDS
            }

            \_SB.PCI0.LPC.EC.HKEY.WGPS (Arg0)
        }
    }

    Name (WAKI, Package (0x02)
    {
        0x00, 
        0x00
    })
    Method (\_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (((Arg0 == 0x00) || (Arg0 >= 0x05)))
        {
            Return (WAKI) /* \WAKI */
        }

        \SPS = 0x00
        \_SB.PCI0.LPC.EC.HCMU = 0x00
        \_SB.PCI0.LPC.EC.EVNT (0x01)
        \_SB.PCI0.LPC.EC.HKEY.MHKE (0x01)
        \_SB.PCI0.LPC.EC.FNST ()
        \UCMS (0x0D)
        \LIDB = 0x00
        If ((Arg0 == 0x01))
        {
            \FNID = \_SB.PCI0.LPC.EC.HFNI
        }

        If ((Arg0 == 0x03))
        {
            \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            If ((\ACST != \_SB.PCI0.LPC.EC.AC._PSR ()))
            {
                \_SB.PCI0.LPC.EC.ATMC ()
            }

            \VHYB (0x06, \VHCC)
            If (\_SB.PCI0.VID.ISOP ())
            {
                \VHYB (0x09, \_SB.PCI0.PEG.VID.HDAS)
            }

            If (\VIGD)
            {
                \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
                If (\WVIS)
                {
                    \VBTD ()
                }
            }
            ElseIf (\WVIS)
            {
                \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
                \VBTD ()
            }

            \AWON (0x00)
            If (\CMPR)
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
                \CMPR = 0x00
            }
        }

        If ((Arg0 == 0x04))
        {
            \NVSS (0x00)
            \_SB.PCI0.LPC.EC.HSPA = 0x00
            \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            If ((\PPMF & 0x01))
            {
                \STEP (0x08)
            }

            \_SB.PCI0.LPC.EC.ATMC ()
            \VHYB (0x06, \VHCC)
            If (\_SB.PCI0.VID.ISOP ())
            {
                \VHYB (0x09, \_SB.PCI0.PEG.VID.HDAS)
            }
        }

        If ((\_SB.PCI0.EXP4.PDS ^ \_SB.PCI0.EXP4.PDSF))
        {
            \_SB.PCI0.EXP4.PDSF = \_SB.PCI0.EXP4.PDS
            Notify (\_SB.PCI0.EXP4, 0x00) // Bus Check
        }

        \_SB.PCI0.LPC.EC.BATW (Arg0)
        \_SB.PCI0.LPC.EC.BWAK (Arg0)
        \_SB.PCI0.LPC.EC.HKEY.WGWK (Arg0)
        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
        \VSLD (\_SB.LID._LID ())
        If (\VIGD)
        {
            \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
        }
        ElseIf (\WVIS)
        {
            \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
        }

        If ((Arg0 < 0x04))
        {
            If ((\RRBF & 0x02))
            {
                Local0 = (Arg0 << 0x08)
                Local0 = (0x2013 | Local0)
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
            }
        }

        If ((Arg0 == 0x04))
        {
            Local0 = 0x00
            Local1 = \CSUM (0x00)
            If ((Local1 != \CHKC))
            {
                Local0 = 0x01
                \CHKC = Local1
            }

            Local1 = \CSUM (0x01)
            If ((Local1 != \CHKE))
            {
                Local0 = 0x01
                \CHKE = Local1
            }

            If (Local0)
            {
                Notify (\_SB, 0x00) // Bus Check
            }
        }

        \RRBF = Zero
        Return (WAKI) /* \WAKI */
    }

    Scope (\_SI)
    {
        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            If ((Arg0 == 0x00))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0x00)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If ((Arg0 == 0x01))
            {
                If ((\SPS || \WNTF))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x05)
                }

                \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If ((Arg0 == 0x02))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
            }

            If ((Arg0 == 0x03))
            {
                If ((\SPS > 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x07)
                }
                ElseIf ((\SPS == 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x03)
                }
                Else
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x04)
                }

                If ((\SPS == 0x03)){}
                Else
                {
                    \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                }

                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
            }

            If ((Arg0 == 0x04))
            {
                \_SB.PCI0.LPC.EC.BEEP (0x03)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Local0 = \_SB.PCI0.LPC.EC.HWAK
            \RRBF = Local0
            Sleep (0x0A)
            If ((Local0 & 0x02)){}
            If ((Local0 & 0x04))
            {
                Notify (\_SB.LID, 0x02) // Device Wake
            }

            If ((Local0 & 0x08))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }

            If ((Local0 & 0x10))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }

            If ((Local0 & 0x40)){}
            If ((Local0 & 0x80))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (\_SB.PCI0.EXP1.PS)
            {
                \_SB.PCI0.EXP1.PS = 0x01
                \_SB.PCI0.EXP1.PMCS = 0x01
                Notify (\_SB.PCI0.EXP1, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP2.PS)
            {
                \_SB.PCI0.EXP2.PS = 0x01
                \_SB.PCI0.EXP2.PMCS = 0x01
                Notify (\_SB.PCI0.EXP2, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP3.PS)
            {
                \_SB.PCI0.EXP3.PS = 0x01
                \_SB.PCI0.EXP3.PMCS = 0x01
                Notify (\_SB.PCI0.EXP3, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP4.PS)
            {
                \_SB.PCI0.EXP4.PS = 0x01
                \_SB.PCI0.EXP4.PMCS = 0x01
                Notify (\_SB.PCI0.EXP4, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP5.PS)
            {
                \_SB.PCI0.EXP5.PS = 0x01
                \_SB.PCI0.EXP5.PMCS = 0x01
                Notify (\_SB.PCI0.EXP5, 0x02) // Device Wake
            }
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (\_SB.PCI0.EXP4.HPCS)
            {
                Sleep (0x64)
                \_SB.PCI0.EXP4.HPCS = 0x01
                If (\_SB.PCI0.EXP4.PDC)
                {
                    \_SB.PCI0.EXP4.PDC = 0x01
                    \_SB.PCI0.EXP4.PDSF = \_SB.PCI0.EXP4.PDS
                    Notify (\_SB.PCI0.EXP4, 0x00) // Bus Check
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            \_SB.PCI0.LPC.SWGE = 0x00
            If ((\CWUE && (\SWGP & 0x02)))
            {
                \SWGP &= ~0x02
                If (\OSC4)
                {
                    \PNTF (0x81)
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (\_SB.PCI0.VID.GSSE)
            {
                \_SB.PCI0.VID.GSCI ()
            }
            Else
            {
                \_SB.PCI0.LPC.SCIS = 0x01
            }
        }
    }

    Scope (\_SB.PCI0.LPC.EC.HKEY)
    {
        Method (MHQT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                If ((Arg0 == 0x00))
                {
                    Local0 = \TATC
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x01))
                {
                    Local0 = \TDFA
                    Local0 += (\TDTA << 0x04)
                    Local0 += (\TDFD << 0x08)
                    Local0 += (\TDTD << 0x0C)
                    Local0 += (\TNFT << 0x10)
                    Local0 += (\TNTT << 0x14)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x02))
                {
                    Local0 = \TCFA
                    Local0 += (\TCTA << 0x04)
                    Local0 += (\TCFD << 0x08)
                    Local0 += (\TCTD << 0x0C)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                ElseIf ((Arg0 == 0x04))
                {
                    Local0 = \TATW
                    Return (Local0)
                }
                Else
                {
                    Noop
                }
            }

            Return (0x00)
        }

        Method (MHAT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                Local0 = (Arg0 & 0xFF)
                If (!ATMV (Local0))
                {
                    Return (0x00)
                }

                Local0 = ((Arg0 >> 0x08) & 0xFF)
                If (!ATMV (Local0))
                {
                    Return (0x00)
                }

                \TCFA = (Arg0 & 0x0F)
                \TCTA = ((Arg0 >> 0x04) & 0x0F)
                \TCFD = ((Arg0 >> 0x08) & 0x0F)
                \TCTD = ((Arg0 >> 0x0C) & 0x0F)
                ATMC ()
                Return (0x01)
            }

            Return (0x00)
        }

        Method (MHGT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                Local0 = 0x01000000
                If (\FTPS)
                {
                    Local0 |= 0x02000000
                }

                Local0 += (\TSFT << 0x10)
                Local0 += (\TSTT << 0x14)
                Local1 = (Arg0 & 0xFF)
                If (!ATMV (Local1))
                {
                    Local0 |= 0xFFFF
                    Return (Local0)
                }

                Local1 = (Arg0 & 0x0F)
                If ((Local1 == 0x00))
                {
                    Local0 += \TIF0
                }
                ElseIf ((Local1 == 0x01))
                {
                    Local0 += \TIF1
                }
                ElseIf ((Local1 == 0x02))
                {
                    Local0 += \TIF2
                }
                Else
                {
                    Local0 += 0xFF
                }

                Local1 = ((Arg0 >> 0x04) & 0x0F)
                If ((Local1 == 0x00))
                {
                    Local0 += (\TIT0 << 0x08)
                }
                ElseIf ((Local1 == 0x01))
                {
                    Local0 += (\TIT1 << 0x08)
                }
                ElseIf ((Local1 == 0x02))
                {
                    Local0 += (\TIT2 << 0x08)
                }
                Else
                {
                    Local0 += (0xFF << 0x08)
                }

                Return (Local0)
            }

            Return (0x00)
        }

        Method (ATMV, 1, NotSerialized)
        {
            Local1 = (Arg0 & 0x0F)
            Local0 = \TNFT
            If ((Local1 >= Local0))
            {
                Return (0x00)
            }

            Local2 = ((Arg0 >> 0x04) & 0x0F)
            Local0 = \TNTT
            If ((Local2 >= Local0))
            {
                Return (0x00)
            }

            If (\TATL)
            {
                If ((Local1 ^ Local2))
                {
                    Return (0x00)
                }
            }

            Return (0x01)
        }

        Method (MHST, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPC.EC.HSPD
            Return (Local0)
        }

        Method (MHTT, 0, NotSerialized)
        {
            Acquire (BFWM, 0xFFFF)
            \GCTP ()
            CreateByteField (\BFWB, 0x03, TMP3)
            CreateByteField (\BFWB, 0x0B, TMPB)
            If (\VIGD)
            {
                Local0 = 0x00
            }
            Else
            {
                Local0 = TMP3 /* \_SB_.PCI0.LPC_.EC__.HKEY.MHTT.TMP3 */
                Local0 <<= 0x08
            }

            Local0 |= TMPB /* \_SB_.PCI0.LPC_.EC__.HKEY.MHTT.TMPB */
            Local0 <<= 0x08
            Local0 |= \_SB.PCI0.LPC.EC.TMP0
            Release (BFWM)
            Return (Local0)
        }

        Method (MHBT, 0, NotSerialized)
        {
            Name (ABUF, Buffer (0x10){})
            ATMS (0x00)
            ABUF = \ATMB
            Return (ABUF) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHBT.ABUF */
        }

        Method (MHFT, 1, NotSerialized)
        {
            FSCT (Arg0)
        }

        Method (MHCT, 1, NotSerialized)
        {
            Local0 = 0x00
            If (\SPEN)
            {
                Local0 = \LWST
                Local0++
                Local0 <<= 0x08
            }

            Local1 = 0x08
            Local1 <<= 0x08
            If ((Arg0 == 0xFFFFFFFF))
            {
                Local1 |= \TPCR
                If (\SPEN)
                {
                    Local0 |= \PPCR
                    If (!(\PPMF && 0x02000000))
                    {
                        Local1 |= 0x80
                    }

                    If (!(\PPMF && 0x08000000))
                    {
                        Local1 |= 0x40
                    }
                }
                Else
                {
                    Local1 |= 0xC0
                }
            }
            Else
            {
                If ((\OSPX && \SPEN))
                {
                    Local2 = (Arg0 & 0x00FF0000)
                    Local2 >>= 0x10
                    Local0 |= Local2
                    If ((Local2 ^ \PPCR))
                    {
                        \PPCA = Local2
                        \PNTF (0x80)
                    }
                }

                If (\WVIS)
                {
                    Local2 = (Arg0 & 0x1F)
                    Local1 |= Local2
                    If ((Local2 ^ \TPCR))
                    {
                        \TPCA = Local2
                        \PNTF (0x82)
                    }
                }
            }

            Local0 <<= 0x10
            Local0 |= Local1
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (ATMC, 0, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                If (HPAC)
                {
                    Local0 = \TCFA
                    Local1 = \TCTA
                    Local2 = ((Local1 << 0x04) | Local0)
                    Local3 = (Local2 ^ ATMX) /* \_SB_.PCI0.LPC_.EC__.ATMX */
                    ATMX = Local2
                    If ((\TCTA == 0x00))
                    {
                        \TCRT = \TCR0
                        \TPSV = \TPS0
                    }
                    ElseIf ((\TCTA == 0x01))
                    {
                        \TCRT = \TCR1
                        \TPSV = \TPS1
                    }
                    Else
                    {
                    }
                }
                Else
                {
                    Local0 = \TCFD
                    Local1 = \TCTD
                    Local2 = ((Local1 << 0x04) | Local0)
                    Local3 = (Local2 ^ ATMX) /* \_SB_.PCI0.LPC_.EC__.ATMX */
                    ATMX = Local2
                    If ((\TCTD == 0x00))
                    {
                        \TCRT = \TCR0
                        \TPSV = \TPS0
                    }
                    ElseIf ((\TCTD == 0x01))
                    {
                        \TCRT = \TCR1
                        \TPSV = \TPS1
                    }
                    Else
                    {
                    }
                }

                If ((\PPMF & 0x02000000))
                {
                    Local4 = \FTPS
                    If (Local2)
                    {
                        \FTPS = 0x00
                    }
                    Else
                    {
                        \FTPS = 0x01
                    }

                    If ((\FTPS ^ Local4))
                    {
                        If (\OSPX)
                        {
                            \PNTF (0x80)
                        }
                    }
                }

                If (Local3)
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
                    }
                }

                Notify (\_TZ.THM0, 0x81) // Thermal Trip Point Change
            }
        }
    }

    Scope (\_TZ)
    {
        ThermalZone (THM0)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\TCRT)
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (\TPSV)
            }

            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (\TTC1)
            }

            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (\TTC2)
            }

            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (\TTSP)
            }

            Method (_PSL, 0, NotSerialized)  // _PSL: Passive List
            {
                If ((\PPMF & 0x01000000))
                {
                    If ((\PNHM == 0x000106E0))
                    {
                        Return (Package (0x08)
                        {
                            \_PR.CPU0, 
                            \_PR.CPU1, 
                            \_PR.CPU2, 
                            \_PR.CPU3, 
                            \_PR.CPU4, 
                            \_PR.CPU5, 
                            \_PR.CPU6, 
                            \_PR.CPU7
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            \_PR.CPU0, 
                            \_PR.CPU1, 
                            \_PR.CPU2, 
                            \_PR.CPU3
                        })
                    }
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.TMP0
                    Local1 = \_SB.PCI0.LPC.EC.TSL2
                    Local2 = \_SB.PCI0.LPC.EC.TSL3
                }
                Else
                {
                    Local0 = \RBEC (0x78)
                    Local1 = (\RBEC (0x8A) & 0x7F)
                    Local2 = (\RBEC (0x8B) & 0x7F)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = 0x30
                }

                If (Local2)
                {
                    Return (C2K (0x80))
                }

                If (!\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    If (Local1)
                    {
                        Return (C2K (0x80))
                    }
                }

                Return (C2K (Local0))
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Local0 = ((Arg0 * 0x0A) + 0x0AAC)
            If ((Local0 <= 0x0AAC))
            {
                Local0 = 0x0BB8
            }

            If ((Local0 > 0x0FAC))
            {
                Local0 = 0x0BB8
            }

            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (\_TZ.THM0, 0x80) // Thermal Status Change
            If (\H8DR)
            {
                Local1 = \_SB.PCI0.LPC.EC.TSL2
            }
            Else
            {
                Local1 = (\RBEC (0x8A) & 0x7F)
            }

            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                If (Local1)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6022)
                }
            }

            If (VIGD)
            {
                Noop
            }
            Else
            {
                \VTHR ()
            }

            If ((\PPMF & 0x01))
            {
                If (\OSPX)
                {
                    \PNTF (0x80)
                }
                Else
                {
                    Local2 = (\_SB.PCI0.LPC.EC.TSL0 & 0x77)
                    If (Local2)
                    {
                        \STEP (0x09)
                    }
                    Else
                    {
                        \STEP (0x0A)
                    }
                }
            }
        }
    }

    Name (GPIC, 0x00)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        \GPIC = Arg0
    }

    OperationRegion (SMI0, SystemIO, 0xB2, 0x01)
    Field (SMI0, ByteAcc, NoLock, Preserve)
    {
        APMC,   8
    }

    Field (MNVS, AnyAcc, NoLock, Preserve)
    {
        Offset (0xFC0), 
        CMD,    8, 
        ERR,    32, 
        PAR0,   32, 
        PAR1,   32, 
        PAR2,   32, 
        PAR3,   32
    }

    Mutex (MSMI, 0x07)
    Method (SMI, 5, NotSerialized)
    {
        Acquire (MSMI, 0xFFFF)
        CMD = Arg0
        PAR0 = Arg1
        PAR1 = Arg2
        PAR2 = Arg3
        PAR3 = Arg4
        APMC = 0xF5
        While ((ERR == 0x01))
        {
            Sleep (0x64)
            APMC = 0xF5
        }

        Local0 = PAR0 /* \PAR0 */
        Release (MSMI)
        Return (Local0)
    }

    Method (RPCI, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x00, Arg0, 0x00, 0x00))
    }

    Method (WPCI, 2, NotSerialized)
    {
        SMI (0x00, 0x01, Arg0, Arg1, 0x00)
    }

    Method (MPCI, 3, NotSerialized)
    {
        SMI (0x00, 0x02, Arg0, Arg1, Arg2)
    }

    Method (RBEC, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x03, Arg0, 0x00, 0x00))
    }

    Method (WBEC, 2, NotSerialized)
    {
        SMI (0x00, 0x04, Arg0, Arg1, 0x00)
    }

    Method (MBEC, 3, NotSerialized)
    {
        SMI (0x00, 0x05, Arg0, Arg1, Arg2)
    }

    Method (RISA, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x06, Arg0, 0x00, 0x00))
    }

    Method (WISA, 2, NotSerialized)
    {
        SMI (0x00, 0x07, Arg0, Arg1, 0x00)
    }

    Method (MISA, 3, NotSerialized)
    {
        SMI (0x00, 0x08, Arg0, Arg1, Arg2)
    }

    Method (VEXP, 0, NotSerialized)
    {
        SMI (0x01, 0x00, 0x00, 0x00, 0x00)
    }

    Method (VUPS, 1, NotSerialized)
    {
        SMI (0x01, 0x01, Arg0, 0x00, 0x00)
    }

    Method (VSDS, 2, NotSerialized)
    {
        SMI (0x01, 0x02, Arg0, Arg1, 0x00)
    }

    Method (VDDC, 0, NotSerialized)
    {
        SMI (0x01, 0x03, 0x00, 0x00, 0x00)
    }

    Method (VVPD, 1, NotSerialized)
    {
        SMI (0x01, 0x04, Arg0, 0x00, 0x00)
    }

    Method (VNRS, 1, NotSerialized)
    {
        SMI (0x01, 0x05, Arg0, 0x00, 0x00)
    }

    Method (GLPW, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x06, 0x00, 0x00, 0x00))
    }

    Method (VSLD, 1, NotSerialized)
    {
        SMI (0x01, 0x07, Arg0, 0x00, 0x00)
    }

    Method (VEVT, 1, NotSerialized)
    {
        Return (SMI (0x01, 0x08, Arg0, 0x00, 0x00))
    }

    Method (VTHR, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x09, 0x00, 0x00, 0x00))
    }

    Method (VBRC, 1, NotSerialized)
    {
        SMI (0x01, 0x0A, Arg0, 0x00, 0x00)
    }

    Method (VBRG, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0E, 0x00, 0x00, 0x00))
    }

    Method (VBTD, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0F, 0x00, 0x00, 0x00))
    }

    Method (VHYB, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x10, Arg0, Arg1, 0x00))
    }

    Method (VDYN, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x11, Arg0, Arg1, 0x00))
    }

    Method (UCMS, 1, NotSerialized)
    {
        Return (SMI (0x02, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BHDP, 2, NotSerialized)
    {
        Return (SMI (0x03, 0x00, Arg0, Arg1, 0x00))
    }

    Method (STEP, 1, NotSerialized)
    {
        SMI (0x04, Arg0, 0x00, 0x00, 0x00)
    }

    Method (TRAP, 0, NotSerialized)
    {
        SMI (0x05, 0x00, 0x00, 0x00, 0x00)
    }

    Method (CBRI, 0, NotSerialized)
    {
        SMI (0x05, 0x01, 0x00, 0x00, 0x00)
    }

    Method (BCHK, 0, NotSerialized)
    {
        Return (SMI (0x05, 0x04, 0x00, 0x00, 0x00))
    }

    Method (BYRS, 0, NotSerialized)
    {
        SMI (0x05, 0x05, 0x00, 0x00, 0x00)
    }

    Method (BLTH, 1, NotSerialized)
    {
        Return (SMI (0x06, Arg0, 0x00, 0x00, 0x00))
    }

    Method (FISP, 0, NotSerialized)
    {
        SMI (0x07, 0x00, 0x00, 0x00, 0x00)
    }

    Method (ATCC, 1, NotSerialized)
    {
        SMI (0x08, Arg0, 0x00, 0x00, 0x00)
    }

    Method (WGSV, 1, NotSerialized)
    {
        Return (SMI (0x09, Arg0, 0x00, 0x00, 0x00))
    }

    Method (ATMS, 1, NotSerialized)
    {
        Return (SMI (0x0A, 0x03, 0x00, 0x00, 0x00))
    }

    Method (FSCT, 1, NotSerialized)
    {
        Return (SMI (0x0A, 0x04, Arg0, 0x00, 0x00))
    }

    Method (SWTT, 1, NotSerialized)
    {
        If (SMI (0x0A, 0x05, Arg0, 0x00, 0x00))
        {
            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
            }
        }
    }

    Method (GCTP, 0, NotSerialized)
    {
        SMI (0x0A, 0x06, 0x00, 0x00, 0x00)
    }

    Method (PPMS, 1, NotSerialized)
    {
        Return (SMI (0x0B, Arg0, 0x00, 0x00, 0x00))
    }

    Method (TRAZ, 2, NotSerialized)
    {
        SMIF = Arg1
        If ((Arg0 == 0x01))
        {
            \_SB.PCI0.LPC.TRPI = 0x00
        }

        Return (SMIF) /* \SMIF */
    }

    Method (TPHY, 1, NotSerialized)
    {
        SMI (0x0C, Arg0, 0x00, 0x00, 0x00)
    }

    Method (CSUM, 1, NotSerialized)
    {
        Return (SMI (0x0E, Arg0, 0x00, 0x00, 0x00))
    }

    Method (NVSS, 1, NotSerialized)
    {
        Return (SMI (0x0F, Arg0, 0x00, 0x00, 0x00))
    }

    Method (WMIS, 2, NotSerialized)
    {
        Return (SMI (0x10, Arg0, Arg1, 0x00, 0x00))
    }

    Method (AWON, 1, NotSerialized)
    {
        Return (SMI (0x12, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PMON, 2, NotSerialized)
    {
        Local0 = SizeOf (Arg0)
        Name (TSTR, Buffer (Local0){})
        TSTR = Arg0
        \DBGS = TSTR /* \PMON.TSTR */
        SMI (0x11, Arg1, 0x00, 0x00, 0x00)
    }

    Method (UAWS, 1, NotSerialized)
    {
        Return (SMI (0x13, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BFWC, 1, NotSerialized)
    {
        Return (SMI (0x14, 0x00, Arg0, 0x00, 0x00))
    }

    Method (BFWP, 0, NotSerialized)
    {
        Return (SMI (0x14, 0x01, 0x00, 0x00, 0x00))
    }

    Method (BFWL, 0, NotSerialized)
    {
        SMI (0x14, 0x02, 0x00, 0x00, 0x00)
    }

    Method (BFWG, 1, NotSerialized)
    {
        SMI (0x14, 0x03, Arg0, 0x00, 0x00)
    }

    Method (BDMC, 1, NotSerialized)
    {
        SMI (0x14, 0x04, Arg0, 0x00, 0x00)
    }

    Method (DPIO, 2, NotSerialized)
    {
        If (!Arg0)
        {
            Return (0x00)
        }

        If ((Arg0 > 0xF0))
        {
            Return (0x00)
        }

        If ((Arg0 > 0xB4))
        {
            If (Arg1)
            {
                Return (0x02)
            }
            Else
            {
                Return (0x01)
            }
        }

        If ((Arg0 > 0x78))
        {
            Return (0x03)
        }

        Return (0x04)
    }

    Method (DUDM, 2, NotSerialized)
    {
        If (!Arg1)
        {
            Return (0xFF)
        }

        If ((Arg0 > 0x5A))
        {
            Return (0x00)
        }

        If ((Arg0 > 0x3C))
        {
            Return (0x01)
        }

        If ((Arg0 > 0x2D))
        {
            Return (0x02)
        }

        If ((Arg0 > 0x1E))
        {
            Return (0x03)
        }

        If ((Arg0 > 0x14))
        {
            Return (0x04)
        }

        Return (0x05)
    }

    Method (DMDM, 2, NotSerialized)
    {
        If (Arg1)
        {
            Return (0x00)
        }

        If (!Arg0)
        {
            Return (0x00)
        }

        If ((Arg0 > 0x96))
        {
            Return (0x01)
        }

        If ((Arg0 > 0x78))
        {
            Return (0x02)
        }

        Return (0x03)
    }

    Method (UUDM, 2, NotSerialized)
    {
        If (!(Arg0 & 0x04))
        {
            Return (0x00)
        }

        If ((Arg1 & 0x20))
        {
            Return (0x14)
        }

        If ((Arg1 & 0x10))
        {
            Return (0x1E)
        }

        If ((Arg1 & 0x08))
        {
            Return (0x2D)
        }

        If ((Arg1 & 0x04))
        {
            Return (0x3C)
        }

        If ((Arg1 & 0x02))
        {
            Return (0x5A)
        }

        If ((Arg1 & 0x01))
        {
            Return (0x78)
        }

        Return (0x00)
    }

    Method (UMDM, 4, NotSerialized)
    {
        If (!(Arg0 & 0x02))
        {
            Return (0x00)
        }

        If ((Arg1 & 0x04))
        {
            Return (Arg3)
        }

        If ((Arg1 & 0x02))
        {
            If ((Arg3 <= 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If ((Arg2 & 0x04))
        {
            If ((Arg3 <= 0xB4))
            {
                Return (0xF0)
            }
            Else
            {
                Return (Arg3)
            }
        }

        Return (0x00)
    }

    Method (UPIO, 4, NotSerialized)
    {
        If (!(Arg0 & 0x02))
        {
            If ((Arg2 == 0x02))
            {
                Return (0xF0)
            }
            Else
            {
                Return (0x0384)
            }
        }

        If ((Arg1 & 0x02))
        {
            Return (Arg3)
        }

        If ((Arg1 & 0x01))
        {
            If ((Arg3 <= 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If ((Arg2 == 0x02))
        {
            Return (0xF0)
        }
        Else
        {
            Return (0x0384)
        }
    }

    Method (FDMA, 2, NotSerialized)
    {
        If ((Arg1 != 0xFF))
        {
            Return ((Arg1 | 0x40))
        }

        If ((Arg0 >= 0x03))
        {
            Return (((Arg0 - 0x02) | 0x20))
        }

        If (Arg0)
        {
            Return (0x12)
        }

        Return (0x00)
    }

    Method (FPIO, 1, NotSerialized)
    {
        If ((Arg0 >= 0x03))
        {
            Return ((Arg0 | 0x08))
        }

        If ((Arg0 == 0x01))
        {
            Return (0x01)
        }

        Return (0x00)
    }

    Method (SCMP, 2, NotSerialized)
    {
        Local0 = SizeOf (Arg0)
        If ((Local0 != SizeOf (Arg1)))
        {
            Return (One)
        }

        Local0++
        Name (STR1, Buffer (Local0){})
        Name (STR2, Buffer (Local0){})
        STR1 = Arg0
        STR2 = Arg1
        Local1 = Zero
        While ((Local1 < Local0))
        {
            Local2 = DerefOf (STR1 [Local1])
            Local3 = DerefOf (STR2 [Local1])
            If ((Local2 != Local3))
            {
                Return (One)
            }

            Local1++
        }

        Return (Zero)
    }

    Name (SPS, 0x00)
    Name (OSIF, 0x00)
    Name (WNTF, 0x00)
    Name (WXPF, 0x00)
    Name (WVIS, 0x00)
    Name (WIN7, 0x00)
    Name (WIN8, 0x00)
    Name (WSPV, 0x00)
    Name (LNUX, 0x00)
    Name (H8DR, 0x00)
    Name (MEMX, 0x00)
    Name (ACST, 0x00)
    Name (FNID, 0x00)
    Name (RRBF, 0x00)
    Name (NBCF, 0x00)
}

