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
	str	r0, [r4, #68]
	asr	r0, r6, #31
	add	r0, r6, r0, lsr #20
	mov	r1, r5
	asr	r0, r0, #12
	str	r0, [r4, #60]
	movw	r0, :lower16:thereminReader
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
	add	r0, r5, #36
	mov	r1, sp
	mov	r2, #2048
	bl	_ZN12PitchTracker4initEPcii
	ldr	r0, [r4, #4]
	cmp	r0, #0
	bne	.LBB4_2
@ BB#1:
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
.LBB4_2:
	cmp	r0, #1
	bne	.LBB4_4
@ BB#3:
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
.LBB4_4:
	ldr	r1, [r4, #40]
	movw	r0, :lower16:reverberator
	movt	r0, :upper16:reverberator
	bl	_ZN12Reverberator4initEi
	ldrd	r0, r1, [r4, #96]
	mov	r2, #0
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #12
	bne	.LBB4_6
@ BB#5:
	add	r0, r4, #96
	rsb	r1, r1, #4096
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_7
.LBB4_6:
	cmp	r1, #4096
	addne	r0, r0, #16384
	strne	r0, [r4, #100]
.LBB4_7:                                @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit
	ldr	r1, [r4, #108]
	ldr	r2, [r4, #112]
	ldr	r0, [r4, #44]
	sub	r3, r2, r1
	asr	r2, r3, #2
	cmp	r0, r3, asr #2
	bls	.LBB4_9
@ BB#8:
	sub	r1, r0, r2
	add	r0, r4, #108
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_10
.LBB4_9:
	cmp	r0, r2
	addlo	r0, r1, r0, lsl #2
	strlo	r0, [r4, #112]
.LBB4_10:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit4
	ldrd	r0, r1, [r5]
	mov	r2, #0
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #12
	bne	.LBB4_12
@ BB#11:
	movw	r0, :lower16:.L_MergedGlobals.4
	rsb	r1, r1, #4096
	movt	r0, :upper16:.L_MergedGlobals.4
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_13
.LBB4_12:
	cmp	r1, #4096
	addne	r0, r0, #16384
	strne	r0, [r5, #4]
.LBB4_13:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit5
	ldr	r0, [r5, #12]
	mov	r2, #0
	ldr	r1, [r5, #16]
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #12
	bne	.LBB4_15
@ BB#14:
	add	r0, r5, #12
	rsb	r1, r1, #4096
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_16
.LBB4_15:
	cmp	r1, #4096
	addne	r0, r0, #16384
	strne	r0, [r5, #16]
.LBB4_16:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit6
	ldrd	r0, r1, [r5, #24]
	mov	r2, #0
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #12
	bne	.LBB4_18
@ BB#17:
	add	r0, r5, #24
	rsb	r1, r1, #4096
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_19
.LBB4_18:
	cmp	r1, #4096
	addne	r0, r0, #16384
	strne	r0, [r5, #28]
.LBB4_19:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit7
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
	movw	r0, :lower16:.L_MergedGlobals.4
	movt	r0, :upper16:.L_MergedGlobals.4
	ldr	r12, [r0, #24]
	ldr	r2, [r0]
	ldr	r3, [r0, #12]
	movw	r0, :lower16:.L_MergedGlobals
	movt	r0, :upper16:.L_MergedGlobals
	str	r12, [sp]
	ldr	r1, [r0, #12]
	ldr	r0, [r0, #96]
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
	movw	r6, :lower16:.L_MergedGlobals
	mov	r5, r1
	movt	r6, :upper16:.L_MergedGlobals
	ldr	r9, [r11, #8]
	ldr	r1, [r6, #24]
	mov	r10, r3
	mov	r8, r2
	mov	r2, #0
	movw	r3, #4094
	mov	r7, r5
.LBB6_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r7, lsl #2]
	cmp	r7, r3
	str	r4, [r1, r2, lsl #2]
	add	r4, r7, #1
	movwgt	r4, #0
	add	r2, r2, #1
	mov	r7, r4
	cmp	r2, #2048
	bne	.LBB6_1
@ BB#2:
	movw	r7, :lower16:.L_MergedGlobals.4
	movt	r7, :upper16:.L_MergedGlobals.4
	add	r0, r7, #36
	bl	_ZN12PitchTracker8getPitchEPf
	vmov	s0, r0
	vcvt.f32.s32	d0, d0
	vstr	s0, [r6, #48]
	ldrd	r0, r1, [r6, #56]
	cmp	r0, r1
	bne	.LBB6_4
@ BB#3:
	mov	r4, #0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	add	r0, r7, #52
	str	r4, [r6, #56]
	vldr	s2, [r6, #72]
	vmov.f32	s1, s2
	bl	_ZN17HarmonyCalculator14setInputValuesEff
	ldr	r0, [r6, #48]
	mvn	r1, #-2147483648
	tst	r0, r1
	movne	r0, #1
	strbeq	r4, [r6, #1]
	strbne	r0, [r6, #1]
.LBB6_4:
	ldr	r0, [r6, #56]
	vldr	s0, .LCPI6_0
	add	r0, r0, #1
	str	r0, [r6, #56]
	vldr	s2, [r6, #80]
	mov	r0, #0
	vmul.f32	d0, d1, d0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	Bela_setPgaGain
	vldr	s0, .LCPI6_1
	vldr	s2, [r6, #84]
	vmul.f32	d0, d1, d0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	roundf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vldr	s2, .LCPI6_2
	vcvt.s32.f32	d0, d0
	vmov	r0, s0
	str	r0, [r6, #52]
	vldr	s0, [r6, #88]
	vmul.f32	d0, d0, d1
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	roundf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	add	r7, r7, #52
	vcvt.s32.f32	d0, d0
	mov	r0, r7
	vmov	r1, s0
	bl	_ZN17HarmonyCalculator9setKeySigEi
	movw	r0, :lower16:reverberator
	vldr	s0, [r6, #92]
	movt	r0, :upper16:reverberator
	bl	_ZN12Reverberator6setMixEf
	ldr	r0, [r6, #4]
	cmp	r0, #0
	bne	.LBB6_10
@ BB#5:
	ldr	r0, [r6, #52]
	cmp	r0, #1
	blt	.LBB6_9
@ BB#6:
	mov	r0, r7
	bl	_ZN17HarmonyCalculator20getFirstHarmonyShiftEv
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	bl	_ZN12PitchShifter10setShiftDLEf
	ldr	r0, [r6, #52]
	cmp	r0, #2
	blt	.LBB6_9
@ BB#7:                                 @ %.thread
	mov	r0, r7
	bl	_ZN17HarmonyCalculator21getSecondHarmonyShiftEv
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter10setShiftDLEf
	ldr	r0, [r6, #52]
	cmp	r0, #3
	blt	.LBB6_9
@ BB#8:
	mov	r0, r7
	bl	_ZN17HarmonyCalculator20getThirdHarmonyShiftEv
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	bl	_ZN12PitchShifter10setShiftDLEf
.LBB6_9:                                @ %thread-pre-split
	ldr	r0, [r6, #4]
.LBB6_10:
	cmp	r0, #1
	bne	.LBB6_37
@ BB#11:
	ldr	r0, [r6, #52]
	cmp	r0, #1
	blt	.LBB6_23
@ BB#12:
	ldr	r1, [r6, #24]
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	bl	_ZN12PitchShifter11readInWSOLAEPf
	ldr	r0, [r6, #52]
	cmp	r0, #2
	blt	.LBB6_15
@ BB#13:                                @ %.thread40
	ldr	r1, [r6, #24]
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter11readInWSOLAEPf
	ldr	r0, [r6, #52]
	cmp	r0, #3
	blt	.LBB6_15
@ BB#14:
	ldr	r1, [r6, #24]
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	bl	_ZN12PitchShifter11readInWSOLAEPf
	ldr	r0, [r6, #52]
.LBB6_15:                               @ %thread-pre-split44
	cmp	r0, #1
	blt	.LBB6_23
@ BB#16:                                @ %.thread52
	vmov.f32	d1, #3.000000e+00
	movw	r0, :lower16:pitchShifter1
	vldr	s0, [r6, #48]
	movt	r0, :upper16:pitchShifter1
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter10shiftWSOLAEff
	ldr	r0, [r6, #52]
	cmp	r0, #2
	blt	.LBB6_19
@ BB#17:
	vmov.f32	d1, #-3.000000e+00
	movw	r0, :lower16:pitchShifter2
	vldr	s0, [r6, #48]
	movt	r0, :upper16:pitchShifter2
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter10shiftWSOLAEff
	ldr	r0, [r6, #52]
	cmp	r0, #3
	blt	.LBB6_19
@ BB#18:
	vmov.f32	d1, #5.000000e+00
	movw	r0, :lower16:pitchShifter3
	vldr	s0, [r6, #48]
	movt	r0, :upper16:pitchShifter3
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter10shiftWSOLAEff
	ldr	r0, [r6, #52]
.LBB6_19:                               @ %thread-pre-split48
	cmp	r0, #1
	blt	.LBB6_23
@ BB#20:
	ldr	r1, [r6, #28]
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	bl	_ZN12PitchShifter12readOutWSOLAEPf
	ldr	r0, [r6, #52]
	cmp	r0, #2
	blt	.LBB6_23
@ BB#21:
	ldr	r1, [r6, #32]
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter12readOutWSOLAEPf
	ldr	r0, [r6, #52]
	cmp	r0, #3
	blt	.LBB6_23
@ BB#22:
	ldr	r1, [r6, #36]
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	bl	_ZN12PitchShifter12readOutWSOLAEPf
	ldr	r0, [r6, #52]
.LBB6_23:                               @ %.thread51
	add	r1, r5, #2048
	cmp	r0, #0
	asr	r2, r1, #31
	add	r2, r1, r2, lsr #20
	bfc	r2, #0, #12
	sub	r1, r1, r2
	ble	.LBB6_30
@ BB#24:                                @ %.thread51.split.us
	ldr	r2, [r6, #28]
	cmp	r0, #1
	ldr	r3, [r6, #36]
	bne	.LBB6_32
@ BB#25:                                @ %.thread51.split.us.split.preheader
	mov	r7, #0
	movw	r6, #4094
	mov	r4, #0
.LBB6_26:                               @ %.thread51.split.us.split
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r2, r4, lsl #2]
	cmp	r0, #2
	str	r5, [r8, r1, lsl #2]
	str	r7, [r10, r1, lsl #2]
	ble	.LBB6_28
@ BB#27:                                @   in Loop: Header=BB6_26 Depth=1
	ldr	r5, [r3, r4, lsl #2]
	str	r5, [r9, r1, lsl #2]
	b	.LBB6_29
.LBB6_28:                               @   in Loop: Header=BB6_26 Depth=1
	str	r7, [r9, r1, lsl #2]
.LBB6_29:                               @   in Loop: Header=BB6_26 Depth=1
	add	r5, r1, #1
	cmp	r1, r6
	movwgt	r5, #0
	add	r4, r4, #1
	mov	r1, r5
	cmp	r4, #2048
	bne	.LBB6_26
	b	.LBB6_37
.LBB6_30:                               @ %.thread51.split.split.split.preheader
	mov	r0, #2048
	mov	r2, #0
	movw	r3, #4094
.LBB6_31:                               @ %.thread51.split.split.split
                                        @ =>This Inner Loop Header: Depth=1
	add	r7, r1, #1
	cmp	r1, r3
	movwgt	r7, #0
	subs	r0, r0, #1
	str	r2, [r8, r1, lsl #2]
	str	r2, [r10, r1, lsl #2]
	str	r2, [r9, r1, lsl #2]
	mov	r1, r7
	bne	.LBB6_31
	b	.LBB6_37
.LBB6_32:                               @ %.thread51.split.us.split.us.preheader
	ldr	r7, [r6, #32]
	mov	r12, #0
	movw	r6, #4094
	mov	r4, #0
.LBB6_33:                               @ %.thread51.split.us.split.us
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r2, r4, lsl #2]
	cmp	r0, #2
	str	r5, [r8, r1, lsl #2]
	ldr	r5, [r7, r4, lsl #2]
	str	r5, [r10, r1, lsl #2]
	ble	.LBB6_35
@ BB#34:                                @   in Loop: Header=BB6_33 Depth=1
	ldr	r5, [r3, r4, lsl #2]
	str	r5, [r9, r1, lsl #2]
	b	.LBB6_36
.LBB6_35:                               @   in Loop: Header=BB6_33 Depth=1
	str	r12, [r9, r1, lsl #2]
.LBB6_36:                               @   in Loop: Header=BB6_33 Depth=1
	add	r5, r1, #1
	cmp	r1, r6
	movwgt	r5, #0
	add	r4, r4, #1
	mov	r1, r5
	cmp	r4, #2048
	bne	.LBB6_33
.LBB6_37:                               @ %.loopexit
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ BB#38:
.LCPI6_0:
	.long	1112014848              @ float 50
.LCPI6_1:
	.long	1079984509              @ float 3.48837209
.LCPI6_2:
	.long	1095542450              @ float 12.7906971
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
	.vsave	{d8, d9, d10}
	vpush	{d8, d9, d10}
	.pad	#16
	sub	sp, sp, #16
	movw	r4, :lower16:.L_MergedGlobals
	mov	r9, r0
	movt	r4, :upper16:.L_MergedGlobals
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.LBB7_10
@ BB#1:                                 @ %.lr.ph
	movw	r8, :lower16:.L_MergedGlobals.4
	movw	r5, #4094
	movt	r8, :upper16:.L_MergedGlobals.4
	movw	r10, #2047
	mov	r6, #0
	mov	r7, #0
.LBB7_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r9, #24]
	ldr	r0, [r9]
	ldr	r2, [r4, #8]
	mul	r1, r1, r7
	ldr	r3, [r4, #96]
	ldr	r1, [r0, r1, lsl #2]
	str	r1, [r3, r2, lsl #2]
	ldr	r0, [r4, #4]
	cmp	r0, #0
	bne	.LBB7_4
@ BB#3:                                 @   in Loop: Header=BB7_2 Depth=1
	vmov	d8, r1, r1
	movw	r0, :lower16:pitchShifter1
	movt	r0, :upper16:pitchShifter1
	vmov.f32	s0, s16
	bl	_ZN12PitchShifter7shiftDLEf
	ldr	r0, [r4, #8]
	vmov.f64	d9, d0
	ldr	r1, [r4, #96]
	add	r0, r1, r0, lsl #2
	vldr	s20, [r4, #76]
	vldr	s0, [r0]
	movw	r0, :lower16:pitchShifter2
	movt	r0, :upper16:pitchShifter2
	bl	_ZN12PitchShifter7shiftDLEf
	ldr	r0, [r4, #8]
	vmul.f32	d16, d10, d9
	ldr	r1, [r4, #96]
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vldr	s2, [r4, #76]
	add	r0, r1, r0, lsl #2
	vmul.f32	d9, d1, d0
	vldr	s0, [r0]
	movw	r0, :lower16:pitchShifter3
	movt	r0, :upper16:pitchShifter3
	vadd.f32	d8, d16, d8
	bl	_ZN12PitchShifter7shiftDLEf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	vldr	s2, [r4, #76]
	vadd.f32	d16, d8, d9
	movw	r0, :lower16:reverberator
	vmul.f32	d17, d1, d0
	movt	r0, :upper16:reverberator
	vadd.f32	d0, d16, d17
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	_ZN12Reverberator11applyReverbEf
	ldr	r0, [r4, #108]
	add	r0, r0, r6
	vstr	s0, [r0]
	ldr	r0, [r4, #4]
.LBB7_4:                                @   in Loop: Header=BB7_2 Depth=1
	cmp	r0, #1
	bne	.LBB7_6
@ BB#5:                                 @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [r4, #8]
	ldr	r1, [r8]
	ldr	r2, [r8, #12]
	add	r1, r1, r0, lsl #2
	ldr	r3, [r8, #24]
	add	r2, r2, r0, lsl #2
	vldr	s0, [r4, #76]
	vldr	s2, [r1]
	add	r1, r3, r0, lsl #2
	vldr	s4, [r2]
	vldr	s6, [r1]
	vadd.f32	d16, d2, d1
	ldr	r5, [r4, #96]
	add	r0, r5, r0, lsl #2
	movw	r5, #4094
	vadd.f32	d16, d16, d3
	vldr	s2, [r0]
	movw	r0, :lower16:reverberator
	movt	r0, :upper16:reverberator
	vmul.f32	d16, d16, d0
	vadd.f32	d0, d16, d1
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	_ZN12Reverberator11applyReverbEf
	ldr	r0, [r4, #108]
	add	r1, r0, r6
	vstr	s0, [r1]
	b	.LBB7_7
.LBB7_6:                                @ %..preheader_crit_edge
                                        @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [r4, #108]
	add	r1, r0, r6
	vldr	s0, [r1]
.LBB7_7:                                @ %.preheader
                                        @   in Loop: Header=BB7_2 Depth=1
	ldr	r1, [r4, #52]
	add	r0, r0, r6
	vldr	s2, [r4, #76]
	add	r1, r1, #1
	ldr	r2, [r9, #28]
	vmov	s4, r1
	ldr	r1, [r9, #4]
	vcvt.f32.s32	d16, d2
	mul	r2, r2, r7
	vmul.f32	d1, d16, d1
	add	r1, r1, r2, lsl #2
	vdiv.f32	s0, s0, s2
	vstr	s0, [r1]
	vldr	s2, [r4, #76]
	vldr	s0, [r0]
	vmul.f32	d1, d16, d1
	vdiv.f32	s0, s0, s2
	vstr	s0, [r1, #4]
	ldr	r1, [r4, #8]
	add	r0, r1, #1
	cmp	r1, r5
	movwgt	r0, #0
	str	r0, [r4, #8]
	ldr	r1, [r4, #16]
	add	r2, r1, #1
	str	r2, [r4, #16]
	cmp	r1, r10
	blt	.LBB7_9
@ BB#8:                                 @   in Loop: Header=BB7_2 Depth=1
	ldr	r1, [r9, #8]
	ldr	r2, [r1, #4]
	str	r2, [r4, #80]
	ldr	r2, [r1, #8]
	str	r2, [r4, #84]
	ldr	r2, [r1, #12]
	str	r2, [r4, #88]
	ldr	r1, [r1, #16]
	str	r1, [r4, #92]
	str	r0, [r4, #12]
	ldr	r0, [r4, #20]
	bl	Bela_scheduleAuxiliaryTask
	mov	r0, #0
	str	r0, [r4, #16]
.LBB7_9:                                @   in Loop: Header=BB7_2 Depth=1
	add	r6, r6, #4
	add	r7, r7, #1
	ldr	r0, [r4, #44]
	cmp	r7, r0
	blo	.LBB7_2
.LBB7_10:                               @ %._crit_edge
	ldrd	r0, r1, [r4, #64]
	cmp	r0, r1
	bne	.LBB7_12
@ BB#11:
	movw	r1, #0
	mov	r0, #0
	movt	r1, #16672
	str	r0, [r4, #64]
	str	r1, [r4, #72]
.LBB7_12:
	add	r0, r0, #1
	str	r0, [r4, #64]
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	beq	.LBB7_14
@ BB#13:
	movw	r0, :lower16:.L_MergedGlobals.4
	ldr	r8, [r4, #52]
	movt	r0, :upper16:.L_MergedGlobals.4
	add	r7, r0, #52
	mov	r0, r7
	bl	_ZN17HarmonyCalculator9getNoteInEv
	mov	r5, r0
	mov	r0, r7
	bl	_ZN17HarmonyCalculator19getFirstHarmonyNoteEv
	mov	r10, r0
	mov	r0, r7
	bl	_ZN17HarmonyCalculator20getSecondHarmonyNoteEv
	mov	r6, r0
	mov	r0, r7
	bl	_ZN17HarmonyCalculator19getThirdHarmonyNoteEv
	str	r10, [sp]
	mov	r1, r9
	str	r6, [sp, #4]
	mov	r2, r8
	str	r0, [sp, #8]
	mov	r0, r4
	mov	r3, r5
	bl	_ZN10LEDManager11updateNotesEP11BelaContextiiiii
	b	.LBB7_15
.LBB7_14:
	movw	r0, :lower16:.L_MergedGlobals
	mov	r1, r9
	movt	r0, :upper16:.L_MergedGlobals
	bl	_ZN10LEDManager10clearNotesEP11BelaContext
.LBB7_15:
	movw	r0, #52429
	movt	r0, #16204
	str	r0, [r4, #76]
	sub	sp, r11, #56
	vpop	{d8, d9, d10}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
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
	movw	r1, :lower16:.L.str.15
	movt	r0, :upper16:_ZN3stk3Stk8oStream_B5cxx11E
	movt	r1, :upper16:.L.str.15
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
	movw	r1, :lower16:.L.str.16
	movt	r0, :upper16:_ZN3stk3Stk8oStream_B5cxx11E
	movt	r1, :upper16:.L.str.16
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
	movw	r0, :lower16:.L.str.17
	movt	r0, :upper16:.L.str.17
	mov	lr, pc
	b	_ZSt20__throw_length_errorPKc
.LBB12_14:
	mov	lr, pc
	b	_ZSt17__throw_bad_allocv
.Lfunc_end12:
	.size	_ZNSt6vectorIfSaIfEE17_M_default_appendEj, .Lfunc_end12-_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	2
	.type	_GLOBAL__sub_I_render.ii,%function
_GLOBAL__sub_I_render.ii:               @ @_GLOBAL__sub_I_render.ii
.Lfunc_begin0:
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	movw	r5, :lower16:_ZStL8__ioinit
	movt	r5, :upper16:_ZStL8__ioinit
	mov	r0, r5
	bl	_ZNSt8ios_base4InitC1Ev
	movw	r8, :lower16:__dso_handle
	movw	r0, :lower16:_ZNSt8ios_base4InitD1Ev
	movt	r8, :upper16:__dso_handle
	movt	r0, :upper16:_ZNSt8ios_base4InitD1Ev
	mov	r1, r5
	mov	r2, r8
	bl	__cxa_atexit
	movw	r5, :lower16:.L_MergedGlobals
	movw	r6, :lower16:_ZNSt6vectorIfSaIfEED2Ev
	movt	r5, :upper16:.L_MergedGlobals
	mov	r4, #0
	mov	r1, r5
	movt	r6, :upper16:_ZNSt6vectorIfSaIfEED2Ev
	str	r4, [r1, #96]!
	mov	r0, r6
	mov	r2, r8
	str	r4, [r5, #100]
	str	r4, [r5, #104]
	bl	__cxa_atexit
	str	r4, [r5, #108]!
	mov	r0, r6
	mov	r2, r8
	mov	r1, r5
	str	r4, [r5, #4]
	str	r4, [r5, #8]
	bl	__cxa_atexit
	movw	r7, :lower16:.L_MergedGlobals.4
	mov	r0, r6
	movt	r7, :upper16:.L_MergedGlobals.4
	mov	r2, r8
	mov	r1, r7
	str	r4, [r7]
	str	r4, [r7, #4]
	str	r4, [r7, #8]
	bl	__cxa_atexit
	mov	r1, r7
	mov	r0, r6
	str	r4, [r1, #12]!
	mov	r2, r8
	str	r4, [r7, #16]
	str	r4, [r7, #20]
	bl	__cxa_atexit
	str	r4, [r7, #24]!
	mov	r0, r6
	mov	r2, r8
	mov	r1, r7
	str	r4, [r7, #4]
	str	r4, [r7, #8]
	bl	__cxa_atexit
	mov	r0, #8192
	bl	_Znaj
	str	r0, [r5, #-84]
	mov	r0, #8192
	bl	_Znaj
	str	r0, [r5, #-80]
	mov	r0, #8192
	bl	_Znaj
	str	r0, [r5, #-76]
	mov	r0, #8192
	bl	_Znaj
	str	r0, [r5, #-72]
	movw	r0, :lower16:_ZTV7PulseIn
	movt	r0, :upper16:_ZTV7PulseIn
	movw	r1, :lower16:thereminReader
	movw	r3, #0
	movt	r1, :upper16:thereminReader
	add	r0, r0, #8
	mvn	r2, #0
	stm	r1, {r0, r4}
	movt	r3, #17000
	movw	r7, #2646
	str	r4, [r1, #8]
	add	r12, r1, #96
	str	r4, [r1, #12]
	mov	r6, #1
	str	r2, [r1, #20]
	mov	r5, #2
	str	r0, [r1, #48]
	mov	r0, #7
	str	r4, [r1, #52]
	str	r4, [r1, #56]
	str	r4, [r1, #60]
	str	r2, [r1, #68]
	mov	r2, #1000
	stm	r12, {r0, r2, r3, r7}
	mov	r0, #3
	mov	r2, r8
	str	r4, [r1, #112]
	str	r4, [r1, #116]
	str	r6, [r1, #120]
	str	r5, [r1, #124]
	str	r0, [r1, #128]
	movw	r0, :lower16:_ZN14ThereminReaderD2Ev
	movt	r0, :upper16:_ZN14ThereminReaderD2Ev
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
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
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

	.type	thereminMixDistance,%object @ @thereminMixDistance
	.globl	thereminMixDistance
	.p2align	2
thereminMixDistance:
	.long	0                       @ float 0
	.size	thereminMixDistance, 4

	.type	.L_ZZ5setupE19pitchTrackingMethod,%object @ @_ZZ5setupE19pitchTrackingMethod
	.section	.rodata.str1.1,"aMS",%progbits,1
.L_ZZ5setupE19pitchTrackingMethod:
	.asciz	"yinfft"
	.size	.L_ZZ5setupE19pitchTrackingMethod, 7

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"pitch-shifter"
	.size	.L.str, 14

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

	.type	.L.str.15,%object       @ @.str.15
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.15:
	.asciz	"Effect::setEffectMix: mix parameter is less than zero ... setting to zero!"
	.size	.L.str.15, 75

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	"Effect::setEffectMix: mix parameter is greater than 1.0 ... setting to one!"
	.size	.L.str.16, 76

	.type	.L.str.17,%object       @ @.str.17
.L.str.17:
	.asciz	"vector::_M_default_append"
	.size	.L.str.17, 26

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_render.ii(target1)
	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.data
	.p2align	4
.L_MergedGlobals:
	.zero	1
	.byte	0                       @ 0x0
	.zero	2
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ float 0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.zero	12
	.zero	12
	.size	.L_MergedGlobals, 120

	.type	.L_MergedGlobals.4,%object @ @_MergedGlobals.4
	.p2align	4
.L_MergedGlobals.4:
	.zero	12
	.zero	12
	.zero	12
	.zero	16
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
	.size	.L_MergedGlobals.4, 120


	.globl	ledManager
ledManager = .L_MergedGlobals
	.size	ledManager, 1
	.globl	showLEDNotes
showLEDNotes = .L_MergedGlobals+1
	.size	showLEDNotes, 1
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
	.globl	numHarmonies
numHarmonies = .L_MergedGlobals+52
	.size	numHarmonies, 4
	.globl	harmonyCount
harmonyCount = .L_MergedGlobals+56
	.size	harmonyCount, 4
	.globl	harmonyRead
harmonyRead = .L_MergedGlobals+60
	.size	harmonyRead, 4
	.globl	thereminCount
thereminCount = .L_MergedGlobals+64
	.size	thereminCount, 4
	.globl	thereminRead
thereminRead = .L_MergedGlobals+68
	.size	thereminRead, 4
	.globl	thereminPitchDistance
thereminPitchDistance = .L_MergedGlobals+72
	.size	thereminPitchDistance, 4
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
	.globl	inputAudioBuffer
inputAudioBuffer = .L_MergedGlobals+96
	.size	inputAudioBuffer, 12
	.globl	outputAudioBuffer
outputAudioBuffer = .L_MergedGlobals+108
	.size	outputAudioBuffer, 12
	.globl	processAudioBuffer1
processAudioBuffer1 = .L_MergedGlobals.4
	.size	processAudioBuffer1, 12
	.globl	processAudioBuffer2
processAudioBuffer2 = .L_MergedGlobals.4+12
	.size	processAudioBuffer2, 12
	.globl	processAudioBuffer3
processAudioBuffer3 = .L_MergedGlobals.4+24
	.size	processAudioBuffer3, 12
	.globl	pitchTracker
pitchTracker = .L_MergedGlobals.4+36
	.size	pitchTracker, 16
	.globl	harmonyCalculator
harmonyCalculator = .L_MergedGlobals.4+52
	.size	harmonyCalculator, 68
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
