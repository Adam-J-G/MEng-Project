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
	.file	"/root/Bela/projects/MEng-Project/build/render.bc"
	.section	.text._ZNSt6vectorIfSaIfEED2Ev,"axG",%progbits,_ZNSt6vectorIfSaIfEED2Ev,comdat
	.weak	_ZNSt6vectorIfSaIfEED2Ev
	.p2align	2
	.type	_ZNSt6vectorIfSaIfEED2Ev,%function
_ZNSt6vectorIfSaIfEED2Ev:               @ @_ZNSt6vectorIfSaIfEED2Ev
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r0
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB0_2
@ BB#1:
	bl	_ZdlPv
.LBB0_2:                                @ %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit
	mov	r0, r4
	pop	{r4, r10, r11, pc}
.Lfunc_end0:
	.size	_ZNSt6vectorIfSaIfEED2Ev, .Lfunc_end0-_ZNSt6vectorIfSaIfEED2Ev
	.fnend

	.section	.text._ZN14ThereminReaderD2Ev,"axG",%progbits,_ZN14ThereminReaderD2Ev,comdat
	.weak	_ZN14ThereminReaderD2Ev
	.p2align	2
	.type	_ZN14ThereminReaderD2Ev,%function
_ZN14ThereminReaderD2Ev:                @ @_ZN14ThereminReaderD2Ev
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r0
	add	r0, r4, #48
	bl	_ZN7PulseInD1Ev
	mov	r0, r4
	pop	{r4, r10, r11, lr}
	b	_ZN7PulseInD1Ev
.Lfunc_end1:
	.size	_ZN14ThereminReaderD2Ev, .Lfunc_end1-_ZN14ThereminReaderD2Ev
	.fnend

	.section	.text._ZN12PitchShifterD2Ev,"axG",%progbits,_ZN12PitchShifterD2Ev,comdat
	.weak	_ZN12PitchShifterD2Ev
	.p2align	2
	.type	_ZN12PitchShifterD2Ev,%function
_ZN12PitchShifterD2Ev:                  @ @_ZN12PitchShifterD2Ev
	.fnstart
@ BB#0:
	b	_ZN10soundtouch10SoundTouchD1Ev
.Lfunc_end2:
	.size	_ZN12PitchShifterD2Ev, .Lfunc_end2-_ZN12PitchShifterD2Ev
	.fnend

	.text
	.globl	setup
	.p2align	2
	.type	setup,%function
