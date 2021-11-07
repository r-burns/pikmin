.include "macros.inc"

.section .text, "ax"  # 0x80005560 - 0x80221F60
.global EXI2_CallBack
EXI2_CallBack:
/* 80220E2C 0021DD8C  7C 08 02 A6 */	mflr r0
/* 80220E30 0021DD90  90 01 00 04 */	stw r0, 4(r1)
/* 80220E34 0021DD94  38 00 00 01 */	li r0, 1
/* 80220E38 0021DD98  94 21 FF F8 */	stwu r1, -8(r1)
/* 80220E3C 0021DD9C  80 6D 2A F0 */	lwz r3, pucEXI2InputPending@sda21(r13)
/* 80220E40 0021DDA0  98 03 00 00 */	stb r0, 0(r3)
/* 80220E44 0021DDA4  81 8D 34 A8 */	lwz r12, TRK_Callback@sda21(r13)
/* 80220E48 0021DDA8  28 0C 00 00 */	cmplwi r12, 0
/* 80220E4C 0021DDAC  41 82 00 10 */	beq lbl_80220E5C
/* 80220E50 0021DDB0  7D 88 03 A6 */	mtlr r12
/* 80220E54 0021DDB4  38 60 00 00 */	li r3, 0
/* 80220E58 0021DDB8  4E 80 00 21 */	blrl 
lbl_80220E5C:
/* 80220E5C 0021DDBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80220E60 0021DDC0  38 21 00 08 */	addi r1, r1, 8
/* 80220E64 0021DDC4  7C 08 03 A6 */	mtlr r0
/* 80220E68 0021DDC8  4E 80 00 20 */	blr 

.global EXI2_Init
EXI2_Init:
/* 80220E6C 0021DDCC  7C 08 02 A6 */	mflr r0
/* 80220E70 0021DDD0  90 01 00 04 */	stw r0, 4(r1)
/* 80220E74 0021DDD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80220E78 0021DDD8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80220E7C 0021DDDC  7C 9F 23 78 */	mr r31, r4
/* 80220E80 0021DDE0  80 0D 2A F0 */	lwz r0, pucEXI2InputPending@sda21(r13)
/* 80220E84 0021DDE4  90 03 00 00 */	stw r0, 0(r3)
/* 80220E88 0021DDE8  4B FD 80 F5 */	bl OSDisableInterrupts
/* 80220E8C 0021DDEC  93 ED 34 A8 */	stw r31, TRK_Callback@sda21(r13)
/* 80220E90 0021DDF0  4B FD 81 15 */	bl OSRestoreInterrupts
/* 80220E94 0021DDF4  4B FF FF 59 */	bl AmcEXIInit
/* 80220E98 0021DDF8  3C 80 01 00 */	lis r4, 0x01000003@ha
/* 80220E9C 0021DDFC  38 60 00 00 */	li r3, 0
/* 80220EA0 0021DE00  38 04 00 03 */	addi r0, r4, 0x01000003@l
/* 80220EA4 0021DE04  90 61 00 20 */	stw r3, 0x20(r1)
/* 80220EA8 0021DE08  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80220EAC 0021DE0C  48 00 00 0C */	b lbl_80220EB8
lbl_80220EB0:
/* 80220EB0 0021DE10  38 60 00 05 */	li r3, 5
/* 80220EB4 0021DE14  4B FF FD C1 */	bl AmcEXISelect
lbl_80220EB8:
/* 80220EB8 0021DE18  2C 03 00 00 */	cmpwi r3, 0
/* 80220EBC 0021DE1C  41 82 FF F4 */	beq lbl_80220EB0
/* 80220EC0 0021DE20  3C 00 80 00 */	lis r0, 0x8000
/* 80220EC4 0021DE24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80220EC8 0021DE28  38 61 00 10 */	addi r3, r1, 0x10
/* 80220ECC 0021DE2C  38 80 00 02 */	li r4, 2
/* 80220ED0 0021DE30  38 A0 00 01 */	li r5, 1
/* 80220ED4 0021DE34  38 C0 00 00 */	li r6, 0
/* 80220ED8 0021DE38  4B FF F9 15 */	bl AmcEXIImm
/* 80220EDC 0021DE3C  4B FF FB 55 */	bl AmcEXISync
/* 80220EE0 0021DE40  38 61 00 1C */	addi r3, r1, 0x1c
/* 80220EE4 0021DE44  38 80 00 04 */	li r4, 4
/* 80220EE8 0021DE48  38 A0 00 01 */	li r5, 1
/* 80220EEC 0021DE4C  38 C0 00 00 */	li r6, 0
/* 80220EF0 0021DE50  4B FF F8 FD */	bl AmcEXIImm
/* 80220EF4 0021DE54  4B FF FB 3D */	bl AmcEXISync
/* 80220EF8 0021DE58  38 61 00 20 */	addi r3, r1, 0x20
/* 80220EFC 0021DE5C  38 80 00 04 */	li r4, 4
/* 80220F00 0021DE60  38 A0 00 01 */	li r5, 1
/* 80220F04 0021DE64  38 C0 00 00 */	li r6, 0
/* 80220F08 0021DE68  4B FF F8 E5 */	bl AmcEXIImm
/* 80220F0C 0021DE6C  4B FF FB 25 */	bl AmcEXISync
/* 80220F10 0021DE70  4B FF FD E5 */	bl AmcEXIDeselect
/* 80220F14 0021DE74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80220F18 0021DE78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80220F1C 0021DE7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80220F20 0021DE80  7C 08 03 A6 */	mtlr r0
/* 80220F24 0021DE84  4E 80 00 20 */	blr 

