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
	.file	"/root/Bela/projects/MEng-Project/build/HarmonyCalculator.bc"
	.globl	_ZN17HarmonyCalculator9setKeySigEi
	.p2align	2
	.type	_ZN17HarmonyCalculator9setKeySigEi,%function
_ZN17HarmonyCalculator9setKeySigEi:     @ @_ZN17HarmonyCalculator9setKeySigEi
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	movw	r12, #43691
	add	r2, r1, #2
	movt	r12, #10922
	add	lr, r1, #4
	smmul	r3, r2, r12
	str	r1, [r0]
	str	r1, [r0, #4]
	smmul	r4, lr, r12
	add	r8, r1, #9
	asr	r5, r3, #1
	add	r3, r5, r3, lsr #31
	add	r5, r1, #5
	add	r3, r3, r3, lsl #1
	smmul	r6, r5, r12
	sub	r2, r2, r3, lsl #2
	str	r2, [r0, #8]
	asr	r2, r4, #1
	add	r2, r2, r4, lsr #31
	smmul	r4, r8, r12
	add	r2, r2, r2, lsl #1
	sub	r2, lr, r2, lsl #2
	str	r2, [r0, #12]
	asr	r2, r6, #1
	add	r2, r2, r6, lsr #31
	add	r6, r1, #7
	add	r1, r1, #11
	smmul	r7, r6, r12
	add	r2, r2, r2, lsl #1
	sub	r2, r5, r2, lsl #2
	str	r2, [r0, #16]
	smmul	r3, r1, r12
	asr	r2, r7, #1
	add	r2, r2, r7, lsr #31
	add	r2, r2, r2, lsl #1
	sub	r2, r6, r2, lsl #2
	str	r2, [r0, #20]
	asr	r2, r4, #1
	add	r2, r2, r4, lsr #31
	add	r2, r2, r2, lsl #1
	sub	r2, r8, r2, lsl #2
	str	r2, [r0, #24]
	asr	r2, r3, #1
	add	r2, r2, r3, lsr #31
	add	r2, r2, r2, lsl #1
	sub	r1, r1, r2, lsl #2
	str	r1, [r0, #28]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end0:
	.size	_ZN17HarmonyCalculator9setKeySigEi, .Lfunc_end0-_ZN17HarmonyCalculator9setKeySigEi
	.fnend

	.globl	_ZN17HarmonyCalculator14setInputValuesEff
	.p2align	2
	.type	_ZN17HarmonyCalculator14setInputValuesEff,%function
_ZN17HarmonyCalculator14setInputValuesEff: @ @_ZN17HarmonyCalculator14setInputValuesEff
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	.vsave	{d8, d9}
	vpush	{d8, d9}
	vmov.f32	s2, s1
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	mov	r4, r0
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	bne	.LBB1_2
@ BB#1:
	vmov.i32	q8, #0x0
	add	r0, r4, #52
	vst1.32	{d16, d17}, [r0]
	add	r0, r4, #40
	vst1.32	{d16, d17}, [r0]
	b	.LBB1_17
.LBB1_2:
	vldr	s4, .LCPI1_0
	vldr	s6, .LCPI1_1
	vmul.f32	d8, d1, d2
	vmul.f32	d0, d0, d3
	vstr	s16, [r4, #32]
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	vstr	s2, [r4, #36]
	bl	__log10f_finite
	vmov.f32	s18, s0
	vldr	s0, .LCPI1_2
	bl	__log10f_finite
	vdiv.f32	s0, s18, s0
	bl	roundf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	movw	r1, #43691
	mov	r10, #0
	vcvt.s32.f32	d0, d0
	movt	r1, #10922
	vmov	r0, s0
	smmul	r1, r0, r1
	asr	r2, r1, #1
	add	r1, r2, r1, lsr #31
	add	r1, r1, r1, lsl #1
	sub	r9, r0, r1, lsl #2
	str	r9, [r4, #40]
	ldr	r1, [r4, #4]
	cmp	r1, r9
	beq	.LBB1_16
@ BB#3:
	ldr	r2, [r4, #8]
	mov	r10, #1
	cmp	r2, r9
	beq	.LBB1_16
@ BB#4:
	ldr	r3, [r4, #12]
	mov	r10, #2
	cmp	r3, r9
	beq	.LBB1_16
@ BB#5:
	ldr	r0, [r4, #16]
	mov	r10, #3
	cmp	r0, r9
	beq	.LBB1_16
@ BB#6:
	ldr	lr, [r4, #20]
	mov	r10, #4
	cmp	lr, r9
	beq	.LBB1_16
@ BB#7:
	ldr	r7, [r4, #24]
	mov	r10, #5
	cmp	r7, r9
	beq	.LBB1_16
@ BB#8:
	ldr	r12, [r4, #28]
	mov	r10, #6
	cmp	r12, r9
	beq	.LBB1_16
@ BB#9:
	sub	r8, r9, #1
	mov	r10, #0
	cmp	r8, r1
	beq	.LBB1_16
@ BB#10:
	mov	r10, #1
	cmp	r8, r2
	beq	.LBB1_16
@ BB#11:
	mov	r10, #2
	cmp	r8, r3
	beq	.LBB1_16
@ BB#12:
	mov	r10, #3
	cmp	r8, r0
	beq	.LBB1_16
@ BB#13:
	mov	r10, #4
	cmp	r8, lr
	beq	.LBB1_16
@ BB#14:
	mov	r10, #5
	cmp	r8, r7
	beq	.LBB1_16
@ BB#15:
	mov	r10, #0
	cmp	r8, r12
	movweq	r10, #6
.LBB1_16:                               @ %_ZN17HarmonyCalculator19getNoteInScaleIndexEi.exit
	vmov.f32	s0, s16
	bl	roundf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	movw	r2, #9363
	vcvt.s32.f32	d1, d0
	movt	r2, #37449
	vsub.f32	d16, d8, d0
	vmov	r0, s2
	add	r1, r0, r10
	add	r7, r10, r0, lsl #1
	add	r0, r0, r0, lsl #1
	smmla	r3, r1, r2, r1
	add	r0, r0, r10
	smmla	r5, r7, r2, r7
	smmla	r2, r0, r2, r0
	lsr	r6, r3, #2
	add	r3, r6, r3, lsr #31
	lsr	r6, r5, #2
	rsb	r3, r3, r3, lsl #3
	add	r6, r6, r5, lsr #31
	sub	r1, r1, r3
	add	r3, r4, #4
	rsb	r6, r6, r6, lsl #3
	sub	r7, r7, r6
	lsr	r6, r2, #2
	add	r2, r6, r2, lsr #31
	ldr	r1, [r3, r1, lsl #2]
	str	r1, [r4, #44]
	rsb	r2, r2, r2, lsl #3
	ldr	r7, [r3, r7, lsl #2]
	sub	r1, r1, r9
	sub	r0, r0, r2
	str	r7, [r4, #48]
	vmov	s0, r1
	sub	r1, r7, r9
	ldr	r0, [r3, r0, lsl #2]
	vcvt.f32.s32	d17, d0
	vmov	s0, r1
	sub	r1, r0, r9
	vcvt.f32.s32	d18, d0
	str	r0, [r4, #52]
	vmov	s4, r1
	vadd.f32	d0, d17, d16
	vcvt.f32.s32	d17, d2
	vadd.f32	d1, d18, d16
	vadd.f32	d2, d17, d16
	vstr	s0, [r4, #56]
	vstr	s2, [r4, #60]
	vstr	s4, [r4, #64]
.LBB1_17:
	vpop	{d8, d9}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ BB#18:
.LCPI1_0:
	.long	1045220557              @ float 0.200000003
.LCPI1_1:
	.long	1024782857              @ float 0.0363636352
.LCPI1_2:
	.long	1065852029              @ float 1.05946314
.Lfunc_end1:
	.size	_ZN17HarmonyCalculator14setInputValuesEff, .Lfunc_end1-_ZN17HarmonyCalculator14setInputValuesEff
	.fnend

	.globl	_ZN17HarmonyCalculator19getNoteInScaleIndexEi
	.p2align	2
	.type	_ZN17HarmonyCalculator19getNoteInScaleIndexEi,%function
_ZN17HarmonyCalculator19getNoteInScaleIndexEi: @ @_ZN17HarmonyCalculator19getNoteInScaleIndexEi
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	mov	r2, r0
	mov	r0, #0
	ldr	r3, [r2, #4]
	cmp	r3, r1
	beq	.LBB2_13
@ BB#1:
	ldr	r12, [r2, #8]
	mov	r0, #1
	cmp	r12, r1
	beq	.LBB2_13
@ BB#2:
	ldr	lr, [r2, #12]
	mov	r0, #2
	cmp	lr, r1
	beq	.LBB2_13
@ BB#3:
	ldr	r4, [r2, #16]
	mov	r0, #3
	cmp	r4, r1
	beq	.LBB2_13
@ BB#4:
	ldr	r5, [r2, #20]
	mov	r0, #4
	cmp	r5, r1
	beq	.LBB2_13
@ BB#5:
	ldr	r6, [r2, #24]
	mov	r0, #5
	cmp	r6, r1
	beq	.LBB2_13
@ BB#6:
	ldr	r2, [r2, #28]
	mov	r0, #6
	cmp	r2, r1
	beq	.LBB2_13
@ BB#7:
	sub	r1, r1, #1
	mov	r0, #0
	cmp	r1, r3
	beq	.LBB2_13
@ BB#8:
	mov	r0, #1
	cmp	r1, r12
	beq	.LBB2_13
@ BB#9:
	mov	r0, #2
	cmp	r1, lr
	beq	.LBB2_13
@ BB#10:
	mov	r0, #3
	cmp	r1, r4
	beq	.LBB2_13
@ BB#11:
	mov	r0, #4
	cmp	r1, r5
	beq	.LBB2_13
@ BB#12:
	cmp	r1, r6
	mov	r0, #5
	popeq	{r4, r5, r6, pc}
	mov	r0, #0
	cmp	r1, r2
	movweq	r0, #6
.LBB2_13:                               @ %.thread
	pop	{r4, r5, r6, pc}
.Lfunc_end2:
	.size	_ZN17HarmonyCalculator19getNoteInScaleIndexEi, .Lfunc_end2-_ZN17HarmonyCalculator19getNoteInScaleIndexEi
	.fnend

	.globl	_ZN17HarmonyCalculator9getNoteInEv
	.p2align	2
	.type	_ZN17HarmonyCalculator9getNoteInEv,%function
_ZN17HarmonyCalculator9getNoteInEv:     @ @_ZN17HarmonyCalculator9getNoteInEv
	.fnstart
@ BB#0:
	ldr	r0, [r0, #40]
	bx	lr
.Lfunc_end3:
	.size	_ZN17HarmonyCalculator9getNoteInEv, .Lfunc_end3-_ZN17HarmonyCalculator9getNoteInEv
	.fnend

	.globl	_ZN17HarmonyCalculator19getFirstHarmonyNoteEv
	.p2align	2
	.type	_ZN17HarmonyCalculator19getFirstHarmonyNoteEv,%function
_ZN17HarmonyCalculator19getFirstHarmonyNoteEv: @ @_ZN17HarmonyCalculator19getFirstHarmonyNoteEv
	.fnstart
@ BB#0:
	ldr	r0, [r0, #44]
	bx	lr
.Lfunc_end4:
	.size	_ZN17HarmonyCalculator19getFirstHarmonyNoteEv, .Lfunc_end4-_ZN17HarmonyCalculator19getFirstHarmonyNoteEv
	.fnend

	.globl	_ZN17HarmonyCalculator20getSecondHarmonyNoteEv
	.p2align	2
	.type	_ZN17HarmonyCalculator20getSecondHarmonyNoteEv,%function
_ZN17HarmonyCalculator20getSecondHarmonyNoteEv: @ @_ZN17HarmonyCalculator20getSecondHarmonyNoteEv
	.fnstart
@ BB#0:
	ldr	r0, [r0, #48]
	bx	lr
.Lfunc_end5:
	.size	_ZN17HarmonyCalculator20getSecondHarmonyNoteEv, .Lfunc_end5-_ZN17HarmonyCalculator20getSecondHarmonyNoteEv
	.fnend

	.globl	_ZN17HarmonyCalculator19getThirdHarmonyNoteEv
	.p2align	2
	.type	_ZN17HarmonyCalculator19getThirdHarmonyNoteEv,%function
_ZN17HarmonyCalculator19getThirdHarmonyNoteEv: @ @_ZN17HarmonyCalculator19getThirdHarmonyNoteEv
	.fnstart
@ BB#0:
	ldr	r0, [r0, #52]
	bx	lr
.Lfunc_end6:
	.size	_ZN17HarmonyCalculator19getThirdHarmonyNoteEv, .Lfunc_end6-_ZN17HarmonyCalculator19getThirdHarmonyNoteEv
	.fnend

	.globl	_ZN17HarmonyCalculator20getFirstHarmonyShiftEv
	.p2align	2
	.type	_ZN17HarmonyCalculator20getFirstHarmonyShiftEv,%function
_ZN17HarmonyCalculator20getFirstHarmonyShiftEv: @ @_ZN17HarmonyCalculator20getFirstHarmonyShiftEv
	.fnstart
@ BB#0:
	ldr	r0, [r0, #44]
	vmov	s0, r0
	vcvt.f32.s32	d0, d0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bx	lr
.Lfunc_end7:
	.size	_ZN17HarmonyCalculator20getFirstHarmonyShiftEv, .Lfunc_end7-_ZN17HarmonyCalculator20getFirstHarmonyShiftEv
	.fnend

	.globl	_ZN17HarmonyCalculator21getSecondHarmonyShiftEv
	.p2align	2
	.type	_ZN17HarmonyCalculator21getSecondHarmonyShiftEv,%function
_ZN17HarmonyCalculator21getSecondHarmonyShiftEv: @ @_ZN17HarmonyCalculator21getSecondHarmonyShiftEv
	.fnstart
@ BB#0:
	vldr	s0, [r0, #60]
	bx	lr
.Lfunc_end8:
	.size	_ZN17HarmonyCalculator21getSecondHarmonyShiftEv, .Lfunc_end8-_ZN17HarmonyCalculator21getSecondHarmonyShiftEv
	.fnend

	.globl	_ZN17HarmonyCalculator20getThirdHarmonyShiftEv
	.p2align	2
	.type	_ZN17HarmonyCalculator20getThirdHarmonyShiftEv,%function
_ZN17HarmonyCalculator20getThirdHarmonyShiftEv: @ @_ZN17HarmonyCalculator20getThirdHarmonyShiftEv
	.fnstart
@ BB#0:
	vldr	s0, [r0, #64]
	bx	lr
.Lfunc_end9:
	.size	_ZN17HarmonyCalculator20getThirdHarmonyShiftEv, .Lfunc_end9-_ZN17HarmonyCalculator20getThirdHarmonyShiftEv
	.fnend


	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
