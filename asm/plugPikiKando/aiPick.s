.include "macros.inc"

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 800FB730 000F8690  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 800FB734 000F8694  7D 88 03 A6 */	mtlr r12
/* 800FB738 000F8698  4E 80 00 21 */	blrl 
/* 800FB73C 000F869C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB740 000F86A0  41 82 00 3C */	beq lbl_800FB77C
/* 800FB744 000F86A4  7F 23 CB 78 */	mr r3, r25
/* 800FB748 000F86A8  4B FC CE 0D */	bl getState__4PikiFv
/* 800FB74C 000F86AC  2C 03 00 02 */	cmpwi r3, 2
/* 800FB750 000F86B0  40 82 00 2C */	bne lbl_800FB77C
/* 800FB754 000F86B4  FC 1C F8 40 */	fcmpo cr0, f28, f31
/* 800FB758 000F86B8  40 80 00 24 */	bge lbl_800FB77C
/* 800FB75C 000F86BC  93 F9 05 04 */	stw r31, 0x504(r25)
/* 800FB760 000F86C0  38 99 00 00 */	addi r4, r25, 0
/* 800FB764 000F86C4  38 A0 00 05 */	li r5, 5
/* 800FB768 000F86C8  80 79 04 90 */	lwz r3, 0x490(r25)
/* 800FB76C 000F86CC  81 83 00 00 */	lwz r12, 0(r3)
/* 800FB770 000F86D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800FB774 000F86D4  7D 88 03 A6 */	mtlr r12
/* 800FB778 000F86D8  4E 80 00 21 */	blrl 
lbl_800FB77C:
/* 800FB77C 000F86DC  7F 63 DB 78 */	mr r3, r27
/* 800FB780 000F86E0  81 9B 00 00 */	lwz r12, 0(r27)
/* 800FB784 000F86E4  7F 44 D3 78 */	mr r4, r26
/* 800FB788 000F86E8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800FB78C 000F86EC  7D 88 03 A6 */	mtlr r12
/* 800FB790 000F86F0  4E 80 00 21 */	blrl 
/* 800FB794 000F86F4  7C 7A 1B 78 */	mr r26, r3
lbl_800FB798:
/* 800FB798 000F86F8  7F 63 DB 78 */	mr r3, r27
/* 800FB79C 000F86FC  81 9B 00 00 */	lwz r12, 0(r27)
/* 800FB7A0 000F8700  7F 44 D3 78 */	mr r4, r26
/* 800FB7A4 000F8704  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800FB7A8 000F8708  7D 88 03 A6 */	mtlr r12
/* 800FB7AC 000F870C  4E 80 00 21 */	blrl 
/* 800FB7B0 000F8710  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB7B4 000F8714  41 82 00 0C */	beq lbl_800FB7C0
/* 800FB7B8 000F8718  38 00 00 01 */	li r0, 1
/* 800FB7BC 000F871C  48 00 00 30 */	b lbl_800FB7EC
lbl_800FB7C0:
/* 800FB7C0 000F8720  7F 63 DB 78 */	mr r3, r27
/* 800FB7C4 000F8724  81 9B 00 00 */	lwz r12, 0(r27)
/* 800FB7C8 000F8728  7F 44 D3 78 */	mr r4, r26
/* 800FB7CC 000F872C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FB7D0 000F8730  7D 88 03 A6 */	mtlr r12
/* 800FB7D4 000F8734  4E 80 00 21 */	blrl 
/* 800FB7D8 000F8738  28 03 00 00 */	cmplwi r3, 0
/* 800FB7DC 000F873C  40 82 00 0C */	bne lbl_800FB7E8
/* 800FB7E0 000F8740  38 00 00 01 */	li r0, 1
/* 800FB7E4 000F8744  48 00 00 08 */	b lbl_800FB7EC
lbl_800FB7E8:
/* 800FB7E8 000F8748  38 00 00 00 */	li r0, 0
lbl_800FB7EC:
/* 800FB7EC 000F874C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800FB7F0 000F8750  41 82 FC 4C */	beq lbl_800FB43C
/* 800FB7F4 000F8754  80 6D 30 AC */	lwz r3, itemMgr@sda21(r13)
/* 800FB7F8 000F8758  83 23 00 64 */	lwz r25, 0x64(r3)
/* 800FB7FC 000F875C  7F 23 CB 78 */	mr r3, r25
/* 800FB800 000F8760  81 99 00 00 */	lwz r12, 0(r25)
/* 800FB804 000F8764  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800FB808 000F8768  7D 88 03 A6 */	mtlr r12
/* 800FB80C 000F876C  4E 80 00 21 */	blrl 
/* 800FB810 000F8770  C3 C2 9C 60 */	lfs f30, lbl_803E9E60@sda21(r2)
/* 800FB814 000F8774  7C 7A 1B 78 */	mr r26, r3
/* 800FB818 000F8778  48 00 01 70 */	b lbl_800FB988
lbl_800FB81C:
/* 800FB81C 000F877C  2C 1A FF FF */	cmpwi r26, -1
/* 800FB820 000F8780  40 82 00 20 */	bne lbl_800FB840
/* 800FB824 000F8784  7F 23 CB 78 */	mr r3, r25
/* 800FB828 000F8788  81 99 00 00 */	lwz r12, 0(r25)
/* 800FB82C 000F878C  38 80 00 00 */	li r4, 0
/* 800FB830 000F8790  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FB834 000F8794  7D 88 03 A6 */	mtlr r12
/* 800FB838 000F8798  4E 80 00 21 */	blrl 
/* 800FB83C 000F879C  48 00 00 1C */	b lbl_800FB858
lbl_800FB840:
/* 800FB840 000F87A0  7F 23 CB 78 */	mr r3, r25
/* 800FB844 000F87A4  81 99 00 00 */	lwz r12, 0(r25)
/* 800FB848 000F87A8  7F 44 D3 78 */	mr r4, r26
/* 800FB84C 000F87AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FB850 000F87B0  7D 88 03 A6 */	mtlr r12
/* 800FB854 000F87B4  4E 80 00 21 */	blrl 
lbl_800FB858:
/* 800FB858 000F87B8  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 800FB85C 000F87BC  2C 00 00 0F */	cmpwi r0, 0xf
/* 800FB860 000F87C0  40 82 01 0C */	bne lbl_800FB96C
/* 800FB864 000F87C4  C0 63 00 9C */	lfs f3, 0x9c(r3)
/* 800FB868 000F87C8  7C 7B 1B 78 */	mr r27, r3
/* 800FB86C 000F87CC  C0 5F 06 F8 */	lfs f2, 0x6f8(r31)
/* 800FB870 000F87D0  C0 23 00 94 */	lfs f1, 0x94(r3)
/* 800FB874 000F87D4  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 800FB878 000F87D8  EC 43 10 28 */	fsubs f2, f3, f2
/* 800FB87C 000F87DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800FB880 000F87E0  EC 02 00 B2 */	fmuls f0, f2, f2
/* 800FB884 000F87E4  EC 21 00 72 */	fmuls f1, f1, f1
/* 800FB888 000F87E8  EF 81 00 2A */	fadds f28, f1, f0
/* 800FB88C 000F87EC  FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 800FB890 000F87F0  40 81 00 18 */	ble lbl_800FB8A8
/* 800FB894 000F87F4  FC 00 E0 34 */	frsqrte f0, f28
/* 800FB898 000F87F8  FC 1C 00 32 */	fmul f0, f28, f0
/* 800FB89C 000F87FC  FC 00 00 18 */	frsp f0, f0
/* 800FB8A0 000F8800  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800FB8A4 000F8804  C3 81 00 E4 */	lfs f28, 0xe4(r1)
lbl_800FB8A8:
/* 800FB8A8 000F8808  80 6D 2F 80 */	lwz r3, _instance__10AIConstant@sda21(r13)
/* 800FB8AC 000F880C  80 03 01 00 */	lwz r0, 0x100(r3)
/* 800FB8B0 000F8810  2C 00 00 00 */	cmpwi r0, 0
/* 800FB8B4 000F8814  41 82 00 B8 */	beq lbl_800FB96C
/* 800FB8B8 000F8818  7F 63 DB 78 */	mr r3, r27
/* 800FB8BC 000F881C  4B FF 0D 11 */	bl canPullout__12PikiHeadItemFv
/* 800FB8C0 000F8820  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB8C4 000F8824  41 82 00 A8 */	beq lbl_800FB96C
/* 800FB8C8 000F8828  FC 1C F8 40 */	fcmpo cr0, f28, f31
/* 800FB8CC 000F882C  40 80 00 A0 */	bge lbl_800FB96C
/* 800FB8D0 000F8830  38 00 00 01 */	li r0, 1
/* 800FB8D4 000F8834  80 6D 30 68 */	lwz r3, pikiMgr@sda21(r13)
/* 800FB8D8 000F8838  98 0D 30 6D */	stb r0, meBirthMode__7PikiMgr@sda21(r13)
/* 800FB8DC 000F883C  81 83 00 00 */	lwz r12, 0(r3)
/* 800FB8E0 000F8840  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 800FB8E4 000F8844  7D 88 03 A6 */	mtlr r12
/* 800FB8E8 000F8848  4E 80 00 21 */	blrl 
/* 800FB8EC 000F884C  38 00 00 00 */	li r0, 0
/* 800FB8F0 000F8850  7C 7C 1B 79 */	or. r28, r3, r3
/* 800FB8F4 000F8854  98 0D 30 6D */	stb r0, meBirthMode__7PikiMgr@sda21(r13)
/* 800FB8F8 000F8858  41 82 00 74 */	beq lbl_800FB96C
/* 800FB8FC 000F885C  38 7C 00 00 */	addi r3, r28, 0
/* 800FB900 000F8860  38 9F 00 00 */	addi r4, r31, 0
/* 800FB904 000F8864  4B FD 07 41 */	bl init__4PikiFP4Navi
/* 800FB908 000F8868  7F 83 E3 78 */	mr r3, r28
/* 800FB90C 000F886C  80 9B 03 CC */	lwz r4, 0x3cc(r27)
/* 800FB910 000F8870  4B FC DF 69 */	bl initColor__4PikiFi
/* 800FB914 000F8874  7F 83 E3 78 */	mr r3, r28
/* 800FB918 000F8878  80 9B 03 D0 */	lwz r4, 0x3d0(r27)
/* 800FB91C 000F887C  81 9C 00 00 */	lwz r12, 0(r28)
/* 800FB920 000F8880  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 800FB924 000F8884  7D 88 03 A6 */	mtlr r12
/* 800FB928 000F8888  4E 80 00 21 */	blrl 
/* 800FB92C 000F888C  7F 83 E3 78 */	mr r3, r28
/* 800FB930 000F8890  81 9C 00 00 */	lwz r12, 0(r28)
/* 800FB934 000F8894  38 9B 00 94 */	addi r4, r27, 0x94
/* 800FB938 000F8898  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800FB93C 000F889C  7D 88 03 A6 */	mtlr r12
/* 800FB940 000F88A0  4E 80 00 21 */	blrl 
/* 800FB944 000F88A4  80 7C 04 90 */	lwz r3, 0x490(r28)
/* 800FB948 000F88A8  38 9C 00 00 */	addi r4, r28, 0
/* 800FB94C 000F88AC  38 A0 00 05 */	li r5, 5
/* 800FB950 000F88B0  81 83 00 00 */	lwz r12, 0(r3)
/* 800FB954 000F88B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800FB958 000F88B8  7D 88 03 A6 */	mtlr r12
/* 800FB95C 000F88BC  4E 80 00 21 */	blrl 
/* 800FB960 000F88C0  38 7B 00 00 */	addi r3, r27, 0
/* 800FB964 000F88C4  38 80 00 00 */	li r4, 0
/* 800FB968 000F88C8  4B F8 F3 79 */	bl kill__8CreatureFb
lbl_800FB96C:
/* 800FB96C 000F88CC  7F 23 CB 78 */	mr r3, r25
/* 800FB970 000F88D0  81 99 00 00 */	lwz r12, 0(r25)
/* 800FB974 000F88D4  7F 44 D3 78 */	mr r4, r26
/* 800FB978 000F88D8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800FB97C 000F88DC  7D 88 03 A6 */	mtlr r12
/* 800FB980 000F88E0  4E 80 00 21 */	blrl 
/* 800FB984 000F88E4  7C 7A 1B 78 */	mr r26, r3
lbl_800FB988:
/* 800FB988 000F88E8  7F 23 CB 78 */	mr r3, r25
/* 800FB98C 000F88EC  81 99 00 00 */	lwz r12, 0(r25)
/* 800FB990 000F88F0  7F 44 D3 78 */	mr r4, r26
/* 800FB994 000F88F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800FB998 000F88F8  7D 88 03 A6 */	mtlr r12
/* 800FB99C 000F88FC  4E 80 00 21 */	blrl 
/* 800FB9A0 000F8900  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB9A4 000F8904  41 82 00 0C */	beq lbl_800FB9B0
/* 800FB9A8 000F8908  38 00 00 01 */	li r0, 1
/* 800FB9AC 000F890C  48 00 00 30 */	b lbl_800FB9DC
lbl_800FB9B0:
/* 800FB9B0 000F8910  7F 23 CB 78 */	mr r3, r25
/* 800FB9B4 000F8914  81 99 00 00 */	lwz r12, 0(r25)
/* 800FB9B8 000F8918  7F 44 D3 78 */	mr r4, r26
/* 800FB9BC 000F891C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FB9C0 000F8920  7D 88 03 A6 */	mtlr r12
/* 800FB9C4 000F8924  4E 80 00 21 */	blrl 
/* 800FB9C8 000F8928  28 03 00 00 */	cmplwi r3, 0
/* 800FB9CC 000F892C  40 82 00 0C */	bne lbl_800FB9D8
/* 800FB9D0 000F8930  38 00 00 01 */	li r0, 1
/* 800FB9D4 000F8934  48 00 00 08 */	b lbl_800FB9DC
lbl_800FB9D8:
/* 800FB9D8 000F8938  38 00 00 00 */	li r0, 0
lbl_800FB9DC:
/* 800FB9DC 000F893C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800FB9E0 000F8940  41 82 FE 3C */	beq lbl_800FB81C
/* 800FB9E4 000F8944  83 8D 31 60 */	lwz r28, tekiMgr@sda21(r13)
/* 800FB9E8 000F8948  28 1C 00 00 */	cmplwi r28, 0
/* 800FB9EC 000F894C  41 82 01 90 */	beq lbl_800FBB7C
/* 800FB9F0 000F8950  81 9C 00 00 */	lwz r12, 0(r28)
/* 800FB9F4 000F8954  7F 83 E3 78 */	mr r3, r28
/* 800FB9F8 000F8958  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800FB9FC 000F895C  7D 88 03 A6 */	mtlr r12
/* 800FBA00 000F8960  4E 80 00 21 */	blrl 
/* 800FBA04 000F8964  3C A0 80 2B */	lis r5, __vt__11Interaction@ha
/* 800FBA08 000F8968  C3 C2 9C 60 */	lfs f30, lbl_803E9E60@sda21(r2)
/* 800FBA0C 000F896C  3C 80 80 2B */	lis r4, __vt__13InteractFlute@ha
/* 800FBA10 000F8970  3B 63 00 00 */	addi r27, r3, 0
/* 800FBA14 000F8974  3B 45 CF 9C */	addi r26, r5, __vt__11Interaction@l
/* 800FBA18 000F8978  3B 24 CC E4 */	addi r25, r4, __vt__13InteractFlute@l
/* 800FBA1C 000F897C  48 00 01 04 */	b lbl_800FBB20
lbl_800FBA20:
/* 800FBA20 000F8980  2C 1B FF FF */	cmpwi r27, -1
/* 800FBA24 000F8984  40 82 00 20 */	bne lbl_800FBA44
/* 800FBA28 000F8988  7F 83 E3 78 */	mr r3, r28
/* 800FBA2C 000F898C  81 9C 00 00 */	lwz r12, 0(r28)
/* 800FBA30 000F8990  38 80 00 00 */	li r4, 0
/* 800FBA34 000F8994  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBA38 000F8998  7D 88 03 A6 */	mtlr r12
/* 800FBA3C 000F899C  4E 80 00 21 */	blrl 
/* 800FBA40 000F89A0  48 00 00 1C */	b lbl_800FBA5C
lbl_800FBA44:
/* 800FBA44 000F89A4  7F 83 E3 78 */	mr r3, r28
/* 800FBA48 000F89A8  81 9C 00 00 */	lwz r12, 0(r28)
/* 800FBA4C 000F89AC  7F 64 DB 78 */	mr r4, r27
/* 800FBA50 000F89B0  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBA54 000F89B4  7D 88 03 A6 */	mtlr r12
/* 800FBA58 000F89B8  4E 80 00 21 */	blrl 
lbl_800FBA5C:
/* 800FBA5C 000F89BC  C0 63 00 9C */	lfs f3, 0x9c(r3)
/* 800FBA60 000F89C0  7C 7D 1B 78 */	mr r29, r3
/* 800FBA64 000F89C4  C0 5F 06 F8 */	lfs f2, 0x6f8(r31)
/* 800FBA68 000F89C8  C0 23 00 94 */	lfs f1, 0x94(r3)
/* 800FBA6C 000F89CC  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 800FBA70 000F89D0  EC 43 10 28 */	fsubs f2, f3, f2
/* 800FBA74 000F89D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 800FBA78 000F89D8  EC 02 00 B2 */	fmuls f0, f2, f2
/* 800FBA7C 000F89DC  EC 21 00 72 */	fmuls f1, f1, f1
/* 800FBA80 000F89E0  EF 81 00 2A */	fadds f28, f1, f0
/* 800FBA84 000F89E4  FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 800FBA88 000F89E8  40 81 00 18 */	ble lbl_800FBAA0
/* 800FBA8C 000F89EC  FC 00 E0 34 */	frsqrte f0, f28
/* 800FBA90 000F89F0  FC 1C 00 32 */	fmul f0, f28, f0
/* 800FBA94 000F89F4  FC 00 00 18 */	frsp f0, f0
/* 800FBA98 000F89F8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800FBA9C 000F89FC  C3 81 00 D8 */	lfs f28, 0xd8(r1)
lbl_800FBAA0:
/* 800FBAA0 000F8A00  7F A3 EB 78 */	mr r3, r29
/* 800FBAA4 000F8A04  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBAA8 000F8A08  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 800FBAAC 000F8A0C  7D 88 03 A6 */	mtlr r12
/* 800FBAB0 000F8A10  4E 80 00 21 */	blrl 
/* 800FBAB4 000F8A14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FBAB8 000F8A18  41 82 00 4C */	beq lbl_800FBB04
/* 800FBABC 000F8A1C  7F A3 EB 78 */	mr r3, r29
/* 800FBAC0 000F8A20  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBAC4 000F8A24  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 800FBAC8 000F8A28  7D 88 03 A6 */	mtlr r12
/* 800FBACC 000F8A2C  4E 80 00 21 */	blrl 
/* 800FBAD0 000F8A30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FBAD4 000F8A34  41 82 00 30 */	beq lbl_800FBB04
/* 800FBAD8 000F8A38  FC 1C F8 40 */	fcmpo cr0, f28, f31
/* 800FBADC 000F8A3C  40 80 00 28 */	bge lbl_800FBB04
/* 800FBAE0 000F8A40  93 41 01 28 */	stw r26, 0x128(r1)
/* 800FBAE4 000F8A44  38 7D 00 00 */	addi r3, r29, 0
/* 800FBAE8 000F8A48  38 81 01 28 */	addi r4, r1, 0x128
/* 800FBAEC 000F8A4C  93 E1 01 2C */	stw r31, 0x12c(r1)
/* 800FBAF0 000F8A50  93 21 01 28 */	stw r25, 0x128(r1)
/* 800FBAF4 000F8A54  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBAF8 000F8A58  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 800FBAFC 000F8A5C  7D 88 03 A6 */	mtlr r12
/* 800FBB00 000F8A60  4E 80 00 21 */	blrl 
lbl_800FBB04:
/* 800FBB04 000F8A64  7F 83 E3 78 */	mr r3, r28
/* 800FBB08 000F8A68  81 9C 00 00 */	lwz r12, 0(r28)
/* 800FBB0C 000F8A6C  7F 64 DB 78 */	mr r4, r27
/* 800FBB10 000F8A70  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800FBB14 000F8A74  7D 88 03 A6 */	mtlr r12
/* 800FBB18 000F8A78  4E 80 00 21 */	blrl 
/* 800FBB1C 000F8A7C  7C 7B 1B 78 */	mr r27, r3
lbl_800FBB20:
/* 800FBB20 000F8A80  7F 83 E3 78 */	mr r3, r28
/* 800FBB24 000F8A84  81 9C 00 00 */	lwz r12, 0(r28)
/* 800FBB28 000F8A88  7F 64 DB 78 */	mr r4, r27
/* 800FBB2C 000F8A8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800FBB30 000F8A90  7D 88 03 A6 */	mtlr r12
/* 800FBB34 000F8A94  4E 80 00 21 */	blrl 
/* 800FBB38 000F8A98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FBB3C 000F8A9C  41 82 00 0C */	beq lbl_800FBB48
/* 800FBB40 000F8AA0  38 00 00 01 */	li r0, 1
/* 800FBB44 000F8AA4  48 00 00 30 */	b lbl_800FBB74
lbl_800FBB48:
/* 800FBB48 000F8AA8  7F 83 E3 78 */	mr r3, r28
/* 800FBB4C 000F8AAC  81 9C 00 00 */	lwz r12, 0(r28)
/* 800FBB50 000F8AB0  7F 64 DB 78 */	mr r4, r27
/* 800FBB54 000F8AB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBB58 000F8AB8  7D 88 03 A6 */	mtlr r12
/* 800FBB5C 000F8ABC  4E 80 00 21 */	blrl 
/* 800FBB60 000F8AC0  28 03 00 00 */	cmplwi r3, 0
/* 800FBB64 000F8AC4  40 82 00 0C */	bne lbl_800FBB70
/* 800FBB68 000F8AC8  38 00 00 01 */	li r0, 1
/* 800FBB6C 000F8ACC  48 00 00 08 */	b lbl_800FBB74
lbl_800FBB70:
/* 800FBB70 000F8AD0  38 00 00 00 */	li r0, 0
lbl_800FBB74:
/* 800FBB74 000F8AD4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800FBB78 000F8AD8  41 82 FE A8 */	beq lbl_800FBA20
lbl_800FBB7C:
/* 800FBB7C 000F8ADC  BB 21 01 BC */	lmw r25, 0x1bc(r1)
/* 800FBB80 000F8AE0  80 01 01 FC */	lwz r0, 0x1fc(r1)
/* 800FBB84 000F8AE4  CB E1 01 F0 */	lfd f31, 0x1f0(r1)
/* 800FBB88 000F8AE8  CB C1 01 E8 */	lfd f30, 0x1e8(r1)
/* 800FBB8C 000F8AEC  CB A1 01 E0 */	lfd f29, 0x1e0(r1)
/* 800FBB90 000F8AF0  CB 81 01 D8 */	lfd f28, 0x1d8(r1)
/* 800FBB94 000F8AF4  38 21 01 F8 */	addi r1, r1, 0x1f8
/* 800FBB98 000F8AF8  7C 08 03 A6 */	mtlr r0
/* 800FBB9C 000F8AFC  4E 80 00 20 */	blr 