.global EXI2_EnableInterrupts
EXI2_EnableInterrupts:
/* 80220F28 0021DE88  7C 08 02 A6 */	mflr r0
/* 80220F2C 0021DE8C  3C 60 80 22 */	lis r3, EXI2_CallBack@ha
/* 80220F30 0021DE90  90 01 00 04 */	stw r0, 4(r1)
/* 80220F34 0021DE94  38 63 0E 2C */	addi r3, r3, EXI2_CallBack@l
/* 80220F38 0021DE98  94 21 FF F8 */	stwu r1, -8(r1)
/* 80220F3C 0021DE9C  4B FF FC CD */	bl AmcEXISetExiCallback
/* 80220F40 0021DEA0  4B FF FE 6D */	bl AmcEXIEnableInterrupts
/* 80220F44 0021DEA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80220F48 0021DEA8  38 21 00 08 */	addi r1, r1, 8
/* 80220F4C 0021DEAC  7C 08 03 A6 */	mtlr r0
/* 80220F50 0021DEB0  4E 80 00 20 */	blr 

.global EXI2_Poll
EXI2_Poll:
/* 80220F54 0021DEB4  7C 08 02 A6 */	mflr r0
/* 80220F58 0021DEB8  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 80220F5C 0021DEBC  90 01 00 04 */	stw r0, 4(r1)
/* 80220F60 0021DEC0  80 03 30 00 */	lwz r0, 0xCC003000@l(r3)
/* 80220F64 0021DEC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80220F68 0021DEC8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80220F6C 0021DECC  40 82 00 20 */	bne lbl_80220F8C
/* 80220F70 0021DED0  80 6D 2A F0 */	lwz r3, pucEXI2InputPending@sda21(r13)
/* 80220F74 0021DED4  88 03 00 00 */	lbz r0, 0(r3)
/* 80220F78 0021DED8  28 00 00 00 */	cmplwi r0, 0
/* 80220F7C 0021DEDC  40 82 00 10 */	bne lbl_80220F8C
/* 80220F80 0021DEE0  38 00 00 00 */	li r0, 0
/* 80220F84 0021DEE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80220F88 0021DEE8  48 00 00 C0 */	b lbl_80221048
lbl_80220F8C:
/* 80220F8C 0021DEEC  80 0D 34 A4 */	lwz r0, fExi2Selected@sda21(r13)
/* 80220F90 0021DEF0  2C 00 00 00 */	cmpwi r0, 0
/* 80220F94 0021DEF4  40 82 00 74 */	bne lbl_80221008
/* 80220F98 0021DEF8  38 60 00 00 */	li r3, 0
/* 80220F9C 0021DEFC  48 00 00 0C */	b lbl_80220FA8
lbl_80220FA0:
/* 80220FA0 0021DF00  38 60 00 05 */	li r3, 5
/* 80220FA4 0021DF04  4B FF FC D1 */	bl AmcEXISelect
lbl_80220FA8:
/* 80220FA8 0021DF08  2C 03 00 00 */	cmpwi r3, 0
/* 80220FAC 0021DF0C  41 82 FF F4 */	beq lbl_80220FA0
/* 80220FB0 0021DF10  40 82 00 18 */	bne lbl_80220FC8
/* 80220FB4 0021DF14  3C 60 80 2F */	lis r3, lbl_802E9610@ha
/* 80220FB8 0021DF18  4C C6 31 82 */	crclr 6
/* 80220FBC 0021DF1C  38 63 96 10 */	addi r3, r3, lbl_802E9610@l
/* 80220FC0 0021DF20  4B FF 57 A1 */	bl printf
/* 80220FC4 0021DF24  48 00 00 44 */	b lbl_80221008
lbl_80220FC8:
/* 80220FC8 0021DF28  38 60 00 01 */	li r3, 1
/* 80220FCC 0021DF2C  38 00 00 00 */	li r0, 0
/* 80220FD0 0021DF30  90 6D 34 A4 */	stw r3, fExi2Selected@sda21(r13)
/* 80220FD4 0021DF34  38 61 00 08 */	addi r3, r1, 8
/* 80220FD8 0021DF38  90 01 00 08 */	stw r0, 8(r1)
/* 80220FDC 0021DF3C  38 80 00 02 */	li r4, 2
/* 80220FE0 0021DF40  38 A0 00 01 */	li r5, 1
/* 80220FE4 0021DF44  38 C0 00 00 */	li r6, 0
/* 80220FE8 0021DF48  4B FF F8 05 */	bl AmcEXIImm
/* 80220FEC 0021DF4C  4B FF FA 45 */	bl AmcEXISync
/* 80220FF0 0021DF50  38 61 00 14 */	addi r3, r1, 0x14
/* 80220FF4 0021DF54  38 80 00 02 */	li r4, 2
/* 80220FF8 0021DF58  38 A0 00 00 */	li r5, 0
/* 80220FFC 0021DF5C  38 C0 00 00 */	li r6, 0
/* 80221000 0021DF60  4B FF F7 ED */	bl AmcEXIImm
/* 80221004 0021DF64  4B FF FA 2D */	bl AmcEXISync
lbl_80221008:
/* 80221008 0021DF68  38 61 00 18 */	addi r3, r1, 0x18
/* 8022100C 0021DF6C  38 80 00 04 */	li r4, 4
/* 80221010 0021DF70  38 A0 00 00 */	li r5, 0
/* 80221014 0021DF74  38 C0 00 00 */	li r6, 0
/* 80221018 0021DF78  4B FF F7 D5 */	bl AmcEXIImm
/* 8022101C 0021DF7C  4B FF FA 15 */	bl AmcEXISync
/* 80221020 0021DF80  80 AD 2A F0 */	lwz r5, pucEXI2InputPending@sda21(r13)
/* 80221024 0021DF84  88 05 00 00 */	lbz r0, 0(r5)
/* 80221028 0021DF88  28 00 00 00 */	cmplwi r0, 0
/* 8022102C 0021DF8C  40 82 00 1C */	bne lbl_80221048
/* 80221030 0021DF90  3C 80 CC 00 */	lis r4, 0xCC003000@ha
/* 80221034 0021DF94  80 64 30 00 */	lwz r3, 0xCC003000@l(r4)
/* 80221038 0021DF98  38 00 00 01 */	li r0, 1
/* 8022103C 0021DF9C  98 05 00 00 */	stb r0, 0(r5)
/* 80221040 0021DFA0  54 60 04 E6 */	rlwinm r0, r3, 0, 0x13, 0x13
/* 80221044 0021DFA4  90 04 30 00 */	stw r0, 0x3000(r4)
lbl_80221048:
/* 80221048 0021DFA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022104C 0021DFAC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80221050 0021DFB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80221054 0021DFB4  7C 08 03 A6 */	mtlr r0
/* 80221058 0021DFB8  4E 80 00 20 */	blr 

