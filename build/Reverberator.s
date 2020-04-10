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
	.file	"/root/Bela/projects/MEng-Project/build/Reverberator.bc"
	.globl	_ZN12Reverberator4initEi
	.p2align	2
	.type	_ZN12Reverberator4initEi,%function
_ZN12Reverberator4initEi:               @ @_ZN12Reverberator4initEi
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
	mov	r0, r4
	vmov.i32	d0, #0x0
	pop	{r4, r10, r11, lr}
	b	_ZN3stk8FreeVerb12setEffectMixEd
.Lfunc_end0:
	.size	_ZN12Reverberator4initEi, .Lfunc_end0-_ZN12Reverberator4initEi
	.fnend

	.globl	_ZN12Reverberator11applyReverbEf
	.p2align	2
	.type	_ZN12Reverberator11applyReverbEf,%function
_ZN12Reverberator11applyReverbEf:       @ @_ZN12Reverberator11applyReverbEf
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	vcvt.f64.f32	d0, s0
	mov	r1, #0
	vmov.i32	d1, #0x0
	bl	_ZN3stk8FreeVerb4tickEddj
	vcvt.f32.f64	s0, d0
	pop	{r11, pc}
.Lfunc_end1:
	.size	_ZN12Reverberator11applyReverbEf, .Lfunc_end1-_ZN12Reverberator11applyReverbEf
	.fnend

	.section	.text._ZN3stk8FreeVerb4tickEddj,"axG",%progbits,_ZN3stk8FreeVerb4tickEddj,comdat
	.weak	_ZN3stk8FreeVerb4tickEddj
	.p2align	2
	.type	_ZN3stk8FreeVerb4tickEddj,%function