.global callDebugs__4NaviFf
callDebugs__4NaviFf:
/* 800FBBA0 000F8B00  7C 08 02 A6 */	mflr r0
/* 800FBBA4 000F8B04  90 01 00 04 */	stw r0, 4(r1)
/* 800FBBA8 000F8B08  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 800FBBAC 000F8B0C  DB E1 00 E8 */	stfd f31, 0xe8(r1)
/* 800FBBB0 000F8B10  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 800FBBB4 000F8B14  DB A1 00 D8 */	stfd f29, 0xd8(r1)
/* 800FBBB8 000F8B18  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 800FBBBC 000F8B1C  FF 80 08 90 */	fmr f28, f1
/* 800FBBC0 000F8B20  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 800FBBC4 000F8B24  7C 7F 1B 78 */	mr r31, r3
/* 800FBBC8 000F8B28  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 800FBBCC 000F8B2C  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 800FBBD0 000F8B30  83 CD 30 68 */	lwz r30, pikiMgr@sda21(r13)
/* 800FBBD4 000F8B34  81 9E 00 00 */	lwz r12, 0(r30)
/* 800FBBD8 000F8B38  7F C3 F3 78 */	mr r3, r30
/* 800FBBDC 000F8B3C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800FBBE0 000F8B40  7D 88 03 A6 */	mtlr r12
/* 800FBBE4 000F8B44  4E 80 00 21 */	blrl 
/* 800FBBE8 000F8B48  C3 E2 9C 60 */	lfs f31, lbl_803E9E60@sda21(r2)
/* 800FBBEC 000F8B4C  7C 7D 1B 78 */	mr r29, r3
/* 800FBBF0 000F8B50  CB C2 9C 68 */	lfd f30, "@2211"@sda21(r2)
/* 800FBBF4 000F8B54  CB A2 9C 70 */	lfd f29, "@2212"@sda21(r2)
/* 800FBBF8 000F8B58  48 00 01 14 */	b lbl_800FBD0C
lbl_800FBBFC:
/* 800FBBFC 000F8B5C  2C 1D FF FF */	cmpwi r29, -1
/* 800FBC00 000F8B60  40 82 00 20 */	bne lbl_800FBC20
/* 800FBC04 000F8B64  7F C3 F3 78 */	mr r3, r30
/* 800FBC08 000F8B68  81 9E 00 00 */	lwz r12, 0(r30)
/* 800FBC0C 000F8B6C  38 80 00 00 */	li r4, 0
/* 800FBC10 000F8B70  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBC14 000F8B74  7D 88 03 A6 */	mtlr r12
/* 800FBC18 000F8B78  4E 80 00 21 */	blrl 
/* 800FBC1C 000F8B7C  48 00 00 1C */	b lbl_800FBC38
lbl_800FBC20:
/* 800FBC20 000F8B80  7F C3 F3 78 */	mr r3, r30
/* 800FBC24 000F8B84  81 9E 00 00 */	lwz r12, 0(r30)
/* 800FBC28 000F8B88  7F A4 EB 78 */	mr r4, r29
/* 800FBC2C 000F8B8C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBC30 000F8B90  7D 88 03 A6 */	mtlr r12
/* 800FBC34 000F8B94  4E 80 00 21 */	blrl 
lbl_800FBC38:
/* 800FBC38 000F8B98  C0 5F 06 F4 */	lfs f2, 0x6f4(r31)
/* 800FBC3C 000F8B9C  C0 63 00 98 */	lfs f3, 0x98(r3)
/* 800FBC40 000F8BA0  C0 23 00 94 */	lfs f1, 0x94(r3)
/* 800FBC44 000F8BA4  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 800FBC48 000F8BA8  EC 63 10 28 */	fsubs f3, f3, f2
/* 800FBC4C 000F8BAC  C0 43 00 9C */	lfs f2, 0x9c(r3)
/* 800FBC50 000F8BB0  EC 81 00 28 */	fsubs f4, f1, f0
/* 800FBC54 000F8BB4  C0 3F 06 F8 */	lfs f1, 0x6f8(r31)
/* 800FBC58 000F8BB8  EC 03 00 F2 */	fmuls f0, f3, f3
/* 800FBC5C 000F8BBC  EC 42 08 28 */	fsubs f2, f2, f1
/* 800FBC60 000F8BC0  EC 24 01 32 */	fmuls f1, f4, f4
/* 800FBC64 000F8BC4  EC 42 00 B2 */	fmuls f2, f2, f2
/* 800FBC68 000F8BC8  EC 01 00 2A */	fadds f0, f1, f0
/* 800FBC6C 000F8BCC  EC 42 00 2A */	fadds f2, f2, f0
/* 800FBC70 000F8BD0  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 800FBC74 000F8BD4  40 81 00 54 */	ble lbl_800FBCC8
/* 800FBC78 000F8BD8  FC 20 10 34 */	frsqrte f1, f2
/* 800FBC7C 000F8BDC  FC 01 00 72 */	fmul f0, f1, f1
/* 800FBC80 000F8BE0  FC 3E 00 72 */	fmul f1, f30, f1
/* 800FBC84 000F8BE4  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBC88 000F8BE8  FC 1D 00 28 */	fsub f0, f29, f0
/* 800FBC8C 000F8BEC  FC 21 00 32 */	fmul f1, f1, f0
/* 800FBC90 000F8BF0  FC 01 00 72 */	fmul f0, f1, f1
/* 800FBC94 000F8BF4  FC 3E 00 72 */	fmul f1, f30, f1
/* 800FBC98 000F8BF8  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBC9C 000F8BFC  FC 1D 00 28 */	fsub f0, f29, f0
/* 800FBCA0 000F8C00  FC 21 00 32 */	fmul f1, f1, f0
/* 800FBCA4 000F8C04  FC 01 00 72 */	fmul f0, f1, f1
/* 800FBCA8 000F8C08  FC 3E 00 72 */	fmul f1, f30, f1
/* 800FBCAC 000F8C0C  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBCB0 000F8C10  FC 1D 00 28 */	fsub f0, f29, f0
/* 800FBCB4 000F8C14  FC 01 00 32 */	fmul f0, f1, f0
/* 800FBCB8 000F8C18  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBCBC 000F8C1C  FC 00 00 18 */	frsp f0, f0
/* 800FBCC0 000F8C20  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800FBCC4 000F8C24  C0 41 00 5C */	lfs f2, 0x5c(r1)
lbl_800FBCC8:
/* 800FBCC8 000F8C28  FC 02 E0 40 */	fcmpo cr0, f2, f28
/* 800FBCCC 000F8C2C  40 80 00 24 */	bge lbl_800FBCF0
/* 800FBCD0 000F8C30  38 00 00 01 */	li r0, 1
/* 800FBCD4 000F8C34  98 0D 30 60 */	stb r0, directDumpMode__4Piki@sda21(r13)
/* 800FBCD8 000F8C38  81 83 00 00 */	lwz r12, 0(r3)
/* 800FBCDC 000F8C3C  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 800FBCE0 000F8C40  7D 88 03 A6 */	mtlr r12
/* 800FBCE4 000F8C44  4E 80 00 21 */	blrl 
/* 800FBCE8 000F8C48  38 00 00 00 */	li r0, 0
/* 800FBCEC 000F8C4C  98 0D 30 60 */	stb r0, directDumpMode__4Piki@sda21(r13)
lbl_800FBCF0:
/* 800FBCF0 000F8C50  7F C3 F3 78 */	mr r3, r30
/* 800FBCF4 000F8C54  81 9E 00 00 */	lwz r12, 0(r30)
/* 800FBCF8 000F8C58  7F A4 EB 78 */	mr r4, r29
/* 800FBCFC 000F8C5C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800FBD00 000F8C60  7D 88 03 A6 */	mtlr r12
/* 800FBD04 000F8C64  4E 80 00 21 */	blrl 
/* 800FBD08 000F8C68  7C 7D 1B 78 */	mr r29, r3
lbl_800FBD0C:
/* 800FBD0C 000F8C6C  7F C3 F3 78 */	mr r3, r30
/* 800FBD10 000F8C70  81 9E 00 00 */	lwz r12, 0(r30)
/* 800FBD14 000F8C74  7F A4 EB 78 */	mr r4, r29
/* 800FBD18 000F8C78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800FBD1C 000F8C7C  7D 88 03 A6 */	mtlr r12
/* 800FBD20 000F8C80  4E 80 00 21 */	blrl 
/* 800FBD24 000F8C84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FBD28 000F8C88  41 82 00 0C */	beq lbl_800FBD34
/* 800FBD2C 000F8C8C  38 00 00 01 */	li r0, 1
/* 800FBD30 000F8C90  48 00 00 30 */	b lbl_800FBD60
lbl_800FBD34:
/* 800FBD34 000F8C94  7F C3 F3 78 */	mr r3, r30
/* 800FBD38 000F8C98  81 9E 00 00 */	lwz r12, 0(r30)
/* 800FBD3C 000F8C9C  7F A4 EB 78 */	mr r4, r29
/* 800FBD40 000F8CA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBD44 000F8CA4  7D 88 03 A6 */	mtlr r12
/* 800FBD48 000F8CA8  4E 80 00 21 */	blrl 
/* 800FBD4C 000F8CAC  28 03 00 00 */	cmplwi r3, 0
/* 800FBD50 000F8CB0  40 82 00 0C */	bne lbl_800FBD5C
/* 800FBD54 000F8CB4  38 00 00 01 */	li r0, 1
/* 800FBD58 000F8CB8  48 00 00 08 */	b lbl_800FBD60
lbl_800FBD5C:
/* 800FBD5C 000F8CBC  38 00 00 00 */	li r0, 0
lbl_800FBD60:
/* 800FBD60 000F8CC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800FBD64 000F8CC4  41 82 FE 98 */	beq lbl_800FBBFC
/* 800FBD68 000F8CC8  83 AD 31 60 */	lwz r29, tekiMgr@sda21(r13)
/* 800FBD6C 000F8CCC  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBD70 000F8CD0  7F A3 EB 78 */	mr r3, r29
/* 800FBD74 000F8CD4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800FBD78 000F8CD8  7D 88 03 A6 */	mtlr r12
/* 800FBD7C 000F8CDC  4E 80 00 21 */	blrl 
/* 800FBD80 000F8CE0  C3 A2 9C 60 */	lfs f29, lbl_803E9E60@sda21(r2)
/* 800FBD84 000F8CE4  7C 7E 1B 78 */	mr r30, r3
/* 800FBD88 000F8CE8  CB C2 9C 68 */	lfd f30, "@2211"@sda21(r2)
/* 800FBD8C 000F8CEC  CB E2 9C 70 */	lfd f31, "@2212"@sda21(r2)
/* 800FBD90 000F8CF0  48 00 01 04 */	b lbl_800FBE94
lbl_800FBD94:
/* 800FBD94 000F8CF4  2C 1E FF FF */	cmpwi r30, -1
/* 800FBD98 000F8CF8  40 82 00 20 */	bne lbl_800FBDB8
/* 800FBD9C 000F8CFC  7F A3 EB 78 */	mr r3, r29
/* 800FBDA0 000F8D00  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBDA4 000F8D04  38 80 00 00 */	li r4, 0
/* 800FBDA8 000F8D08  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBDAC 000F8D0C  7D 88 03 A6 */	mtlr r12
/* 800FBDB0 000F8D10  4E 80 00 21 */	blrl 
/* 800FBDB4 000F8D14  48 00 00 1C */	b lbl_800FBDD0
lbl_800FBDB8:
/* 800FBDB8 000F8D18  7F A3 EB 78 */	mr r3, r29
/* 800FBDBC 000F8D1C  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBDC0 000F8D20  7F C4 F3 78 */	mr r4, r30
/* 800FBDC4 000F8D24  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBDC8 000F8D28  7D 88 03 A6 */	mtlr r12
/* 800FBDCC 000F8D2C  4E 80 00 21 */	blrl 
lbl_800FBDD0:
/* 800FBDD0 000F8D30  C0 63 00 98 */	lfs f3, 0x98(r3)
/* 800FBDD4 000F8D34  C0 5F 06 F4 */	lfs f2, 0x6f4(r31)
/* 800FBDD8 000F8D38  C0 23 00 94 */	lfs f1, 0x94(r3)
/* 800FBDDC 000F8D3C  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 800FBDE0 000F8D40  EC 63 10 28 */	fsubs f3, f3, f2
/* 800FBDE4 000F8D44  C0 43 00 9C */	lfs f2, 0x9c(r3)
/* 800FBDE8 000F8D48  EC 81 00 28 */	fsubs f4, f1, f0
/* 800FBDEC 000F8D4C  C0 3F 06 F8 */	lfs f1, 0x6f8(r31)
/* 800FBDF0 000F8D50  EC 03 00 F2 */	fmuls f0, f3, f3
/* 800FBDF4 000F8D54  EC 42 08 28 */	fsubs f2, f2, f1
/* 800FBDF8 000F8D58  EC 24 01 32 */	fmuls f1, f4, f4
/* 800FBDFC 000F8D5C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 800FBE00 000F8D60  EC 01 00 2A */	fadds f0, f1, f0
/* 800FBE04 000F8D64  EC 42 00 2A */	fadds f2, f2, f0
/* 800FBE08 000F8D68  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 800FBE0C 000F8D6C  40 81 00 54 */	ble lbl_800FBE60
/* 800FBE10 000F8D70  FC 20 10 34 */	frsqrte f1, f2
/* 800FBE14 000F8D74  FC 01 00 72 */	fmul f0, f1, f1
/* 800FBE18 000F8D78  FC 3E 00 72 */	fmul f1, f30, f1
/* 800FBE1C 000F8D7C  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBE20 000F8D80  FC 1F 00 28 */	fsub f0, f31, f0
/* 800FBE24 000F8D84  FC 21 00 32 */	fmul f1, f1, f0
/* 800FBE28 000F8D88  FC 01 00 72 */	fmul f0, f1, f1
/* 800FBE2C 000F8D8C  FC 3E 00 72 */	fmul f1, f30, f1
/* 800FBE30 000F8D90  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBE34 000F8D94  FC 1F 00 28 */	fsub f0, f31, f0
/* 800FBE38 000F8D98  FC 21 00 32 */	fmul f1, f1, f0
/* 800FBE3C 000F8D9C  FC 01 00 72 */	fmul f0, f1, f1
/* 800FBE40 000F8DA0  FC 3E 00 72 */	fmul f1, f30, f1
/* 800FBE44 000F8DA4  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBE48 000F8DA8  FC 1F 00 28 */	fsub f0, f31, f0
/* 800FBE4C 000F8DAC  FC 01 00 32 */	fmul f0, f1, f0
/* 800FBE50 000F8DB0  FC 02 00 32 */	fmul f0, f2, f0
/* 800FBE54 000F8DB4  FC 00 00 18 */	frsp f0, f0
/* 800FBE58 000F8DB8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800FBE5C 000F8DBC  C0 41 00 54 */	lfs f2, 0x54(r1)
lbl_800FBE60:
/* 800FBE60 000F8DC0  FC 02 E0 40 */	fcmpo cr0, f2, f28
/* 800FBE64 000F8DC4  40 80 00 14 */	bge lbl_800FBE78
/* 800FBE68 000F8DC8  81 83 00 00 */	lwz r12, 0(r3)
/* 800FBE6C 000F8DCC  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 800FBE70 000F8DD0  7D 88 03 A6 */	mtlr r12
/* 800FBE74 000F8DD4  4E 80 00 21 */	blrl 
lbl_800FBE78:
/* 800FBE78 000F8DD8  7F A3 EB 78 */	mr r3, r29
/* 800FBE7C 000F8DDC  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBE80 000F8DE0  7F C4 F3 78 */	mr r4, r30
/* 800FBE84 000F8DE4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800FBE88 000F8DE8  7D 88 03 A6 */	mtlr r12
/* 800FBE8C 000F8DEC  4E 80 00 21 */	blrl 
/* 800FBE90 000F8DF0  7C 7E 1B 78 */	mr r30, r3
lbl_800FBE94:
/* 800FBE94 000F8DF4  7F A3 EB 78 */	mr r3, r29
/* 800FBE98 000F8DF8  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBE9C 000F8DFC  7F C4 F3 78 */	mr r4, r30
/* 800FBEA0 000F8E00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800FBEA4 000F8E04  7D 88 03 A6 */	mtlr r12
/* 800FBEA8 000F8E08  4E 80 00 21 */	blrl 
/* 800FBEAC 000F8E0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FBEB0 000F8E10  41 82 00 0C */	beq lbl_800FBEBC
/* 800FBEB4 000F8E14  38 00 00 01 */	li r0, 1
/* 800FBEB8 000F8E18  48 00 00 30 */	b lbl_800FBEE8
lbl_800FBEBC:
/* 800FBEBC 000F8E1C  7F A3 EB 78 */	mr r3, r29
/* 800FBEC0 000F8E20  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBEC4 000F8E24  7F C4 F3 78 */	mr r4, r30
/* 800FBEC8 000F8E28  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBECC 000F8E2C  7D 88 03 A6 */	mtlr r12
/* 800FBED0 000F8E30  4E 80 00 21 */	blrl 
/* 800FBED4 000F8E34  28 03 00 00 */	cmplwi r3, 0
/* 800FBED8 000F8E38  40 82 00 0C */	bne lbl_800FBEE4
/* 800FBEDC 000F8E3C  38 00 00 01 */	li r0, 1
/* 800FBEE0 000F8E40  48 00 00 08 */	b lbl_800FBEE8
lbl_800FBEE4:
/* 800FBEE4 000F8E44  38 00 00 00 */	li r0, 0
lbl_800FBEE8:
/* 800FBEE8 000F8E48  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800FBEEC 000F8E4C  41 82 FE A8 */	beq lbl_800FBD94
/* 800FBEF0 000F8E50  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 800FBEF4 000F8E54  CB E1 00 E8 */	lfd f31, 0xe8(r1)
/* 800FBEF8 000F8E58  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 800FBEFC 000F8E5C  CB A1 00 D8 */	lfd f29, 0xd8(r1)
/* 800FBF00 000F8E60  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 800FBF04 000F8E64  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 800FBF08 000F8E68  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 800FBF0C 000F8E6C  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 800FBF10 000F8E70  38 21 00 F0 */	addi r1, r1, 0xf0
/* 800FBF14 000F8E74  7C 08 03 A6 */	mtlr r0
/* 800FBF18 000F8E78  4E 80 00 20 */	blr 

