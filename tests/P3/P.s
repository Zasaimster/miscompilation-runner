	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_InitMoveArray                  ; -- Begin function InitMoveArray
	.p2align	2
_InitMoveArray:                         ; @InitMoveArray
	.cfi_startproc
; %bb.0:                                ; %bb3
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	xzr, [sp], #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_InitMoveArray
	mov	w0, wzr
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