setup:                                  @ @setup
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#16
	sub	sp, sp, #16
	mov	r1, r0
	movw	r4, :lower16:.L_MergedGlobals
	vldr	s0, [r1, #32]
	movt	r4, :upper16:.L_MergedGlobals
	vcvt.s32.f32	d0, d0
	vmov	r0, s0
	str	r0, [r4]
	ldr	r0, [r1, #20]
	str	r0, [r4, #4]
	movw	r0, :lower16:thereminReader
	movt	r0, :upper16:thereminReader
	bl	_ZN14ThereminReader4initEP11BelaContext
	mov	r0, #0
	add	r1, sp, #8
	strb	r0, [sp, #14]
	movw	r0, #29798
	strh	r0, [sp, #12]
	movw	r0, #27001
	movt	r0, #26222
	str	r0, [sp, #8]
	ldm	r4, {r0, r3}
	str	r0, [sp]
	add	r0, r4, #8
	mov	r2, r3
	bl	_ZN12PitchTracker4initEPciii
	ldrd	r2, r3, [r4]
	movw	r0, :lower16:.L_MergedGlobals.3
	movt	r0, :upper16:.L_MergedGlobals.3
	mov	r1, r2
	mov	r2, r3
	bl	_ZN12PitchShifter4initEii
	ldrd	r2, r3, [r4]
	movw	r0, :lower16:.L_MergedGlobals.4
	movt	r0, :upper16:.L_MergedGlobals.4
	mov	r1, r2
	mov	r2, r3
	bl	_ZN12PitchShifter4initEii
	ldrd	r2, r3, [r4]
	movw	r0, :lower16:.L_MergedGlobals.5
	movt	r0, :upper16:.L_MergedGlobals.5
	mov	r1, r2
	mov	r2, r3
	bl	_ZN12PitchShifter4initEii
	ldrd	r2, r3, [r4, #16]
	ldr	r0, [r4, #4]
	sub	r3, r3, r2
	asr	r1, r3, #2
	cmp	r0, r3, asr #2
	bls	.LBB3_2
@ BB#1:
	sub	r1, r0, r1
	add	r0, r4, #16
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	ldr	r0, [r4, #4]
	b	.LBB3_3
.LBB3_2:
	cmp	r0, r1
	addlo	r1, r2, r0, lsl #2
	strlo	r1, [r4, #20]
.LBB3_3:                                @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit
	ldr	r1, [r4, #28]
	ldr	r2, [r4, #32]
	sub	r3, r2, r1
	asr	r2, r3, #2
	cmp	r0, r3, asr #2
	bls	.LBB3_5
@ BB#4:
	sub	r1, r0, r2
	add	r0, r4, #28
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	ldr	r0, [r4, #4]
	b	.LBB3_6
.LBB3_5:
	cmp	r0, r2
	addlo	r1, r1, r0, lsl #2
	strlo	r1, [r4, #32]
.LBB3_6:                                @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit3
	ldrd	r2, r3, [r4, #40]
	sub	r3, r3, r2
	asr	r1, r3, #2
	cmp	r0, r3, asr #2
	bls	.LBB3_8
@ BB#7:
	sub	r1, r0, r1
	add	r0, r4, #40
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	ldr	r0, [r4, #4]
	b	.LBB3_9
.LBB3_8:
	cmp	r0, r1
	addlo	r1, r2, r0, lsl #2
	strlo	r1, [r4, #44]
.LBB3_9:                                @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit4
	ldr	r1, [r4, #52]
	ldr	r2, [r4, #56]
	sub	r3, r2, r1
	asr	r2, r3, #2
	cmp	r0, r3, asr #2
	bls	.LBB3_11
@ BB#10:
	sub	r1, r0, r2
	add	r0, r4, #52
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	ldr	r0, [r4, #4]
	b	.LBB3_12
.LBB3_11:
	cmp	r0, r2
	addlo	r1, r1, r0, lsl #2
	strlo	r1, [r4, #56]
.LBB3_12:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit5
	ldrd	r2, r3, [r4, #64]
	sub	r3, r3, r2
	asr	r1, r3, #2
	cmp	r0, r3, asr #2
	bls	.LBB3_14
@ BB#13:
	sub	r1, r0, r1
	add	r0, r4, #64
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB3_15
.LBB3_14:
	cmp	r0, r1
	addlo	r0, r2, r0, lsl #2
	strlo	r0, [r4, #68]
.LBB3_15:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit6
	mov	r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end3:
	.size	setup, .Lfunc_end3-setup
	.fnend

	.globl	render
	.p2align	2
	.type	render,%function
render:                                 @ @render
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
	movw	r8, :lower16:.L_MergedGlobals
	mov	r4, r0
	movt	r8, :upper16:.L_MergedGlobals
	ldr	r0, [r8, #4]
	cmp	r0, #0
	beq	.LBB4_3
@ BB#1:                                 @ %.lr.ph51
	ldr	r3, [r4, #24]
	mov	r7, #0
	ldr	r2, [r4]
	ldr	r1, [r8, #16]
	lsl	r3, r3, #2
.LBB4_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2], r3
	str	r6, [r1, r7, lsl #2]
	add	r7, r7, #1
	cmp	r7, r0
	blo	.LBB4_2
	b	.LBB4_4
.LBB4_3:                                @ %.._crit_edge52_crit_edge
	ldr	r1, [r8, #16]
.LBB4_4:                                @ %._crit_edge52
	movw	r0, :lower16:.L_MergedGlobals.3
	movt	r0, :upper16:.L_MergedGlobals.3
	bl	_ZN12PitchShifter6readInEPf
	mov	r5, r8
	movw	r9, :lower16:.L_MergedGlobals.4
	ldr	r1, [r5, #16]!
	movt	r9, :upper16:.L_MergedGlobals.4
	mov	r0, r9
	bl	_ZN12PitchShifter6readInEPf
	movw	r10, :lower16:.L_MergedGlobals.5
	ldr	r1, [r5]
	movt	r10, :upper16:.L_MergedGlobals.5
	mov	r0, r10
	bl	_ZN12PitchShifter6readInEPf
	sub	r0, r5, #8
	mov	r1, r5
	bl	_ZN12PitchTracker8getPitchERSt6vectorIfSaIfEE
	movw	r6, :lower16:thereminReader
	mov	r7, r0
	movt	r6, :upper16:thereminReader
	mov	r1, r4
	mov	r0, r6
	bl	_ZN14ThereminReader9readPitchEP11BelaContext
	mov	r0, r6
	mov	r1, r4
	vmov.f32	s16, s0
	bl	_ZN14ThereminReader7readMixEP11BelaContext
	vcvt.f64.f32	d16, s16
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	vmov	r2, r3, d16
	vmov.f32	s18, s0
	bl	rt_printf
	vcvt.f64.f32	d16, s18
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	vmov	r2, r3, d16
	bl	rt_printf
	vmov	s0, r7
	movw	r6, :lower16:.L_MergedGlobals.3
	vcvt.f32.s32	d8, d0
	movt	r6, :upper16:.L_MergedGlobals.3
	vmov.f32	d1, #3.000000e+00
	mov	r0, r6
	vmov.f32	s1, s2
	vmov.f32	s0, s16
	bl	_ZN12PitchShifter5shiftEff
	vmov.f32	d1, #5.000000e+00
	mov	r0, r9
	vmov.f32	s0, s16
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter5shiftEff
	vmov.f32	d1, #-3.000000e+00
	mov	r0, r10
	vmov.f32	s0, s16
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter5shiftEff
	ldr	r1, [r5, #24]
	mov	r0, r6
	bl	_ZN12PitchShifter7readOutEPf
	ldr	r1, [r5, #36]
	mov	r0, r9
	bl	_ZN12PitchShifter7readOutEPf
	ldr	r1, [r5, #48]
	mov	r0, r10
	bl	_ZN12PitchShifter7readOutEPf
	ldr	r12, [r5, #-12]
	cmp	r12, #0
	beq	.LBB4_7
@ BB#5:                                 @ %.lr.ph
	ldr	r0, [r4, #4]
	ldr	r4, [r4, #28]
	ldr	r1, [r8, #16]
	add	r5, r0, #4
	ldr	r2, [r8, #28]
	mov	r0, #0
	ldr	r3, [r8, #40]
	lsl	lr, r4, #2
	ldr	r7, [r8, #52]
	ldr	r6, [r8, #64]
.LBB4_6:                                @ =>This Inner Loop Header: Depth=1
	vldr	s0, [r1]
	add	r4, r2, r0, lsl #2
	vldr	s2, [r3]
	add	r1, r1, #4
	vldr	s4, [r7]
	add	r3, r3, #4
	vadd.f32	d16, d1, d0
	vldr	s0, [r6]
	add	r7, r7, #4
	add	r6, r6, #4
	vadd.f32	d16, d16, d2
	vadd.f32	d0, d16, d0
	vstr	s0, [r4]
	vstr	s0, [r5, #-4]
	ldr	r4, [r2, r0, lsl #2]
	add	r0, r0, #1
	str	r4, [r5]
	add	r5, r5, lr
	cmp	r0, r12
	blo	.LBB4_6
.LBB4_7:                                @ %._crit_edge
	vpop	{d8, d9}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end4:
	.size	render, .Lfunc_end4-render
	.fnend

	.globl	cleanup
	.p2align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
	.fnstart
@ BB#0:
	bx	lr
.Lfunc_end5:
	.size	cleanup, .Lfunc_end5-cleanup
	.fnend

	.section	.text._ZNSt6vectorIfSaIfEE17_M_default_appendEj,"axG",%progbits,_ZNSt6vectorIfSaIfEE17_M_default_appendEj,comdat
	.weak	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	.p2align	2
	.type	_ZNSt6vectorIfSaIfEE17_M_default_appendEj,%function
_ZNSt6vectorIfSaIfEE17_M_default_appendEj: @ @_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r5, r1
	mov	r4, r0
	cmp	r5, #0
	beq	.LBB6_11
@ BB#1:
	ldr	r7, [r4, #4]
	ldr	r0, [r4, #8]
	sub	r0, r0, r7
	asr	r0, r0, #2
	cmp	r0, r5
	bhs	.LBB6_12
@ BB#2:
	ldr	r1, [r4]
	mvn	r8, #-1073741824
	sub	r0, r7, r1
	sub	r2, r8, r0, asr #2
	cmp	r2, r5
	blo	.LBB6_13
@ BB#3:                                 @ %_ZNKSt6vectorIfSaIfEE12_M_check_lenEjPKc.exit
	asr	r0, r0, #2
	cmp	r0, r5
	mov	r2, r0
	mov	r6, #0
	movlo	r2, r5
	add	r0, r2, r0
	cmp	r6, r0, lsr #30
	mov	r3, r0
	mvnne	r3, #-1073741824
	cmp	r0, r2
	movhs	r8, r3
	cmp	r8, #0
	beq	.LBB6_6
@ BB#4:
	cmp	r8, #1073741824
	bhs	.LBB6_14
@ BB#5:                                 @ %_ZNSt16allocator_traitsISaIfEE8allocateERS0_j.exit.i
	lsl	r0, r8, #2
	bl	_Znwj
	ldm	r4, {r1, r7}
	mov	r6, r0
.LBB6_6:                                @ %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEj.exit
	sub	r2, r7, r1
	mov	r0, #0
	asr	r7, r2, #2
	cmp	r0, r2, asr #2
	beq	.LBB6_8
@ BB#7:
	mov	r0, r6
	bl	memmove
.LBB6_8:
	add	r7, r6, r7, lsl #2
	lsl	r2, r5, #2
	mov	r1, #0
	mov	r0, r7
	bl	memset
	ldr	r0, [r4]
	add	r5, r7, r5, lsl #2
	cmp	r0, #0
	beq	.LBB6_10
@ BB#9:
	bl	_ZdlPv
.LBB6_10:                               @ %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfj.exit31
	str	r6, [r4]
	add	r0, r6, r8, lsl #2
	str	r5, [r4, #4]
	str	r0, [r4, #8]
.LBB6_11:
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.LBB6_12:                               @ %_ZSt27__uninitialized_default_n_aIPfjfET_S1_T0_RSaIT1_E.exit
	lsl	r2, r5, #2
	mov	r0, r7
	mov	r1, #0
	bl	memset
	add	r0, r7, r5, lsl #2
	str	r0, [r4, #4]
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.LBB6_13:
	movw	r0, :lower16:.L.str.10
	movt	r0, :upper16:.L.str.10
	mov	lr, pc
	b	_ZSt20__throw_length_errorPKc
.LBB6_14:
	mov	lr, pc
	b	_ZSt17__throw_bad_allocv
.Lfunc_end6:
	.size	_ZNSt6vectorIfSaIfEE17_M_default_appendEj, .Lfunc_end6-_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	2
	.type	_GLOBAL__sub_I_render.ii,%function
_GLOBAL__sub_I_render.ii:               @ @_GLOBAL__sub_I_render.ii
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	movw	r5, :lower16:.L_MergedGlobals
	movw	r6, :lower16:_ZNSt6vectorIfSaIfEED2Ev
	movt	r5, :upper16:.L_MergedGlobals
	movw	r4, :lower16:__dso_handle
	mov	r7, #0
	mov	r1, r5
	str	r7, [r1, #16]!
	movt	r6, :upper16:_ZNSt6vectorIfSaIfEED2Ev
	movt	r4, :upper16:__dso_handle
	mov	r0, r6
	mov	r2, r4
	str	r7, [r5, #20]
	str	r7, [r5, #24]
	bl	__cxa_atexit
	mov	r1, r5
	mov	r0, r6
	str	r7, [r1, #28]!
	mov	r2, r4
	str	r7, [r5, #32]
	str	r7, [r5, #36]
	bl	__cxa_atexit
	mov	r1, r5
	mov	r0, r6
	str	r7, [r1, #40]!
	mov	r2, r4
	str	r7, [r5, #44]
	str	r7, [r5, #48]
	bl	__cxa_atexit
	mov	r1, r5
	mov	r0, r6
	str	r7, [r1, #52]!
	mov	r2, r4
	str	r7, [r5, #56]
	str	r7, [r5, #60]
	bl	__cxa_atexit
	str	r7, [r5, #64]!
	mov	r0, r6
	mov	r2, r4
	mov	r1, r5
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	bl	__cxa_atexit
	movw	r0, :lower16:_ZTV7PulseIn
	movw	r1, :lower16:thereminReader
	movt	r0, :upper16:_ZTV7PulseIn
	movw	r3, #0
	movt	r1, :upper16:thereminReader
	add	r0, r0, #8
	mvn	r2, #0
	stm	r1, {r0, r7}
	movt	r3, #17000
	str	r7, [r1, #8]
	add	lr, r1, #96
	str	r7, [r1, #12]
	mov	r6, #1
	str	r2, [r1, #20]
	mov	r5, #2
	str	r0, [r1, #48]
	movw	r0, #2646
	str	r7, [r1, #52]
	mov	r12, #3
	str	r7, [r1, #56]
	str	r7, [r1, #60]
	str	r2, [r1, #68]
	mov	r2, #7
	str	r7, [r1, #128]
	stm	lr, {r0, r2, r3, r7}
	movw	r0, :lower16:_ZN14ThereminReaderD2Ev
	movt	r0, :upper16:_ZN14ThereminReaderD2Ev
	mov	r2, r4
	str	r6, [r1, #112]
	str	r5, [r1, #116]
	str	r12, [r1, #120]
	str	r7, [r1, #124]
	bl	__cxa_atexit
	movw	r5, :lower16:.L_MergedGlobals.3
	movt	r5, :upper16:.L_MergedGlobals.3
	mov	r0, r5
	bl	_ZN10soundtouch10SoundTouchC1Ev
	movw	r6, :lower16:_ZN12PitchShifterD2Ev
	mov	r1, r5
	movt	r6, :upper16:_ZN12PitchShifterD2Ev
	mov	r2, r4
	mov	r0, r6
	bl	__cxa_atexit
	movw	r5, :lower16:.L_MergedGlobals.4
	movt	r5, :upper16:.L_MergedGlobals.4
	mov	r0, r5
	bl	_ZN10soundtouch10SoundTouchC1Ev
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	__cxa_atexit
	movw	r5, :lower16:.L_MergedGlobals.5
	movt	r5, :upper16:.L_MergedGlobals.5
	mov	r0, r5
	bl	_ZN10soundtouch10SoundTouchC1Ev
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	pop	{r4, r5, r6, r7, r11, lr}
	b	__cxa_atexit
.Lfunc_end7:
	.size	_GLOBAL__sub_I_render.ii, .Lfunc_end7-_GLOBAL__sub_I_render.ii
	.fnend

	.type	thereminReader,%object  @ @thereminReader
	.bss
	.globl	thereminReader
	.p2align	3
thereminReader:
	.zero	136
	.size	thereminReader, 136

	.type	.L_ZZ5setupE19pitchTrackingMethod,%object @ @_ZZ5setupE19pitchTrackingMethod
	.section	.rodata.str1.1,"aMS",%progbits,1
.L_ZZ5setupE19pitchTrackingMethod:
	.asciz	"yinfft"
	.size	.L_ZZ5setupE19pitchTrackingMethod, 7

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"Pitch: %lf\n"
	.size	.L.str, 12

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"Mix: %lf\n"
	.size	.L.str.9, 10

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"vector::_M_default_append"
	.size	.L.str.10, 26

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_render.ii(target1)
	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.local	.L_MergedGlobals
	.comm	.L_MergedGlobals,76,16
	.type	.L_MergedGlobals.3,%object @ @_MergedGlobals.3
	.local	.L_MergedGlobals.3
	.comm	.L_MergedGlobals.3,88,16
	.type	.L_MergedGlobals.4,%object @ @_MergedGlobals.4
	.local	.L_MergedGlobals.4
	.comm	.L_MergedGlobals.4,88,16
	.type	.L_MergedGlobals.5,%object @ @_MergedGlobals.5
	.local	.L_MergedGlobals.5
	.comm	.L_MergedGlobals.5,88,16

	.globl	sampleRate
sampleRate = .L_MergedGlobals
	.size	sampleRate, 4
	.globl	bufferLength
bufferLength = .L_MergedGlobals+4
	.size	bufferLength, 4
	.globl	pitchTracker
pitchTracker = .L_MergedGlobals+8
	.size	pitchTracker, 8
	.globl	inputAudioBuffer
inputAudioBuffer = .L_MergedGlobals+16
	.size	inputAudioBuffer, 12
	.globl	outputAudioBuffer
outputAudioBuffer = .L_MergedGlobals+28
	.size	outputAudioBuffer, 12
	.globl	processAudioBuffer1
processAudioBuffer1 = .L_MergedGlobals+40
	.size	processAudioBuffer1, 12
	.globl	processAudioBuffer2
processAudioBuffer2 = .L_MergedGlobals+52
	.size	processAudioBuffer2, 12
	.globl	processAudioBuffer3
processAudioBuffer3 = .L_MergedGlobals+64
	.size	processAudioBuffer3, 12
	.globl	pitchShifter1
pitchShifter1 = .L_MergedGlobals.3
	.size	pitchShifter1, 88
	.globl	pitchShifter2
pitchShifter2 = .L_MergedGlobals.4
	.size	pitchShifter2, 88
	.globl	pitchShifter3
pitchShifter3 = .L_MergedGlobals.5
	.size	pitchShifter3, 88
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
