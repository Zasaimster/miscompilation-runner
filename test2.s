	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_square                         ; -- Begin function square
	.p2align	2
_square:                                ; @square
	.cfi_startproc
; %bb.0:                                ; %entry
	mul	w0, w0, w0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #3                          ; =0x3
	bl	_square
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
