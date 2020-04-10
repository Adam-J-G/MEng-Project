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
	.file	"/root/Bela/projects/MEng-Project/build/LEDManager.bc"
	.globl	_ZN10LEDManager4initEP11BelaContext
	.p2align	2
	.type	_ZN10LEDManager4initEP11BelaContext,%function
_ZN10LEDManager4initEP11BelaContext:    @ @_ZN10LEDManager4initEP11BelaContext
	.fnstart
@ BB#0:
	.save	{r4, lr}
	push	{r4, lr}
	ldr	r0, [r1, #52]
	mov	lr, #4
	mov	r12, #1
	b	.LBB0_2
.LBB0_1:                                @ %_ZL7pinModeP11BelaContextiii.exit
                                        @   in Loop: Header=BB0_2 Depth=1
	add	lr, lr, #1
	mov	r0, r2
	cmp	lr, #16
	popeq	{r4, pc}
.LBB0_2:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_4 Depth 2
	mov	r2, #0
	cmp	r0, #0
	beq	.LBB0_1
@ BB#3:                                 @ %.lr.ph.i
                                        @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [r1, #16]
	mvn	r3, r12, lsl lr
	mov	r4, #0
.LBB0_4:                                @   Parent Loop BB0_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, r4, lsl #2]
	and	r2, r2, r3
	str	r2, [r0, r4, lsl #2]
	add	r4, r4, #1
	ldr	r2, [r1, #52]
	cmp	r4, r2
	blo	.LBB0_4
	b	.LBB0_1
.Lfunc_end0:
	.size	_ZN10LEDManager4initEP11BelaContext, .Lfunc_end0-_ZN10LEDManager4initEP11BelaContext
	.fnend

	.globl	_ZN10LEDManager11updateNotesEP11BelaContextiiiii
	.p2align	2
	.type	_ZN10LEDManager11updateNotesEP11BelaContextiiiii,%function
_ZN10LEDManager11updateNotesEP11BelaContextiiiii: @ @_ZN10LEDManager11updateNotesEP11BelaContextiiiii
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, [r1, #52]
	mov	r10, #4
	ldr	r12, [sp, #40]
	mov	r9, #1
	ldr	lr, [sp, #36]
	ldr	r8, [sp, #32]
	mov	r0, r6
.LBB1_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_3 Depth 2
                                        @     Child Loop BB1_6 Depth 2
	cmp	r0, #0
	mov	r0, #0
	beq	.LBB1_7
@ BB#2:                                 @ %.lr.ph.i.i
                                        @   in Loop: Header=BB1_1 Depth=1
	ldr	r7, [r1, #16]
	mvn	r0, r9, lsl r10
	mov	r4, #0
.LBB1_3:                                @   Parent Loop BB1_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r5, [r7, r4, lsl #2]
	and	r5, r5, r0
	str	r5, [r7, r4, lsl #2]
	add	r4, r4, #1
	ldr	r5, [r1, #52]
	cmp	r4, r5
	blo	.LBB1_3
@ BB#4:                                 @ %_ZL7pinModeP11BelaContextiii.exit.i
                                        @   in Loop: Header=BB1_1 Depth=1
	mov	r6, #0
	mov	r0, #0
	cmp	r5, #0
	beq	.LBB1_7
@ BB#5:                                 @ %.lr.ph.i7.i
                                        @   in Loop: Header=BB1_1 Depth=1
	add	r0, r10, #16
	mov	r4, #0
	mvn	r5, r9, lsl r0
.LBB1_6:                                @ %.lr.ph.split.us.i.i
                                        @   Parent Loop BB1_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r7, r4, lsl #2]
	and	r0, r0, r5
	str	r0, [r7, r4, lsl #2]
	add	r4, r4, #1
	ldr	r6, [r1, #52]
	cmp	r4, r6
	mov	r0, r6
	blo	.LBB1_6
.LBB1_7:                                @ %_ZL12digitalWriteP11BelaContextiii.exit.i
                                        @   in Loop: Header=BB1_1 Depth=1
	add	r10, r10, #1
	cmp	r10, #16
	bne	.LBB1_1
@ BB#8:                                 @ %_ZN10LEDManager10clearNotesEP11BelaContext.exit
	mov	r4, #0
	cmp	r6, #0
	beq	.LBB1_11
@ BB#9:                                 @ %.lr.ph.i23
	movw	r0, #43691
	add	r3, r3, #9
	movt	r0, #10922
	mov	r5, #1
	smmul	r4, r3, r0
	ldr	r0, [r1, #16]
	asr	r6, r4, #1
	add	r4, r6, r4, lsr #31
	add	r4, r4, r4, lsl #1
	sub	r3, r3, r4, lsl #2
	add	r3, r3, #20
	lsl	r3, r5, r3
	mov	r5, #0
.LBB1_10:                               @ %.lr.ph.split.i25
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r5, lsl #2]
	orr	r4, r4, r3
	str	r4, [r0, r5, lsl #2]
	add	r5, r5, #1
	ldr	r4, [r1, #52]
	cmp	r5, r4
	blo	.LBB1_10
.LBB1_11:                               @ %_ZL12digitalWriteP11BelaContextiii.exit26
	cmp	r2, #1
	blt	.LBB1_23
@ BB#12:
	mov	r3, #0
	cmp	r4, #0
	beq	.LBB1_15
@ BB#13:                                @ %.lr.ph.i18
	movw	r0, #43691
	add	r3, r8, #9
	movt	r0, #10922
	mov	r5, #1
	smmul	r4, r3, r0
	ldr	r0, [r1, #16]
	asr	r6, r4, #1
	add	r4, r6, r4, lsr #31
	add	r4, r4, r4, lsl #1
	sub	r3, r3, r4, lsl #2
	add	r3, r3, #20
	lsl	r4, r5, r3
	mov	r5, #0
.LBB1_14:                               @ %.lr.ph.split.i20
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0, r5, lsl #2]
	orr	r3, r3, r4
	str	r3, [r0, r5, lsl #2]
	add	r5, r5, #1
	ldr	r3, [r1, #52]
	cmp	r5, r3
	blo	.LBB1_14
.LBB1_15:                               @ %_ZL12digitalWriteP11BelaContextiii.exit21
	cmp	r2, #2
	poplt	{r4, r5, r6, r7, r8, r9, r10, pc}
	mov	r0, #1
	cmp	r3, #0
	beq	.LBB1_19
@ BB#16:                                @ %.lr.ph.i13
	movw	r0, #43691
	add	r3, lr, #9
	movt	r0, #10922
	mov	r6, #1
	smmul	r7, r3, r0
	ldr	r0, [r1, #16]
	asr	r5, r7, #1
	add	r7, r5, r7, lsr #31
	add	r7, r7, r7, lsl #1
	sub	r3, r3, r7, lsl #2
	mov	r7, #0
	add	r3, r3, #20
	lsl	r3, r6, r3
.LBB1_17:                               @ %.lr.ph.split.i15
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r0, r7, lsl #2]
	orr	r6, r6, r3
	str	r6, [r0, r7, lsl #2]
	add	r7, r7, #1
	ldr	r6, [r1, #52]
	cmp	r7, r6
	blo	.LBB1_17
@ BB#18:                                @ %_ZL12digitalWriteP11BelaContextiii.exit16.loopexit
	mov	r0, #0
	cmp	r6, #0
	movweq	r0, #1
.LBB1_19:                               @ %_ZL12digitalWriteP11BelaContextiii.exit16
	cmp	r2, #3
	blt	.LBB1_23
@ BB#20:                                @ %_ZL12digitalWriteP11BelaContextiii.exit16
	cmp	r0, #0
	bne	.LBB1_23
@ BB#21:                                @ %.lr.ph.i
	movw	r0, #43691
	add	r2, r12, #9
	movt	r0, #10922
	mov	r7, #1
	smmul	r3, r2, r0
	ldr	r0, [r1, #16]
	asr	r6, r3, #1
	add	r3, r6, r3, lsr #31
	add	r3, r3, r3, lsl #1
	sub	r2, r2, r3, lsl #2
	mov	r3, #0
	add	r2, r2, #20
	lsl	r2, r7, r2
.LBB1_22:                               @ %.lr.ph.split.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0, r3, lsl #2]
	orr	r7, r7, r2
	str	r7, [r0, r3, lsl #2]
	add	r3, r3, #1
	ldr	r7, [r1, #52]
	cmp	r3, r7
	blo	.LBB1_22
.LBB1_23:                               @ %_ZL12digitalWriteP11BelaContextiii.exit
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.Lfunc_end1:
	.size	_ZN10LEDManager11updateNotesEP11BelaContextiiiii, .Lfunc_end1-_ZN10LEDManager11updateNotesEP11BelaContextiiiii
	.fnend

	.globl	_ZN10LEDManager10clearNotesEP11BelaContext
	.p2align	2
	.type	_ZN10LEDManager10clearNotesEP11BelaContext,%function
_ZN10LEDManager10clearNotesEP11BelaContext: @ @_ZN10LEDManager10clearNotesEP11BelaContext
	.fnstart
@ BB#0:
	.save	{r4, lr}
	push	{r4, lr}
	ldr	r2, [r1, #52]
	mov	lr, #4
	mov	r12, #1
	b	.LBB2_2
.LBB2_1:                                @ %_ZL12digitalWriteP11BelaContextiii.exit
                                        @   in Loop: Header=BB2_2 Depth=1
	add	lr, lr, #1
	cmp	lr, #16
	popeq	{r4, pc}
.LBB2_2:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_4 Depth 2
                                        @     Child Loop BB2_7 Depth 2
	cmp	r2, #0
	mov	r2, #0
	beq	.LBB2_1
@ BB#3:                                 @ %.lr.ph.i
                                        @   in Loop: Header=BB2_2 Depth=1
	ldr	r3, [r1, #16]
	mvn	r2, r12, lsl lr
	mov	r0, #0
.LBB2_4:                                @   Parent Loop BB2_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, [r3, r0, lsl #2]
	and	r4, r4, r2
	str	r4, [r3, r0, lsl #2]
	add	r0, r0, #1
	ldr	r4, [r1, #52]
	cmp	r0, r4
	blo	.LBB2_4
@ BB#5:                                 @ %_ZL7pinModeP11BelaContextiii.exit
                                        @   in Loop: Header=BB2_2 Depth=1
	mov	r2, #0
	cmp	r4, #0
	beq	.LBB2_1
@ BB#6:                                 @ %.lr.ph.i7
                                        @   in Loop: Header=BB2_2 Depth=1
	add	r0, lr, #16
	mov	r4, #0
	mvn	r0, r12, lsl r0
.LBB2_7:                                @ %.lr.ph.split.us.i
                                        @   Parent Loop BB2_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r3, r4, lsl #2]
	and	r2, r2, r0
	str	r2, [r3, r4, lsl #2]
	add	r4, r4, #1
	ldr	r2, [r1, #52]
	cmp	r4, r2
	blo	.LBB2_7
	b	.LBB2_1
.Lfunc_end2:
	.size	_ZN10LEDManager10clearNotesEP11BelaContext, .Lfunc_end2-_ZN10LEDManager10clearNotesEP11BelaContext
	.fnend

	.globl	_ZN10LEDManager9getLEDPinEi
	.p2align	2
	.type	_ZN10LEDManager9getLEDPinEi,%function
_ZN10LEDManager9getLEDPinEi:            @ @_ZN10LEDManager9getLEDPinEi
	.fnstart
@ BB#0:
	add	r0, r1, #9
	movw	r1, #43691
	movt	r1, #10922
	smmul	r1, r0, r1
	asr	r2, r1, #1
	add	r1, r2, r1, lsr #31
	add	r1, r1, r1, lsl #1
	sub	r0, r0, r1, lsl #2
	add	r0, r0, #4
	bx	lr
.Lfunc_end3:
	.size	_ZN10LEDManager9getLEDPinEi, .Lfunc_end3-_ZN10LEDManager9getLEDPinEi
	.fnend


	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
