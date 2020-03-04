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
	.file	"/root/Bela/projects/MEng-Project/build/PitchShifter.bc"
	.globl	_ZN12PitchShifter4initEii
	.p2align	2
	.type	_ZN12PitchShifter4initEii,%function
_ZN12PitchShifter4initEii:              @ @_ZN12PitchShifter4initEii
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r3, r2
	mov	r2, r1
	mov	r4, r0
	strd	r2, r3, [r4, #80]
	bl	_ZN10soundtouch10SoundTouch13setSampleRateEj
	mov	r0, r4
	mov	r1, #1
	pop	{r4, r10, r11, lr}
	b	_ZN10soundtouch10SoundTouch11setChannelsEj
.Lfunc_end0:
	.size	_ZN12PitchShifter4initEii, .Lfunc_end0-_ZN12PitchShifter4initEii
	.fnend

	.globl	_ZN12PitchShifter6readInEPf
	.p2align	2
	.type	_ZN12PitchShifter6readInEPf,%function
_ZN12PitchShifter6readInEPf:            @ @_ZN12PitchShifter6readInEPf
	.fnstart
@ BB#0:
	ldr	r2, [r0, #84]
	b	_ZN10soundtouch10SoundTouch10putSamplesEPKfj
.Lfunc_end1:
	.size	_ZN12PitchShifter6readInEPf, .Lfunc_end1-_ZN12PitchShifter6readInEPf
	.fnend

	.globl	_ZN12PitchShifter5shiftEff
	.p2align	2
	.type	_ZN12PitchShifter5shiftEff,%function
_ZN12PitchShifter5shiftEff:             @ @_ZN12PitchShifter5shiftEff
	.fnstart
@ BB#0:
	vcvt.f64.f32	d0, s1
	b	_ZN10soundtouch10SoundTouch17setPitchSemiTonesEd
.Lfunc_end2:
	.size	_ZN12PitchShifter5shiftEff, .Lfunc_end2-_ZN12PitchShifter5shiftEff
	.fnend

	.globl	_ZN12PitchShifter7readOutEPf
	.p2align	2
	.type	_ZN12PitchShifter7readOutEPf,%function
_ZN12PitchShifter7readOutEPf:           @ @_ZN12PitchShifter7readOutEPf
	.fnstart
@ BB#0:
	ldr	r2, [r0, #84]
	b	_ZN10soundtouch10SoundTouch14receiveSamplesEPfj
.Lfunc_end3:
	.size	_ZN12PitchShifter7readOutEPf, .Lfunc_end3-_ZN12PitchShifter7readOutEPf
	.fnend

	.globl	_ZN12PitchShifter28frequnecyIntervalToSemitonesEii
	.p2align	2
	.type	_ZN12PitchShifter28frequnecyIntervalToSemitonesEii,%function
_ZN12PitchShifter28frequnecyIntervalToSemitonesEii: @ @_ZN12PitchShifter28frequnecyIntervalToSemitonesEii
	.fnstart
@ BB#0:
	cmp	r1, #0
	beq	.LBB4_2
@ BB#1:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	vmov	s0, r1
	vmov	s2, r2
	vcvt.f32.s32	d0, d0
	vcvt.f32.s32	d1, d1
	vdiv.f32	s0, s2, s0
	bl	log2f
	vmov.f32	d16, #1.200000e+01
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vmul.f32	d0, d0, d16
	pop	{r11, lr}
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bx	lr
.LBB4_2:
	vmov.i32	d0, #0x0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bx	lr
.Lfunc_end4:
	.size	_ZN12PitchShifter28frequnecyIntervalToSemitonesEii, .Lfunc_end4-_ZN12PitchShifter28frequnecyIntervalToSemitonesEii
	.fnend


	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
