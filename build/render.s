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
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r0
	add	r0, r4, #480
	bl	_ZN10soundtouch10SoundTouchD1Ev
	movw	r0, :lower16:_ZTVN3stk8PitShiftE
	movt	r0, :upper16:_ZTVN3stk8PitShiftE
	add	r1, r0, #8
	mov	r0, r4
	str	r1, [r0], #240
	bl	_ZN3stk6DelayLD1Ev
	add	r0, r4, #48
	bl	_ZN3stk6DelayLD1Ev
	movw	r0, :lower16:_ZTVN3stk6EffectE
	movt	r0, :upper16:_ZTVN3stk6EffectE
	add	r1, r0, #8
	mov	r0, r4
	str	r1, [r0], #8
	bl	_ZN3stk9StkFramesD1Ev
	mov	r0, r4
	pop	{r4, r10, r11, lr}
	b	_ZN3stk3StkD2Ev
.Lfunc_end2:
	.size	_ZN12PitchShifterD2Ev, .Lfunc_end2-_ZN12PitchShifterD2Ev
	.fnend

	.section	.text._ZN12ReverberatorD2Ev,"axG",%progbits,_ZN12ReverberatorD2Ev,comdat
	.weak	_ZN12ReverberatorD2Ev
	.p2align	2
	.type	_ZN12ReverberatorD2Ev,%function
_ZN12ReverberatorD2Ev:                  @ @_ZN12ReverberatorD2Ev
	.fnstart
@ BB#0:
	b	_ZN3stk8FreeVerbD1Ev
.Lfunc_end3:
	.size	_ZN12ReverberatorD2Ev, .Lfunc_end3-_ZN12ReverberatorD2Ev
	.fnend

	.text
	.globl	setup
	.p2align	2
	.type	setup,%function
