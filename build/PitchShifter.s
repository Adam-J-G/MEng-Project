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
	.globl	_ZN12PitchShifter6initDLEi
	.p2align	2
	.type	_ZN12PitchShifter6initDLEi,%function
_ZN12PitchShifter6initDLEi:             @ @_ZN12PitchShifter6initDLEi
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	vmov	s0, r1
	mov	r4, r0
	vcvt.f64.s32	d0, s0
	bl	_ZN3stk3Stk13setSampleRateEd
	vmov.f64	d0, #1.000000e+00
	mov	r0, r4
	pop	{r4, r10, r11, lr}
	b	_ZN3stk8PitShift8setShiftEd
.Lfunc_end0:
	.size	_ZN12PitchShifter6initDLEi, .Lfunc_end0-_ZN12PitchShifter6initDLEi
	.fnend

	.globl	_ZN12PitchShifter7shiftDLEf
	.p2align	2
	.type	_ZN12PitchShifter7shiftDLEf,%function
_ZN12PitchShifter7shiftDLEf:            @ @_ZN12PitchShifter7shiftDLEf
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	vcvt.f64.f32	d0, s0
	bl	_ZN3stk8PitShift4tickEd
	vcvt.f32.f64	s0, d0
	pop	{r11, pc}
.Lfunc_end1:
	.size	_ZN12PitchShifter7shiftDLEf, .Lfunc_end1-_ZN12PitchShifter7shiftDLEf
	.fnend

	.section	.text._ZN3stk8PitShift4tickEd,"axG",%progbits,_ZN3stk8PitShift4tickEd,comdat
	.weak	_ZN3stk8PitShift4tickEd
	.p2align	3
	.type	_ZN3stk8PitShift4tickEd,%function