.global releasePikis__4NaviFv
releasePikis__4NaviFv:
/* 800FBF1C 000F8E7C  7C 08 02 A6 */	mflr r0
/* 800FBF20 000F8E80  90 01 00 04 */	stw r0, 4(r1)
/* 800FBF24 000F8E84  94 21 FB 20 */	stwu r1, -0x4e0(r1)
/* 800FBF28 000F8E88  DB E1 04 D8 */	stfd f31, 0x4d8(r1)
/* 800FBF2C 000F8E8C  DB C1 04 D0 */	stfd f30, 0x4d0(r1)
/* 800FBF30 000F8E90  DB A1 04 C8 */	stfd f29, 0x4c8(r1)
/* 800FBF34 000F8E94  DB 81 04 C0 */	stfd f28, 0x4c0(r1)
/* 800FBF38 000F8E98  DB 61 04 B8 */	stfd f27, 0x4b8(r1)
/* 800FBF3C 000F8E9C  DB 41 04 B0 */	stfd f26, 0x4b0(r1)
/* 800FBF40 000F8EA0  DB 21 04 A8 */	stfd f25, 0x4a8(r1)
/* 800FBF44 000F8EA4  BE C1 04 80 */	stmw r22, 0x480(r1)
/* 800FBF48 000F8EA8  7C 7E 1B 78 */	mr r30, r3
/* 800FBF4C 000F8EAC  3B E0 00 00 */	li r31, 0
/* 800FBF50 000F8EB0  83 A3 07 10 */	lwz r29, 0x710(r3)
/* 800FBF54 000F8EB4  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBF58 000F8EB8  38 7D 00 00 */	addi r3, r29, 0
/* 800FBF5C 000F8EBC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800FBF60 000F8EC0  7D 88 03 A6 */	mtlr r12
/* 800FBF64 000F8EC4  4E 80 00 21 */	blrl 
/* 800FBF68 000F8EC8  3B 83 00 00 */	addi r28, r3, 0
/* 800FBF6C 000F8ECC  3A E1 01 3C */	addi r23, r1, 0x13c
/* 800FBF70 000F8ED0  48 00 01 60 */	b lbl_800FC0D0
lbl_800FBF74:
/* 800FBF74 000F8ED4  2C 1C FF FF */	cmpwi r28, -1
/* 800FBF78 000F8ED8  40 82 00 20 */	bne lbl_800FBF98
/* 800FBF7C 000F8EDC  7F A3 EB 78 */	mr r3, r29
/* 800FBF80 000F8EE0  81 9D 00 00 */	lwz r12, 0(r29)
/* 800FBF84 000F8EE4  38 80 00 00 */	li r4, 0
/* 800FBF88 000F8EE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FBF8C 000F8EEC  7D 88 03 A6 */	mtlr r12
/* 800FBF90 000F8EF0  4E 80 00 21 */	blrl 
/* 800FBF94 000F8EF4  48 00 00 1C */	b lbl_800FBFB0

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
	.4byte 0x61695069
	.4byte 0x636b2e63
	.4byte 0x70700000
	.4byte 0x5069636b
	.4byte 0x4974656d
	.4byte 0
