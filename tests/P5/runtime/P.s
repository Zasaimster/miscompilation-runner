	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	__Z3fooi                        ; -- Begin function _Z3fooi
	.p2align	2
__Z3fooi:                               ; @_Z3fooi
Lfunc_begin0:
	.file	1 "." "fnptr.cc"
	.loc	1 8 0                           ; fnptr.cc:8:0
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	d9, d8, [sp, #-32]!             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
Ltmp0:
	.loc	1 9 3 prologue_end              ; fnptr.cc:9:3
	scvtf	d8, w0
	.loc	1 9 14 is_stmt 0                ; fnptr.cc:9:14
	fmov	d0, d8
	bl	_sin
	.loc	1 9 14 epilogue_begin           ; fnptr.cc:9:14
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	fmul	d0, d8, d0
	ldp	d9, d8, [sp], #32               ; 16-byte Folded Reload
	ret
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	__Z3bari                        ; -- Begin function _Z3bari
	.p2align	2
__Z3bari:                               ; @_Z3bari
Lfunc_begin1:
	.loc	1 12 0 is_stmt 1                ; fnptr.cc:12:0
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	d9, d8, [sp, #-32]!             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
Ltmp2:
	.loc	1 13 3 prologue_end             ; fnptr.cc:13:3
	scvtf	d8, w0
	.loc	1 13 14 is_stmt 0               ; fnptr.cc:13:14
	fmov	d0, d8
	bl	_cos
	.loc	1 13 14 epilogue_begin          ; fnptr.cc:13:14
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	fsub	d0, d8, d0
	ldp	d9, d8, [sp], #32               ; 16-byte Folded Reload
	ret
Ltmp3:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin2:
	.loc	1 16 0 is_stmt 1                ; fnptr.cc:16:0
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #128
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 128
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x0, xzr
	bl	_time
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_srand
	movi	d8, #0000000000000000
	mov	w20, #34079                     ; =0x851f
	mov	w24, #49309                     ; =0xc09d
	mov	w19, wzr
	movk	w20, #20971, lsl #16
Lloh0:
	adrp	x21, __Z3bari@PAGE
Lloh1:
	add	x21, x21, __Z3bari@PAGEOFF
	mov	w22, #100                       ; =0x64
Lloh2:
	adrp	x23, __Z3fooi@PAGE
Lloh3:
	add	x23, x23, __Z3fooi@PAGEOFF
	movk	w24, #39945, lsl #16
	mov	w25, #6000                      ; =0x1770
LBB2_1:                                 ; %for.cond1.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_2 Depth 2
	mov	w27, wzr
	mov	w28, w19
LBB2_2:                                 ; %for.body3
                                        ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
Ltmp4:
	.loc	1 21 15 prologue_end            ; fnptr.cc:21:15
	bl	_rand
	smull	x8, w0, w20
	lsr	x9, x8, #63
	asr	x8, x8, #37
	add	w8, w8, w9
	msub	w8, w8, w22, w0
	cmp	w8, #30
	csel	x26, x23, x21, lt
	.loc	1 22 11                         ; fnptr.cc:22:11
	bl	_rand
	.loc	1 25 14                         ; fnptr.cc:25:14
	smull	x8, w27, w24
	.loc	1 22 11                         ; fnptr.cc:22:11
	smull	x9, w0, w20
	.loc	1 25 14                         ; fnptr.cc:25:14
	lsr	x8, x8, #32
	.loc	1 22 11                         ; fnptr.cc:22:11
	lsr	x10, x9, #63
	asr	x9, x9, #37
	.loc	1 25 14                         ; fnptr.cc:25:14
	add	w8, w8, w27
	.loc	1 22 11                         ; fnptr.cc:22:11
	add	w9, w9, w10
	.loc	1 25 14                         ; fnptr.cc:25:14
	asr	w10, w8, #9
	.loc	1 22 11                         ; fnptr.cc:22:11
	msub	w9, w9, w22, w0
	.loc	1 25 14                         ; fnptr.cc:25:14
	add	w8, w10, w8, lsr #31
	sub	w8, w19, w8
	.loc	1 22 11                         ; fnptr.cc:22:11
	cmp	w9, #10
	csel	w0, w28, w8, lt
	.loc	1 0 0 is_stmt 0                 ; fnptr.cc:0:0
	blr	x26
	.loc	1 23 14 is_stmt 1               ; fnptr.cc:23:14
	fadd	d8, d8, d0
	.loc	1 20 28                         ; fnptr.cc:20:28
	add	w27, w27, #1
	.loc	1 20 5 is_stmt 0                ; fnptr.cc:20:5
	add	w28, w28, #300
	cmp	w27, w25
	b.ne	LBB2_2
; %bb.3:                                ; %for.inc12
                                        ;   in Loop: Header=BB2_1 Depth=1
	.loc	1 19 3 is_stmt 1                ; fnptr.cc:19:3
	mov	w8, #9999                       ; =0x270f
	cmp	w19, w8
	.loc	1 19 26 is_stmt 0               ; fnptr.cc:19:26
	add	w19, w19, #1
	.loc	1 19 3                          ; fnptr.cc:19:3
	b.ne	LBB2_1
; %bb.4:                                ; %for.end14
	.loc	1 27 3 is_stmt 1                ; fnptr.cc:27:3
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
	str	d8, [sp]
	bl	_printf
	.loc	1 28 3 epilogue_begin           ; fnptr.cc:28:3
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	mov	w0, wzr
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
Ltmp5:
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"S = %lf\n"

	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	4                               ; DW_AT_language
	.long	19                              ; DW_AT_name
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	28                              ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end2-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x2a:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	30                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	2                               ; Abbrev [2] 0x3f:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset5, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset5
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	34                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	2                               ; Abbrev [2] 0x54:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset6, Lfunc_end2-Lfunc_begin2     ; DW_AT_high_pc
	.long	Lset6
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	38                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"clang version 3.5 "            ; string offset=0
	.asciz	"fnptr.cc"                      ; string offset=19
	.asciz	"."                             ; string offset=28
	.asciz	"foo"                           ; string offset=30
	.asciz	"bar"                           ; string offset=34
	.asciz	"main"                          ; string offset=38
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	3                               ; Header Bucket Count
	.long	3                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	2                               ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	193487034                       ; Hash in Bucket 0
	.long	193491849                       ; Hash in Bucket 0
	.long	2090499946                      ; Hash in Bucket 1
.set Lset7, LNames1-Lnames_begin        ; Offset in Bucket 0
	.long	Lset7
.set Lset8, LNames0-Lnames_begin        ; Offset in Bucket 0
	.long	Lset8
.set Lset9, LNames2-Lnames_begin        ; Offset in Bucket 1
	.long	Lset9
LNames1:
	.long	34                              ; bar
	.long	1                               ; Num DIEs
	.long	63
	.long	0
LNames0:
	.long	30                              ; foo
	.long	1                               ; Num DIEs
	.long	42
	.long	0
LNames2:
	.long	38                              ; main
	.long	1                               ; Num DIEs
	.long	84
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	-1                              ; Bucket 0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
