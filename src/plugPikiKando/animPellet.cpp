#include "types.h"

/*
 * --INFO--
 * Address:	........
 * Size:	00009C
 */
void _Error(char*, ...)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000F4
 */
void _Print(char*, ...)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80099548
 * Size:	000180
 */
PelletAnimInfo::PelletAnimInfo()
{
	/*
	.loc_0x0:
	  mflr      r0
	  lis       r5, 0x802B
	  stw       r0, 0x4(r1)
	  addi      r5, r5, 0x764
	  stwu      r1, -0xB8(r1)
	  stw       r31, 0xB4(r1)
	  li        r31, 0
	  stw       r30, 0xB0(r1)
	  addi      r30, r3, 0
	  lis       r3, 0x8022
	  stw       r29, 0xAC(r1)
	  addi      r0, r3, 0x738C
	  lis       r3, 0x8022
	  stw       r28, 0xA8(r1)
	  stw       r31, 0x0(r30)
	  stw       r0, 0x4(r30)
	  addi      r0, r3, 0x737C
	  lis       r3, 0x802B
	  stw       r0, 0x4(r30)
	  addi      r4, r3, 0x870
	  addi      r0, r4, 0x8
	  stw       r31, 0x14(r30)
	  addi      r3, r30, 0x18
	  stw       r31, 0x10(r30)
	  stw       r31, 0xC(r30)
	  stw       r5, 0x8(r30)
	  stw       r4, 0x58(r30)
	  stw       r0, 0x4(r30)
	  bl        -0x5575C
	  lwz       r3, -0x56B0(r13)
	  subi      r0, r13, 0x56AC
	  stw       r0, 0x98(r1)
	  addi      r5, r1, 0x30
	  addi      r4, r30, 0
	  stw       r3, 0x6C(r1)
	  addi      r3, r30, 0x2C
	  lwz       r0, 0x6C(r1)
	  stw       r31, 0x94(r1)
	  stw       r0, 0x30(r1)
	  bl        -0x3AB64
	  lis       r3, 0x802A
	  addi      r28, r3, 0x606C
	  stw       r28, 0x34(r30)
	  li        r3, 0x41
	  bl        -0x525F4
	  stw       r3, 0x3C(r30)
	  li        r29, 0x40
	  subi      r0, r13, 0x56A0
	  stw       r29, 0x38(r30)
	  addi      r5, r1, 0x2C
	  addi      r4, r30, 0
	  lwz       r7, 0x94(r1)
	  addi      r3, r30, 0x40
	  lwz       r6, 0x98(r1)
	  stw       r7, 0x38(r30)
	  stw       r6, 0x3C(r30)
	  lwz       r6, -0x56A4(r13)
	  stw       r0, 0x60(r1)
	  stw       r6, 0x34(r1)
	  lwz       r0, 0x34(r1)
	  stw       r31, 0x5C(r1)
	  stw       r0, 0x2C(r1)
	  bl        -0x3ABC0
	  stw       r28, 0x48(r30)
	  li        r3, 0x41
	  bl        -0x52648
	  stw       r3, 0x50(r30)
	  lis       r4, 0x6E6F
	  addi      r3, r30, 0x18
	  stw       r29, 0x4C(r30)
	  addi      r4, r4, 0x6E65
	  lwz       r5, 0x5C(r1)
	  lwz       r0, 0x60(r1)
	  stw       r5, 0x4C(r30)
	  stw       r0, 0x50(r30)
	  bl        -0x557B0
	  stw       r31, 0x24(r30)
	  li        r4, -0x1
	  lis       r3, 0x802B
	  stw       r4, 0x28(r30)
	  addi      r0, r3, 0x770
	  addi      r3, r30, 0
	  stw       r4, 0x54(r30)
	  stw       r31, 0x14(r30)
	  stw       r31, 0x10(r30)
	  stw       r31, 0xC(r30)
	  stw       r0, 0x8(r30)
	  stw       r31, 0x5C(r30)
	  lwz       r0, 0xBC(r1)
	  lwz       r31, 0xB4(r1)
	  lwz       r30, 0xB0(r1)
	  lwz       r29, 0xAC(r1)
	  lwz       r28, 0xA8(r1)
	  addi      r1, r1, 0xB8
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800996C8
 * Size:	0000D4
 */
void PelletAnimInfo::createShapeObject()
{
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  crclr     6, 0x6
	  stwu      r1, -0x220(r1)
	  stw       r31, 0x21C(r1)
	  stw       r30, 0x218(r1)
	  stw       r29, 0x214(r1)
	  stw       r28, 0x210(r1)
	  addi      r28, r3, 0
	  addi      r31, r28, 0x4C
	  lwz       r6, 0x50(r3)
	  lis       r3, 0x802B
	  addi      r4, r3, 0x780
	  lwz       r5, 0x3C(r28)
	  addi      r30, r28, 0x38
	  addi      r3, r1, 0x10C
	  bl        0x17CE90
	  lis       r3, 0x803A
	  subi      r3, r3, 0x2848
	  addi      r4, r1, 0x10C
	  li        r5, 0x1
	  bl        -0x46A0C
	  mr.       r29, r3
	  beq-      .loc_0xA8
	  lwz       r5, 0x4(r31)
	  addi      r3, r1, 0xC
	  crclr     6, 0x6
	  subi      r4, r13, 0x5698
	  bl        0x17CE60
	  li        r3, 0x2C
	  bl        -0x5273C
	  addi      r31, r3, 0
	  mr.       r3, r31
	  beq-      .loc_0xA0
	  lwz       r6, 0x4(r30)
	  addi      r5, r29, 0
	  lwz       r8, 0x54(r28)
	  addi      r4, r28, 0x1C
	  addi      r7, r1, 0xC
	  bl        0xC8

	.loc_0xA0:
	  stw       r31, 0x5C(r28)
	  b         .loc_0xB0

	.loc_0xA8:
	  li        r0, 0
	  stw       r0, 0x5C(r28)

	.loc_0xB0:
	  lwz       r3, 0x5C(r28)
	  lwz       r0, 0x224(r1)
	  lwz       r31, 0x21C(r1)
	  lwz       r30, 0x218(r1)
	  lwz       r29, 0x214(r1)
	  lwz       r28, 0x210(r1)
	  addi      r1, r1, 0x220
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	8009979C
 * Size:	000090
 */
void PelletAnimInfo::read(RandomAccessStream&)
{
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x18(r1)
	  stw       r31, 0x14(r1)
	  addi      r31, r4, 0
	  stw       r30, 0x10(r1)
	  addi      r30, r3, 0
	  addi      r3, r30, 0x18
	  bl        -0x55720
	  mr        r3, r31
	  lwz       r12, 0x4(r31)
	  lwz       r12, 0x8(r12)
	  mtlr      r12
	  blrl
	  stw       r3, 0x24(r30)
	  mr        r3, r31
	  lwz       r12, 0x4(r31)
	  lwz       r12, 0x8(r12)
	  mtlr      r12
	  blrl
	  stw       r3, 0x28(r30)
	  mr        r3, r31
	  lwz       r12, 0x4(r31)
	  lwz       r12, 0x8(r12)
	  mtlr      r12
	  blrl
	  stw       r3, 0x54(r30)
	  addi      r3, r30, 0
	  addi      r4, r31, 0
	  bl        -0x3AC78
	  lwz       r0, 0x1C(r1)
	  lwz       r31, 0x14(r1)
	  lwz       r30, 0x10(r1)
	  addi      r1, r1, 0x18
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	8009982C
 * Size:	000140
 */
PelletShapeObject::PelletShapeObject(char*, Shape*, char*, char*, int)
{
	/*
	.loc_0x0:
	  mflr      r0
	  lis       r9, 0x8023
	  stw       r0, 0x4(r1)
	  li        r0, 0
	  cmplwi    r6, 0
	  stwu      r1, -0xB8(r1)
	  stmw      r27, 0xA4(r1)
	  addi      r30, r3, 0
	  subi      r3, r9, 0x7730
	  addi      r28, r5, 0
	  mr        r27, r4
	  mr        r31, r8
	  stw       r3, 0x14(r30)
	  stw       r0, 0x8(r30)
	  lfs       f1, -0x7370(r2)
	  stfs      f1, 0xC(r30)
	  lfs       f0, -0x736C(r2)
	  stfs      f0, 0x10(r30)
	  stw       r3, 0x24(r30)
	  stw       r0, 0x18(r30)
	  stfs      f1, 0x1C(r30)
	  stfs      f0, 0x20(r30)
	  stw       r28, 0x0(r30)
	  lwz       r3, 0x0(r30)
	  stw       r0, 0x24(r3)
	  beq-      .loc_0xC0
	  lis       r3, 0x802B
	  crclr     6, 0x6
	  addi      r4, r3, 0x794
	  addi      r5, r6, 0
	  addi      r6, r7, 0
	  addi      r3, r1, 0x20
	  bl        0x17CCEC
	  li        r3, 0xB8
	  bl        -0x528B0
	  addi      r29, r3, 0
	  mr.       r3, r29
	  beq-      .loc_0xB0
	  lis       r6, 0x1
	  addi      r4, r28, 0
	  addi      r5, r1, 0x20
	  subi      r6, r6, 0x8000
	  li        r7, 0
	  bl        -0x49034

	.loc_0xB0:
	  stw       r29, 0x4(r30)
	  lwz       r3, 0x4(r30)
	  stw       r27, 0x4(r3)
	  b         .loc_0xEC

	.loc_0xC0:
	  li        r3, 0xB8
	  bl        -0x528EC
	  addi      r29, r3, 0
	  mr.       r3, r29
	  beq-      .loc_0xE8
	  addi      r4, r28, 0
	  li        r5, 0
	  li        r6, 0
	  li        r7, 0
	  bl        -0x4906C

	.loc_0xE8:
	  stw       r29, 0x4(r30)

	.loc_0xEC:
	  lwz       r3, 0x0(r30)
	  addi      r5, r30, 0x8
	  li        r4, 0
	  bl        -0x648C0
	  li        r0, 0x1
	  cmpwi     r31, -0x1
	  stb       r0, 0x28(r30)
	  beq-      .loc_0x128
	  lwz       r3, 0x0(r30)
	  addi      r4, r31, 0
	  addi      r5, r30, 0x18
	  bl        -0x648E0
	  lbz       r0, 0x28(r30)
	  ori       r0, r0, 0x2
	  stb       r0, 0x28(r30)

	.loc_0x128:
	  mr        r3, r30
	  lmw       r27, 0xA4(r1)
	  lwz       r0, 0xBC(r1)
	  addi      r1, r1, 0xB8
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	8009996C
 * Size:	000038
 */
PelletAnimator::PelletAnimator()
{
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x18(r1)
	  stw       r31, 0x14(r1)
	  mr        r31, r3
	  bl        0x358
	  addi      r3, r31, 0x54
	  bl        0x350
	  mr        r3, r31
	  lwz       r0, 0x1C(r1)
	  lwz       r31, 0x14(r1)
	  addi      r1, r1, 0x18
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800999A4
 * Size:	00006C
 */
void PelletAnimator::init(AnimContext*, AnimContext*, AnimMgr*, PaniMotionTable*)
{
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x30(r1)
	  stw       r31, 0x2C(r1)
	  addi      r31, r7, 0
	  stw       r30, 0x28(r1)
	  addi      r30, r6, 0
	  addi      r6, r31, 0
	  stw       r29, 0x24(r1)
	  addi      r29, r5, 0
	  addi      r5, r30, 0
	  stw       r28, 0x20(r1)
	  addi      r28, r3, 0
	  bl        0x8574C
	  addi      r4, r29, 0
	  addi      r5, r30, 0
	  addi      r6, r31, 0
	  addi      r3, r28, 0x54
	  bl        0x85738
	  lwz       r0, 0x34(r1)
	  lwz       r31, 0x2C(r1)
	  lwz       r30, 0x28(r1)
	  lwz       r29, 0x24(r1)
	  lwz       r28, 0x20(r1)
	  addi      r1, r1, 0x30
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	000058
 */
void PelletAnimator::startMotion(PaniMotionInfo*, PaniMotionInfo*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80099A10
 * Size:	000058
 */
void PelletAnimator::finishMotion(PaniMotionInfo*, PaniMotionInfo*)
{
	/*
	.loc_0x0:
	  mflr      r0
	  cmplwi    r4, 0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x20(r1)
	  stw       r31, 0x1C(r1)
	  addi      r31, r5, 0
	  stw       r30, 0x18(r1)
	  addi      r30, r3, 0
	  beq-      .loc_0x2C
	  mr        r3, r30
	  bl        0x857F8

	.loc_0x2C:
	  cmplwi    r31, 0
	  beq-      .loc_0x40
	  addi      r3, r30, 0x54
	  addi      r4, r31, 0
	  bl        0x857E4

	.loc_0x40:
	  lwz       r0, 0x24(r1)
	  lwz       r31, 0x1C(r1)
	  lwz       r30, 0x18(r1)
	  addi      r1, r1, 0x20
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	80099A68
 * Size:	000058
 */
void PelletAnimator::startMotion(PaniMotionInfo&, PaniMotionInfo&)
{
	/*
	.loc_0x0:
	  mflr      r0
	  cmplwi    r4, 0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x20(r1)
	  stw       r31, 0x1C(r1)
	  addi      r31, r5, 0
	  stw       r30, 0x18(r1)
	  addi      r30, r3, 0
	  beq-      .loc_0x2C
	  mr        r3, r30
	  bl        0x85730

	.loc_0x2C:
	  cmplwi    r31, 0
	  beq-      .loc_0x40
	  addi      r3, r30, 0x54
	  addi      r4, r31, 0
	  bl        0x8571C

	.loc_0x40:
	  lwz       r0, 0x24(r1)
	  lwz       r31, 0x1C(r1)
	  lwz       r30, 0x18(r1)
	  addi      r1, r1, 0x20
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	80099AC0
 * Size:	000028
 */
void PelletAnimator::startMotion(PaniMotionInfo&)
{
	/*
	.loc_0x0:
	  mflr      r0
	  cmplwi    r4, 0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x8(r1)
	  beq-      .loc_0x18
	  bl        0x856EC

	.loc_0x18:
	  lwz       r0, 0xC(r1)
	  addi      r1, r1, 0x8
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	000084
 */
void PelletAnimator::finishMotion(PaniAnimKeyListener*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	80099AE8
 * Size:	00005C
 */
void PelletAnimator::updateAnimation(float, float)
{
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x28(r1)
	  stfd      f31, 0x20(r1)
	  fmr       f31, f2
	  stw       r31, 0x1C(r1)
	  mr        r31, r3
	  lwz       r12, 0x30(r31)
	  lwz       r12, 0xC(r12)
	  mtlr      r12
	  blrl
	  addi      r3, r31, 0x54
	  fmr       f1, f31
	  lwz       r12, 0x84(r31)
	  lwz       r12, 0xC(r12)
	  mtlr      r12
	  blrl
	  lwz       r0, 0x2C(r1)
	  lfd       f31, 0x20(r1)
	  lwz       r31, 0x1C(r1)
	  addi      r1, r1, 0x28
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	80099B44
 * Size:	00004C
 */
void PelletAnimator::updateContext()
{
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x18(r1)
	  stw       r31, 0x14(r1)
	  mr        r31, r3
	  lwz       r12, 0x30(r31)
	  lwz       r12, 0x18(r12)
	  mtlr      r12
	  blrl
	  addi      r3, r31, 0x54
	  lwz       r12, 0x84(r31)
	  lwz       r12, 0x18(r12)
	  mtlr      r12
	  blrl
	  lwz       r0, 0x1C(r1)
	  lwz       r31, 0x14(r1)
	  addi      r1, r1, 0x18
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	80099B90
 * Size:	000148
 */
void PaniPelletAnimator::createMotionTable()
{
	/*
	.loc_0x0:
	  mflr      r0
	  li        r3, 0x8
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x18(r1)
	  stw       r31, 0x14(r1)
	  stw       r30, 0x10(r1)
	  bl        -0x52BA4
	  addi      r31, r3, 0
	  mr.       r3, r31
	  beq-      .loc_0x30
	  li        r4, 0x7
	  bl        0x8544C

	.loc_0x30:
	  li        r3, 0x8
	  bl        -0x52BC0
	  addi      r30, r3, 0
	  mr.       r3, r30
	  beq-      .loc_0x4C
	  li        r4, 0
	  bl        0x853F0

	.loc_0x4C:
	  lwz       r4, 0x4(r31)
	  li        r3, 0x8
	  stw       r30, 0x0(r4)
	  bl        -0x52BE4
	  addi      r30, r3, 0
	  mr.       r3, r30
	  beq-      .loc_0x70
	  li        r4, 0x1
	  bl        0x853CC

	.loc_0x70:
	  lwz       r4, 0x4(r31)
	  li        r3, 0x8
	  stw       r30, 0x4(r4)
	  bl        -0x52C08
	  addi      r30, r3, 0
	  mr.       r3, r30
	  beq-      .loc_0x94
	  li        r4, 0x2
	  bl        0x853A8

	.loc_0x94:
	  lwz       r4, 0x4(r31)
	  li        r3, 0x8
	  stw       r30, 0x8(r4)
	  bl        -0x52C2C
	  addi      r30, r3, 0
	  mr.       r3, r30
	  beq-      .loc_0xB8
	  li        r4, 0x3
	  bl        0x85384

	.loc_0xB8:
	  lwz       r4, 0x4(r31)
	  li        r3, 0x8
	  stw       r30, 0xC(r4)
	  bl        -0x52C50
	  addi      r30, r3, 0
	  mr.       r3, r30
	  beq-      .loc_0xDC
	  li        r4, 0x4
	  bl        0x85360

	.loc_0xDC:
	  lwz       r4, 0x4(r31)
	  li        r3, 0x8
	  stw       r30, 0x10(r4)
	  bl        -0x52C74
	  addi      r30, r3, 0
	  mr.       r3, r30
	  beq-      .loc_0x100
	  li        r4, 0x5
	  bl        0x8533C

	.loc_0x100:
	  lwz       r4, 0x4(r31)
	  li        r3, 0x8
	  stw       r30, 0x14(r4)
	  bl        -0x52C98
	  addi      r30, r3, 0
	  mr.       r3, r30
	  beq-      .loc_0x124
	  li        r4, 0x6
	  bl        0x85318

	.loc_0x124:
	  lwz       r4, 0x4(r31)
	  mr        r3, r31
	  stw       r30, 0x18(r4)
	  lwz       r0, 0x1C(r1)
	  lwz       r31, 0x14(r1)
	  lwz       r30, 0x10(r1)
	  addi      r1, r1, 0x18
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	80099CD8
 * Size:	00003C
 */
PaniPelletAnimator::PaniPelletAnimator()
{
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x18(r1)
	  stw       r31, 0x14(r1)
	  mr        r31, r3
	  bl        0x853F4
	  lis       r3, 0x802B
	  addi      r0, r3, 0x810
	  stw       r0, 0x30(r31)
	  mr        r3, r31
	  lwz       r0, 0x1C(r1)
	  lwz       r31, 0x14(r1)
	  addi      r1, r1, 0x18
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	80099D14
 * Size:	000008
 */
void PelletAnimInfo::@4 @read(RandomAccessStream&)
{
	/*
	.loc_0x0:
	  subi      r3, r3, 0x4
	  b         -0x57C
	*/
}