.global EXI2_ReadN
EXI2_ReadN:
/* 8022105C 0021DFBC  7C 08 02 A6 */	mflr r0
/* 80221060 0021DFC0  90 01 00 04 */	stw r0, 4(r1)
/* 80221064 0021DFC4  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80221068 0021DFC8  BF 21 00 2C */	stmw r25, 0x2c(r1)
/* 8022106C 0021DFCC  3B 23 00 00 */	addi r25, r3, 0
/* 80221070 0021DFD0  3B 44 00 00 */	addi r26, r4, 0
/* 80221074 0021DFD4  80 0D 34 A4 */	lwz r0, fExi2Selected@sda21(r13)
/* 80221078 0021DFD8  2C 00 00 00 */	cmpwi r0, 0
/* 8022107C 0021DFDC  41 82 00 0C */	beq lbl_80221088
/* 80221080 0021DFE0  3B 60 00 01 */	li r27, 1
/* 80221084 0021DFE4  48 00 00 7C */	b lbl_80221100
lbl_80221088:
/* 80221088 0021DFE8  38 60 00 00 */	li r3, 0
/* 8022108C 0021DFEC  48 00 00 0C */	b lbl_80221098
lbl_80221090:
/* 80221090 0021DFF0  38 60 00 05 */	li r3, 5
/* 80221094 0021DFF4  4B FF FB E1 */	bl AmcEXISelect
lbl_80221098:
/* 80221098 0021DFF8  2C 03 00 00 */	cmpwi r3, 0
/* 8022109C 0021DFFC  41 82 FF F4 */	beq lbl_80221090
/* 802210A0 0021E000  7C 7B 1B 78 */	mr r27, r3
/* 802210A4 0021E004  40 82 00 1C */	bne lbl_802210C0
/* 802210A8 0021E008  3C 60 80 2F */	lis r3, lbl_802E9610@ha
/* 802210AC 0021E00C  4C C6 31 82 */	crclr 6
/* 802210B0 0021E010  38 63 96 10 */	addi r3, r3, lbl_802E9610@l
/* 802210B4 0021E014  4B FF 56 AD */	bl printf
/* 802210B8 0021E018  3B 60 00 00 */	li r27, 0
/* 802210BC 0021E01C  48 00 00 44 */	b lbl_80221100
lbl_802210C0:
/* 802210C0 0021E020  38 60 00 01 */	li r3, 1
/* 802210C4 0021E024  38 00 00 00 */	li r0, 0
/* 802210C8 0021E028  90 6D 34 A4 */	stw r3, fExi2Selected@sda21(r13)
/* 802210CC 0021E02C  38 61 00 14 */	addi r3, r1, 0x14
/* 802210D0 0021E030  90 01 00 14 */	stw r0, 0x14(r1)
/* 802210D4 0021E034  38 80 00 02 */	li r4, 2
/* 802210D8 0021E038  38 A0 00 01 */	li r5, 1
/* 802210DC 0021E03C  38 C0 00 00 */	li r6, 0
/* 802210E0 0021E040  4B FF F7 0D */	bl AmcEXIImm
/* 802210E4 0021E044  4B FF F9 4D */	bl AmcEXISync
/* 802210E8 0021E048  38 61 00 1C */	addi r3, r1, 0x1c
/* 802210EC 0021E04C  38 80 00 02 */	li r4, 2
/* 802210F0 0021E050  38 A0 00 00 */	li r5, 0
/* 802210F4 0021E054  38 C0 00 00 */	li r6, 0
/* 802210F8 0021E058  4B FF F6 F5 */	bl AmcEXIImm
/* 802210FC 0021E05C  4B FF F9 35 */	bl AmcEXISync
lbl_80221100:
/* 80221100 0021E060  2C 1B 00 00 */	cmpwi r27, 0
/* 80221104 0021E064  40 82 00 0C */	bne lbl_80221110
/* 80221108 0021E068  38 60 00 01 */	li r3, 1
/* 8022110C 0021E06C  48 00 01 F8 */	b lbl_80221304
lbl_80221110:
/* 80221110 0021E070  57 44 07 BF */	clrlwi. r4, r26, 0x1e
/* 80221114 0021E074  41 82 00 0C */	beq lbl_80221120
/* 80221118 0021E078  38 60 00 01 */	li r3, 1
/* 8022111C 0021E07C  48 00 00 08 */	b lbl_80221124
lbl_80221120:
/* 80221120 0021E080  38 60 00 00 */	li r3, 0
lbl_80221124:
/* 80221124 0021E084  7F 5C 16 70 */	srawi r28, r26, 2
/* 80221128 0021E088  57 40 F0 BE */	srwi r0, r26, 2
/* 8022112C 0021E08C  7F 9C 01 94 */	addze r28, r28
/* 80221130 0021E090  7C 60 1A 14 */	add r3, r0, r3
/* 80221134 0021E094  57 40 07 FE */	clrlwi r0, r26, 0x1f
/* 80221138 0021E098  57 9C 10 3A */	slwi r28, r28, 2
/* 8022113C 0021E09C  7F A4 02 14 */	add r29, r4, r0
/* 80221140 0021E0A0  7F 9C D0 10 */	subfc r28, r28, r26
/* 80221144 0021E0A4  3B E3 FF FF */	addi r31, r3, -1
/* 80221148 0021E0A8  3B 60 00 00 */	li r27, 0
/* 8022114C 0021E0AC  3B C0 00 00 */	li r30, 0
/* 80221150 0021E0B0  48 00 01 84 */	b lbl_802212D4
lbl_80221154:
/* 80221154 0021E0B4  7C 1E F8 40 */	cmplw r30, r31
/* 80221158 0021E0B8  40 80 00 0C */	bge lbl_80221164
/* 8022115C 0021E0BC  38 80 00 04 */	li r4, 4
/* 80221160 0021E0C0  48 00 00 18 */	b lbl_80221178
lbl_80221164:
/* 80221164 0021E0C4  28 1D 00 02 */	cmplwi r29, 2
/* 80221168 0021E0C8  40 82 00 0C */	bne lbl_80221174
/* 8022116C 0021E0CC  38 80 00 02 */	li r4, 2
/* 80221170 0021E0D0  48 00 00 08 */	b lbl_80221178
lbl_80221174:
/* 80221174 0021E0D4  38 80 00 04 */	li r4, 4
lbl_80221178:
/* 80221178 0021E0D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8022117C 0021E0DC  38 A0 00 00 */	li r5, 0
/* 80221180 0021E0E0  38 C0 00 00 */	li r6, 0
/* 80221184 0021E0E4  4B FF F6 69 */	bl AmcEXIImm
/* 80221188 0021E0E8  4B FF F8 A9 */	bl AmcEXISync
/* 8022118C 0021E0EC  7C 1B D0 50 */	subf r0, r27, r26
/* 80221190 0021E0F0  28 00 00 04 */	cmplwi r0, 4
/* 80221194 0021E0F4  41 80 00 0C */	blt lbl_802211A0
/* 80221198 0021E0F8  38 A0 00 04 */	li r5, 4
/* 8022119C 0021E0FC  48 00 00 08 */	b lbl_802211A4
lbl_802211A0:
/* 802211A0 0021E100  7F 85 E3 78 */	mr r5, r28
lbl_802211A4:
/* 802211A4 0021E104  2C 05 00 00 */	cmpwi r5, 0
/* 802211A8 0021E108  38 80 00 00 */	li r4, 0
/* 802211AC 0021E10C  40 81 01 20 */	ble lbl_802212CC
/* 802211B0 0021E110  2C 05 00 08 */	cmpwi r5, 8
/* 802211B4 0021E114  38 65 FF F8 */	addi r3, r5, -8
/* 802211B8 0021E118  40 81 01 40 */	ble lbl_802212F8
/* 802211BC 0021E11C  38 03 00 07 */	addi r0, r3, 7
/* 802211C0 0021E120  54 00 E8 FE */	srwi r0, r0, 3
/* 802211C4 0021E124  2C 03 00 00 */	cmpwi r3, 0
/* 802211C8 0021E128  7C 09 03 A6 */	mtctr r0
/* 802211CC 0021E12C  7C 79 DA 14 */	add r3, r25, r27
/* 802211D0 0021E130  40 81 01 28 */	ble lbl_802212F8
lbl_802211D4:
/* 802211D4 0021E134  20 04 00 03 */	subfic r0, r4, 3
/* 802211D8 0021E138  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 802211DC 0021E13C  54 00 18 38 */	slwi r0, r0, 3
/* 802211E0 0021E140  7C C0 04 30 */	srw r0, r6, r0
/* 802211E4 0021E144  98 03 00 00 */	stb r0, 0(r3)
/* 802211E8 0021E148  38 04 00 01 */	addi r0, r4, 1
/* 802211EC 0021E14C  20 00 00 03 */	subfic r0, r0, 3
/* 802211F0 0021E150  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 802211F4 0021E154  54 06 18 38 */	slwi r6, r0, 3
/* 802211F8 0021E158  38 04 00 02 */	addi r0, r4, 2
/* 802211FC 0021E15C  7C E6 34 30 */	srw r6, r7, r6
/* 80221200 0021E160  98 C3 00 01 */	stb r6, 1(r3)
/* 80221204 0021E164  20 00 00 03 */	subfic r0, r0, 3
/* 80221208 0021E168  54 07 18 38 */	slwi r7, r0, 3
/* 8022120C 0021E16C  81 01 00 20 */	lwz r8, 0x20(r1)
/* 80221210 0021E170  7C C4 00 D0 */	neg r6, r4
/* 80221214 0021E174  38 04 00 04 */	addi r0, r4, 4
/* 80221218 0021E178  7D 07 3C 30 */	srw r7, r8, r7
/* 8022121C 0021E17C  98 E3 00 02 */	stb r7, 2(r3)
/* 80221220 0021E180  21 00 00 03 */	subfic r8, r0, 3
/* 80221224 0021E184  38 04 00 05 */	addi r0, r4, 5
/* 80221228 0021E188  81 21 00 20 */	lwz r9, 0x20(r1)
/* 8022122C 0021E18C  20 E0 00 03 */	subfic r7, r0, 3
/* 80221230 0021E190  54 C6 18 38 */	slwi r6, r6, 3
/* 80221234 0021E194  7D 20 34 30 */	srw r0, r9, r6
/* 80221238 0021E198  98 03 00 03 */	stb r0, 3(r3)
/* 8022123C 0021E19C  38 04 00 06 */	addi r0, r4, 6
/* 80221240 0021E1A0  20 C0 00 03 */	subfic r6, r0, 3
/* 80221244 0021E1A4  81 21 00 20 */	lwz r9, 0x20(r1)
/* 80221248 0021E1A8  38 04 00 07 */	addi r0, r4, 7
/* 8022124C 0021E1AC  55 08 18 38 */	slwi r8, r8, 3
/* 80221250 0021E1B0  7D 28 44 30 */	srw r8, r9, r8
/* 80221254 0021E1B4  99 03 00 04 */	stb r8, 4(r3)
/* 80221258 0021E1B8  20 00 00 03 */	subfic r0, r0, 3
/* 8022125C 0021E1BC  54 E7 18 38 */	slwi r7, r7, 3
/* 80221260 0021E1C0  81 01 00 20 */	lwz r8, 0x20(r1)
/* 80221264 0021E1C4  54 C6 18 38 */	slwi r6, r6, 3
/* 80221268 0021E1C8  54 00 18 38 */	slwi r0, r0, 3
/* 8022126C 0021E1CC  7D 07 3C 30 */	srw r7, r8, r7
/* 80221270 0021E1D0  98 E3 00 05 */	stb r7, 5(r3)
/* 80221274 0021E1D4  38 84 00 08 */	addi r4, r4, 8
/* 80221278 0021E1D8  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 8022127C 0021E1DC  7C E6 34 30 */	srw r6, r7, r6
/* 80221280 0021E1E0  98 C3 00 06 */	stb r6, 6(r3)
/* 80221284 0021E1E4  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 80221288 0021E1E8  7C C0 04 30 */	srw r0, r6, r0
/* 8022128C 0021E1EC  98 03 00 07 */	stb r0, 7(r3)
/* 80221290 0021E1F0  38 63 00 08 */	addi r3, r3, 8
/* 80221294 0021E1F4  42 00 FF 40 */	bdnz lbl_802211D4
/* 80221298 0021E1F8  48 00 00 60 */	b lbl_802212F8
lbl_8022129C:
/* 8022129C 0021E1FC  7C 04 28 50 */	subf r0, r4, r5
/* 802212A0 0021E200  7C 04 28 00 */	cmpw r4, r5
/* 802212A4 0021E204  7C 09 03 A6 */	mtctr r0
/* 802212A8 0021E208  40 80 00 24 */	bge lbl_802212CC
lbl_802212AC:
/* 802212AC 0021E20C  20 04 00 03 */	subfic r0, r4, 3
/* 802212B0 0021E210  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802212B4 0021E214  54 00 18 38 */	slwi r0, r0, 3
/* 802212B8 0021E218  7C 60 04 30 */	srw r0, r3, r0
/* 802212BC 0021E21C  98 06 00 00 */	stb r0, 0(r6)
/* 802212C0 0021E220  38 C6 00 01 */	addi r6, r6, 1
/* 802212C4 0021E224  38 84 00 01 */	addi r4, r4, 1
/* 802212C8 0021E228  42 00 FF E4 */	bdnz lbl_802212AC
lbl_802212CC:
/* 802212CC 0021E22C  3B DE 00 01 */	addi r30, r30, 1
/* 802212D0 0021E230  3B 7B 00 04 */	addi r27, r27, 4
lbl_802212D4:
/* 802212D4 0021E234  7C 1B D0 40 */	cmplw r27, r26
/* 802212D8 0021E238  41 80 FE 7C */	blt lbl_80221154
/* 802212DC 0021E23C  4B FF FA 19 */	bl AmcEXIDeselect
/* 802212E0 0021E240  38 00 00 00 */	li r0, 0
/* 802212E4 0021E244  80 8D 2A F0 */	lwz r4, pucEXI2InputPending@sda21(r13)
/* 802212E8 0021E248  90 0D 34 A4 */	stw r0, fExi2Selected@sda21(r13)
/* 802212EC 0021E24C  38 60 00 00 */	li r3, 0
/* 802212F0 0021E250  98 04 00 00 */	stb r0, 0(r4)
/* 802212F4 0021E254  48 00 00 10 */	b lbl_80221304
lbl_802212F8:
/* 802212F8 0021E258  7C DB 22 14 */	add r6, r27, r4
/* 802212FC 0021E25C  7C D9 32 14 */	add r6, r25, r6
/* 80221300 0021E260  4B FF FF 9C */	b lbl_8022129C
lbl_80221304:
/* 80221304 0021E264  BB 21 00 2C */	lmw r25, 0x2c(r1)
/* 80221308 0021E268  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8022130C 0021E26C  38 21 00 48 */	addi r1, r1, 0x48
/* 80221310 0021E270  7C 08 03 A6 */	mtlr r0
/* 80221314 0021E274  4E 80 00 20 */	blr 

