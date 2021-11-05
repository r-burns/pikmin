.include "macros.inc"

.section .init, "ax"  # 0x80003100 - 0x800054C0
.global TRK_memcpy
TRK_memcpy:
/* 80003464 00000464  38 84 FF FF */	addi r4, r4, -1
/* 80003468 00000468  38 C3 FF FF */	addi r6, r3, -1
/* 8000346C 0000046C  38 A5 00 01 */	addi r5, r5, 1
/* 80003470 00000470  48 00 00 0C */	b lbl_8000347C
lbl_80003474:
/* 80003474 00000474  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80003478 00000478  9C 06 00 01 */	stbu r0, 1(r6)
lbl_8000347C:
/* 8000347C 0000047C  34 A5 FF FF */	addic. r5, r5, -1
/* 80003480 00000480  40 82 FF F4 */	bne lbl_80003474
/* 80003484 00000484  4E 80 00 20 */	blr 

.global TRK_memset
TRK_memset:
/* 80003488 00000488  7C 08 02 A6 */	mflr r0
/* 8000348C 0000048C  90 01 00 04 */	stw r0, 4(r1)
/* 80003490 00000490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80003494 00000494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80003498 00000498  7C 7F 1B 78 */	mr r31, r3
/* 8000349C 0000049C  48 21 B3 25 */	bl TRK_fill_mem
/* 800034A0 000004A0  7F E3 FB 78 */	mr r3, r31
/* 800034A4 000004A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800034A8 000004A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800034AC 000004AC  80 01 00 04 */	lwz r0, 4(r1)
/* 800034B0 000004B0  7C 08 03 A6 */	mtlr r0
/* 800034B4 000004B4  4E 80 00 20 */	blr 

.section .text, "ax"  # 0x80005560 - 0x80221F60
.global TRK_fill_mem
TRK_fill_mem:
/* 8021E7C0 0021B720  28 05 00 20 */	cmplwi r5, 0x20
/* 8021E7C4 0021B724  38 C3 FF FF */	addi r6, r3, -1
/* 8021E7C8 0021B728  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8021E7CC 0021B72C  7C 07 03 78 */	mr r7, r0
/* 8021E7D0 0021B730  41 80 00 98 */	blt lbl_8021E868
/* 8021E7D4 0021B734  7C C0 30 F8 */	nor r0, r6, r6
/* 8021E7D8 0021B738  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8021E7DC 0021B73C  7C 03 03 78 */	mr r3, r0
/* 8021E7E0 0021B740  41 82 00 18 */	beq lbl_8021E7F8
/* 8021E7E4 0021B744  7C A3 28 50 */	subf r5, r3, r5
/* 8021E7E8 0021B748  54 E0 06 3E */	clrlwi r0, r7, 0x18
lbl_8021E7EC:
/* 8021E7EC 0021B74C  34 63 FF FF */	addic. r3, r3, -1
/* 8021E7F0 0021B750  9C 06 00 01 */	stbu r0, 1(r6)
/* 8021E7F4 0021B754  40 82 FF F8 */	bne lbl_8021E7EC
lbl_8021E7F8:
/* 8021E7F8 0021B758  28 07 00 00 */	cmplwi r7, 0
/* 8021E7FC 0021B75C  41 82 00 1C */	beq lbl_8021E818
/* 8021E800 0021B760  54 E3 C0 0E */	slwi r3, r7, 0x18
/* 8021E804 0021B764  54 E0 80 1E */	slwi r0, r7, 0x10
/* 8021E808 0021B768  54 E4 40 2E */	slwi r4, r7, 8
/* 8021E80C 0021B76C  7C 60 03 78 */	or r0, r3, r0
/* 8021E810 0021B770  7C 80 03 78 */	or r0, r4, r0
/* 8021E814 0021B774  7C E7 03 78 */	or r7, r7, r0
lbl_8021E818:
/* 8021E818 0021B778  54 A0 D9 7F */	rlwinm. r0, r5, 0x1b, 5, 0x1f
/* 8021E81C 0021B77C  38 66 FF FD */	addi r3, r6, -3
/* 8021E820 0021B780  41 82 00 2C */	beq lbl_8021E84C
lbl_8021E824:
/* 8021E824 0021B784  90 E3 00 04 */	stw r7, 4(r3)
/* 8021E828 0021B788  34 00 FF FF */	addic. r0, r0, -1
/* 8021E82C 0021B78C  90 E3 00 08 */	stw r7, 8(r3)
/* 8021E830 0021B790  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8021E834 0021B794  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8021E838 0021B798  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8021E83C 0021B79C  90 E3 00 18 */	stw r7, 0x18(r3)
/* 8021E840 0021B7A0  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8021E844 0021B7A4  94 E3 00 20 */	stwu r7, 0x20(r3)
/* 8021E848 0021B7A8  40 82 FF DC */	bne lbl_8021E824
lbl_8021E84C:
/* 8021E84C 0021B7AC  54 A0 F7 7F */	rlwinm. r0, r5, 0x1e, 0x1d, 0x1f
/* 8021E850 0021B7B0  41 82 00 10 */	beq lbl_8021E860
lbl_8021E854:
/* 8021E854 0021B7B4  34 00 FF FF */	addic. r0, r0, -1
/* 8021E858 0021B7B8  94 E3 00 04 */	stwu r7, 4(r3)
/* 8021E85C 0021B7BC  40 82 FF F8 */	bne lbl_8021E854
lbl_8021E860:
/* 8021E860 0021B7C0  38 C3 00 03 */	addi r6, r3, 3
/* 8021E864 0021B7C4  54 A5 07 BE */	clrlwi r5, r5, 0x1e
lbl_8021E868:
/* 8021E868 0021B7C8  28 05 00 00 */	cmplwi r5, 0
/* 8021E86C 0021B7CC  4D 82 00 20 */	beqlr 
/* 8021E870 0021B7D0  54 E0 06 3E */	clrlwi r0, r7, 0x18
lbl_8021E874:
/* 8021E874 0021B7D4  34 A5 FF FF */	addic. r5, r5, -1
/* 8021E878 0021B7D8  9C 06 00 01 */	stbu r0, 1(r6)
/* 8021E87C 0021B7DC  40 82 FF F8 */	bne lbl_8021E874
/* 8021E880 0021B7E0  4E 80 00 20 */	blr 