.global lbl_802B6D78
lbl_802B6D78:
	.4byte 0x7069636B
	.4byte 0x20697465
	.4byte 0x6D000000
	.4byte 0x496E7465
	.4byte 0x72616374
	.4byte 0x696F6E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41637446
	.4byte 0x6C6F7765
	.4byte 0x72000000
	.4byte 0x50616E69
	.4byte 0x416E696D
	.4byte 0x4B65794C
	.4byte 0x69737465
	.4byte 0x6E657200
	.4byte 0x52656365
	.4byte 0x69766572
	.4byte 0x3C50696B
	.4byte 0x693E0000
	.4byte 0x803E0570
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x803E0568
	.4byte 0x00000020
	.4byte 0x803E0570
	.4byte 0x00000000
	.4byte 0x803E0580
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__9ActFlower
__vt__9ActFlower:
	.4byte __RTTI__9ActFlower
	.4byte 0
	.4byte "procMsg__15Receiver<4Piki>FP4PikiP3Msg"
	.4byte "procBounceMsg__15Receiver<4Piki>FP4PikiP9MsgBounce"
	.4byte "procStickMsg__15Receiver<4Piki>FP4PikiP8MsgStick"
	.4byte "procHangMsg__15Receiver<4Piki>FP4PikiP7MsgHang"
	.4byte "procTargetMsg__15Receiver<4Piki>FP4PikiP9MsgTarget"
	.4byte "procCollideMsg__15Receiver<4Piki>FP4PikiP10MsgCollide"
	.4byte "procAnimMsg__15Receiver<4Piki>FP4PikiP7MsgAnim"
	.4byte "procDamageMsg__15Receiver<4Piki>FP4PikiP9MsgDamage"
	.4byte "procWallMsg__15Receiver<4Piki>FP4PikiP7MsgWall"
	.4byte "procOffWallMsg__15Receiver<4Piki>FP4PikiP10MsgOffWall"
	.4byte "procUserMsg__15Receiver<4Piki>FP4PikiP7MsgUser"
	.4byte "procGroundMsg__15Receiver<4Piki>FP4PikiP9MsgGround"
	.4byte defaultInitialiser__6ActionFv
	.4byte dump__6ActionFv
	.4byte draw__6ActionFR8Graphics
	.4byte __dt__9ActFlowerFv
	.4byte init__9ActFlowerFP8Creature
	.4byte exec__9ActFlowerFv
	.4byte cleanup__9ActFlowerFv
	.4byte resume__6ActionFv
	.4byte restart__6ActionFv
	.4byte resumable__6ActionFv
	.4byte getInfo__6ActionFPc
	.4byte animationKeyUpdated__9ActFlowerFR16PaniAnimKeyEvent
	.4byte __RTTI__9ActFlower
	.4byte 0xffffffe0
	.4byte lbl_800BD350
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41637450
	.4byte 0x69636b49
	.4byte 0x74656d00
	.4byte 0x416e6441
	.4byte 0x6374696f
	.4byte 0x6e000000
	.4byte 0x803E0570
	.4byte 0
	.4byte 0x803E0580
	.4byte 0
	.4byte 0
	.4byte 0x803E0570
	.4byte 0
	.4byte 0x803E0580
	.4byte 0
	.4byte 0x803E0590
	.4byte 0
	.4byte 0
