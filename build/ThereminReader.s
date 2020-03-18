	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"/root/Bela/projects/MEng-Project/build/ThereminReader.bc"
	.globl	_ZN14ThereminReader4initEP11BelaContext
	.p2align	2
	.type	_ZN14ThereminReader4initEP11BelaContext,%function
_ZN14ThereminReader4initEP11BelaContext: @ @_ZN14ThereminReader4initEP11BelaContext
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r1
	mov	r5, r0
	ldr	r0, [r4, #52]
	cmp	r0, #0
	beq	.LBB0_12
@ BB#1:                                 @ %.lr.ph.i
	ldr	r0, [r5, #108]
	mov	r2, #1
	ldr	r1, [r4, #16]
	mvn	r0, r2, lsl r0
	mov	r2, #0
.LBB0_2:                                @ %.lr.ph.split.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, r2, lsl #2]
	and	r3, r3, r0
	str	r3, [r1, r2, lsl #2]
	add	r2, r2, #1
	ldr	r3, [r4, #52]
	cmp	r2, r3
	blo	.LBB0_2
@ BB#3:                                 @ %_ZL7pinModeP11BelaContextiii.exit
	add	r12, r5, #112
	cmp	r3, #0
	beq	.LBB0_13
@ BB#4:                                 @ %.lr.ph.i16
	ldr	r0, [r12]
	mov	r2, #1
	mov	r3, #0
	lsl	r2, r2, r0
.LBB0_5:                                @ %.lr.ph.split.us.i18
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r1, r3, lsl #2]
	orr	r0, r0, r2
	str	r0, [r1, r3, lsl #2]
	add	r3, r3, #1
	ldr	r0, [r4, #52]
	cmp	r3, r0
	blo	.LBB0_5
@ BB#6:                                 @ %_ZL7pinModeP11BelaContextiii.exit19
	cmp	r0, #0
	beq	.LBB0_13
@ BB#7:                                 @ %.lr.ph.i11
	ldr	r0, [r5, #116]
	mov	r2, #1
	ldr	r1, [r4, #16]
	mov	r3, #0
	mvn	r2, r2, lsl r0
.LBB0_8:                                @ %.lr.ph.split.i13
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r1, r3, lsl #2]
	and	r0, r0, r2
	str	r0, [r1, r3, lsl #2]
	add	r3, r3, #1
	ldr	r0, [r4, #52]
	cmp	r3, r0
	blo	.LBB0_8
@ BB#9:                                 @ %_ZL7pinModeP11BelaContextiii.exit14
	add	r6, r5, #120
	cmp	r0, #0
	beq	.LBB0_14
@ BB#10:                                @ %.lr.ph.i8
	ldr	r0, [r6]
	mov	r2, #1
	ldr	r1, [r4, #16]
	mov	r3, #0
	lsl	r2, r2, r0
.LBB0_11:                               @ %.lr.ph.split.us.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r1, r3, lsl #2]
	orr	r0, r0, r2
	str	r0, [r1, r3, lsl #2]
	add	r3, r3, #1
	ldr	r0, [r4, #52]
	cmp	r3, r0
	blo	.LBB0_11
	b	.LBB0_14
.LBB0_12:                               @ %_ZL7pinModeP11BelaContextiii.exit.thread
	add	r12, r5, #112
.LBB0_13:                               @ %_ZL7pinModeP11BelaContextiii.exit14.thread
	add	r6, r5, #120
.LBB0_14:                               @ %_ZL7pinModeP11BelaContextiii.exit9
	ldr	r2, [r12]
	mov	r0, r5
	mov	r1, r4
	mov	r3, #1
	bl	_ZN7PulseIn5setupEP11BelaContextji
	ldr	r2, [r6]
	add	r0, r5, #48
	mov	r1, r4
	mov	r3, #1
	pop	{r4, r5, r6, r10, r11, lr}
	b	_ZN7PulseIn5setupEP11BelaContextji
.Lfunc_end0:
	.size	_ZN14ThereminReader4initEP11BelaContext, .Lfunc_end0-_ZN14ThereminReader4initEP11BelaContext
	.fnend

	.globl	_ZN14ThereminReader9readPitchEP11BelaContext
	.p2align	3
	.type	_ZN14ThereminReader9readPitchEP11BelaContext,%function
_ZN14ThereminReader9readPitchEP11BelaContext: @ @_ZN14ThereminReader9readPitchEP11BelaContext
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r5, r1
	mov	r4, r0
	ldr	r0, [r5, #52]
	cmp	r0, #0
	beq	.LBB1_12
@ BB#1:                                 @ %.lr.ph.i
	ldr	r1, [r4, #108]
	mov	r2, #1
	ldr	r0, [r5, #16]
	mvn	r1, r2, lsl r1
	mov	r2, #0
.LBB1_2:                                @ %.lr.ph.split.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0, r2, lsl #2]
	and	r3, r3, r1
	str	r3, [r0, r2, lsl #2]
	add	r2, r2, #1
	ldr	r3, [r5, #52]
	cmp	r2, r3
	blo	.LBB1_2
@ BB#3:                                 @ %_ZL7pinModeP11BelaContextiii.exit.preheader
	cmp	r3, #0
	beq	.LBB1_12
@ BB#4:                                 @ %.lr.ph
	add	r6, r5, #64
	add	r7, r4, #40
	mvn	r9, #3
	mov	r10, #1
	mov	r8, #0
.LBB1_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4, #124]
	add	r0, r0, #1
	str	r0, [r4, #124]
	ldr	r1, [r4, #96]
	cmp	r0, r1
	bne	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_5 Depth=1
	mov	r0, #0
	and	r2, r9, r8, lsl #1
	str	r0, [r4, #124]
	ldr	r0, [r5, #16]
	ldr	r1, [r4, #108]
	ldr	r3, [r0, r2]
	add	r1, r1, #16
	orr	r1, r3, r10, lsl r1
	b	.LBB1_8
.LBB1_7:                                @   in Loop: Header=BB1_5 Depth=1
	ldr	r0, [r5, #16]
	and	r2, r9, r8, lsl #1
	ldr	r1, [r4, #108]
	ldr	r3, [r0, r2]
	add	r1, r1, #16
	bic	r1, r3, r10, lsl r1
.LBB1_8:                                @   in Loop: Header=BB1_5 Depth=1
	str	r1, [r0, r2]
	ldrd	r0, r1, [r6]
	ldrd	r2, r3, [r7]
	eor	r1, r3, r1
	eor	r0, r2, r0
	orrs	r0, r0, r1
	beq	.LBB1_10
@ BB#9:                                 @   in Loop: Header=BB1_5 Depth=1
	mov	r0, r4
	mov	r1, r5
	bl	_ZN7PulseIn5checkEP11BelaContext
.LBB1_10:                               @ %_ZN7PulseIn9hasPulsedEP11BelaContextj.exit
                                        @   in Loop: Header=BB1_5 Depth=1
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #100]
	ldr	r0, [r0, r8, lsl #2]
	cmp	r0, r1
	bge	.LBB1_13
@ BB#11:                                @ %_ZL7pinModeP11BelaContextiii.exit
                                        @   in Loop: Header=BB1_5 Depth=1
	add	r8, r8, #1
	ldr	r0, [r5, #52]
	cmp	r8, r0
	blo	.LBB1_5
.LBB1_12:
	vmov.i32	d0, #0x0
	b	.LBB1_14
.LBB1_13:
	vmov	s0, r0
	vldr	d17, .LCPI1_0
	vcvt.f64.s32	d16, s0
	vmul.f64	d16, d16, d17
	vldr	s0, [r5, #60]
	vldr	s2, [r4, #104]
	vcvt.f64.f32	d17, s0
	vdiv.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	vdiv.f32	s0, s0, s2
.LBB1_14:                               @ %.loopexit
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	3
@ BB#15:
.LCPI1_0:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.Lfunc_end1:
	.size	_ZN14ThereminReader9readPitchEP11BelaContext, .Lfunc_end1-_ZN14ThereminReader9readPitchEP11BelaContext
	.fnend

	.globl	_ZN14ThereminReader7readMixEP11BelaContext
	.p2align	3
	.type	_ZN14ThereminReader7readMixEP11BelaContext,%function
_ZN14ThereminReader7readMixEP11BelaContext: @ @_ZN14ThereminReader7readMixEP11BelaContext
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r5, r1
	mov	r4, r0
	ldr	r0, [r5, #52]
	cmp	r0, #0
	beq	.LBB2_12
@ BB#1:                                 @ %.lr.ph.i
	ldr	r1, [r4, #116]
	mov	r2, #1
	ldr	r0, [r5, #16]
	mvn	r1, r2, lsl r1
	mov	r2, #0
.LBB2_2:                                @ %.lr.ph.split.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0, r2, lsl #2]
	and	r3, r3, r1
	str	r3, [r0, r2, lsl #2]
	add	r2, r2, #1
	ldr	r3, [r5, #52]
	cmp	r2, r3
	blo	.LBB2_2
@ BB#3:                                 @ %_ZL7pinModeP11BelaContextiii.exit.preheader
	cmp	r3, #0
	beq	.LBB2_12
@ BB#4:                                 @ %.lr.ph
	add	r9, r5, #64
	add	r8, r4, #88
	mvn	r7, #3
	mov	r6, #1
	mov	r10, #0
	add	r0, r4, #48
	str	r0, [sp]                @ 4-byte Spill
.LBB2_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4, #128]
	add	r0, r0, #1
	str	r0, [r4, #128]
	ldr	r1, [r4, #96]
	cmp	r0, r1
	bne	.LBB2_7
@ BB#6:                                 @   in Loop: Header=BB2_5 Depth=1
	mov	r0, #0
	and	r2, r7, r10, lsl #1
	str	r0, [r4, #128]
	ldr	r0, [r5, #16]
	ldr	r1, [r4, #116]
	ldr	r3, [r0, r2]
	add	r1, r1, #16
	orr	r1, r3, r6, lsl r1
	b	.LBB2_8
.LBB2_7:                                @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [r5, #16]
	and	r2, r7, r10, lsl #1
	ldr	r1, [r4, #116]
	ldr	r3, [r0, r2]
	add	r1, r1, #16
	bic	r1, r3, r6, lsl r1
.LBB2_8:                                @   in Loop: Header=BB2_5 Depth=1
	str	r1, [r0, r2]
	ldrd	r0, r1, [r9]
	ldrd	r2, r3, [r8]
	eor	r1, r3, r1
	eor	r0, r2, r0
	orrs	r0, r0, r1
	beq	.LBB2_10
@ BB#9:                                 @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	mov	r1, r5
	bl	_ZN7PulseIn5checkEP11BelaContext
	mov	r6, #1
	mvn	r7, #3
.LBB2_10:                               @ %_ZN7PulseIn9hasPulsedEP11BelaContextj.exit
                                        @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [r4, #52]
	ldr	r1, [r4, #100]
	ldr	r0, [r0, r10, lsl #2]
	cmp	r0, r1
	bge	.LBB2_13
@ BB#11:                                @ %_ZL7pinModeP11BelaContextiii.exit
                                        @   in Loop: Header=BB2_5 Depth=1
	add	r10, r10, #1
	ldr	r0, [r5, #52]
	cmp	r10, r0
	blo	.LBB2_5
.LBB2_12:
	vmov.i32	d0, #0x0
	b	.LBB2_14
.LBB2_13:
	vmov	s0, r0
	vldr	d17, .LCPI2_0
	vcvt.f64.s32	d16, s0
	vmul.f64	d16, d16, d17
	vldr	s0, [r5, #60]
	vldr	s2, [r4, #104]
	vcvt.f64.f32	d17, s0
	vdiv.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	vdiv.f32	s0, s0, s2
.LBB2_14:                               @ %.loopexit
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	3
@ BB#15:
.LCPI2_0:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.Lfunc_end2:
	.size	_ZN14ThereminReader7readMixEP11BelaContext, .Lfunc_end2-_ZN14ThereminReader7readMixEP11BelaContext
	.fnend


	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
