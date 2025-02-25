	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	mov	x0, #0                          ; =0x0
	bl	_time
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_srand
	bl	_rand
	stur	w0, [x29, #-8]
	ldur	w8, [x29, #-8]
	add	w8, w8, #5
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-8]
	str	x8, [sp]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-12]
	str	x8, [sp]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Original Random Number: %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"Number after adding 5: %d\n"

.subsections_via_symbols