.global EXI2_WriteN
EXI2_WriteN:
/* 80221318 0021E278  7C 08 02 A6 */	mflr r0
/* 8022131C 0021E27C  90 01 00 04 */	stw r0, 4(r1)
/* 80221320 0021E280  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80221324 0021E284  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80221328 0021E288  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8022132C 0021E28C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80221330 0021E290  3B A3 00 00 */	addi r29, r3, 0
/* 80221334 0021E294  38 60 00 00 */	li r3, 0
/* 80221338 0021E298  93 81 00 30 */	stw r28, 0x30(r1)
/* 8022133C 0021E29C  90 81 00 28 */	stw r4, 0x28(r1)
/* 80221340 0021E2A0  48 00 00 0C */	b lbl_8022134C
lbl_80221344:
/* 80221344 0021E2A4  38 60 00 05 */	li r3, 5
/* 80221348 0021E2A8  4B FF F9 2D */	bl AmcEXISelect
lbl_8022134C:
/* 8022134C 0021E2AC  2C 03 00 00 */	cmpwi r3, 0
/* 80221350 0021E2B0  41 82 FF F4 */	beq lbl_80221344
/* 80221354 0021E2B4  40 82 00 0C */	bne lbl_80221360
/* 80221358 0021E2B8  38 60 00 01 */	li r3, 1
/* 8022135C 0021E2BC  48 00 01 4C */	b lbl_802214A8
lbl_80221360:
/* 80221360 0021E2C0  3C 00 80 00 */	lis r0, 0x8000
/* 80221364 0021E2C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80221368 0021E2C8  38 61 00 18 */	addi r3, r1, 0x18
/* 8022136C 0021E2CC  38 80 00 02 */	li r4, 2
/* 80221370 0021E2D0  38 A0 00 01 */	li r5, 1
/* 80221374 0021E2D4  38 C0 00 00 */	li r6, 0
/* 80221378 0021E2D8  4B FF F4 75 */	bl AmcEXIImm
/* 8022137C 0021E2DC  4B FF F6 B5 */	bl AmcEXISync
/* 80221380 0021E2E0  38 61 00 28 */	addi r3, r1, 0x28
/* 80221384 0021E2E4  38 80 00 04 */	li r4, 4
/* 80221388 0021E2E8  38 A0 00 01 */	li r5, 1
/* 8022138C 0021E2EC  38 C0 00 00 */	li r6, 0
/* 80221390 0021E2F0  4B FF F4 5D */	bl AmcEXIImm
/* 80221394 0021E2F4  4B FF F6 9D */	bl AmcEXISync
/* 80221398 0021E2F8  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8022139C 0021E2FC  54 80 07 BF */	clrlwi. r0, r4, 0x1e
/* 802213A0 0021E300  41 82 00 0C */	beq lbl_802213AC
/* 802213A4 0021E304  38 60 00 01 */	li r3, 1
/* 802213A8 0021E308  48 00 00 08 */	b lbl_802213B0
lbl_802213AC:
/* 802213AC 0021E30C  38 60 00 00 */	li r3, 0
lbl_802213B0:
/* 802213B0 0021E310  54 80 F0 BE */	srwi r0, r4, 2
/* 802213B4 0021E314  7F 80 1A 14 */	add r28, r0, r3
/* 802213B8 0021E318  3B FC FF FF */	addi r31, r28, -1
/* 802213BC 0021E31C  3B C0 00 00 */	li r30, 0
/* 802213C0 0021E320  48 00 00 54 */	b lbl_80221414
lbl_802213C4:
/* 802213C4 0021E324  7C 1E F8 40 */	cmplw r30, r31
/* 802213C8 0021E328  40 80 00 0C */	bge lbl_802213D4
/* 802213CC 0021E32C  38 80 00 04 */	li r4, 4
/* 802213D0 0021E330  48 00 00 28 */	b lbl_802213F8
lbl_802213D4:
/* 802213D4 0021E334  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802213D8 0021E338  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 802213DC 0021E33C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802213E0 0021E340  7C 03 02 14 */	add r0, r3, r0
/* 802213E4 0021E344  28 00 00 02 */	cmplwi r0, 2
/* 802213E8 0021E348  40 82 00 0C */	bne lbl_802213F4
/* 802213EC 0021E34C  38 80 00 02 */	li r4, 2
/* 802213F0 0021E350  48 00 00 08 */	b lbl_802213F8
lbl_802213F4:
/* 802213F4 0021E354  38 80 00 04 */	li r4, 4
lbl_802213F8:
/* 802213F8 0021E358  38 7D 00 00 */	addi r3, r29, 0
/* 802213FC 0021E35C  38 A0 00 01 */	li r5, 1
/* 80221400 0021E360  38 C0 00 00 */	li r6, 0
/* 80221404 0021E364  3B BD 00 04 */	addi r29, r29, 4
/* 80221408 0021E368  4B FF F3 E5 */	bl AmcEXIImm
/* 8022140C 0021E36C  4B FF F6 25 */	bl AmcEXISync
/* 80221410 0021E370  3B DE 00 01 */	addi r30, r30, 1
lbl_80221414:
/* 80221414 0021E374  7C 1E E0 40 */	cmplw r30, r28
/* 80221418 0021E378  41 80 FF AC */	blt lbl_802213C4
/* 8022141C 0021E37C  4B FF F8 D9 */	bl AmcEXIDeselect
/* 80221420 0021E380  38 60 00 00 */	li r3, 0
/* 80221424 0021E384  48 00 00 0C */	b lbl_80221430
lbl_80221428:
/* 80221428 0021E388  38 60 00 05 */	li r3, 5
/* 8022142C 0021E38C  4B FF F8 49 */	bl AmcEXISelect
lbl_80221430:
/* 80221430 0021E390  2C 03 00 00 */	cmpwi r3, 0
/* 80221434 0021E394  41 82 FF F4 */	beq lbl_80221428
/* 80221438 0021E398  40 82 00 0C */	bne lbl_80221444
/* 8022143C 0021E39C  38 60 00 01 */	li r3, 1
/* 80221440 0021E3A0  48 00 00 68 */	b lbl_802214A8
lbl_80221444:
/* 80221444 0021E3A4  3C 00 00 01 */	lis r0, 1
/* 80221448 0021E3A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8022144C 0021E3AC  38 61 00 10 */	addi r3, r1, 0x10
/* 80221450 0021E3B0  38 80 00 02 */	li r4, 2
/* 80221454 0021E3B4  38 A0 00 01 */	li r5, 1
/* 80221458 0021E3B8  38 C0 00 00 */	li r6, 0
/* 8022145C 0021E3BC  4B FF F3 91 */	bl AmcEXIImm
/* 80221460 0021E3C0  4B FF F5 D1 */	bl AmcEXISync
/* 80221464 0021E3C4  38 61 00 24 */	addi r3, r1, 0x24
/* 80221468 0021E3C8  38 80 00 02 */	li r4, 2
/* 8022146C 0021E3CC  38 A0 00 00 */	li r5, 0
/* 80221470 0021E3D0  38 C0 00 00 */	li r6, 0
/* 80221474 0021E3D4  4B FF F3 79 */	bl AmcEXIImm
/* 80221478 0021E3D8  4B FF F5 B9 */	bl AmcEXISync
lbl_8022147C:
/* 8022147C 0021E3DC  38 61 00 24 */	addi r3, r1, 0x24
/* 80221480 0021E3E0  38 80 00 02 */	li r4, 2
/* 80221484 0021E3E4  38 A0 00 00 */	li r5, 0
/* 80221488 0021E3E8  38 C0 00 00 */	li r6, 0
/* 8022148C 0021E3EC  4B FF F3 61 */	bl AmcEXIImm
/* 80221490 0021E3F0  4B FF F5 A1 */	bl AmcEXISync
/* 80221494 0021E3F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80221498 0021E3F8  54 00 87 FF */	rlwinm. r0, r0, 0x10, 0x1f, 0x1f
/* 8022149C 0021E3FC  41 82 FF E0 */	beq lbl_8022147C
/* 802214A0 0021E400  4B FF F8 55 */	bl AmcEXIDeselect
/* 802214A4 0021E404  38 60 00 00 */	li r3, 0
lbl_802214A8:
/* 802214A8 0021E408  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802214AC 0021E40C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802214B0 0021E410  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802214B4 0021E414  7C 08 03 A6 */	mtlr r0
/* 802214B8 0021E418  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802214BC 0021E41C  83 81 00 30 */	lwz r28, 0x30(r1)
/* 802214C0 0021E420  38 21 00 40 */	addi r1, r1, 0x40
/* 802214C4 0021E424  4E 80 00 20 */	blr 

.global EXI2_Reserve
EXI2_Reserve:
/* 802214C8 0021E428  4E 80 00 20 */	blr 

.global EXI2_Unreserve
EXI2_Unreserve:
/* 802214CC 0021E42C  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 0x8
.global lbl_802E9610
lbl_802E9610:
	.4byte 0x43616E27
	.4byte 0x74207365
	.4byte 0x6C656374
	.4byte 0x20455849
	.4byte 0x3220706F
	.4byte 0x7274210A
	.byte 0

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 0x8
.global pucEXI2InputPending
pucEXI2InputPending:
	.4byte 0x803E81C0
	.4byte 0x00000000

.section .sbss, "wa"
.balign 0x8
.global ucEXI2InputPending
ucEXI2InputPending:
	.skip 0x4
.global fExi2Selected
fExi2Selected:
	.skip 0x4
.global TRK_Callback
TRK_Callback:
	.skip 0x8
