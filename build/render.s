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
	str	r6, [r4, #36]
	ldr	r1, [r5, #20]
	mov	r0, r6
	str	r1, [r4, #40]
	bl	__aeabi_idiv
	str	r0, [r4, #64]
	asr	r0, r6, #31
	add	r0, r6, r0, lsr #19
	mov	r1, r5
	asr	r0, r0, #13
	str	r0, [r4, #56]
	movw	r0, :lower16:thereminReader
	movt	r0, :upper16:thereminReader
	bl	_ZN14ThereminReader4initEP11BelaContext
	mov	r0, r4
	mov	r1, r5
	bl	_ZN10LEDManager4initEP11BelaContext
	mov	r6, #0
	movw	r0, #29798
	strb	r6, [sp, #6]
	movw	r5, :lower16:.L_MergedGlobals.5
	strh	r0, [sp, #4]
	movw	r0, #27001
	movt	r0, #26222
	ldr	r3, [r4, #36]
	str	r0, [sp]
	movt	r5, :upper16:.L_MergedGlobals.5
	add	r0, r5, #12
	mov	r1, sp
	mov	r2, #4096
	bl	_ZN12PitchTracker4initEPcii
	ldr	r1, [r4, #36]
	movw	r0, :lower16:.L_MergedGlobals.6
	movt	r0, :upper16:.L_MergedGlobals.6
	mov	r2, #4096
	bl	_ZN12PitchShifter4initEii
	ldr	r1, [r4, #36]
	movw	r0, :lower16:.L_MergedGlobals.7
	movt	r0, :upper16:.L_MergedGlobals.7
	mov	r2, #4096
	bl	_ZN12PitchShifter4initEii
	ldr	r1, [r4, #36]
	movw	r0, :lower16:.L_MergedGlobals.8
	movt	r0, :upper16:.L_MergedGlobals.8
	mov	r2, #4096
	bl	_ZN12PitchShifter4initEii
	ldr	r1, [r4, #36]
	movw	r0, :lower16:reverberator
	movt	r0, :upper16:reverberator
	bl	_ZN12Reverberator4initEi
	ldr	r0, [r4, #76]
	ldr	r1, [r4, #80]
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r6, r1, lsr #13
	bne	.LBB4_2
@ BB#1:
	add	r0, r4, #76
	rsb	r1, r1, #8192
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_3
.LBB4_2:
	cmp	r1, #8192
	addne	r0, r0, #32768
	strne	r0, [r4, #80]
.LBB4_3:                                @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit
	ldrd	r2, r3, [r4, #88]
	ldr	r0, [r4, #40]
	sub	r3, r3, r2
	asr	r1, r3, #2
	cmp	r0, r3, asr #2
	bls	.LBB4_5
@ BB#4:
	sub	r1, r0, r1
	add	r0, r4, #88
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_6
.LBB4_5:
	cmp	r0, r1
	addlo	r0, r2, r0, lsl #2
	strlo	r0, [r4, #92]
.LBB4_6:                                @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit4
	ldr	r0, [r4, #100]
	mov	r2, #0
	ldr	r1, [r4, #104]
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #13
	bne	.LBB4_8
@ BB#7:
	add	r0, r4, #100
	rsb	r1, r1, #8192
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_9
.LBB4_8:
	cmp	r1, #8192
	addne	r0, r0, #32768
	strne	r0, [r4, #104]
.LBB4_9:                                @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit5
	ldrd	r0, r1, [r4, #112]
	mov	r2, #0
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #13
	bne	.LBB4_11
@ BB#10:
	add	r0, r4, #112
	rsb	r1, r1, #8192
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_12
.LBB4_11:
	cmp	r1, #8192
	addne	r0, r0, #32768
	strne	r0, [r4, #116]
.LBB4_12:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit6
	ldrd	r0, r1, [r5]
	mov	r2, #0
	sub	r1, r1, r0
	asr	r1, r1, #2
	cmp	r2, r1, lsr #13
	bne	.LBB4_14
@ BB#13:
	movw	r0, :lower16:.L_MergedGlobals.5
	rsb	r1, r1, #8192
	movt	r0, :upper16:.L_MergedGlobals.5
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEj
	b	.LBB4_15
.LBB4_14:
	cmp	r1, #8192
	addne	r0, r0, #32768
	strne	r0, [r5, #4]
.LBB4_15:                               @ %_ZNSt6vectorIfSaIfEE6resizeEj.exit7
	ldr	r0, [r4, #20]
	mov	r1, #0
	mov	r2, #16384
	bl	memset
	ldr	r0, [r4, #24]
	mov	r1, #0
	mov	r2, #16384
	bl	memset
	ldr	r0, [r4, #28]
	mov	r1, #0
	mov	r2, #16384
	bl	memset
	ldr	r0, [r4, #32]
	mov	r1, #0
	mov	r2, #16384
	bl	memset
	movw	r0, :lower16:_Z22pitch_shift_backgroundPv
	movw	r2, :lower16:.L.str
	movt	r0, :upper16:_Z22pitch_shift_backgroundPv
	movt	r2, :upper16:.L.str
	mov	r1, #90
	mov	r3, #0
	bl	Bela_createAuxiliaryTask
	str	r0, [r4, #16]
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
	movw	r3, :lower16:.L_MergedGlobals
	movw	r12, :lower16:.L_MergedGlobals.5
	movt	r3, :upper16:.L_MergedGlobals
	movt	r12, :upper16:.L_MergedGlobals.5
	ldr	r1, [r3, #8]
	ldr	r0, [r3, #76]
	ldr	r2, [r3, #100]
	ldr	r3, [r3, #112]
	ldr	r12, [r12]
	str	r12, [sp]
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
	.pad	#8
	sub	sp, sp, #8
	movw	r9, :lower16:.L_MergedGlobals
	mov	r7, r1
	movt	r9, :upper16:.L_MergedGlobals
	ldr	r8, [r11, #8]
	ldr	r1, [r9, #20]
	mov	r10, r3
	mov	r5, r2
	mov	r2, #0
	movw	r3, #8190
	str	r7, [sp, #4]            @ 4-byte Spill
.LBB6_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r0, r7, lsl #2]
	cmp	r7, r3
	str	r6, [r1, r2, lsl #2]
	add	r6, r7, #1
	movwgt	r6, #0
	add	r2, r2, #1
	mov	r7, r6
	cmp	r2, #4096
	bne	.LBB6_1
@ BB#2:
	movw	r6, :lower16:.L_MergedGlobals.5
	movt	r6, :upper16:.L_MergedGlobals.5
	add	r0, r6, #12
	bl	_ZN12PitchTracker8getPitchEPf
	vmov	s0, r0
	vcvt.f32.s32	d0, d0
	vstr	s0, [r9, #44]
	ldr	r0, [r9, #52]
	ldr	r1, [r9, #56]
	cmp	r0, r1
	bne	.LBB6_4
@ BB#3:
	mov	r7, #0
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	mov	r4, r6
	str	r7, [r9, #52]
	add	r6, r6, #28
	vldr	s2, [r9, #68]
	mov	r0, r6
	vmov.f32	s1, s2
	bl	_ZN17HarmonyCalculator14setInputValuesEff
	mov	r0, r6
	bl	_ZN17HarmonyCalculator9getNoteInEv
	mov	r1, r0
	movw	r0, :lower16:.L.str.15
	movt	r0, :upper16:.L.str.15
	bl	rt_printf
	mov	r0, r6
	bl	_ZN17HarmonyCalculator19getFirstHarmonyNoteEv
	mov	r1, r0
	movw	r0, :lower16:.L.str.16
	movt	r0, :upper16:.L.str.16
	bl	rt_printf
	mov	r0, r6
	bl	_ZN17HarmonyCalculator20getSecondHarmonyNoteEv
	mov	r1, r0
	movw	r0, :lower16:.L.str.17
	movt	r0, :upper16:.L.str.17
	bl	rt_printf
	mov	r0, r6
	bl	_ZN17HarmonyCalculator19getThirdHarmonyNoteEv
	mov	r1, r0
	movw	r0, :lower16:.L.str.18
	movt	r0, :upper16:.L.str.18
	bl	rt_printf
	movw	r0, :lower16:.L.str.19
	movt	r0, :upper16:.L.str.19
	bl	rt_printf
	ldr	r0, [r9, #44]
	mvn	r1, #-2147483648
	mov	r6, r4
	tst	r0, r1
	movne	r0, #1
	strbeq	r7, [r9, #1]
	strbne	r0, [r9, #1]
.LBB6_4:
	ldr	r0, [r9, #52]
	movw	r4, :lower16:.L_MergedGlobals.6
	movt	r4, :upper16:.L_MergedGlobals.6
	add	r0, r0, #1
	str	r0, [r9, #52]
	ldr	r1, [r9, #20]
	mov	r0, r4
	bl	_ZN12PitchShifter6readInEPf
	movw	r7, :lower16:.L_MergedGlobals.7
	ldr	r1, [r9, #20]
	movt	r7, :upper16:.L_MergedGlobals.7
	mov	r0, r7
	bl	_ZN12PitchShifter6readInEPf
	ldr	r1, [r9, #20]
	movw	r0, :lower16:.L_MergedGlobals.8
	movt	r0, :upper16:.L_MergedGlobals.8
	bl	_ZN12PitchShifter6readInEPf
	add	r6, r6, #28
	vldr	s16, [r9, #44]
	mov	r0, r6
	bl	_ZN17HarmonyCalculator20getFirstHarmonyShiftEv
	vmov.f32	s2, s0
	mov	r0, r4
	vmov.f32	s0, s16
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter5shiftEff
	mov	r0, r6
	vldr	s16, [r9, #44]
	bl	_ZN17HarmonyCalculator21getSecondHarmonyShiftEv
	vmov.f32	s2, s0
	mov	r0, r7
	vmov.f32	s0, s16
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter5shiftEff
	mov	r0, r6
	vldr	s16, [r9, #44]
	bl	_ZN17HarmonyCalculator20getThirdHarmonyShiftEv
	vmov.f32	s2, s0
	movw	r6, :lower16:.L_MergedGlobals.8
	vmov.f32	s0, s16
	movt	r6, :upper16:.L_MergedGlobals.8
	mov	r0, r6
	vmov.f32	s1, s2
	bl	_ZN12PitchShifter5shiftEff
	ldr	r1, [r9, #24]
	mov	r0, r4
	bl	_ZN12PitchShifter7readOutEPf
	ldr	r1, [r9, #28]
	mov	r0, r7
	bl	_ZN12PitchShifter7readOutEPf
	ldr	r1, [r9, #32]
	mov	r0, r6
	bl	_ZN12PitchShifter7readOutEPf
	ldr	r0, [sp, #4]            @ 4-byte Reload
	add	r2, r9, #24
	mov	r3, #0
	movw	r7, #8190
	add	r0, r0, #4096
	asr	r1, r0, #31
	add	r1, r0, r1, lsr #19
	bfc	r1, #0, #13
	sub	r6, r0, r1
	ldm	r2, {r0, r1, r2}
.LBB6_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r3, lsl #2]
	cmp	r6, r7
	str	r4, [r5, r6, lsl #2]
	ldr	r4, [r1, r3, lsl #2]
	str	r4, [r10, r6, lsl #2]
	ldr	r4, [r2, r3, lsl #2]
	add	r3, r3, #1
	str	r4, [r8, r6, lsl #2]
	add	r4, r6, #1
	movwgt	r4, #0
	cmp	r3, #4096
	mov	r6, r4
	bne	.LBB6_5
@ BB#6:
	sub	sp, r11, #40
	vpop	{d8}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
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
	.pad	#12
	sub	sp, sp, #12
	movw	r5, :lower16:.L_MergedGlobals
	mov	r4, r0
	movt	r5, :upper16:.L_MergedGlobals
	ldr	r0, [r5, #40]
	cmp	r0, #0
	beq	.LBB7_5
@ BB#1:                                 @ %.lr.ph
	movw	r10, :lower16:reverberator
	movw	r7, #4095
	movt	r10, :upper16:reverberator
	mov	r8, #0
	mov	r9, #0
.LBB7_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r4, #24]
	ldr	r0, [r4]
	ldr	r2, [r5, #4]
	mul	r1, r1, r9
	ldr	r3, [r5, #76]
	ldr	r0, [r0, r1, lsl #2]
	movw	r1, :lower16:.L_MergedGlobals.5
	str	r0, [r3, r2, lsl #2]
	movt	r1, :upper16:.L_MergedGlobals.5
	ldr	r1, [r1]
	vmov	d17, r0, r0
	ldr	r3, [r5, #100]
	mov	r0, r10
	ldr	r6, [r5, #112]
	add	r1, r1, r2, lsl #2
	add	r3, r3, r2, lsl #2
	add	r2, r6, r2, lsl #2
	vldr	s4, [r1]
	vldr	s0, [r3]
	vldr	s2, [r2]
	vadd.f32	d16, d1, d0
	vldr	s0, [r5, #72]
	vadd.f32	d16, d16, d2
	vmul.f32	d16, d16, d0
	vadd.f32	d0, d16, d17
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bl	_ZN12Reverberator11applyReverbEf
	ldr	r0, [r5, #88]
	add	r0, r0, r8
	vstr	s0, [r0]
	ldr	r1, [r5, #48]
	vldr	s2, [r5, #72]
	add	r1, r1, #1
	ldr	r2, [r4, #28]
	vmov	s4, r1
	ldr	r1, [r4, #4]
	vcvt.f32.s32	d16, d2
	mul	r2, r2, r9
	vmul.f32	d1, d16, d1
	add	r1, r1, r2, lsl #2
	movw	r2, #8190
	vdiv.f32	s0, s0, s2
	vstr	s0, [r1]
	vldr	s2, [r5, #72]
	vldr	s0, [r0]
	vmul.f32	d1, d16, d1
	vdiv.f32	s0, s0, s2
	vstr	s0, [r1, #4]
	ldr	r1, [r5, #4]
	add	r0, r1, #1
	cmp	r1, r2
	movwgt	r0, #0
	str	r0, [r5, #4]
	ldr	r1, [r5, #12]
	add	r2, r1, #1
	str	r2, [r5, #12]
	cmp	r1, r7
	blt	.LBB7_4
@ BB#3:                                 @   in Loop: Header=BB7_2 Depth=1
	str	r0, [r5, #8]
	ldr	r0, [r5, #16]
	bl	Bela_scheduleAuxiliaryTask
	mov	r0, #0
	str	r0, [r5, #12]
.LBB7_4:                                @   in Loop: Header=BB7_2 Depth=1
	add	r8, r8, #4
	add	r9, r9, #1
	ldr	r0, [r5, #40]
	cmp	r9, r0
	blo	.LBB7_2
.LBB7_5:                                @ %._crit_edge
	ldr	r0, [r5, #60]
	ldr	r1, [r5, #64]
	cmp	r0, r1
	bne	.LBB7_7
@ BB#6:
	movw	r1, #0
	mov	r0, #0
	movt	r1, #16672
	str	r0, [r5, #60]
	str	r1, [r5, #68]
.LBB7_7:
	add	r0, r0, #1
	str	r0, [r5, #60]
	ldrb	r0, [r5, #1]
	cmp	r0, #0
	beq	.LBB7_9
@ BB#8:
	movw	r0, :lower16:.L_MergedGlobals.5
	ldr	r8, [r5, #48]
	movt	r0, :upper16:.L_MergedGlobals.5
	add	r7, r0, #28
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
	mov	r1, r4
	str	r6, [sp, #4]
	mov	r2, r8
	str	r0, [sp, #8]
	mov	r0, r5
	mov	r3, r9
	bl	_ZN10LEDManager11updateNotesEP11BelaContextiiiii
	b	.LBB7_10
.LBB7_9:
	movw	r0, :lower16:.L_MergedGlobals
	mov	r1, r4
	movt	r0, :upper16:.L_MergedGlobals
	bl	_ZN10LEDManager10clearNotesEP11BelaContext
.LBB7_10:
	mov	r0, #1065353216
	str	r0, [r5, #72]
	ldr	r0, [r4, #8]
	vldr	s0, [r0, #16]
	movw	r0, :lower16:reverberator
	movt	r0, :upper16:reverberator
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	_ZN12Reverberator6setMixEf
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
	beq	.LBB9_11
@ BB#1:
	ldr	r7, [r4, #4]
	ldr	r0, [r4, #8]
	sub	r0, r0, r7
	asr	r0, r0, #2
	cmp	r0, r5
	bhs	.LBB9_12
@ BB#2:
	ldr	r1, [r4]
	mvn	r8, #-1073741824
	sub	r0, r7, r1
	sub	r2, r8, r0, asr #2
	cmp	r2, r5
	blo	.LBB9_13
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
	beq	.LBB9_6
@ BB#4:
	cmp	r8, #1073741824
	bhs	.LBB9_14
@ BB#5:                                 @ %_ZNSt16allocator_traitsISaIfEE8allocateERS0_j.exit.i
	lsl	r0, r8, #2
	bl	_Znwj
	ldm	r4, {r1, r7}
	mov	r6, r0
.LBB9_6:                                @ %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEj.exit
	sub	r2, r7, r1
	mov	r0, #0
	asr	r7, r2, #2
	cmp	r0, r2, asr #2
	beq	.LBB9_8
@ BB#7:
	mov	r0, r6
	bl	memmove
.LBB9_8:
	add	r7, r6, r7, lsl #2
	lsl	r2, r5, #2
	mov	r1, #0
	mov	r0, r7
	bl	memset
	ldr	r0, [r4]
	add	r5, r7, r5, lsl #2
	cmp	r0, #0
	beq	.LBB9_10
@ BB#9:
	bl	_ZdlPv
.LBB9_10:                               @ %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfj.exit31
	str	r6, [r4]
	add	r0, r6, r8, lsl #2
	str	r5, [r4, #4]
	str	r0, [r4, #8]
.LBB9_11:
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.LBB9_12:                               @ %_ZSt27__uninitialized_default_n_aIPfjfET_S1_T0_RSaIT1_E.exit
	lsl	r2, r5, #2
	mov	r0, r7
	mov	r1, #0
	bl	memset
	add	r0, r7, r5, lsl #2
	str	r0, [r4, #4]
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.LBB9_13:
	movw	r0, :lower16:.L.str.20
	movt	r0, :upper16:.L.str.20
	mov	lr, pc
	b	_ZSt20__throw_length_errorPKc
.LBB9_14:
	mov	lr, pc
	b	_ZSt17__throw_bad_allocv
.Lfunc_end9:
	.size	_ZNSt6vectorIfSaIfEE17_M_default_appendEj, .Lfunc_end9-_ZNSt6vectorIfSaIfEE17_M_default_appendEj
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
	movw	r5, :lower16:.L_MergedGlobals
	movw	r6, :lower16:_ZNSt6vectorIfSaIfEED2Ev
	movt	r5, :upper16:.L_MergedGlobals
	mov	r7, #0
	mov	r1, r5
	movt	r6, :upper16:_ZNSt6vectorIfSaIfEED2Ev
	str	r7, [r1, #76]!
	mov	r0, r6
	mov	r2, r4
	str	r7, [r5, #80]
	str	r7, [r5, #84]
	bl	__cxa_atexit
	mov	r1, r5
	mov	r0, r6
	str	r7, [r1, #88]!
	mov	r2, r4
	str	r7, [r5, #92]
	str	r7, [r5, #96]
	bl	__cxa_atexit
	mov	r1, r5
	mov	r0, r6
	str	r7, [r1, #100]!
	mov	r2, r4
	str	r7, [r5, #104]
	str	r7, [r5, #108]
	bl	__cxa_atexit
	str	r7, [r5, #112]!
	mov	r0, r6
	mov	r2, r4
	mov	r1, r5
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	bl	__cxa_atexit
	movw	r1, :lower16:.L_MergedGlobals.5
	mov	r0, r6
	movt	r1, :upper16:.L_MergedGlobals.5
	mov	r2, r4
	str	r7, [r1]
	str	r7, [r1, #4]
	str	r7, [r1, #8]
	bl	__cxa_atexit
	mov	r0, #16384
	bl	_Znaj
	str	r0, [r5, #-92]
	mov	r0, #16384
	bl	_Znaj
	str	r0, [r5, #-88]
	mov	r0, #16384
	bl	_Znaj
	str	r0, [r5, #-84]
	mov	r0, #16384
	bl	_Znaj
	str	r0, [r5, #-80]
	movw	r0, :lower16:_ZTV7PulseIn
	movt	r0, :upper16:_ZTV7PulseIn
	movw	r1, :lower16:thereminReader
	movw	r3, #0
	movt	r1, :upper16:thereminReader
	add	r0, r0, #8
	mvn	r2, #0
	stm	r1, {r0, r7}
	movt	r3, #17000
	movw	r6, #2646
	str	r7, [r1, #8]
	add	lr, r1, #96
	str	r7, [r1, #12]
	mov	r5, #1
	str	r2, [r1, #20]
	mov	r12, #2
	str	r0, [r1, #48]
	mov	r0, #7
	str	r7, [r1, #52]
	str	r7, [r1, #56]
	str	r7, [r1, #60]
	str	r2, [r1, #68]
	mov	r2, #1000
	stm	lr, {r0, r2, r3, r6, r7}
	mov	r0, #3
	mov	r2, r4
	str	r7, [r1, #116]
	str	r5, [r1, #120]
	str	r12, [r1, #124]
	str	r0, [r1, #128]
	movw	r0, :lower16:_ZN14ThereminReaderD2Ev
	movt	r0, :upper16:_ZN14ThereminReaderD2Ev
	bl	__cxa_atexit
	movw	r5, :lower16:.L_MergedGlobals.6
	movt	r5, :upper16:.L_MergedGlobals.6
	mov	r0, r5
	bl	_ZN10soundtouch10SoundTouchC1Ev
	movw	r6, :lower16:_ZN12PitchShifterD2Ev
	mov	r1, r5
	movt	r6, :upper16:_ZN12PitchShifterD2Ev
	mov	r2, r4
	mov	r0, r6
	bl	__cxa_atexit
	movw	r5, :lower16:.L_MergedGlobals.7
	movt	r5, :upper16:.L_MergedGlobals.7
	mov	r0, r5
	bl	_ZN10soundtouch10SoundTouchC1Ev
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	__cxa_atexit
	movw	r5, :lower16:.L_MergedGlobals.8
	movt	r5, :upper16:.L_MergedGlobals.8
	mov	r0, r5
	bl	_ZN10soundtouch10SoundTouchC1Ev
	mov	r0, r6
	mov	r1, r5
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
.Lfunc_end10:
	.size	_GLOBAL__sub_I_render.ii, .Lfunc_end10-_GLOBAL__sub_I_render.ii
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

	.type	.L.str.15,%object       @ @.str.15
.L.str.15:
	.asciz	"n1: %d\n"
	.size	.L.str.15, 8

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	"n2: %d\n"
	.size	.L.str.16, 8

	.type	.L.str.17,%object       @ @.str.17
.L.str.17:
	.asciz	"n3: %d\n"
	.size	.L.str.17, 8

	.type	.L.str.18,%object       @ @.str.18
.L.str.18:
	.asciz	"n4: %d\n"
	.size	.L.str.18, 8

	.type	.L.str.19,%object       @ @.str.19
.L.str.19:
	.asciz	".\n"
	.size	.L.str.19, 3

	.type	.L.str.20,%object       @ @.str.20
.L.str.20:
	.asciz	"vector::_M_default_append"
	.size	.L.str.20, 26

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
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.zero	12
	.zero	12
	.zero	12
	.zero	12
	.size	.L_MergedGlobals, 124

	.type	.L_MergedGlobals.5,%object @ @_MergedGlobals.5
	.p2align	4
.L_MergedGlobals.5:
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
	.size	.L_MergedGlobals.5, 96

	.type	.L_MergedGlobals.6,%object @ @_MergedGlobals.6
	.local	.L_MergedGlobals.6
	.comm	.L_MergedGlobals.6,88,16
	.type	.L_MergedGlobals.7,%object @ @_MergedGlobals.7
	.local	.L_MergedGlobals.7
	.comm	.L_MergedGlobals.7,88,16
	.type	.L_MergedGlobals.8,%object @ @_MergedGlobals.8
	.local	.L_MergedGlobals.8
	.comm	.L_MergedGlobals.8,88,16

	.globl	ledManager
ledManager = .L_MergedGlobals
	.size	ledManager, 1
	.globl	showLEDNotes
showLEDNotes = .L_MergedGlobals+1
	.size	showLEDNotes, 1
	.globl	bufferPointer
bufferPointer = .L_MergedGlobals+4
	.size	bufferPointer, 4
	.globl	psBufferPointer
psBufferPointer = .L_MergedGlobals+8
	.size	psBufferPointer, 4
	.globl	sampleCount
sampleCount = .L_MergedGlobals+12
	.size	sampleCount, 4
	.globl	pitchShiftTask
pitchShiftTask = .L_MergedGlobals+16
	.size	pitchShiftTask, 4
	.globl	psInputBuffer
psInputBuffer = .L_MergedGlobals+20
	.size	psInputBuffer, 4
	.globl	psOutputBuffer1
psOutputBuffer1 = .L_MergedGlobals+24
	.size	psOutputBuffer1, 4
	.globl	psOutputBuffer2
psOutputBuffer2 = .L_MergedGlobals+28
	.size	psOutputBuffer2, 4
	.globl	psOutputBuffer3
psOutputBuffer3 = .L_MergedGlobals+32
	.size	psOutputBuffer3, 4
	.globl	sampleRate
sampleRate = .L_MergedGlobals+36
	.size	sampleRate, 4
	.globl	numFrames
numFrames = .L_MergedGlobals+40
	.size	numFrames, 4
	.globl	currentF0
currentF0 = .L_MergedGlobals+44
	.size	currentF0, 4
	.globl	numHarmonies
numHarmonies = .L_MergedGlobals+48
	.size	numHarmonies, 4
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
	.globl	mixLevel
mixLevel = .L_MergedGlobals+72
	.size	mixLevel, 4
	.globl	inputAudioBuffer
inputAudioBuffer = .L_MergedGlobals+76
	.size	inputAudioBuffer, 12
	.globl	outputAudioBuffer
outputAudioBuffer = .L_MergedGlobals+88
	.size	outputAudioBuffer, 12
	.globl	processAudioBuffer1
processAudioBuffer1 = .L_MergedGlobals+100
	.size	processAudioBuffer1, 12
	.globl	processAudioBuffer2
processAudioBuffer2 = .L_MergedGlobals+112
	.size	processAudioBuffer2, 12
	.globl	processAudioBuffer3
processAudioBuffer3 = .L_MergedGlobals.5
	.size	processAudioBuffer3, 12
	.globl	pitchTracker
pitchTracker = .L_MergedGlobals.5+12
	.size	pitchTracker, 16
	.globl	harmonyCalculator
harmonyCalculator = .L_MergedGlobals.5+28
	.size	harmonyCalculator, 68
	.globl	pitchShifter1
pitchShifter1 = .L_MergedGlobals.6
	.size	pitchShifter1, 88
	.globl	pitchShifter2
pitchShifter2 = .L_MergedGlobals.7
	.size	pitchShifter2, 88
	.globl	pitchShifter3
pitchShifter3 = .L_MergedGlobals.8
	.size	pitchShifter3, 88
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