_ZN3stk8PitShift4tickEd:                @ @_ZN3stk8PitShift4tickEd
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.vsave	{d8, d9}
	vpush	{d8, d9}
	mov	r4, r0
	vmov.f64	d8, d0
	vldr	d16, [r4, #432]
	vldr	d17, [r4, #464]
	vadd.f64	d0, d16, d17
	vldr	d16, .LCPI2_0
	vstr	d0, [r4, #432]
	vcmpe.f64	d0, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB2_4
@ BB#1:                                 @ %.lr.ph28
	vldr	s2, [r4, #472]
	vcvt.f64.u32	d17, s2
.LBB2_2:                                @ =>This Inner Loop Header: Depth=1
	vsub.f64	d0, d0, d17
	vcmpe.f64	d0, d16
	vmrs	APSR_nzcv, fpscr
	bgt	.LBB2_2
@ BB#3:                                 @ %..preheader16_crit_edge
	vstr	d0, [r4, #432]
.LBB2_4:                                @ %.preheader16
	vmov.f64	d9, #1.200000e+01
	vcmpe.f64	d0, d9
	vmrs	APSR_nzcv, fpscr
	bge	.LBB2_8
@ BB#5:                                 @ %.lr.ph22
	vldr	s2, [r4, #472]
	vcvt.f64.u32	d17, s2
.LBB2_6:                                @ =>This Inner Loop Header: Depth=1
	vadd.f64	d0, d17, d0
	vcmpe.f64	d0, d9
	vmrs	APSR_nzcv, fpscr
	blt	.LBB2_6
@ BB#7:                                 @ %._crit_edge23
	vstr	d0, [r4, #432]
.LBB2_8:
	vldr	s2, [r4, #476]
	vcvt.f64.u32	d17, s2
	vadd.f64	d17, d17, d0
	vcmpe.f64	d17, d16
	vstr	d17, [r4, #440]
	vmrs	APSR_nzcv, fpscr
	ble	.LBB2_12
@ BB#9:                                 @ %.lr.ph20
	vldr	s2, [r4, #472]
	vcvt.f64.u32	d18, s2
.LBB2_10:                               @ =>This Inner Loop Header: Depth=1
	vsub.f64	d17, d17, d18
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bgt	.LBB2_10
@ BB#11:                                @ %..preheader_crit_edge
	vstr	d17, [r4, #440]
.LBB2_12:                               @ %.preheader
	vcmpe.f64	d17, d9
	vmrs	APSR_nzcv, fpscr
	bge	.LBB2_16
@ BB#13:                                @ %.lr.ph
	vldr	s2, [r4, #472]
	vcvt.f64.u32	d16, s2
.LBB2_14:                               @ =>This Inner Loop Header: Depth=1
	vadd.f64	d17, d16, d17
	vcmpe.f64	d17, d9
	vmrs	APSR_nzcv, fpscr
	blt	.LBB2_14
@ BB#15:                                @ %._crit_edge
	vstr	d17, [r4, #440]
.LBB2_16:
	add	r0, r4, #48
	bl	_ZN3stk6DelayL8setDelayEd
	vldr	d0, [r4, #440]
	add	r0, r4, #240
	bl	_ZN3stk6DelayL8setDelayEd
	ldr	r0, [r4, #476]
	vmov.f64	d16, #1.000000e+00
	add	r1, r0, #12
	vmov	s0, r1
	vcvt.f64.u32	d17, s0
	vdiv.f64	d17, d16, d17
	vldr	d18, [r4, #432]
	vmov	s0, r0
	vadd.f64	d18, d18, d9
	vcvt.f64.u32	d19, s0
	vsub.f64	d18, d18, d19
	vmul.f64	d17, d18, d17
	vabs.f64	d18, d17
	vsub.f64	d17, d16, d18
	vstr	d17, [r4, #448]
	vstr	d18, [r4, #456]
	vldr	d18, [r4, #56]
	ldr	r0, [r4, #192]
	vmul.f64	d18, d18, d8
	add	r1, r0, #1
	str	r1, [r4, #192]
	ldr	r2, [r4, #160]
	add	r0, r2, r0, lsl #3
	vstr	d18, [r0]
	ldr	r0, [r4, #184]
	cmp	r1, r0
	moveq	r1, #0
	streq	r1, [r4, #192]
	ldrb	r1, [r4, #232]
	cmp	r1, #0
	beq	.LBB2_18
@ BB#17:
	ldr	r1, [r4, #196]
	vldr	d18, [r4, #216]
	add	r3, r2, r1, lsl #3
	vldr	d19, [r3]
	add	r3, r1, #1
	cmp	r3, r0
	vmul.f64	d18, d18, d19
	addlo	r2, r2, r3, lsl #3
	vstr	d18, [r4, #224]
	vldr	d19, [r2]
	mov	r2, #0
	vldr	d20, [r4, #208]
	vmul.f64	d19, d19, d20
	vadd.f64	d18, d19, d18
	vstr	d18, [r4, #224]
	strb	r2, [r4, #232]
	b	.LBB2_19
.LBB2_18:                               @ %._crit_edge.i.i
	ldr	r1, [r4, #196]
	vldr	d18, [r4, #224]
.LBB2_19:                               @ %_ZN3stk6DelayL4tickEd.exit
	ldr	r2, [r4, #72]
	add	r1, r1, #1
	cmp	r1, r0
	mov	r3, #1
	movweq	r1, #0
	vstr	d18, [r2]
	strb	r3, [r4, #232]
	str	r1, [r4, #196]
	vldr	d18, [r2]
	ldr	r0, [r4, #8]
	vmul.f64	d17, d18, d17
	vstr	d17, [r0]
	vldr	d18, [r4, #248]
	ldr	r0, [r4, #384]
	vmul.f64	d18, d18, d8
	add	r1, r0, #1
	vldr	d17, [r4, #456]
	str	r1, [r4, #384]
	ldr	r2, [r4, #352]
	add	r0, r2, r0, lsl #3
	vstr	d18, [r0]
	ldr	r0, [r4, #376]
	cmp	r1, r0
	moveq	r1, #0
	streq	r1, [r4, #384]
	ldrb	r1, [r4, #424]
	cmp	r1, #0
	beq	.LBB2_21
@ BB#20:
	ldr	r1, [r4, #388]
	vldr	d18, [r4, #408]
	add	r3, r2, r1, lsl #3
	vldr	d19, [r3]
	add	r3, r1, #1
	cmp	r3, r0
	vmul.f64	d18, d18, d19
	addlo	r2, r2, r3, lsl #3
	vstr	d18, [r4, #416]
	vldr	d19, [r2]
	mov	r2, #0
	vldr	d20, [r4, #400]
	vmul.f64	d19, d19, d20
	vadd.f64	d18, d19, d18
	vstr	d18, [r4, #416]
	strb	r2, [r4, #424]
	b	.LBB2_22
.LBB2_21:                               @ %._crit_edge.i.i9
	ldr	r1, [r4, #388]
	vldr	d18, [r4, #416]
.LBB2_22:                               @ %_ZN3stk6DelayL4tickEd.exit15
	ldr	r2, [r4, #264]
	add	r1, r1, #1
	cmp	r1, r0
	mov	r3, #1
	movweq	r1, #0
	vstr	d18, [r2]
	strb	r3, [r4, #424]
	str	r1, [r4, #388]
	vldr	d18, [r2]
	ldr	r0, [r4, #8]
	vmul.f64	d17, d18, d17
	vldr	d18, [r0]
	vadd.f64	d17, d18, d17
	vstr	d17, [r0]
	vldr	d18, [r4, #40]
	vmul.f64	d17, d17, d18
	vstr	d17, [r0]
	vldr	d18, [r4, #40]
	vsub.f64	d16, d16, d18
	vmul.f64	d16, d16, d8
	vadd.f64	d0, d17, d16
	vstr	d0, [r0]
	vpop	{d8, d9}
	pop	{r4, r10, r11, pc}
	.p2align	3
@ BB#23:
.LCPI2_0:
	.long	0                       @ double 5012
	.long	1085510656
.Lfunc_end2:
	.size	_ZN3stk8PitShift4tickEd, .Lfunc_end2-_ZN3stk8PitShift4tickEd
	.fnend

	.text
	.globl	_ZN12PitchShifter10setShiftDLEf
	.p2align	2
	.type	_ZN12PitchShifter10setShiftDLEf,%function
_ZN12PitchShifter10setShiftDLEf:        @ @_ZN12PitchShifter10setShiftDLEf
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	vldr	s2, .LCPI3_0
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	mov	r4, r0
	vmul.f32	d0, d0, d1
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	exp2f
	vcvt.f64.f32	d0, s0
	mov	r0, r4
	pop	{r4, r10, r11, lr}
	b	_ZN3stk8PitShift8setShiftEd
	.p2align	2
@ BB#1:
.LCPI3_0:
	.long	1034594987              @ float 0.0833333358
.Lfunc_end3:
	.size	_ZN12PitchShifter10setShiftDLEf, .Lfunc_end3-_ZN12PitchShifter10setShiftDLEf
	.fnend

	.globl	_ZN12PitchShifter9initWSOLAEii
	.p2align	2
	.type	_ZN12PitchShifter9initWSOLAEii,%function
_ZN12PitchShifter9initWSOLAEii:         @ @_ZN12PitchShifter9initWSOLAEii
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	add	r4, r0, #480
	str	r1, [r0, #560]
	str	r2, [r0, #564]
	mov	r0, r4
	bl	_ZN10soundtouch10SoundTouch13setSampleRateEj
	mov	r0, r4
	mov	r1, #1
	pop	{r4, r10, r11, lr}
	b	_ZN10soundtouch10SoundTouch11setChannelsEj
.Lfunc_end4:
	.size	_ZN12PitchShifter9initWSOLAEii, .Lfunc_end4-_ZN12PitchShifter9initWSOLAEii
	.fnend

	.globl	_ZN12PitchShifter11readInWSOLAEPf
	.p2align	2
	.type	_ZN12PitchShifter11readInWSOLAEPf,%function
_ZN12PitchShifter11readInWSOLAEPf:      @ @_ZN12PitchShifter11readInWSOLAEPf
	.fnstart
@ BB#0:
	add	r3, r0, #480
	ldr	r2, [r0, #564]
	mov	r0, r3
	b	_ZN10soundtouch10SoundTouch10putSamplesEPKfj
.Lfunc_end5:
	.size	_ZN12PitchShifter11readInWSOLAEPf, .Lfunc_end5-_ZN12PitchShifter11readInWSOLAEPf
	.fnend

	.globl	_ZN12PitchShifter10shiftWSOLAEff
	.p2align	2
	.type	_ZN12PitchShifter10shiftWSOLAEff,%function
_ZN12PitchShifter10shiftWSOLAEff:       @ @_ZN12PitchShifter10shiftWSOLAEff
	.fnstart
@ BB#0:
	vcvt.f64.f32	d0, s1
	add	r0, r0, #480
	b	_ZN10soundtouch10SoundTouch17setPitchSemiTonesEd
.Lfunc_end6:
	.size	_ZN12PitchShifter10shiftWSOLAEff, .Lfunc_end6-_ZN12PitchShifter10shiftWSOLAEff
	.fnend

	.globl	_ZN12PitchShifter12readOutWSOLAEPf
	.p2align	2
	.type	_ZN12PitchShifter12readOutWSOLAEPf,%function
_ZN12PitchShifter12readOutWSOLAEPf:     @ @_ZN12PitchShifter12readOutWSOLAEPf
	.fnstart
@ BB#0:
	add	r3, r0, #480
	ldr	r2, [r0, #564]
	mov	r0, r3
	b	_ZN10soundtouch10SoundTouch14receiveSamplesEPfj
.Lfunc_end7:
	.size	_ZN12PitchShifter12readOutWSOLAEPf, .Lfunc_end7-_ZN12PitchShifter12readOutWSOLAEPf
	.fnend

	.globl	_ZN12PitchShifter28frequnecyIntervalToSemitonesEii
	.p2align	2
	.type	_ZN12PitchShifter28frequnecyIntervalToSemitonesEii,%function
_ZN12PitchShifter28frequnecyIntervalToSemitonesEii: @ @_ZN12PitchShifter28frequnecyIntervalToSemitonesEii
	.fnstart
@ BB#0:
	cmp	r1, #0
	beq	.LBB8_2
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
.LBB8_2:
	vmov.i32	d0, #0x0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bx	lr
.Lfunc_end8:
	.size	_ZN12PitchShifter28frequnecyIntervalToSemitonesEii, .Lfunc_end8-_ZN12PitchShifter28frequnecyIntervalToSemitonesEii
	.fnend

	.section	.text._ZN3stk6DelayL8setDelayEd,"axG",%progbits,_ZN3stk6DelayL8setDelayEd,comdat
	.weak	_ZN3stk6DelayL8setDelayEd
	.p2align	2
	.type	_ZN3stk6DelayL8setDelayEd,%function
_ZN3stk6DelayL8setDelayEd:              @ @_ZN3stk6DelayL8setDelayEd
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.vsave	{d8}
	vpush	{d8}
	mov	r4, r0
	vmov.f64	d8, d0
	ldr	r0, [r4, #136]
	vmov.f64	d16, #1.000000e+00
	vmov	s0, r0
	vadd.f64	d18, d8, d16
	vcvt.f64.u32	d17, s0
	vcmpe.f64	d18, d17
	vmrs	APSR_nzcv, fpscr
	ble	.LBB9_2
@ BB#1:
	movw	r5, :lower16:_ZN3stk3Stk8oStream_B5cxx11E
	movw	r1, :lower16:.L.str
	movt	r5, :upper16:_ZN3stk3Stk8oStream_B5cxx11E
	movt	r1, :upper16:.L.str
	mov	r0, r5
	mov	r2, #28
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	movw	r1, :lower16:.L.str.1
	mov	r2, #24
	movt	r1, :upper16:.L.str.1
	b	.LBB9_4
.LBB9_2:
	vcmpe.f64	d8, #0
	vmrs	APSR_nzcv, fpscr
	bge	.LBB9_5
@ BB#3:
	movw	r5, :lower16:_ZN3stk3Stk8oStream_B5cxx11E
	movw	r1, :lower16:.L.str
	movt	r5, :upper16:_ZN3stk3Stk8oStream_B5cxx11E
	movt	r1, :upper16:.L.str
	mov	r0, r5
	mov	r2, #28
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	movw	r1, :lower16:.L.str.2
	mov	r2, #17
	movt	r1, :upper16:.L.str.2
.LBB9_4:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r4
	mov	r1, #1
	vpop	{d8}
	pop	{r4, r5, r11, lr}
	b	_ZNK3stk3Stk11handleErrorENS_8StkError4TypeE
.LBB9_5:
	ldr	r1, [r4, #144]
	vmov	s0, r1
	vcvt.f64.u32	d18, s0
	vsub.f64	d18, d18, d8
	vstr	d8, [r4, #152]
	b	.LBB9_7
.LBB9_6:                                @ %.lr.ph
                                        @   in Loop: Header=BB9_7 Depth=1
	vadd.f64	d18, d17, d18
.LBB9_7:                                @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	vcmpe.f64	d18, #0
	vmrs	APSR_nzcv, fpscr
	blt	.LBB9_6
@ BB#8:                                 @ %._crit_edge
	vcvt.s32.f64	s0, d18
	vcvt.f64.u32	d17, s0
	vmov	r1, s0
	vsub.f64	d17, d18, d17
	vsub.f64	d16, d16, d17
	vcvt.s32.f64	s0, d18
	cmp	r1, r0
	moveq	r0, #0
	vstr	s0, [r4, #148]
	vstr	d17, [r4, #160]
	vstr	d16, [r4, #168]
	streq	r0, [r4, #148]
	mov	r0, #1
	strb	r0, [r4, #184]
	vpop	{d8}
	pop	{r4, r5, r11, pc}
.Lfunc_end9:
	.size	_ZN3stk6DelayL8setDelayEd, .Lfunc_end9-_ZN3stk6DelayL8setDelayEd
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	2
	.type	_GLOBAL__sub_I_PitchShifter.ii,%function
_GLOBAL__sub_I_PitchShifter.ii:         @ @_GLOBAL__sub_I_PitchShifter.ii
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	movw	r4, :lower16:_ZStL8__ioinit
	movt	r4, :upper16:_ZStL8__ioinit
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	movw	r0, :lower16:_ZNSt8ios_base4InitD1Ev
	movw	r2, :lower16:__dso_handle
	movt	r0, :upper16:_ZNSt8ios_base4InitD1Ev
	movt	r2, :upper16:__dso_handle
	mov	r1, r4
	pop	{r4, r10, r11, lr}
	b	__cxa_atexit
.Lfunc_end10:
	.size	_GLOBAL__sub_I_PitchShifter.ii, .Lfunc_end10-_GLOBAL__sub_I_PitchShifter.ii
	.fnend

	.type	_ZStL8__ioinit,%object  @ @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"DelayL::setDelay: argument ("
	.size	.L.str, 29

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	") greater than  maximum!"
	.size	.L.str.1, 25

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	") less than zero!"
	.size	.L.str.2, 18

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_PitchShifter.ii(target1)

	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
