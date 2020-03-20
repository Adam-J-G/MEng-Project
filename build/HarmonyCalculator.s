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
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.vsave	{d8, d9}
	vpush	{d8, d9}
	vmov	s0, r1
	mov	r4, r0
	vcvt.f32.s32	d9, d0
	vmov.f32	d16, #2.000000e+00
	vmov.f32	d8, #1.200000e+01
	vadd.f32	d0, d9, d16
	vstr	s18, [r4]
	vstr	s18, [r4, #4]
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	vmov.f32	s1, s16
	bl	fmodf_neon_hfp
	vmov.f32	d16, #4.000000e+00
	vstr	s0, [r4, #8]
	vmov.f32	s1, s16
	vadd.f32	d1, d9, d16
	vmov.f32	s0, s2
	bl	fmodf_neon_hfp
	vmov.f32	d16, #5.000000e+00
	vstr	s0, [r4, #12]
	vmov.f32	s1, s16
	vadd.f32	d1, d9, d16
	vmov.f32	s0, s2
	bl	fmodf_neon_hfp
	vmov.f32	d16, #7.000000e+00
	vstr	s0, [r4, #16]
	vmov.f32	s1, s16
	vadd.f32	d1, d9, d16
	vmov.f32	s0, s2
	bl	fmodf_neon_hfp
	vmov.f32	d16, #9.000000e+00
	vstr	s0, [r4, #20]
	vmov.f32	s1, s16
	vadd.f32	d1, d9, d16
	vmov.f32	s0, s2
	bl	fmodf_neon_hfp
	vmov.f32	d16, #1.100000e+01
	vstr	s0, [r4, #24]
	vmov.f32	s1, s16
	vadd.f32	d1, d9, d16
	vmov.f32	s0, s2
	bl	fmodf_neon_hfp
	vstr	s0, [r4, #28]
	vpop	{d8, d9}
	pop	{r4, r10, r11, pc}
.Lfunc_end0:
	.size	_ZN17HarmonyCalculator9setKeySigEi, .Lfunc_end0-_ZN17HarmonyCalculator9setKeySigEi
	.fnend

	.globl	_ZN17HarmonyCalculator14setInputValuesEff
	.p2align	2
	.type	_ZN17HarmonyCalculator14setInputValuesEff,%function
_ZN17HarmonyCalculator14setInputValuesEff: @ @_ZN17HarmonyCalculator14setInputValuesEff
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.vsave	{d8, d9}
	vpush	{d8, d9}
	vcmpe.f32	s1, #0
	vldr	s6, .LCPI1_0
	vmrs	APSR_nzcv, fpscr
	vorr	d1, d0, d0
	mov	r4, r0
	vmov.f32	s4, s1
	vmul.f32	d1, d1, d3
	vmov.f32	d17, #-2.000000e+01
	vmov.f32	d16, #2.500000e-01
	vmov.f32	s0, s2
	vldreq	s4, [r4, #36]
	vadd.f32	d17, d2, d17
	vmul.f32	d2, d17, d16
	vstr	s4, [r4, #32]
	vstr	s1, [r4, #36]
	bl	log10f_neon_hfp
	vldr	s2, .LCPI1_1
	vmov.f32	s16, s0
	vmov.f32	d0, #2.000000e+00
	vmov.f32	s1, s2
	bl	powf_neon_hfp
	bl	log10f_neon_hfp
	vdiv.f32	s0, s16, s0
	bl	roundf
	vmov.f32	d1, #1.200000e+01
	vmov.f32	s1, s2
	bl	fmodf_neon_hfp
	vmov.f64	d8, d0
	vldr	s0, [r4, #4]
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB1_13
@ BB#1:
	vldr	s2, [r4, #8]
	mov	r5, #1
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB1_14
@ BB#2:
	vldr	s4, [r4, #12]
	vcmpe.f32	s4, s16
	vmrs	APSR_nzcv, fpscr
	bne	.LBB1_4
@ BB#3:
	mov	r5, #2
	b	.LBB1_14
.LBB1_4:
	vldr	s6, [r4, #16]
	vcmpe.f32	s6, s16
	vmrs	APSR_nzcv, fpscr
	bne	.LBB1_6
@ BB#5:
	mov	r5, #3
	b	.LBB1_14
.LBB1_6:
	vldr	s8, [r4, #20]
	vcmpe.f32	s8, s16
	vmrs	APSR_nzcv, fpscr
	bne	.LBB1_8
@ BB#7:
	mov	r5, #4
	b	.LBB1_14
.LBB1_8:
	vldr	s10, [r4, #24]
	vcmpe.f32	s10, s16
	vmrs	APSR_nzcv, fpscr
	bne	.LBB1_10
@ BB#9:
	mov	r5, #5
	b	.LBB1_14
.LBB1_10:
	vldr	s12, [r4, #28]
	vcmpe.f32	s12, s16
	vmrs	APSR_nzcv, fpscr
	bne	.LBB1_12
@ BB#11:
	mov	r5, #6
	b	.LBB1_14
.LBB1_12:
	vmov.f32	d16, #-1.000000e+00
	vadd.f32	d7, d8, d16
	vcmpe.f32	s14, s0
	vmrs	APSR_nzcv, fpscr
	bne	.LBB1_15
.LBB1_13:
	mov	r5, #0
.LBB1_14:                               @ %_ZN17HarmonyCalculator19getNoteInScaleIndexEf.exit
	vldr	s18, [r4, #32]
	vmov.f32	s0, s18
	bl	roundf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vcvt.s32.f32	d1, d0
	vsub.f32	d16, d9, d0
	vmov	r0, s2
	add	r0, r0, r5
	add	r0, r4, r0, lsl #2
	vldr	s2, [r0, #4]
	vsub.f32	d17, d1, d8
	vadd.f32	d0, d17, d16
	vsub.f32	d16, d16, d8
	vstr	s0, [r4, #40]
	vldr	s0, [r0, #12]
	vadd.f32	d0, d16, d0
	vstr	s0, [r4, #44]
	vldr	s0, [r0, #20]
	vadd.f32	d0, d16, d0
	vstr	s0, [r4, #48]
	vpop	{d8, d9}
	pop	{r4, r5, r11, pc}
.LBB1_15:
	vcmpe.f32	s14, s2
	vmrs	APSR_nzcv, fpscr
	beq	.LBB1_14
@ BB#16:
	vcmpe.f32	s14, s4
	mov	r5, #2
	vmrs	APSR_nzcv, fpscr
	beq	.LBB1_14
@ BB#17:
	vcmpe.f32	s14, s6
	mov	r5, #3
	vmrs	APSR_nzcv, fpscr
	beq	.LBB1_14
@ BB#18:
	vcmpe.f32	s14, s8
	mov	r5, #4
	vmrs	APSR_nzcv, fpscr
	beq	.LBB1_14
@ BB#19:
	vcmpe.f32	s14, s10
	mov	r5, #5
	vmrs	APSR_nzcv, fpscr
	beq	.LBB1_14
@ BB#20:
	vcmpe.f32	s14, s12
	mov	r5, #6
	vmrs	APSR_nzcv, fpscr
	movne	r5, #0
	b	.LBB1_14
	.p2align	2
@ BB#21:
.LCPI1_0:
	.long	1024782857              @ float 0.0363636352
.LCPI1_1:
	.long	1034594987              @ float 0.0833333358
.Lfunc_end1:
	.size	_ZN17HarmonyCalculator14setInputValuesEff, .Lfunc_end1-_ZN17HarmonyCalculator14setInputValuesEff
	.fnend

	.globl	_ZN17HarmonyCalculator19getNoteInScaleIndexEf
	.p2align	2
	.type	_ZN17HarmonyCalculator19getNoteInScaleIndexEf,%function
_ZN17HarmonyCalculator19getNoteInScaleIndexEf: @ @_ZN17HarmonyCalculator19getNoteInScaleIndexEf
	.fnstart
@ BB#0:
	mov	r1, r0
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vldr	s2, [r1, #4]
	vcmpe.f32	s2, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB2_7
@ BB#1:
	vldr	s4, [r1, #8]
	mov	r0, #1
	vcmpe.f32	s4, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB2_8
@ BB#2:
	vldr	s6, [r1, #12]
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	moveq	r0, #2
	bxeq	lr
	vldr	s8, [r1, #16]
	vcmpe.f32	s8, s0
	vmrs	APSR_nzcv, fpscr
	bne	.LBB2_4
@ BB#3:
	mov	r0, #3
	bx	lr
.LBB2_4:
	vldr	s10, [r1, #20]
	vcmpe.f32	s10, s0
	vmrs	APSR_nzcv, fpscr
	moveq	r0, #4
	bxeq	lr
	vldr	s12, [r1, #24]
	vcmpe.f32	s12, s0
	vmrs	APSR_nzcv, fpscr
	bne	.LBB2_6
@ BB#5:
	mov	r0, #5
	bx	lr
.LBB2_6:
	vldr	s14, [r1, #28]
	vcmpe.f32	s14, s0
	vmrs	APSR_nzcv, fpscr
	moveq	r0, #6
	bxeq	lr
	vmov.f32	d16, #-1.000000e+00
	vadd.f32	d0, d0, d16
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bne	.LBB2_9
.LBB2_7:
	mov	r0, #0
.LBB2_8:                                @ %.thread
	bx	lr
.LBB2_9:
	vcmpe.f32	s0, s4
	vmrs	APSR_nzcv, fpscr
	beq	.LBB2_8
@ BB#10:
	vcmpe.f32	s0, s6
	mov	r0, #2
	vmrs	APSR_nzcv, fpscr
	beq	.LBB2_8
@ BB#11:
	vcmpe.f32	s0, s8
	mov	r0, #3
	vmrs	APSR_nzcv, fpscr
	beq	.LBB2_8
@ BB#12:
	vcmpe.f32	s0, s10
	mov	r0, #4
	vmrs	APSR_nzcv, fpscr
	bxeq	lr
	vcmpe.f32	s0, s12
	mov	r0, #5
	vmrs	APSR_nzcv, fpscr
	beq	.LBB2_8
@ BB#13:
	vcmpe.f32	s0, s14
	mov	r0, #6
	vmrs	APSR_nzcv, fpscr
	movne	r0, #0
	b	.LBB2_8
.Lfunc_end2:
	.size	_ZN17HarmonyCalculator19getNoteInScaleIndexEf, .Lfunc_end2-_ZN17HarmonyCalculator19getNoteInScaleIndexEf
	.fnend

	.globl	_ZN17HarmonyCalculator15getFirstHarmonyEv
	.p2align	2
	.type	_ZN17HarmonyCalculator15getFirstHarmonyEv,%function
_ZN17HarmonyCalculator15getFirstHarmonyEv: @ @_ZN17HarmonyCalculator15getFirstHarmonyEv
	.fnstart
@ BB#0:
	vldr	s0, [r0, #40]
	bx	lr
.Lfunc_end3:
	.size	_ZN17HarmonyCalculator15getFirstHarmonyEv, .Lfunc_end3-_ZN17HarmonyCalculator15getFirstHarmonyEv
	.fnend

	.globl	_ZN17HarmonyCalculator16getSecondHarmonyEv
	.p2align	2
	.type	_ZN17HarmonyCalculator16getSecondHarmonyEv,%function
_ZN17HarmonyCalculator16getSecondHarmonyEv: @ @_ZN17HarmonyCalculator16getSecondHarmonyEv
	.fnstart
@ BB#0:
	vldr	s0, [r0, #44]
	bx	lr
.Lfunc_end4:
	.size	_ZN17HarmonyCalculator16getSecondHarmonyEv, .Lfunc_end4-_ZN17HarmonyCalculator16getSecondHarmonyEv
	.fnend

	.globl	_ZN17HarmonyCalculator15getThirdHarmonyEv
	.p2align	2
	.type	_ZN17HarmonyCalculator15getThirdHarmonyEv,%function
_ZN17HarmonyCalculator15getThirdHarmonyEv: @ @_ZN17HarmonyCalculator15getThirdHarmonyEv
	.fnstart
@ BB#0:
	vldr	s0, [r0, #48]
	bx	lr
.Lfunc_end5:
	.size	_ZN17HarmonyCalculator15getThirdHarmonyEv, .Lfunc_end5-_ZN17HarmonyCalculator15getThirdHarmonyEv
	.fnend


	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
