.include "macros.inc"

.section .init, "ax"  # 0x80003100 - 0x800054C0

.global __start
__start:
/* 80003100 00000100  48 00 00 F1 */	bl __init_registers
/* 80003104 00000104  48 00 01 C9 */	bl __init_hardware
/* 80003108 00000108  38 00 FF FF */	li r0, -1
/* 8000310C 0000010C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80003110 00000110  90 01 00 04 */	stw r0, 4(r1)
/* 80003114 00000114  90 01 00 00 */	stw r0, 0(r1)
/* 80003118 00000118  48 00 00 F5 */	bl __init_data
/* 8000311C 0000011C  38 00 00 00 */	li r0, 0
/* 80003120 00000120  3C C0 80 00 */	lis r6, 0x80000044@ha
/* 80003124 00000124  38 C6 00 44 */	addi r6, r6, 0x80000044@l
/* 80003128 00000128  90 06 00 00 */	stw r0, 0(r6)
/* 8000312C 0000012C  3C C0 80 00 */	lis r6, 0x800000F4@ha
/* 80003130 00000130  38 C6 00 F4 */	addi r6, r6, 0x800000F4@l
/* 80003134 00000134  80 C6 00 00 */	lwz r6, 0(r6)
/* 80003138 00000138  28 06 00 00 */	cmplwi r6, 0
/* 8000313C 0000013C  41 82 00 30 */	beq lbl_8000316C
/* 80003140 00000140  80 E6 00 0C */	lwz r7, 0xc(r6)
/* 80003144 00000144  38 A0 00 00 */	li r5, 0
/* 80003148 00000148  28 07 00 02 */	cmplwi r7, 2
/* 8000314C 0000014C  41 82 00 10 */	beq lbl_8000315C
/* 80003150 00000150  28 07 00 03 */	cmplwi r7, 3
/* 80003154 00000154  40 82 00 18 */	bne lbl_8000316C
/* 80003158 00000158  38 A0 00 01 */	li r5, 1
lbl_8000315C:
/* 8000315C 0000015C  3C C0 80 22 */	lis r6, InitMetroTRK@ha
/* 80003160 00000160  38 C6 FE 60 */	addi r6, r6, InitMetroTRK@l
/* 80003164 00000164  7C C8 03 A6 */	mtlr r6
/* 80003168 00000168  4E 80 00 21 */	blrl 
lbl_8000316C:
/* 8000316C 0000016C  3C C0 80 00 */	lis r6, 0x800000F4@ha
/* 80003170 00000170  38 C6 00 F4 */	addi r6, r6, 0x800000F4@l
/* 80003174 00000174  80 A6 00 00 */	lwz r5, 0(r6)
/* 80003178 00000178  28 05 00 00 */	cmplwi r5, 0
/* 8000317C 0000017C  41 A2 00 50 */	beq+ lbl_800031CC
/* 80003180 00000180  80 C5 00 08 */	lwz r6, 8(r5)
/* 80003184 00000184  28 06 00 00 */	cmplwi r6, 0
/* 80003188 00000188  41 A2 00 44 */	beq+ lbl_800031CC
/* 8000318C 0000018C  7C C5 32 14 */	add r6, r5, r6
/* 80003190 00000190  81 C6 00 00 */	lwz r14, 0(r6)
/* 80003194 00000194  28 0E 00 00 */	cmplwi r14, 0
/* 80003198 00000198  41 82 00 34 */	beq lbl_800031CC
/* 8000319C 0000019C  39 E6 00 04 */	addi r15, r6, 4
/* 800031A0 000001A0  7D C9 03 A6 */	mtctr r14
lbl_800031A4:
/* 800031A4 000001A4  38 C6 00 04 */	addi r6, r6, 4
/* 800031A8 000001A8  80 E6 00 00 */	lwz r7, 0(r6)
/* 800031AC 000001AC  7C E7 2A 14 */	add r7, r7, r5
/* 800031B0 000001B0  90 E6 00 00 */	stw r7, 0(r6)
/* 800031B4 000001B4  42 00 FF F0 */	bdnz lbl_800031A4
/* 800031B8 000001B8  3C A0 80 00 */	lis r5, 0x80000034@ha
/* 800031BC 000001BC  38 A5 00 34 */	addi r5, r5, 0x80000034@l
/* 800031C0 000001C0  55 E7 00 34 */	rlwinm r7, r15, 0, 0, 0x1a
/* 800031C4 000001C4  90 E5 00 00 */	stw r7, 0(r5)
/* 800031C8 000001C8  48 00 00 0C */	b lbl_800031D4
lbl_800031CC:
/* 800031CC 000001CC  39 C0 00 00 */	li r14, 0
/* 800031D0 000001D0  39 E0 00 00 */	li r15, 0
lbl_800031D4:
/* 800031D4 000001D4  48 1F A8 D5 */	bl DBInit
/* 800031D8 000001D8  48 1F 27 F9 */	bl OSInit
/* 800031DC 000001DC  48 1F A8 39 */	bl __init_user
/* 800031E0 000001E0  7D C3 73 78 */	mr r3, r14
/* 800031E4 000001E4  7D E4 7B 78 */	mr r4, r15
/* 800031E8 000001E8  48 00 23 79 */	bl main
/* 800031EC 000001EC  48 21 23 50 */	b exit