setup:                                  @ @setup
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#8
	sub	sp, sp, #8
	mov	r5, r0
	movw	r4, :lower16:.L_MergedGlobals
	vldr	s0, [r5, #32]
	movt	r4, :upper16:.L_MergedGlobals
	vcvt.s32.f32	d0, d0
	vmov	r6, s0
	str	r6, [r4, #40]
	ldr	r1, [r5, #20]
	mov	r0, r6
	str	r1, [r4, #44]
	bl	__aeabi_idiv
	str	r0, [r4, #64]
	ldr	r0, [r4, #4]
	cmp	r0, #1
	beq	.LBB4_3
@ BB#1:
	cmp	r0, #0
	bne	.LBB4_5
@ BB#2:                                 @ %.thread
	asr	r0, r6, #31
	add	r0, r6, r0, lsr #18
	asr	r0, r0, #14
	b	.LBB4_4
.LBB4_3:
	asr	r0, r6, #31
	add	r0, r6, r0, lsr #20
	asr	r0, r0, #12
.LBB4_4:
	str	r0, [r4, #56]
.LBB4_5:
	movw	r0, :lower16:thereminReader
	mov	r1, r5
	movt	r0, :upper16:thereminReader
	bl	_ZN14ThereminReader4initEP11BelaContext
	mov	r0, r4
	mov	r1, r5
	bl	_ZN10LEDManager4initEP11BelaContext
	mov	r0, #0
	movw	r5, :lower16:.L_MergedGlobals.4
	strb	r0, [sp, #6]
	movw	r0, #29798
	strh	r0, [sp, #4]
	movw	r0, #27001
	movt	r0, #26222
	ldr	r3, [r4, #40]
	str	r0, [sp]
	movt	r5, :upper16:.L_MergedGlobals.4
	add	r0, r5, #60
	mov	r1, sp
	mov	r2, #2048
	bl	_ZN12PitchTracker4initEPcii
	ldr	r0, [r4, #4]
	cmp	r0, #0
	bne	.LBB4_7
@ BB#6:
	ldr	r1, [r4, #40]
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	bl	_ZN12PitchShifter6initDLEi
	ldr	r1, [r4, #40]
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter6initDLEi
	ldr	r1, [r4, #40]
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	bl	_ZN12PitchShifter6initDLEi
	ldr	r0, [r4, #4]
.LBB4_7:
	cmp	r0, #1
	bne	.LBB4_9
@ BB#8:
	ldr	r1, [r4, #40]
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	mov	r2, #2048
	bl	_ZN12PitchShifter9initWSOLAEii
	ldr	r1, [r4, #40]
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	mov	r2, #2048
	bl	_ZN12PitchShifter9initWSOLAEii
	ldr	r1, [r4, #40]
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	mov	r2, #2048
	bl	_ZN12PitchShifter9initWSOLAEii
.LBB4_9:
	ldr	r1, [r4, #40]
	movw	r0, :lower16:reverberator
	movt	r0, :upper16:reverberator
	bl	_ZN12Reverberator4initEi
	ldrd	r0, r1, [r5]
	mov	r2, #0
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #12
	bne	.LBB4_11
@ BB#10:
	movw	r0, :lower16:.L_MergedGlobals.4
	rsb	r1, r1, #4096
	movt	r0, :upper16:.L_MergedGlobals.4
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_12
.LBB4_11:
	cmp	r1, #4096
	addne	r0, r0, #16384
	strne	r0, [r5, #4]
.LBB4_12:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit
	ldr	r0, [r5, #12]
	ldr	r2, [r5, #16]
	ldr	r1, [r4, #44]
	sub	r3, r2, r0
	asr	r2, r3, #2
	cmp	r1, r3, asr #2
	bls	.LBB4_14
@ BB#13:
	sub	r1, r1, r2
	add	r0, r5, #12
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_15
.LBB4_14:
	cmp	r1, r2
	addlo	r0, r0, r1, lsl #2
	strlo	r0, [r5, #16]
.LBB4_15:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit4
	ldrd	r0, r1, [r5, #24]
	mov	r2, #0
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #12
	bne	.LBB4_17
@ BB#16:
	add	r0, r5, #24
	rsb	r1, r1, #4096
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_18
.LBB4_17:
	cmp	r1, #4096
	addne	r0, r0, #16384
	strne	r0, [r5, #28]
.LBB4_18:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit5
	ldr	r0, [r5, #36]
	mov	r2, #0
	ldr	r1, [r5, #40]
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #12
	bne	.LBB4_20
@ BB#19:
	add	r0, r5, #36
	rsb	r1, r1, #4096
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_21
.LBB4_20:
	cmp	r1, #4096
	addne	r0, r0, #16384
	strne	r0, [r5, #40]
.LBB4_21:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit6
	ldrd	r0, r1, [r5, #48]
	mov	r2, #0
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #12
	bne	.LBB4_23
@ BB#22:
	add	r0, r5, #48
	rsb	r1, r1, #4096
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_24
.LBB4_23:
	cmp	r1, #4096
	addne	r0, r0, #16384
	strne	r0, [r5, #52]
.LBB4_24:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit7
	ldr	r0, [r4, #24]
	mov	r1, #0
	mov	r2, #8192
	bl	memset
	ldr	r0, [r4, #28]
	mov	r1, #0
	mov	r2, #8192
	bl	memset
	ldr	r0, [r4, #32]
	mov	r1, #0
	mov	r2, #8192
	bl	memset
	ldr	r0, [r4, #36]
	mov	r1, #0
	mov	r2, #8192
	bl	memset
	movw	r0, :lower16:_Z22pitch_shift_backgroundPv
	movw	r2, :lower16:.L.str
	movt	r0, :upper16:_Z22pitch_shift_backgroundPv
	movt	r2, :upper16:.L.str
	mov	r1, #30
	mov	r3, #0
	bl	Bela_createAuxiliaryTask
	str	r0, [r4, #20]
	mov	r0, #1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end4:
	.size	setup, .Lfunc_end4-setup
	.fnend

	.globl	_Z22pitch_shift_backgroundPv
	.p2align	2
	.type	_Z22pitch_shift_backgroundPv,%function
_Z22pitch_shift_backgroundPv:           @ @_Z22pitch_shift_backgroundPv
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	movw	r1, :lower16:.L_MergedGlobals.4
	movt	r1, :upper16:.L_MergedGlobals.4
	ldr	r12, [r1, #48]
	ldr	r0, [r1]
	ldr	r2, [r1, #24]
	ldr	r3, [r1, #36]
	movw	r1, :lower16:.L_MergedGlobals
	movt	r1, :upper16:.L_MergedGlobals
	str	r12, [sp]
	ldr	r1, [r1, #12]
	bl	_Z13process_shiftPfiS_S_S_
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end5:
	.size	_Z22pitch_shift_backgroundPv, .Lfunc_end5-_Z22pitch_shift_backgroundPv
	.fnend

	.globl	_Z13process_shiftPfiS_S_S_
	.p2align	2
	.type	_Z13process_shiftPfiS_S_S_,%function
_Z13process_shiftPfiS_S_S_:             @ @_Z13process_shiftPfiS_S_S_
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	.vsave	{d8}
	vpush	{d8}
	movw	r10, :lower16:.L_MergedGlobals
	mov	r4, r1
	movt	r10, :upper16:.L_MergedGlobals
	ldr	r5, [r11, #8]
	ldr	r1, [r10, #24]
	mov	r8, r3
	mov	r9, r2
	mov	r2, #0
	movw	r3, #4094
	mov	r7, r4
.LBB6_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r0, r7, lsl #2]
	cmp	r7, r3
	str	r6, [r1, r2, lsl #2]
	add	r6, r7, #1
	movwgt	r6, #0
	add	r2, r2, #1
	mov	r7, r6
	cmp	r2, #2048
	bne	.LBB6_1
@ BB#2:
	movw	r0, :lower16:.L_MergedGlobals.4
	movt	r0, :upper16:.L_MergedGlobals.4
	add	r0, r0, #60
	bl	_ZN12PitchTracker8getPitchEPf
	vmov	s0, r0
	vcvt.f32.s32	d0, d0
	vstr	s0, [r10, #48]
	ldr	r0, [r10, #52]
	ldr	r1, [r10, #56]
	cmp	r0, r1
	bne	.LBB6_4
@ BB#3:
	mov	r6, #0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	movw	r0, :lower16:.L_MergedGlobals.5
	str	r6, [r10, #52]
	movt	r0, :upper16:.L_MergedGlobals.5
	vldr	s2, [r10, #68]
	vmov.f32	s1, s2
	bl	_ZN17HarmonyCalculator14setInputValuesEff
	ldr	r0, [r10, #48]
	mvn	r1, #-2147483648
	tst	r0, r1
	movne	r0, #1
	strbeq	r6, [r10, #1]
	strbne	r0, [r10, #1]
.LBB6_4:
	ldr	r0, [r10, #52]
	vldr	s16, .LCPI6_0
	add	r0, r0, #1
	str	r0, [r10, #52]
	vldr	s0, [r10, #80]
	vldr	s2, [r10, #96]
	vsub.f32	d16, d0, d1
	vabs.f32	d0, d16
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB6_6
@ BB#5:
	vldr	s0, [r10, #112]
	mov	r0, #0
	bl	Bela_setPgaGain
.LBB6_6:
	vldr	s0, [r10, #88]
	vldr	s2, [r10, #104]
	vsub.f32	d16, d0, d1
	vabs.f32	d0, d16
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB6_8
@ BB#7:
	ldr	r1, [r10, #120]
	movw	r0, :lower16:.L_MergedGlobals.5
	movt	r0, :upper16:.L_MergedGlobals.5
	bl	_ZN17HarmonyCalculator9setKeySigEi
.LBB6_8:
	vldr	s0, [r10, #92]
	vldr	s2, [r10, #108]
	vsub.f32	d16, d0, d1
	vabs.f32	d1, d16
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB6_10
@ BB#9:
	movw	r0, :lower16:reverberator
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	movt	r0, :upper16:reverberator
	bl	_ZN12Reverberator6setMixEf
.LBB6_10:
	ldr	r0, [r10, #4]
	mov	r3, r5
	cmp	r0, #0
	bne	.LBB6_16
@ BB#11:
	ldr	r0, [r10, #116]
	cmp	r0, #1
	blt	.LBB6_15
@ BB#12:
	movw	r0, :lower16:.L_MergedGlobals.5
	movt	r0, :upper16:.L_MergedGlobals.5
	bl	_ZN17HarmonyCalculator20getFirstHarmonyShiftEv
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	bl	_ZN12PitchShifter10setShiftDLEf
	ldr	r0, [r10, #116]
	cmp	r0, #2
	blt	.LBB6_15
@ BB#13:                                @ %.thread
	movw	r0, :lower16:.L_MergedGlobals.5
	movt	r0, :upper16:.L_MergedGlobals.5
	bl	_ZN17HarmonyCalculator21getSecondHarmonyShiftEv
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter10setShiftDLEf
	ldr	r0, [r10, #116]
	cmp	r0, #3
	blt	.LBB6_15
@ BB#14:
	movw	r0, :lower16:.L_MergedGlobals.5
	movt	r0, :upper16:.L_MergedGlobals.5
	bl	_ZN17HarmonyCalculator20getThirdHarmonyShiftEv
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	bl	_ZN12PitchShifter10setShiftDLEf
.LBB6_15:                               @ %thread-pre-split
	ldr	r0, [r10, #4]
	mov	r3, r5
.LBB6_16:
	cmp	r0, #1
	bne	.LBB6_43
@ BB#17:
	ldr	r0, [r10, #116]
	cmp	r0, #1
	blt	.LBB6_29
@ BB#18:
	ldr	r1, [r10, #24]
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	bl	_ZN12PitchShifter11readInWSOLAEPf
	ldr	r0, [r10, #116]
	cmp	r0, #2
	blt	.LBB6_21
@ BB#19:                                @ %.thread40
	ldr	r1, [r10, #24]
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter11readInWSOLAEPf
	ldr	r0, [r10, #116]
	cmp	r0, #3
	blt	.LBB6_21
@ BB#20:
	ldr	r1, [r10, #24]
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	bl	_ZN12PitchShifter11readInWSOLAEPf
	ldr	r0, [r10, #116]
.LBB6_21:                               @ %thread-pre-split44
	mov	r3, r5
	cmp	r0, #1
	blt	.LBB6_29
@ BB#22:                                @ %.thread52
	movw	r0, :lower16:.L_MergedGlobals.5
	vldr	s16, [r10, #48]
	movt	r0, :upper16:.L_MergedGlobals.5
	bl	_ZN17HarmonyCalculator20getFirstHarmonyShiftEv
	vmov.f32	s2, s0
	movw	r0, :lower16:pitchShifter1
	vmov.f32	s0, s16
	movt	r0, :upper16:pitchShifter1
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter10shiftWSOLAEff
	ldr	r0, [r10, #116]
	cmp	r0, #2
	blt	.LBB6_25
@ BB#23:
	movw	r0, :lower16:.L_MergedGlobals.5
	vldr	s16, [r10, #48]
	movt	r0, :upper16:.L_MergedGlobals.5
	bl	_ZN17HarmonyCalculator21getSecondHarmonyShiftEv
	vmov.f32	s2, s0
	movw	r0, :lower16:pitchShifter2
	vmov.f32	s0, s16
	movt	r0, :upper16:pitchShifter2
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter10shiftWSOLAEff
	ldr	r0, [r10, #116]
	cmp	r0, #3
	blt	.LBB6_25
@ BB#24:
	movw	r0, :lower16:.L_MergedGlobals.5
	vldr	s16, [r10, #48]
	movt	r0, :upper16:.L_MergedGlobals.5
	bl	_ZN17HarmonyCalculator20getThirdHarmonyShiftEv
	vmov.f32	s2, s0
	movw	r0, :lower16:pitchShifter3
	vmov.f32	s0, s16
	movt	r0, :upper16:pitchShifter3
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter10shiftWSOLAEff
	ldr	r0, [r10, #116]
.LBB6_25:                               @ %thread-pre-split48
	mov	r3, r5
	cmp	r0, #1
	blt	.LBB6_29
@ BB#26:
	ldr	r1, [r10, #28]
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	bl	_ZN12PitchShifter12readOutWSOLAEPf
	ldr	r0, [r10, #116]
	mov	r3, r5
	cmp	r0, #2
	blt	.LBB6_29
@ BB#27:
	ldr	r1, [r10, #32]
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter12readOutWSOLAEPf
	ldr	r0, [r10, #116]
	mov	r3, r5
	cmp	r0, #3
	blt	.LBB6_29
@ BB#28:
	ldr	r1, [r10, #36]
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	bl	_ZN12PitchShifter12readOutWSOLAEPf
	ldr	r0, [r10, #116]
	mov	r3, r5
.LBB6_29:                               @ %.thread51
	add	r1, r4, #2048
	cmp	r0, #0
	asr	r2, r1, #31
	add	r2, r1, r2, lsr #20
	bfc	r2, #0, #12
	sub	r1, r1, r2
	ble	.LBB6_36
@ BB#30:                                @ %.thread51.split.us
	ldr	r2, [r10, #28]
	cmp	r0, #1
	ldr	lr, [r10, #36]
	bne	.LBB6_38
@ BB#31:                                @ %.thread51.split.us.split.preheader
	mov	r7, #0
	movw	r6, #4094
	mov	r4, #0
.LBB6_32:                               @ %.thread51.split.us.split
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r2, r4, lsl #2]
	cmp	r0, #2
	str	r5, [r9, r1, lsl #2]
	str	r7, [r8, r1, lsl #2]
	ble	.LBB6_34
@ BB#33:                                @   in Loop: Header=BB6_32 Depth=1
	ldr	r5, [lr, r4, lsl #2]
	str	r5, [r3, r1, lsl #2]
	b	.LBB6_35
.LBB6_34:                               @   in Loop: Header=BB6_32 Depth=1
	str	r7, [r3, r1, lsl #2]
.LBB6_35:                               @   in Loop: Header=BB6_32 Depth=1
	add	r5, r1, #1
	cmp	r1, r6
	movwgt	r5, #0
	add	r4, r4, #1
	mov	r1, r5
	cmp	r4, #2048
	bne	.LBB6_32
	b	.LBB6_43
.LBB6_36:                               @ %.thread51.split.split.split.preheader
	mov	r0, #2048
	mov	r2, #0
	movw	r6, #4094
.LBB6_37:                               @ %.thread51.split.split.split
                                        @ =>This Inner Loop Header: Depth=1
	add	r7, r1, #1
	cmp	r1, r6
	movwgt	r7, #0
	subs	r0, r0, #1
	str	r2, [r9, r1, lsl #2]
	str	r2, [r8, r1, lsl #2]
	str	r2, [r3, r1, lsl #2]
	mov	r1, r7
	bne	.LBB6_37
	b	.LBB6_43
.LBB6_38:                               @ %.thread51.split.us.split.us.preheader
	ldr	r6, [r10, #32]
	mov	r12, #0
	movw	r7, #4094
	mov	r4, #0
.LBB6_39:                               @ %.thread51.split.us.split.us
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r2, r4, lsl #2]
	cmp	r0, #2
	str	r5, [r9, r1, lsl #2]
	ldr	r5, [r6, r4, lsl #2]
	str	r5, [r8, r1, lsl #2]
	ble	.LBB6_41
@ BB#40:                                @   in Loop: Header=BB6_39 Depth=1
	ldr	r5, [lr, r4, lsl #2]
	str	r5, [r3, r1, lsl #2]
	b	.LBB6_42
.LBB6_41:                               @   in Loop: Header=BB6_39 Depth=1
	str	r12, [r3, r1, lsl #2]
.LBB6_42:                               @   in Loop: Header=BB6_39 Depth=1
	add	r5, r1, #1
	cmp	r1, r7
	movwgt	r5, #0
	add	r4, r4, #1
	mov	r1, r5
	cmp	r4, #2048
	bne	.LBB6_39
.LBB6_43:                               @ %.loopexit
	ldrb	r0, [r10, #2]
	cmp	r0, #0
	movne	r0, #0
	strbne	r0, [r10, #1]
	vpop	{d8}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ BB#44:
.LCPI6_0:
	.long	1000593162              @ float 0.00499999989
.Lfunc_end6:
	.size	_Z13process_shiftPfiS_S_S_, .Lfunc_end6-_Z13process_shiftPfiS_S_S_
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
	.vsave	{d8, d9, d10, d11, d12, d13, d14, d15}
	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
	.pad	#16
	sub	sp, sp, #16
	movw	r4, :lower16:.L_MergedGlobals
	mov	r5, r0
	movt	r4, :upper16:.L_MergedGlobals
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.LBB7_28
@ BB#1:                                 @ %.lr.ph
	movw	r8, :lower16:.L_MergedGlobals.4
	vldr	s16, .LCPI7_7
	vldr	s18, .LCPI7_8
	movt	r8, :upper16:.L_MergedGlobals.4
	vldr	s20, .LCPI7_9
	movw	r10, #4094
	vldr	s22, .LCPI7_10
	movw	r6, #2047
	mov	r9, #0
.LBB7_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5, #24]
	ldr	r1, [r5]
	ldr	r3, [r4, #8]
	mul	r2, r0, r9
	ldr	r0, [r8]
	ldr	r1, [r1, r2, lsl #2]
	str	r1, [r0, r3, lsl #2]!
	ldr	r2, [r4, #4]
	cmp	r2, #0
	bne	.LBB7_9
@ BB#3:                                 @   in Loop: Header=BB7_2 Depth=1
	ldr	r2, [r8, #12]
	str	r1, [r2, r9, lsl #2]
	ldr	r2, [r4, #116]
	cmp	r2, #1
	blt	.LBB7_7
@ BB#4:                                 @   in Loop: Header=BB7_2 Depth=1
	vldr	s0, [r0]
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	bl	_ZN12PitchShifter7shiftDLEf
	ldr	r0, [r8, #12]
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vldr	s2, [r4, #76]
	add	r0, r0, r9, lsl #2
	vmul.f32	d16, d1, d0
	vldr	s0, [r0]
	vadd.f32	d0, d0, d16
	vstr	s0, [r0]
	ldr	r0, [r4, #116]
	cmp	r0, #2
	blt	.LBB7_8
@ BB#5:                                 @ %.thread
                                        @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [r4, #8]
	ldr	r1, [r8]
	add	r0, r1, r0, lsl #2
	vldr	s0, [r0]
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter7shiftDLEf
	ldr	r0, [r8, #12]
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vldr	s2, [r4, #76]
	add	r0, r0, r9, lsl #2
	vmul.f32	d16, d1, d0
	vldr	s0, [r0]
	vadd.f32	d0, d0, d16
	vstr	s0, [r0]
	ldr	r0, [r4, #116]
	cmp	r0, #3
	blt	.LBB7_8
@ BB#6:                                 @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [r4, #8]
	ldr	r1, [r8]
	add	r0, r1, r0, lsl #2
	vldr	s0, [r0]
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	bl	_ZN12PitchShifter7shiftDLEf
	ldr	r0, [r8, #12]
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vldr	s2, [r4, #76]
	add	r0, r0, r9, lsl #2
	vmul.f32	d16, d1, d0
	vldr	s0, [r0]
	vadd.f32	d0, d0, d16
	vstr	s0, [r0]
	b	.LBB7_8
.LBB7_7:                                @   in Loop: Header=BB7_2 Depth=1
	vmov	d0, r1, r1
.LBB7_8:                                @ %.thread48
                                        @   in Loop: Header=BB7_2 Depth=1
	movw	r0, :lower16:reverberator
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	movt	r0, :upper16:reverberator
	bl	_ZN12Reverberator11applyReverbEf
	ldr	r0, [r8, #12]
	add	r0, r0, r9, lsl #2
	vstr	s0, [r0]
	ldr	r2, [r4, #4]
.LBB7_9:                                @   in Loop: Header=BB7_2 Depth=1
	cmp	r2, #1
	bne	.LBB7_11
@ BB#10:                                @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [r4, #8]
	ldr	r2, [r8, #24]
	ldr	r3, [r8, #36]
	add	r2, r2, r0, lsl #2
	ldr	r7, [r8, #48]
	add	r3, r3, r0, lsl #2
	ldr	r1, [r8]
	vldr	s2, [r2]
	add	r2, r7, r0, lsl #2
	vldr	s4, [r3]
	add	r0, r1, r0, lsl #2
	vldr	s6, [r2]
	vadd.f32	d16, d2, d1
	vldr	s0, [r4, #76]
	vldr	s2, [r0]
	movw	r0, :lower16:reverberator
	movt	r0, :upper16:reverberator
	vadd.f32	d16, d16, d3
	vmul.f32	d16, d16, d0
	vadd.f32	d0, d16, d1
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	_ZN12Reverberator11applyReverbEf
	ldr	r0, [r8, #12]
	add	r1, r0, r9, lsl #2
	vstr	s0, [r1]
	b	.LBB7_12
.LBB7_11:                               @ %..preheader_crit_edge
                                        @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [r8, #12]
.LBB7_12:                               @ %.preheader
                                        @   in Loop: Header=BB7_2 Depth=1
	ldr	r2, [r5, #28]
	ldr	r1, [r5, #4]
	ldr	r3, [r0, r9, lsl #2]
	mul	r2, r2, r9
	str	r3, [r1, r2, lsl #2]!
	ldr	r0, [r0, r9, lsl #2]
	str	r0, [r1, #4]
	ldr	r0, [r4, #8]
	add	r1, r0, #1
	cmp	r0, r10
	movwgt	r1, #0
	str	r1, [r4, #8]
	ldr	r0, [r4, #16]
	add	r1, r0, #1
	str	r1, [r4, #16]
	ldr	r1, [r4, #124]
	cmp	r0, r6
	add	r1, r1, #1
	str	r1, [r4, #124]
	blt	.LBB7_27
@ BB#13:                                @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [r4, #80]
	str	r0, [r4, #96]
	ldr	r10, [r4, #84]
	str	r10, [r4, #100]
	vmov	d16, r0, r0
	ldr	r1, [r4, #88]
	str	r1, [r4, #104]
	ldr	r1, [r4, #92]
	str	r1, [r4, #108]
	ldr	r1, [r5, #8]
	ldr	r2, [r1, #4]
	str	r2, [r4, #80]
	ldr	r0, [r1, #8]
	vmov	d14, r2, r2
	str	r0, [r4, #84]
	vmul.f32	d1, d14, d10
	ldr	r2, [r1, #12]
	vmov	d15, r0, r0
	str	r2, [r4, #88]
	vmul.f32	d0, d15, d9
	ldr	r0, [r1, #16]
	vsub.f32	d16, d14, d16
	str	r0, [r4, #92]
	vmov	d13, r2, r2
	vstr	s2, [r4, #112]
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	vabs.f32	d12, d16
	bl	roundf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vcvt.s32.f32	d1, d0
	vmul.f32	d0, d13, d8
	vmov	r7, s2
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	roundf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vcmpe.f32	s24, s22
	str	r7, [r4, #116]
	vcvt.s32.f32	d0, d0
	vmrs	APSR_nzcv, fpscr
	vmov	r0, s0
	str	r0, [r4, #120]
	ble	.LBB7_19
@ BB#14:                                @   in Loop: Header=BB7_2 Depth=1
	vldr	s0, .LCPI7_4
	mov	r0, #1
	strb	r0, [r4, #2]
	mov	r7, #0
	vmul.f32	d16, d14, d0
	mov	r0, r4
	mov	r1, r5
	str	r7, [r4, #124]
	vcvt.s32.f32	d0, d16
	vmov	r2, s0
	bl	_ZN10LEDManager9lightUpToEP11BelaContexti
	vldr	s30, [r4, #84]
	vldr	s0, [r4, #100]
	b	.LBB7_20
	.p2align	2
@ BB#15:
.LCPI7_7:
	.long	1095542450              @ float 12.7906971
	.p2align	2
@ BB#16:
.LCPI7_8:
	.long	1079984509              @ float 3.48837209
	.p2align	2
@ BB#17:
.LCPI7_9:
	.long	1114148578              @ float 58.139534
	.p2align	2
@ BB#18:
.LCPI7_10:
	.long	1000593162              @ float 0.00499999989
.LBB7_19:                               @   in Loop: Header=BB7_2 Depth=1
	vmov	d0, r10, r10
	mov	r7, #0
.LBB7_20:                               @   in Loop: Header=BB7_2 Depth=1
	vsub.f32	d16, d15, d0
	movw	r10, #4094
	movw	r6, #2047
	vabs.f32	d0, d16
	vcmpe.f32	s0, s22
	vmrs	APSR_nzcv, fpscr
	ble	.LBB7_22
@ BB#21:                                @   in Loop: Header=BB7_2 Depth=1
	mov	r0, #1
	mov	r1, r5
	strb	r0, [r4, #2]
	mov	r0, r4
	str	r7, [r4, #124]
	ldr	r2, [r4, #116]
	bl	_ZN10LEDManager9lightUpToEP11BelaContexti
.LBB7_22:                               @   in Loop: Header=BB7_2 Depth=1
	vldr	s0, [r4, #88]
	vldr	s2, [r4, #104]
	vsub.f32	d16, d0, d1
	vabs.f32	d0, d16
	vcmpe.f32	s0, s22
	vmrs	APSR_nzcv, fpscr
	ble	.LBB7_24
@ BB#23:                                @   in Loop: Header=BB7_2 Depth=1
	mov	r0, #1
	mov	r1, r5
	strb	r0, [r4, #2]
	mov	r0, r4
	str	r7, [r4, #124]
	ldr	r2, [r4, #120]
	bl	_ZN10LEDManager8lightPinEP11BelaContexti
.LBB7_24:                               @   in Loop: Header=BB7_2 Depth=1
	vldr	s0, [r4, #92]
	vldr	s2, [r4, #108]
	vsub.f32	d16, d0, d1
	vabs.f32	d1, d16
	vcmpe.f32	s2, s22
	vmrs	APSR_nzcv, fpscr
	ble	.LBB7_26
@ BB#25:                                @   in Loop: Header=BB7_2 Depth=1
	vmov.f32	d16, #1.350000e+01
	mov	r0, #1
	strb	r0, [r4, #2]
	mov	r0, r4
	mov	r1, r5
	str	r7, [r4, #124]
	vmul.f32	d16, d0, d16
	vcvt.s32.f32	d0, d16
	vmov	r2, s0
	bl	_ZN10LEDManager9lightUpToEP11BelaContexti
.LBB7_26:                               @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [r4, #8]
	str	r0, [r4, #12]
	ldr	r0, [r4, #20]
	bl	Bela_scheduleAuxiliaryTask
	str	r7, [r4, #16]
.LBB7_27:                               @   in Loop: Header=BB7_2 Depth=1
	add	r9, r9, #1
	ldr	r0, [r4, #44]
	cmp	r9, r0
	blo	.LBB7_2
.LBB7_28:                               @ %._crit_edge
	movw	r0, :lower16:thereminReader
	mov	r1, r5
	movt	r0, :upper16:thereminReader
	bl	_ZN14ThereminReader9readPitchEP11BelaContext
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB7_30
@ BB#29:
	vcvt.f64.f32	d16, s0
	movw	r0, :lower16:.L.str.15
	movt	r0, :upper16:.L.str.15
	vmov	r2, r3, d16
	vstr	s0, [r4, #68]
	bl	rt_printf
.LBB7_30:
	movw	r0, :lower16:thereminReader
	mov	r1, r5
	movt	r0, :upper16:thereminReader
	bl	_ZN14ThereminReader7readMixEP11BelaContext
	vorr	d8, d0, d0
	vcmpe.f32	s16, #0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB7_32
@ BB#31:
	vldr	s2, .LCPI7_5
	vldr	s1, .LCPI7_6
	vmul.f32	d1, d8, d1
	vmov.f32	s0, s2
	bl	powf
	vmov.f32	d16, #1.000000e+00
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	movw	r0, :lower16:.L.str.16
	movt	r0, :upper16:.L.str.16
	vstr	s16, [r4, #72]
	vmin.f32	d0, d0, d16
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	vstr	s0, [r4, #76]
	bl	rt_printf
.LBB7_32:
	ldr	r0, [r4, #60]
	ldr	r1, [r4, #64]
	cmp	r0, r1
	moveq	r0, #0
	streq	r0, [r4, #60]
	add	r0, r0, #1
	str	r0, [r4, #60]
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	beq	.LBB7_35
@ BB#33:
	ldr	r0, [r4, #40]
	ldr	r1, [r4, #124]
	cmp	r1, r0
	ble	.LBB7_35
@ BB#34:
	movw	r7, :lower16:.L_MergedGlobals.5
	ldr	r8, [r4, #116]
	movt	r7, :upper16:.L_MergedGlobals.5
	mov	r0, r7
	bl	_ZN17HarmonyCalculator9getNoteInEv
	mov	r9, r0
	mov	r0, r7
	bl	_ZN17HarmonyCalculator19getFirstHarmonyNoteEv
	mov	r10, r0
	mov	r0, r7
	bl	_ZN17HarmonyCalculator20getSecondHarmonyNoteEv
	mov	r6, r0
	mov	r0, r7
	bl	_ZN17HarmonyCalculator19getThirdHarmonyNoteEv
	str	r10, [sp]
	mov	r1, r5
	str	r6, [sp, #4]
	mov	r2, r8
	str	r0, [sp, #8]
	mov	r0, r4
	mov	r3, r9
	bl	_ZN10LEDManager11updateNotesEP11BelaContextiiiii
	b	.LBB7_37
.LBB7_35:
	ldrb	r0, [r4, #2]
	cmp	r0, #0
	bne	.LBB7_38
@ BB#36:
	movw	r0, :lower16:.L_MergedGlobals
	mov	r1, r5
	movt	r0, :upper16:.L_MergedGlobals
	bl	_ZN10LEDManager10clearNotesEP11BelaContext
.LBB7_37:
	ldrb	r0, [r4, #2]
	cmp	r0, #0
	beq	.LBB7_39
.LBB7_38:                               @ %.thread51
	ldr	r0, [r4, #40]
	ldr	r1, [r4, #124]
	cmp	r1, r0
	movgt	r0, #0
	strbgt	r0, [r4, #2]
.LBB7_39:
	sub	sp, r11, #96
	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ BB#40:
.LCPI7_4:
	.long	1096750028              @ float 13.9423332
.LCPI7_5:
	.long	1042983595              @ float 0.166666672
.LCPI7_6:
	.long	1076754516              @ float 2.71828175
.Lfunc_end7:
	.size	render, .Lfunc_end7-render
	.fnend

	.globl	cleanup
	.p2align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
	.fnstart
@ BB#0:
	bx	lr
.Lfunc_end8:
	.size	cleanup, .Lfunc_end8-cleanup
	.fnend

	.section	.text._ZN3stk6EffectD2Ev,"axG",%progbits,_ZN3stk6EffectD2Ev,comdat
	.weak	_ZN3stk6EffectD2Ev
	.p2align	2
	.type	_ZN3stk6EffectD2Ev,%function
_ZN3stk6EffectD2Ev:                     @ @_ZN3stk6EffectD2Ev
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r0
	movw	r0, :lower16:_ZTVN3stk6EffectE
	movt	r0, :upper16:_ZTVN3stk6EffectE
	add	r1, r0, #8
	mov	r0, r4
	str	r1, [r0], #8
	bl	_ZN3stk9StkFramesD1Ev
	mov	r0, r4
	pop	{r4, r10, r11, lr}
	b	_ZN3stk3StkD2Ev
.Lfunc_end9:
	.size	_ZN3stk6EffectD2Ev, .Lfunc_end9-_ZN3stk6EffectD2Ev
	.fnend

	.section	.text._ZN3stk6EffectD0Ev,"axG",%progbits,_ZN3stk6EffectD0Ev,comdat
	.weak	_ZN3stk6EffectD0Ev
	.p2align	2
	.type	_ZN3stk6EffectD0Ev,%function
_ZN3stk6EffectD0Ev:                     @ @_ZN3stk6EffectD0Ev
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r0
	movw	r0, :lower16:_ZTVN3stk6EffectE
	movt	r0, :upper16:_ZTVN3stk6EffectE
	add	r1, r0, #8
	mov	r0, r4
	str	r1, [r0], #8
	bl	_ZN3stk9StkFramesD1Ev
	mov	r0, r4
	bl	_ZN3stk3StkD2Ev
	mov	r0, r4
	pop	{r4, r10, r11, lr}
	b	_ZdlPv
.Lfunc_end10:
	.size	_ZN3stk6EffectD0Ev, .Lfunc_end10-_ZN3stk6EffectD0Ev
	.fnend

	.section	.text._ZN3stk6Effect12setEffectMixEd,"axG",%progbits,_ZN3stk6Effect12setEffectMixEd,comdat
	.weak	_ZN3stk6Effect12setEffectMixEd
	.p2align	2
	.type	_ZN3stk6Effect12setEffectMixEd,%function
_ZN3stk6Effect12setEffectMixEd:         @ @_ZN3stk6Effect12setEffectMixEd
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	vcmpe.f64	d0, #0
	mov	r4, r0
	vmrs	APSR_nzcv, fpscr
	bge	.LBB11_2
@ BB#1:
	movw	r0, :lower16:_ZN3stk3Stk8oStream_B5cxx11E
	movw	r1, :lower16:.L.str.17
	movt	r0, :upper16:_ZN3stk3Stk8oStream_B5cxx11E
	movt	r1, :upper16:.L.str.17
	mov	r2, #74
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r4
	mov	r1, #1
	bl	_ZNK3stk3Stk11handleErrorENS_8StkError4TypeE
	mov	r0, #0
	str	r0, [r4, #40]
	str	r0, [r4, #44]
	pop	{r4, r10, r11, pc}
.LBB11_2:
	vmov.f64	d16, #1.000000e+00
	vcmpe.f64	d0, d16
	vmrs	APSR_nzcv, fpscr
	vstrle	d0, [r4, #40]
	pople	{r4, r10, r11, pc}
	movw	r0, :lower16:_ZN3stk3Stk8oStream_B5cxx11E
	movw	r1, :lower16:.L.str.18
	movt	r0, :upper16:_ZN3stk3Stk8oStream_B5cxx11E
	movt	r1, :upper16:.L.str.18
	mov	r2, #75
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r4
	mov	r1, #1
	bl	_ZNK3stk3Stk11handleErrorENS_8StkError4TypeE
	movw	r1, #0
	mov	r0, #0
	movt	r1, #16368
	strd	r0, r1, [r4, #40]
	pop	{r4, r10, r11, pc}
.Lfunc_end11:
	.size	_ZN3stk6Effect12setEffectMixEd, .Lfunc_end11-_ZN3stk6Effect12setEffectMixEd
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
	beq	.LBB12_11
@ BB#1:
	ldr	r7, [r4, #4]
	ldr	r0, [r4, #8]
	sub	r0, r0, r7
	asr	r0, r0, #2
	cmp	r0, r5
	bhs	.LBB12_12
@ BB#2:
	ldr	r1, [r4]
	mvn	r8, #-1073741824
	sub	r0, r7, r1
	sub	r2, r8, r0, asr #2
	cmp	r2, r5
	blo	.LBB12_13
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
	beq	.LBB12_6
@ BB#4:
	cmp	r8, #1073741824
	bhs	.LBB12_14
@ BB#5:                                 @ %_ZNSt16allocator_traitsISaIfEE8allocateERS0_j.exit.i
	lsl	r0, r8, #2
	bl	_Znwj
	ldm	r4, {r1, r7}
	mov	r6, r0
.LBB12_6:                               @ %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEj.exit
	sub	r2, r7, r1
	mov	r0, #0
	asr	r7, r2, #2
	cmp	r0, r2, asr #2
	beq	.LBB12_8
@ BB#7:
	mov	r0, r6
	bl	memmove
.LBB12_8:
	add	r7, r6, r7, lsl #2
	lsl	r2, r5, #2
	mov	r1, #0
	mov	r0, r7
	bl	memset
	ldr	r0, [r4]
	add	r5, r7, r5, lsl #2
	cmp	r0, #0
	beq	.LBB12_10
@ BB#9:
	bl	_ZdlPv
.LBB12_10:                              @ %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfj.exit31
	str	r6, [r4]
	add	r0, r6, r8, lsl #2
	str	r5, [r4, #4]
	str	r0, [r4, #8]
.LBB12_11:
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.LBB12_12:                              @ %_ZSt27__uninitialized_default_n_aIPfjfET_S1_T0_RSaIT1_E.exit
	lsl	r2, r5, #2
	mov	r0, r7
	mov	r1, #0
	bl	memset
	add	r0, r7, r5, lsl #2
	str	r0, [r4, #4]
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.LBB12_13:
	movw	r0, :lower16:.L.str.19
	movt	r0, :upper16:.L.str.19
	mov	lr, pc
	b	_ZSt20__throw_length_errorPKc
.LBB12_14:
	mov	lr, pc
	b	_ZSt17__throw_bad_allocv
.Lfunc_end12:
	.size	_ZNSt6vectorIfSaIfEE17_M_default_appendEj, .Lfunc_end12-_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	4
	.type	_GLOBAL__sub_I_render.ii,%function
_GLOBAL__sub_I_render.ii:               @ @_GLOBAL__sub_I_render.ii
.Lfunc_begin0:
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	movw	r5, :lower16:_ZStL8__ioinit
	movt	r5, :upper16:_ZStL8__ioinit
	mov	r0, r5
	bl	_ZNSt8ios_base4InitC1Ev
	movw	r4, :lower16:__dso_handle
	movw	r0, :lower16:_ZNSt8ios_base4InitD1Ev
	movt	r4, :upper16:__dso_handle
	movt	r0, :upper16:_ZNSt8ios_base4InitD1Ev
	mov	r1, r5
	mov	r2, r4
	bl	__cxa_atexit
	movw	r5, :lower16:.L_MergedGlobals.4
	movw	r6, :lower16:_ZNSt6vectorIfSaIfEED2Ev
	movt	r5, :upper16:.L_MergedGlobals.4
	movt	r6, :upper16:_ZNSt6vectorIfSaIfEED2Ev
	mov	r7, #0
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	str	r7, [r5]
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	bl	__cxa_atexit
	mov	r1, r5
	mov	r0, r6
	str	r7, [r1, #12]!
	mov	r2, r4
	str	r7, [r5, #16]
	str	r7, [r5, #20]
	bl	__cxa_atexit
	mov	r1, r5
	mov	r0, r6
	str	r7, [r1, #24]!
	mov	r2, r4
	str	r7, [r5, #28]
	str	r7, [r5, #32]
	bl	__cxa_atexit
	mov	r1, r5
	mov	r0, r6
	str	r7, [r1, #36]!
	mov	r2, r4
	str	r7, [r5, #40]
	str	r7, [r5, #44]
	bl	__cxa_atexit
	str	r7, [r5, #48]!
	mov	r0, r6
	mov	r2, r4
	mov	r1, r5
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	bl	__cxa_atexit
	mov	r0, #8192
	bl	_Znaj
	movw	r5, :lower16:.L_MergedGlobals
	movt	r5, :upper16:.L_MergedGlobals
	str	r0, [r5, #24]
	mov	r0, #8192
	bl	_Znaj
	str	r0, [r5, #28]
	mov	r0, #8192
	bl	_Znaj
	str	r0, [r5, #32]
	mov	r0, #8192
	bl	_Znaj
	adr	r1, .LCPI13_0
	str	r0, [r5, #36]
	movw	r0, :lower16:_ZTV7PulseIn
	vld1.64	{d16, d17}, [r1:128]
	movt	r0, :upper16:_ZTV7PulseIn
	movw	r1, :lower16:thereminReader
	movt	r1, :upper16:thereminReader
	add	r0, r0, #8
	mvn	r2, #0
	stm	r1, {r0, r7}
	mov	r3, #3
	str	r7, [r1, #8]
	add	r12, r1, #120
	str	r7, [r1, #12]
	str	r2, [r1, #20]
	str	r0, [r1, #48]
	mov	r0, #7
	str	r7, [r1, #52]
	str	r7, [r1, #56]
	str	r7, [r1, #60]
	str	r2, [r1, #68]
	mov	r2, #2
	str	r0, [r1, #96]
	movw	r0, #0
	movt	r0, #17000
	str	r0, [r1, #100]
	add	r0, r1, #104
	vst1.64	{d16, d17}, [r0]
	mov	r0, #1
	stm	r12, {r0, r2, r3}
	movw	r0, :lower16:_ZN14ThereminReaderD2Ev
	movt	r0, :upper16:_ZN14ThereminReaderD2Ev
	mov	r2, r4
	bl	__cxa_atexit
	movw	r5, :lower16:pitchShifter1
	movt	r5, :upper16:pitchShifter1
	mov	r0, r5
	bl	_ZN3stk8PitShiftC1Ev
.Ltmp0:
	add	r0, r5, #480
	bl	_ZN10soundtouch10SoundTouchC1Ev
.Ltmp1:
@ BB#1:                                 @ %__cxx_global_var_init.11.exit
	movw	r0, :lower16:_ZN12PitchShifterD2Ev
	movw	r1, :lower16:pitchShifter1
	movw	r2, :lower16:__dso_handle
	movt	r0, :upper16:_ZN12PitchShifterD2Ev
	movt	r1, :upper16:pitchShifter1
	movt	r2, :upper16:__dso_handle
	bl	__cxa_atexit
	movw	r5, :lower16:pitchShifter2
	movt	r5, :upper16:pitchShifter2
	mov	r0, r5
	bl	_ZN3stk8PitShiftC1Ev
.Ltmp3:
	add	r0, r5, #480
	bl	_ZN10soundtouch10SoundTouchC1Ev
.Ltmp4:
@ BB#2:                                 @ %__cxx_global_var_init.12.exit
	movw	r0, :lower16:_ZN12PitchShifterD2Ev
	movw	r1, :lower16:pitchShifter2
	movw	r2, :lower16:__dso_handle
	movt	r0, :upper16:_ZN12PitchShifterD2Ev
	movt	r1, :upper16:pitchShifter2
	movt	r2, :upper16:__dso_handle
	bl	__cxa_atexit
	movw	r5, :lower16:pitchShifter3
	movt	r5, :upper16:pitchShifter3
	mov	r0, r5
	bl	_ZN3stk8PitShiftC1Ev
.Ltmp6:
	add	r0, r5, #480
	bl	_ZN10soundtouch10SoundTouchC1Ev
.Ltmp7:
@ BB#3:                                 @ %__cxx_global_var_init.13.exit
	movw	r4, :lower16:__dso_handle
	movw	r0, :lower16:_ZN12PitchShifterD2Ev
	movw	r1, :lower16:pitchShifter3
	movt	r4, :upper16:__dso_handle
	movt	r0, :upper16:_ZN12PitchShifterD2Ev
	movt	r1, :upper16:pitchShifter3
	mov	r2, r4
	bl	__cxa_atexit
	movw	r5, :lower16:reverberator
	movt	r5, :upper16:reverberator
	mov	r0, r5
	bl	_ZN3stk8FreeVerbC1Ev
	movw	r0, :lower16:_ZN12ReverberatorD2Ev
	mov	r1, r5
	movt	r0, :upper16:_ZN12ReverberatorD2Ev
	mov	r2, r4
	pop	{r4, r5, r6, r7, r11, lr}
	b	__cxa_atexit
.LBB13_4:
.Ltmp8:
	b	.LBB13_7
.LBB13_5:
.Ltmp5:
	b	.LBB13_7
.LBB13_6:
.Ltmp2:
.LBB13_7:                               @ %unwind_resume
	mov	r4, r0
	movw	r0, :lower16:_ZTVN3stk8PitShiftE
	movt	r0, :upper16:_ZTVN3stk8PitShiftE
	mov	r6, r5
	add	r0, r0, #8
	str	r0, [r6], #48
	add	r0, r5, #240
	bl	_ZN3stk6DelayLD1Ev
	mov	r0, r6
	bl	_ZN3stk6DelayLD1Ev
	movw	r0, :lower16:_ZTVN3stk6EffectE
	movt	r0, :upper16:_ZTVN3stk6EffectE
	add	r1, r0, #8
	mov	r0, r5
	str	r1, [r0], #8
	bl	_ZN3stk9StkFramesD1Ev
	mov	r0, r5
	bl	_ZN3stk3StkD2Ev
	mov	r0, r4
	mov	lr, pc
	b	_Unwind_Resume
	.p2align	4
@ BB#8:
.LCPI13_0:
	.long	2646                    @ 0xa56
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
.Lfunc_end13:
	.size	_GLOBAL__sub_I_render.ii, .Lfunc_end13-_GLOBAL__sub_I_render.ii
	.globl	__gxx_personality_v0
	.personality __gxx_personality_v0
	.handlerdata
	.p2align	2
GCC_except_table13:
.Lexception0:
	.byte	255                     @ @LPStart Encoding = omit
	.byte	0                       @ @TType Encoding = absptr
	.byte	93                      @ @TType base offset
	.byte	3                       @ Call site Encoding = udata4
	.byte	91                      @ Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 @ >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    @   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    @ >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           @   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    @     jumps to .Ltmp2
	.byte	0                       @   On action: cleanup
	.long	.Ltmp1-.Lfunc_begin0    @ >> Call Site 3 <<
	.long	.Ltmp3-.Ltmp1           @   Call between .Ltmp1 and .Ltmp3
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    @ >> Call Site 4 <<
	.long	.Ltmp4-.Ltmp3           @   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    @     jumps to .Ltmp5
	.byte	0                       @   On action: cleanup
	.long	.Ltmp4-.Lfunc_begin0    @ >> Call Site 5 <<
	.long	.Ltmp6-.Ltmp4           @   Call between .Ltmp4 and .Ltmp6
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    @ >> Call Site 6 <<
	.long	.Ltmp7-.Ltmp6           @   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin0    @     jumps to .Ltmp8
	.byte	0                       @   On action: cleanup
	.long	.Ltmp7-.Lfunc_begin0    @ >> Call Site 7 <<
	.long	.Lfunc_end13-.Ltmp7     @   Call between .Ltmp7 and .Lfunc_end13
	.long	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.p2align	2
	.fnend

	.type	_ZStL8__ioinit,%object  @ @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	thereminReader,%object  @ @thereminReader
	.bss
	.globl	thereminReader
	.p2align	3
thereminReader:
	.zero	136
	.size	thereminReader, 136

	.type	pitchShifter1,%object   @ @pitchShifter1
	.globl	pitchShifter1
	.p2align	3
pitchShifter1:
	.zero	568
	.size	pitchShifter1, 568

	.type	pitchShifter2,%object   @ @pitchShifter2
	.globl	pitchShifter2
	.p2align	3
pitchShifter2:
	.zero	568
	.size	pitchShifter2, 568

	.type	pitchShifter3,%object   @ @pitchShifter3
	.globl	pitchShifter3
	.p2align	3
pitchShifter3:
	.zero	568
	.size	pitchShifter3, 568

	.type	reverberator,%object    @ @reverberator
	.globl	reverberator
	.p2align	3
reverberator:
	.zero	6280
	.size	reverberator, 6280

	.type	.L_ZZ5setupE19pitchTrackingMethod,%object @ @_ZZ5setupE19pitchTrackingMethod
	.section	.rodata.str1.1,"aMS",%progbits,1
.L_ZZ5setupE19pitchTrackingMethod:
	.asciz	"yinfft"
	.size	.L_ZZ5setupE19pitchTrackingMethod, 7

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"pitch-shifter"
	.size	.L.str, 14

	.type	.L.str.15,%object       @ @.str.15
.L.str.15:
	.asciz	"Pitch: %lf\n"
	.size	.L.str.15, 12

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	"Mix: %lf\n"
	.size	.L.str.16, 10

	.type	_ZTVN3stk6EffectE,%object @ @_ZTVN3stk6EffectE
	.section	.rodata._ZTVN3stk6EffectE,"aG",%progbits,_ZTVN3stk6EffectE,comdat
	.weak	_ZTVN3stk6EffectE
	.p2align	2
_ZTVN3stk6EffectE:
	.long	0
	.long	_ZTIN3stk6EffectE
	.long	_ZN3stk6EffectD2Ev
	.long	_ZN3stk6EffectD0Ev
	.long	_ZN3stk3Stk17sampleRateChangedEdd
	.long	__cxa_pure_virtual
	.long	_ZN3stk6Effect12setEffectMixEd
	.size	_ZTVN3stk6EffectE, 28

	.type	_ZTSN3stk6EffectE,%object @ @_ZTSN3stk6EffectE
	.section	.rodata._ZTSN3stk6EffectE,"aG",%progbits,_ZTSN3stk6EffectE,comdat
	.weak	_ZTSN3stk6EffectE
_ZTSN3stk6EffectE:
	.asciz	"N3stk6EffectE"
	.size	_ZTSN3stk6EffectE, 14

	.type	_ZTIN3stk6EffectE,%object @ @_ZTIN3stk6EffectE
	.section	.rodata._ZTIN3stk6EffectE,"aG",%progbits,_ZTIN3stk6EffectE,comdat
	.weak	_ZTIN3stk6EffectE
	.p2align	2
_ZTIN3stk6EffectE:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTSN3stk6EffectE
	.long	_ZTIN3stk3StkE
	.size	_ZTIN3stk6EffectE, 12

	.type	.L.str.17,%object       @ @.str.17
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.17:
	.asciz	"Effect::setEffectMix: mix parameter is less than zero ... setting to zero!"
	.size	.L.str.17, 75

	.type	.L.str.18,%object       @ @.str.18
.L.str.18:
	.asciz	"Effect::setEffectMix: mix parameter is greater than 1.0 ... setting to one!"
	.size	.L.str.18, 76

	.type	.L.str.19,%object       @ @.str.19
.L.str.19:
	.asciz	"vector::_M_default_append"
	.size	.L.str.19, 26

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_render.ii(target1)
	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.local	.L_MergedGlobals
	.comm	.L_MergedGlobals,128,16
	.type	.L_MergedGlobals.4,%object @ @_MergedGlobals.4
	.local	.L_MergedGlobals.4
	.comm	.L_MergedGlobals.4,76,16
	.type	.L_MergedGlobals.5,%object @ @_MergedGlobals.5
	.data
	.p2align	4
.L_MergedGlobals.5:
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	4                       @ 0x4
	.long	5                       @ 0x5
	.long	7                       @ 0x7
	.long	9                       @ 0x9
	.long	11                      @ 0xb
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.size	.L_MergedGlobals.5, 68


	.globl	ledManager
ledManager = .L_MergedGlobals
	.size	ledManager, 1
	.globl	showLEDNotes
showLEDNotes = .L_MergedGlobals+1
	.size	showLEDNotes, 1
	.globl	valueChanged
valueChanged = .L_MergedGlobals+2
	.size	valueChanged, 1
	.globl	psType
psType = .L_MergedGlobals+4
	.size	psType, 4
	.globl	bufferPointer
bufferPointer = .L_MergedGlobals+8
	.size	bufferPointer, 4
	.globl	psBufferPointer
psBufferPointer = .L_MergedGlobals+12
	.size	psBufferPointer, 4
	.globl	sampleCount
sampleCount = .L_MergedGlobals+16
	.size	sampleCount, 4
	.globl	pitchShiftTask
pitchShiftTask = .L_MergedGlobals+20
	.size	pitchShiftTask, 4
	.globl	psInputBuffer
psInputBuffer = .L_MergedGlobals+24
	.size	psInputBuffer, 4
	.globl	psOutputBuffer1
psOutputBuffer1 = .L_MergedGlobals+28
	.size	psOutputBuffer1, 4
	.globl	psOutputBuffer2
psOutputBuffer2 = .L_MergedGlobals+32
	.size	psOutputBuffer2, 4
	.globl	psOutputBuffer3
psOutputBuffer3 = .L_MergedGlobals+36
	.size	psOutputBuffer3, 4
	.globl	sampleRate
sampleRate = .L_MergedGlobals+40
	.size	sampleRate, 4
	.globl	numFrames
numFrames = .L_MergedGlobals+44
	.size	numFrames, 4
	.globl	currentF0
currentF0 = .L_MergedGlobals+48
	.size	currentF0, 4
	.globl	harmonyCount
harmonyCount = .L_MergedGlobals+52
	.size	harmonyCount, 4
	.globl	harmonyRead
harmonyRead = .L_MergedGlobals+56
	.size	harmonyRead, 4
	.globl	thereminCount
thereminCount = .L_MergedGlobals+60
	.size	thereminCount, 4
	.globl	thereminRead
thereminRead = .L_MergedGlobals+64
	.size	thereminRead, 4
	.globl	thereminPitchDistance
thereminPitchDistance = .L_MergedGlobals+68
	.size	thereminPitchDistance, 4
	.globl	thereminMixDistance
thereminMixDistance = .L_MergedGlobals+72
	.size	thereminMixDistance, 4
	.globl	mixLevel
mixLevel = .L_MergedGlobals+76
	.size	mixLevel, 4
	.globl	gainPot
gainPot = .L_MergedGlobals+80
	.size	gainPot, 4
	.globl	harmonyPot
harmonyPot = .L_MergedGlobals+84
	.size	harmonyPot, 4
	.globl	keyPot
keyPot = .L_MergedGlobals+88
	.size	keyPot, 4
	.globl	reverbPot
reverbPot = .L_MergedGlobals+92
	.size	reverbPot, 4
	.globl	prevGainPot
prevGainPot = .L_MergedGlobals+96
	.size	prevGainPot, 4
	.globl	prevHarmonyPot
prevHarmonyPot = .L_MergedGlobals+100
	.size	prevHarmonyPot, 4
	.globl	prevKeyPot
prevKeyPot = .L_MergedGlobals+104
	.size	prevKeyPot, 4
	.globl	prevReverbPot
prevReverbPot = .L_MergedGlobals+108
	.size	prevReverbPot, 4
	.globl	pgaGain
pgaGain = .L_MergedGlobals+112
	.size	pgaGain, 4
	.globl	numHarmonies
numHarmonies = .L_MergedGlobals+116
	.size	numHarmonies, 4
	.globl	keySig
keySig = .L_MergedGlobals+120
	.size	keySig, 4
	.globl	valueChangedTimer
valueChangedTimer = .L_MergedGlobals+124
	.size	valueChangedTimer, 4
	.globl	inputAudioBuffer
inputAudioBuffer = .L_MergedGlobals.4
	.size	inputAudioBuffer, 12
	.globl	outputAudioBuffer
outputAudioBuffer = .L_MergedGlobals.4+12
	.size	outputAudioBuffer, 12
	.globl	processAudioBuffer1
processAudioBuffer1 = .L_MergedGlobals.4+24
	.size	processAudioBuffer1, 12
	.globl	processAudioBuffer2
processAudioBuffer2 = .L_MergedGlobals.4+36
	.size	processAudioBuffer2, 12
	.globl	processAudioBuffer3
processAudioBuffer3 = .L_MergedGlobals.4+48
	.size	processAudioBuffer3, 12
	.globl	pitchTracker
pitchTracker = .L_MergedGlobals.4+60
	.size	pitchTracker, 16
	.globl	harmonyCalculator
harmonyCalculator = .L_MergedGlobals.5
	.size	harmonyCalculator, 68
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