.global __vt__11ActPickItem
__vt__11ActPickItem:
	.4byte __RTTI__11ActPickItem
	.4byte 0
	.4byte "procMsg__15Receiver<4Piki>FP4PikiP3Msg"
	.4byte "procBounceMsg__15Receiver<4Piki>FP4PikiP9MsgBounce"
	.4byte "procStickMsg__15Receiver<4Piki>FP4PikiP8MsgStick"
	.4byte "procHangMsg__15Receiver<4Piki>FP4PikiP7MsgHang"
	.4byte "procTargetMsg__15Receiver<4Piki>FP4PikiP9MsgTarget"
	.4byte "procCollideMsg__15Receiver<4Piki>FP4PikiP10MsgCollide"
	.4byte "procAnimMsg__15Receiver<4Piki>FP4PikiP7MsgAnim"
	.4byte "procDamageMsg__15Receiver<4Piki>FP4PikiP9MsgDamage"
	.4byte "procWallMsg__15Receiver<4Piki>FP4PikiP7MsgWall"
	.4byte "procOffWallMsg__15Receiver<4Piki>FP4PikiP10MsgOffWall"
	.4byte "procUserMsg__15Receiver<4Piki>FP4PikiP7MsgUser"
	.4byte "procGroundMsg__15Receiver<4Piki>FP4PikiP9MsgGround"
	.4byte defaultInitialiser__6ActionFv
	.4byte dump__6ActionFv
	.4byte draw__6ActionFR8Graphics
	.4byte __dt__11ActPickItemFv
	.4byte init__11ActPickItemFP8Creature
	.4byte exec__11ActPickItemFv
	.4byte cleanup__11ActPickItemFv
	.4byte resume__6ActionFv
	.4byte restart__6ActionFv
	.4byte resumable__6ActionFv
	.4byte getInfo__6ActionFPc
	.4byte lbl_800A7908
	.4byte lbl_800A7930
	.4byte lbl_800A7944
	.4byte lbl_800A7958
	.4byte lbl_800A796C
	.4byte lbl_800A7980
	.4byte lbl_800A7994
	.4byte lbl_800A79A8
	.4byte lbl_800A791C
	.4byte lbl_800A79D0
	.4byte lbl_800A79BC
	.4byte 0

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.global lbl_803E0520
lbl_803E0520:
	.4byte 0x00000000