.global __init_registers
__init_registers:
/* 800031F0 000001F0  3C 20 80 3F */	lis r1, _stack_addr@h
/* 800031F4 000001F4  60 21 C8 40 */	ori r1, r1, _stack_addr@l
/* 800031F8 000001F8  3C 40 80 3F */	lis r2, _SDA2_BASE_@h
/* 800031FC 000001FC  60 42 02 00 */	ori r2, r2, _SDA2_BASE_@l
/* 80003200 00000200  3D A0 80 3E */	lis r13, _SDA_BASE_@h
/* 80003204 00000204  61 AD 4D 20 */	ori r13, r13, _SDA_BASE_@l
/* 80003208 00000208  4E 80 00 20 */	blr 

.global __init_data
__init_data:
/* 8000320C 0000020C  7C 08 02 A6 */	mflr r0
/* 80003210 00000210  90 01 00 04 */	stw r0, 4(r1)
/* 80003214 00000214  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80003218 00000218  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000321C 0000021C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80003220 00000220  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80003224 00000224  3C 60 80 00 */	lis r3, _rom_copy_info@ha
/* 80003228 00000228  38 03 54 0C */	addi r0, r3, _rom_copy_info@l
/* 8000322C 0000022C  7C 1D 03 78 */	mr r29, r0
/* 80003230 00000230  48 00 00 04 */	b lbl_80003234
lbl_80003234:
/* 80003234 00000234  48 00 00 04 */	b lbl_80003238
lbl_80003238:
/* 80003238 00000238  83 DD 00 08 */	lwz r30, 8(r29)
/* 8000323C 0000023C  28 1E 00 00 */	cmplwi r30, 0
/* 80003240 00000240  41 82 00 38 */	beq lbl_80003278
/* 80003244 00000244  80 9D 00 00 */	lwz r4, 0(r29)
/* 80003248 00000248  83 FD 00 04 */	lwz r31, 4(r29)
/* 8000324C 0000024C  41 82 00 24 */	beq lbl_80003270
/* 80003250 00000250  7C 1F 20 40 */	cmplw r31, r4
/* 80003254 00000254  41 82 00 1C */	beq lbl_80003270
/* 80003258 00000258  7F E3 FB 78 */	mr r3, r31
/* 8000325C 0000025C  7F C5 F3 78 */	mr r5, r30
/* 80003260 00000260  48 00 01 B5 */	bl memcpy
/* 80003264 00000264  7F E3 FB 78 */	mr r3, r31
/* 80003268 00000268  7F C4 F3 78 */	mr r4, r30
/* 8000326C 0000026C  48 00 00 81 */	bl __flush_cache
lbl_80003270:
/* 80003270 00000270  3B BD 00 0C */	addi r29, r29, 0xc
/* 80003274 00000274  4B FF FF C4 */	b lbl_80003238
lbl_80003278:
/* 80003278 00000278  3C 60 80 00 */	lis r3, _bss_init_info@ha
/* 8000327C 0000027C  38 03 54 90 */	addi r0, r3, _bss_init_info@l
/* 80003280 00000280  7C 1D 03 78 */	mr r29, r0
/* 80003284 00000284  48 00 00 04 */	b lbl_80003288
lbl_80003288:
/* 80003288 00000288  48 00 00 04 */	b lbl_8000328C
lbl_8000328C:
/* 8000328C 0000028C  80 BD 00 04 */	lwz r5, 4(r29)
/* 80003290 00000290  28 05 00 00 */	cmplwi r5, 0
/* 80003294 00000294  41 82 00 1C */	beq lbl_800032B0
/* 80003298 00000298  80 7D 00 00 */	lwz r3, 0(r29)
/* 8000329C 0000029C  41 82 00 0C */	beq lbl_800032A8
/* 800032A0 000002A0  38 80 00 00 */	li r4, 0
/* 800032A4 000002A4  48 00 00 7D */	bl memset
lbl_800032A8:
/* 800032A8 000002A8  3B BD 00 08 */	addi r29, r29, 8
/* 800032AC 000002AC  4B FF FF E0 */	b lbl_8000328C
lbl_800032B0:
/* 800032B0 000002B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800032B4 000002B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800032B8 000002B8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800032BC 000002BC  7C 08 03 A6 */	mtlr r0
/* 800032C0 000002C0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 800032C4 000002C4  38 21 00 18 */	addi r1, r1, 0x18
/* 800032C8 000002C8  4E 80 00 20 */	blr 

