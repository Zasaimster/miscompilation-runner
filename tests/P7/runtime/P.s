	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z3foov                        ; -- Begin function _Z3foov
	.p2align	2
__Z3foov:                               ; @_Z3foov
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	str	xzr, [sp, #8]
	str	wzr, [sp, #4]
	mov	w19, #25856                     ; =0x6500
	movk	w19, #7629, lsl #16
	b	LBB0_3
LBB0_1:                                 ; %if.else
                                        ;   in Loop: Header=BB0_3 Depth=1
	bl	_rand
	ldr	x8, [sp, #8]
	mneg	w9, w20, w0
	add	x8, x8, w9, sxtw
LBB0_2:                                 ; %for.inc
                                        ;   in Loop: Header=BB0_3 Depth=1
	str	x8, [sp, #8]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
LBB0_3:                                 ; %for.cond
                                        ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	cmp	w8, w19
	b.ge	LBB0_6
; %bb.4:                                ; %for.body
                                        ;   in Loop: Header=BB0_3 Depth=1
	ldrsw	x20, [sp, #4]
	cmp	w20, #999
	b.gt	LBB0_1
; %bb.5:                                ; %if.then
                                        ;   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]
	sub	x8, x8, x20
	b	LBB0_2
LBB0_6:                                 ; %for.cond.cleanup
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_rand                           ; -- Begin function rand
	.p2align	2
_rand:                                  ; @rand
; %bb.0:
	mov	w0, #1                          ; =0x1
	ret
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	wzr, [sp, #12]
	bl	__Z3foov
	cmp	x0, #0
	cset	w0, gt
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
