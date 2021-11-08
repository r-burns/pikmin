.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global frexp
frexp:
/* 8021B4D4 00218434  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021B4D8 00218438  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8021B4DC 0021843C  38 80 00 00 */	li r4, 0
/* 8021B4E0 00218440  D8 21 00 08 */	stfd f1, 8(r1)
/* 8021B4E4 00218444  80 A1 00 08 */	lwz r5, 8(r1)
/* 8021B4E8 00218448  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8021B4EC 0021844C  54 A6 00 7E */	clrlwi r6, r5, 1
/* 8021B4F0 00218450  7C 06 00 00 */	cmpw r6, r0
/* 8021B4F4 00218454  90 83 00 00 */	stw r4, 0(r3)
/* 8021B4F8 00218458  38 E5 00 00 */	addi r7, r5, 0
/* 8021B4FC 0021845C  38 86 00 00 */	addi r4, r6, 0
/* 8021B500 00218460  40 80 00 0C */	bge lbl_8021B50C
/* 8021B504 00218464  7C 80 43 79 */	or. r0, r4, r8
/* 8021B508 00218468  40 82 00 0C */	bne lbl_8021B514
lbl_8021B50C:
/* 8021B50C 0021846C  C8 21 00 08 */	lfd f1, 8(r1)
/* 8021B510 00218470  48 00 00 58 */	b lbl_8021B568
lbl_8021B514:
/* 8021B514 00218474  3C 00 00 10 */	lis r0, 0x10
/* 8021B518 00218478  7C 04 00 00 */	cmpw r4, r0
/* 8021B51C 0021847C  40 80 00 28 */	bge lbl_8021B544
/* 8021B520 00218480  C8 21 00 08 */	lfd f1, 8(r1)
/* 8021B524 00218484  38 00 FF CA */	li r0, -54
/* 8021B528 00218488  C8 02 C5 C0 */	lfd f0, "@100"@sda21(r2)
/* 8021B52C 0021848C  FC 01 00 32 */	fmul f0, f1, f0
/* 8021B530 00218490  D8 01 00 08 */	stfd f0, 8(r1)
/* 8021B534 00218494  80 81 00 08 */	lwz r4, 8(r1)
/* 8021B538 00218498  90 03 00 00 */	stw r0, 0(r3)
/* 8021B53C 0021849C  38 E4 00 00 */	addi r7, r4, 0
/* 8021B540 002184A0  54 84 00 7E */	clrlwi r4, r4, 1
lbl_8021B544:
/* 8021B544 002184A4  80 A3 00 00 */	lwz r5, 0(r3)
/* 8021B548 002184A8  7C 84 A6 70 */	srawi r4, r4, 0x14
/* 8021B54C 002184AC  54 E0 03 00 */	rlwinm r0, r7, 0, 0xc, 0
/* 8021B550 002184B0  7C 84 2A 14 */	add r4, r4, r5
/* 8021B554 002184B4  38 84 FC 02 */	addi r4, r4, -1022
/* 8021B558 002184B8  90 83 00 00 */	stw r4, 0(r3)
/* 8021B55C 002184BC  64 00 3F E0 */	oris r0, r0, 0x3fe0
/* 8021B560 002184C0  90 01 00 08 */	stw r0, 8(r1)
/* 8021B564 002184C4  C8 21 00 08 */	lfd f1, 8(r1)
lbl_8021B568:
/* 8021B568 002184C8  38 21 00 18 */	addi r1, r1, 0x18
/* 8021B56C 002184CC  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 0x8
.global "@100"
"@100":
	.4byte 0x43500000
	.4byte 0x00000000