.global __init_hardware
__init_hardware:
/* 800032CC 000002CC  7C 00 00 A6 */	mfmsr r0
/* 800032D0 000002D0  60 00 20 00 */	ori r0, r0, 0x2000
/* 800032D4 000002D4  7C 00 01 24 */	mtmsr r0
/* 800032D8 000002D8  7F E8 02 A6 */	mflr r31
/* 800032DC 000002DC  48 1F 2D 99 */	bl __OSPSInit
/* 800032E0 000002E0  48 1F 3C 55 */	bl __OSCacheInit
/* 800032E4 000002E4  7F E8 03 A6 */	mtlr r31
/* 800032E8 000002E8  4E 80 00 20 */	blr 

.global __flush_cache
__flush_cache:
/* 800032EC 000002EC  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 800032F0 000002F0  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 800032F4 000002F4  7C A5 18 38 */	and r5, r5, r3
/* 800032F8 000002F8  7C 65 18 50 */	subf r3, r5, r3
/* 800032FC 000002FC  7C 84 1A 14 */	add r4, r4, r3
lbl_80003300:
/* 80003300 00000300  7C 00 28 6C */	dcbst 0, r5
/* 80003304 00000304  7C 00 04 AC */	sync 0
/* 80003308 00000308  7C 00 2F AC */	icbi 0, r5
/* 8000330C 0000030C  30 A5 00 08 */	addic r5, r5, 8
/* 80003310 00000310  34 84 FF F8 */	addic. r4, r4, -8
/* 80003314 00000314  40 80 FF EC */	bge lbl_80003300
/* 80003318 00000318  4C 00 01 2C */	isync 
/* 8000331C 0000031C  4E 80 00 20 */	blr 

.global memset
memset:
/* 80003320 00000320  7C 08 02 A6 */	mflr r0
/* 80003324 00000324  90 01 00 04 */	stw r0, 4(r1)
/* 80003328 00000328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000332C 0000032C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80003330 00000330  7C 7F 1B 78 */	mr r31, r3
/* 80003334 00000334  48 00 00 1D */	bl __fill_mem
/* 80003338 00000338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000333C 0000033C  7F E3 FB 78 */	mr r3, r31
/* 80003340 00000340  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80003344 00000344  38 21 00 20 */	addi r1, r1, 0x20
/* 80003348 00000348  7C 08 03 A6 */	mtlr r0
/* 8000334C 0000034C  4E 80 00 20 */	blr 

