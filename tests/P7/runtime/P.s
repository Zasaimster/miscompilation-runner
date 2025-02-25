	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_heavyComputation               ; -- Begin function heavyComputation
	.p2align	2
_heavyComputation:                      ; @heavyComputation
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #112
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 112
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	w20, w1
	mov	x21, x0
	str	w1, [sp, #60]
	bl	_rand
	add	x8, sp, #60
	ubfiz	x9, x20, #3, #32
Lloh0:
	adrp	x20, l___unnamed_1@PAGE
Lloh1:
	add	x20, x20, l___unnamed_1@PAGEOFF
	stp	x21, x8, [sp, #40]
	mov	w19, w0
	stp	x21, x8, [sp, #24]
Lloh2:
	adrp	x21, l_.offload_maptypes.@PAGE
Lloh3:
	add	x21, x21, l_.offload_maptypes.@PAGEOFF
	mov	w8, #4                          ; =0x4
	add	x3, sp, #40
	add	x4, sp, #24
	add	x5, sp, #8
	mov	x0, x20
	mov	x1, #-1                         ; =0xffffffffffffffff
	mov	w2, #2                          ; =0x2
	mov	x6, x21
	mov	x7, xzr
	stp	x9, x8, [sp, #8]
	str	xzr, [sp]
	bl	___tgt_target_data_begin_mapper
	mov	w8, #9363                       ; =0x2493
	add	x3, sp, #40
	add	x4, sp, #24
	movk	w8, #37449, lsl #16
	add	x5, sp, #8
	mov	x0, x20
	smull	x8, w19, w8
	mov	x1, #-1                         ; =0xffffffffffffffff
	mov	w2, #2                          ; =0x2
	mov	x6, x21
	mov	x7, xzr
	str	xzr, [sp]
	lsr	x8, x8, #32
	add	w8, w8, w19
	asr	w9, w8, #2
	add	w8, w9, w8, lsr #31
	sub	w22, w8, w8, lsl #3
	bl	___tgt_target_data_end_mapper
	add	w0, w19, w22
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	_.__omp_offloading_heavyComputation.region_id ; @.__omp_offloading_heavyComputation.region_id
	.weak_definition	_.__omp_offloading_heavyComputation.region_id
_.__omp_offloading_heavyComputation.region_id:
	.byte	0                               ; 0x0

	.section	__TEXT,__literal16,16byte_literals
	.p2align	3, 0x0                          ; @.offload_maptypes.
l_.offload_maptypes.:
	.quad	35                              ; 0x23
	.quad	35                              ; 0x23

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	";unknown;unknown;0;0;;"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @0
l___unnamed_1:
	.long	0                               ; 0x0
	.long	2                               ; 0x2
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.quad	l_.str

.subsections_via_symbols