_ZN3stk8FreeVerb4tickEddj:              @ @_ZN3stk8FreeVerb4tickEddj
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	vadd.f64	d16, d1, d0
	mov	r12, #0
	mov	lr, #0
	mov	r11, #0
	vldr	d17, [r0, #56]
	vmul.f64	d18, d17, d16
	vmov.i32	d17, #0x0
	vmov.i32	d16, #0x0
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	add	r3, r0, r11
	add	r4, r0, lr
	add	r6, r4, #2704
	add	lr, lr, #144
	ldr	r8, [r3, #284]
	add	r11, r11, #160
	ldr	r10, [r3, #248]
	vldr	d19, [r6]
	add	r9, r10, r8, lsl #3
	ldr	r5, [r4, #2808]
	vldr	d20, [r9]
	vmul.f64	d19, d20, d19
	vldr	d20, [r0, #72]
	vstr	d19, [r5]
	ldr	r6, [r4, #2752]
	ldr	r7, [r4, #2764]
	ldr	r2, [r4, #2776]
	vldr	d23, [r6]
	add	r6, r4, #3856
	vldr	d21, [r7, #8]
	vldr	d22, [r2, #8]
	vmul.f64	d19, d23, d19
	ldr	r5, [r4, #2720]
	vmul.f64	d21, d22, d21
	vsub.f64	d19, d19, d21
	vstr	d19, [r5]
	vstr	d19, [r2, #8]
	vldr	d19, [r5]
	ldr	r2, [r3, #280]
	vmul.f64	d19, d19, d20
	add	r5, r2, #1
	add	r2, r10, r2, lsl #3
	vadd.f64	d19, d19, d18
	vldr	d20, [r3, #144]
	str	r5, [r3, #280]
	vadd.f64	d17, d19, d17
	vmul.f64	d20, d19, d20
	vstr	d20, [r2]
	add	r2, r8, #1
	ldr	r7, [r3, #272]
	cmp	r5, r7
	streq	r12, [r3, #280]
	cmp	r2, r7
	str	r2, [r3, #284]
	ldr	r5, [r3, #160]
	vldr	d20, [r9]
	vstr	d20, [r5]
	streq	r12, [r3, #284]
	ldr	r8, [r3, #1564]
	ldr	r2, [r3, #1528]
	vldr	d20, [r6]
	add	r9, r2, r8, lsl #3
	ldr	r7, [r4, #3960]
	vldr	d21, [r9]
	vmul.f64	d20, d21, d20
	vldr	d21, [r0, #72]
	vstr	d20, [r7]
	ldr	r5, [r4, #3904]
	ldr	r6, [r4, #3916]
	ldr	r7, [r4, #3872]
	ldr	r4, [r4, #3928]
	vldr	d24, [r5]
	vldr	d22, [r6, #8]
	vldr	d23, [r4, #8]
	vmul.f64	d20, d24, d20
	vmul.f64	d22, d23, d22
	vsub.f64	d20, d20, d22
	vstr	d20, [r7]
	vstr	d20, [r4, #8]
	add	r4, r3, #1424
	vldr	d20, [r7]
	vmul.f64	d20, d20, d21
	vadd.f64	d20, d20, d18
	vldr	d21, [r4]
	ldr	r4, [r3, #1560]
	vadd.f64	d16, d20, d16
	add	r5, r4, #1
	str	r5, [r3, #1560]
	add	r2, r2, r4, lsl #3
	vmul.f64	d21, d20, d21
	vstr	d21, [r2]
	add	r2, r8, #1
	ldr	r4, [r3, #1552]
	cmp	r5, r4
	streq	r12, [r3, #1560]
	cmp	r2, r4
	str	r2, [r3, #1564]
	ldr	r5, [r3, #1440]
	vldr	d21, [r9]
	vstr	d21, [r5]
	streq	r12, [r3, #1564]
	cmp	r11, #1280
	bne	.LBB2_1
@ BB#2:                                 @ %.preheader
	vmov.f64	d18, #1.000000e+00
	movw	r2, #5648
	add	lr, r0, r2
	mov	r12, #0
	mov	r3, #0
	vldr	d21, [r0, #48]
.LBB2_3:                                @ =>This Inner Loop Header: Depth=1
	add	r2, lr, r3
	add	r3, r3, #160
	ldr	r5, [r2, #-500]
	ldr	r7, [r2, #-536]
	ldr	r6, [r2, #-504]
	add	r8, r7, r5, lsl #3
	add	r4, r6, #1
	vldr	d19, [r8]
	add	r6, r7, r6, lsl #3
	vmul.f64	d20, d21, d19
	vadd.f64	d17, d20, d17
	vldr	d20, [r2, #-640]
	str	r4, [r2, #-504]
	vmul.f64	d20, d17, d20
	vstr	d20, [r6]
	ldr	r6, [r2, #-512]
	cmp	r4, r6
	add	r4, r5, #1
	streq	r12, [r2, #-504]
	cmp	r4, r6
	str	r4, [r2, #-500]
	ldr	r5, [r2, #-624]
	vldr	d20, [r8]
	vstr	d20, [r5]
	streq	r12, [r2, #-500]
	ldr	r8, [r2, #140]
	ldr	r6, [r2, #104]
	vldr	d21, [r0, #48]
	add	r5, r6, r8, lsl #3
	ldr	r7, [r2, #136]
	vldr	d20, [r5]
	add	r4, r7, #1
	add	r6, r6, r7, lsl #3
	vmul.f64	d22, d20, d21
	vadd.f64	d16, d22, d16
	vldr	d22, [r2]
	vadd.f64	d21, d21, d18
	str	r4, [r2, #136]
	vmul.f64	d22, d16, d22
	vstr	d22, [r6]
	vmul.f64	d19, d21, d19
	ldr	r6, [r2, #128]
	cmp	r4, r6
	add	r4, r8, #1
	streq	r12, [r2, #136]
	cmp	r4, r6
	str	r4, [r2, #140]
	ldr	r7, [r2, #16]
	vldr	d21, [r5]
	vsub.f64	d17, d19, d17
	vstr	d21, [r7]
	streq	r12, [r2, #140]
	cmp	r3, #640
	vldr	d21, [r0, #48]
	vadd.f64	d19, d21, d18
	vmul.f64	d19, d19, d20
	vsub.f64	d16, d19, d16
	bne	.LBB2_3
@ BB#4:
	add	r2, r0, #96
	vldmia	r2, {d18, d19, d20}
	vmul.f64	d18, d18, d17
	ldr	r2, [r0, #8]
	add	r0, r0, #96
	vmul.f64	d19, d19, d16
	vmul.f64	d20, d20, d0
	vadd.f64	d18, d19, d18
	vadd.f64	d18, d18, d20
	vstr	d18, [r2]
	vldmia	r0, {d18, d19, d20}
	add	r0, r2, r1, lsl #3
	vmul.f64	d16, d18, d16
	vmul.f64	d17, d19, d17
	vmul.f64	d18, d20, d1
	vadd.f64	d16, d17, d16
	vadd.f64	d16, d16, d18
	vstr	d16, [r2, #8]
	vldr	d0, [r0]
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end2:
	.size	_ZN3stk8FreeVerb4tickEddj, .Lfunc_end2-_ZN3stk8FreeVerb4tickEddj
	.fnend

	.text
	.globl	_ZN12Reverberator6setMixEf
	.p2align	2
	.type	_ZN12Reverberator6setMixEf,%function
_ZN12Reverberator6setMixEf:             @ @_ZN12Reverberator6setMixEf
	.fnstart
@ BB#0:
	vcvt.f64.f32	d0, s0
	b	_ZN3stk8FreeVerb12setEffectMixEd
.Lfunc_end3:
	.size	_ZN12Reverberator6setMixEf, .Lfunc_end3-_ZN12Reverberator6setMixEf
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	2
	.type	_GLOBAL__sub_I_Reverberator.ii,%function
_GLOBAL__sub_I_Reverberator.ii:         @ @_GLOBAL__sub_I_Reverberator.ii
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
.Lfunc_end4:
	.size	_GLOBAL__sub_I_Reverberator.ii, .Lfunc_end4-_GLOBAL__sub_I_Reverberator.ii
	.fnend

	.type	_ZStL8__ioinit,%object  @ @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_Reverberator.ii(target1)

	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