.global __fill_mem
__fill_mem:
/* 80003350 00000350  28 05 00 20 */	cmplwi r5, 0x20
/* 80003354 00000354  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80003358 00000358  7C 07 03 78 */	mr r7, r0
/* 8000335C 0000035C  38 C3 FF FF */	addi r6, r3, -1
/* 80003360 00000360  41 80 00 98 */	blt lbl_800033F8
/* 80003364 00000364  7C C0 30 F8 */	nor r0, r6, r6
/* 80003368 00000368  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8000336C 0000036C  7C 03 03 78 */	mr r3, r0
/* 80003370 00000370  41 82 00 18 */	beq lbl_80003388
/* 80003374 00000374  7C A3 28 50 */	subf r5, r3, r5
/* 80003378 00000378  54 E0 06 3E */	clrlwi r0, r7, 0x18
lbl_8000337C:
/* 8000337C 0000037C  34 63 FF FF */	addic. r3, r3, -1
/* 80003380 00000380  9C 06 00 01 */	stbu r0, 1(r6)
/* 80003384 00000384  40 82 FF F8 */	bne lbl_8000337C
lbl_80003388:
/* 80003388 00000388  28 07 00 00 */	cmplwi r7, 0
/* 8000338C 0000038C  41 82 00 1C */	beq lbl_800033A8
/* 80003390 00000390  54 E3 C0 0E */	slwi r3, r7, 0x18
/* 80003394 00000394  54 E0 80 1E */	slwi r0, r7, 0x10
/* 80003398 00000398  54 E4 40 2E */	slwi r4, r7, 8
/* 8000339C 0000039C  7C 60 03 78 */	or r0, r3, r0
/* 800033A0 000003A0  7C 80 03 78 */	or r0, r4, r0
/* 800033A4 000003A4  7C E7 03 78 */	or r7, r7, r0
lbl_800033A8:
/* 800033A8 000003A8  54 A0 D9 7F */	rlwinm. r0, r5, 0x1b, 5, 0x1f
/* 800033AC 000003AC  38 66 FF FD */	addi r3, r6, -3
/* 800033B0 000003B0  41 82 00 2C */	beq lbl_800033DC
lbl_800033B4:
/* 800033B4 000003B4  90 E3 00 04 */	stw r7, 4(r3)
/* 800033B8 000003B8  34 00 FF FF */	addic. r0, r0, -1
/* 800033BC 000003BC  90 E3 00 08 */	stw r7, 8(r3)
/* 800033C0 000003C0  90 E3 00 0C */	stw r7, 0xc(r3)
/* 800033C4 000003C4  90 E3 00 10 */	stw r7, 0x10(r3)
/* 800033C8 000003C8  90 E3 00 14 */	stw r7, 0x14(r3)
/* 800033CC 000003CC  90 E3 00 18 */	stw r7, 0x18(r3)
/* 800033D0 000003D0  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 800033D4 000003D4  94 E3 00 20 */	stwu r7, 0x20(r3)
/* 800033D8 000003D8  40 82 FF DC */	bne lbl_800033B4
lbl_800033DC:
/* 800033DC 000003DC  54 A0 F7 7F */	rlwinm. r0, r5, 0x1e, 0x1d, 0x1f
/* 800033E0 000003E0  41 82 00 10 */	beq lbl_800033F0
lbl_800033E4:
/* 800033E4 000003E4  34 00 FF FF */	addic. r0, r0, -1
/* 800033E8 000003E8  94 E3 00 04 */	stwu r7, 4(r3)
/* 800033EC 000003EC  40 82 FF F8 */	bne lbl_800033E4
lbl_800033F0:
/* 800033F0 000003F0  38 C3 00 03 */	addi r6, r3, 3
/* 800033F4 000003F4  54 A5 07 BE */	clrlwi r5, r5, 0x1e
lbl_800033F8:
/* 800033F8 000003F8  28 05 00 00 */	cmplwi r5, 0
/* 800033FC 000003FC  4D 82 00 20 */	beqlr 
/* 80003400 00000400  54 E0 06 3E */	clrlwi r0, r7, 0x18
lbl_80003404:
/* 80003404 00000404  34 A5 FF FF */	addic. r5, r5, -1
/* 80003408 00000408  9C 06 00 01 */	stbu r0, 1(r6)
/* 8000340C 0000040C  40 82 FF F8 */	bne lbl_80003404
/* 80003410 00000410  4E 80 00 20 */	blr 

.global memcpy
memcpy:
/* 80003414 00000414  7C 04 18 40 */	cmplw r4, r3
/* 80003418 00000418  41 80 00 28 */	blt lbl_80003440
/* 8000341C 0000041C  38 84 FF FF */	addi r4, r4, -1
/* 80003420 00000420  38 C3 FF FF */	addi r6, r3, -1
/* 80003424 00000424  38 A5 00 01 */	addi r5, r5, 1
/* 80003428 00000428  48 00 00 0C */	b lbl_80003434
lbl_8000342C:
/* 8000342C 0000042C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80003430 00000430  9C 06 00 01 */	stbu r0, 1(r6)
lbl_80003434:
/* 80003434 00000434  34 A5 FF FF */	addic. r5, r5, -1
/* 80003438 00000438  40 82 FF F4 */	bne lbl_8000342C
/* 8000343C 0000043C  4E 80 00 20 */	blr 
lbl_80003440:
/* 80003440 00000440  7C 84 2A 14 */	add r4, r4, r5
/* 80003444 00000444  7C C3 2A 14 */	add r6, r3, r5
/* 80003448 00000448  38 A5 00 01 */	addi r5, r5, 1
/* 8000344C 0000044C  48 00 00 0C */	b lbl_80003458
lbl_80003450:
/* 80003450 00000450  8C 04 FF FF */	lbzu r0, -1(r4)
/* 80003454 00000454  9C 06 FF FF */	stbu r0, -1(r6)
lbl_80003458:
/* 80003458 00000458  34 A5 FF FF */	addic. r5, r5, -1
/* 8000345C 0000045C  40 82 FF F4 */	bne lbl_80003450
/* 80003460 00000460  4E 80 00 20 */	blr 
