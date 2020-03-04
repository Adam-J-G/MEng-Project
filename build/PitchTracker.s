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
	.file	"/root/Bela/projects/MEng-Project/build/PitchTracker.bc"
	.globl	_ZN12PitchTracker4initEPciii
	.p2align	2
	.type	_ZN12PitchTracker4initEPciii,%function
_ZN12PitchTracker4initEPciii:           @ @_ZN12PitchTracker4initEPciii
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	ldr	r12, [r11, #8]
	mov	r4, r0
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	bl	new_aubio_pitch
	str	r0, [r4]
	mov	r0, #1
	bl	new_fvec
	str	r0, [r4, #4]
	pop	{r4, r10, r11, pc}
.Lfunc_end0:
	.size	_ZN12PitchTracker4initEPciii, .Lfunc_end0-_ZN12PitchTracker4initEPciii
	.fnend

	.globl	_ZN12PitchTracker8getPitchERSt6vectorIfSaIfEE
	.p2align	2
	.type	_ZN12PitchTracker8getPitchERSt6vectorIfSaIfEE,%function
_ZN12PitchTracker8getPitchERSt6vectorIfSaIfEE: @ @_ZN12PitchTracker8getPitchERSt6vectorIfSaIfEE
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r5, r1
	mov	r7, r0
	ldm	r5, {r0, r1}
	sub	r0, r1, r0
	asr	r0, r0, #2
	bl	new_fvec
	mov	r1, r0
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.LBB1_8
@ BB#1:                                 @ %.lr.ph
	ldr	r6, [r5]
	mov	r5, #0
	ldr	r4, [r1, #4]
	cmp	r0, #3
	bls	.LBB1_7
@ BB#2:                                 @ %min.iters.checked
	mov	r12, r0
	bfc	r12, #0, #2
	cmp	r12, #0
	beq	.LBB1_7
@ BB#3:                                 @ %vector.memcheck
	add	r2, r6, r0, lsl #2
	cmp	r4, r2
	addlo	r2, r4, r0, lsl #2
	cmplo	r6, r2
	blo	.LBB1_7
@ BB#4:                                 @ %vector.body.preheader
	mov	r5, r12
	mov	r2, r4
	mov	r3, r6
.LBB1_5:                                @ %vector.body
                                        @ =>This Inner Loop Header: Depth=1
	vld1.32	{d16, d17}, [r3]!
	subs	r5, r5, #4
	vst1.32	{d16, d17}, [r2]!
	bne	.LBB1_5
@ BB#6:                                 @ %middle.block
	mov	r5, r12
	cmp	r0, r12
	beq	.LBB1_8
.LBB1_7:                                @ %scalar.ph
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r6, r5, lsl #2]
	str	r2, [r4, r5, lsl #2]
	add	r5, r5, #1
	cmp	r5, r0
	blo	.LBB1_7
.LBB1_8:                                @ %._crit_edge
	ldm	r7, {r0, r2}
	bl	aubio_pitch_do
	ldr	r0, [r7, #4]
	mov	r1, #0
	mov	r5, #0
	bl	fvec_get_sample
	vldr	s2, .LCPI1_0
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bge	.LBB1_10
@ BB#9:
	ldr	r0, [r7, #4]
	mov	r1, #0
	bl	fvec_get_sample
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vcvt.s32.f32	d0, d0
	vmov	r5, s0
.LBB1_10:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, pc}
	.p2align	2
@ BB#11:
.LCPI1_0:
	.long	1165623296              @ float 4000
.Lfunc_end1:
	.size	_ZN12PitchTracker8getPitchERSt6vectorIfSaIfEE, .Lfunc_end1-_ZN12PitchTracker8getPitchERSt6vectorIfSaIfEE
	.fnend


	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