.global lbl_803E0524
lbl_803E0524:
	.4byte 0x00000000
.global lbl_803E0528
lbl_803E0528:
	.4byte 0x00000000
	.4byte 0x802B6CA0
	.4byte 0x00000000
	.4byte 0x41637469
	.4byte 0x6F6E0000
	.4byte 0x803E0534
	.4byte 0x802B6CB0
.global __RTTI__8ActGuard
__RTTI__8ActGuard:
	.4byte 0x802b6c94
	.4byte 0x802b6cbc
	.4byte 0
.global lbl_803E0550
lbl_803E0550:
	.4byte 0x00000000
.global lbl_803E0554
lbl_803E0554:
	.4byte 0x00000000
.global lbl_803E0558
lbl_803E0558:
	.4byte 0x00000000
.global lbl_803E055C
lbl_803E055C:
	.4byte 0x00000000
.global lbl_803E0560
lbl_803E0560:
	.4byte 0x00000000
.global lbl_803E0564
lbl_803E0564:
	.4byte 0x00000000
	.4byte 0x802B6DC8
	.4byte 0x00000000

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.global lbl_803EABB4
lbl_803EABB4:
	.4byte 0x3FC00000
.global lbl_803EABB8
lbl_803EABB8:
	.4byte 0x41F00000
.global lbl_803EABBC
lbl_803EABBC:
	.4byte 0x3D4CCCCD
.global lbl_803EABC0
lbl_803EABC0:
	.4byte 0x3F7851EC

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.global lbl_803EC28C
lbl_803EC28C:
	.4byte 0x428C0000
.global lbl_803EC290
lbl_803EC290:
	.4byte 0x42480000
.global lbl_803EC294
lbl_803EC294:
	.4byte 0x42700000
.global lbl_803EC298
lbl_803EC298:
	.4byte 0x00000000
