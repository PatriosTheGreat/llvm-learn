	.text
	.file	"opt_remark_licm.c"
	.globl	foo                     # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
.Lfunc_begin0:
	.file	1 "/mnt/d/projects/llvm-learn/LLVM-tricks/Chapter_11" "opt_remark_licm.c"
	.loc	1 3 0                   # opt_remark_licm.c:3:0
	.cfi_startproc
# %bb.0:
	.loc	1 5 21 prologue_end     # opt_remark_licm.c:5:21
	testl	%esi, %esi
	.loc	1 5 3 is_stmt 0         # opt_remark_licm.c:5:3
	jle	.LBB0_3
# %bb.1:
	movl	%esi, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	.loc	1 6 10 is_stmt 1        # opt_remark_licm.c:6:10
	addl	$2, (%rdi,%rcx,4)
	.loc	1 5 28                  # opt_remark_licm.c:5:28
	addq	$3, %rcx
	.loc	1 5 21 is_stmt 0        # opt_remark_licm.c:5:21
	cmpq	%rax, %rcx
	.loc	1 5 3                   # opt_remark_licm.c:5:3
	jb	.LBB0_2
.LBB0_3:
	.loc	1 0 0                   # opt_remark_licm.c:0:0
	movl	20(%rdi), %eax
	.loc	1 9 3 is_stmt 1         # opt_remark_licm.c:9:3
	retq
.Ltmp0:
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.loc	1 12 0                  # opt_remark_licm.c:12:0
	.cfi_startproc
# %bb.0:
	.loc	1 16 1 prologue_end     # opt_remark_licm.c:16:1
	xorl	%eax, %eax
	retq
.Ltmp1:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 10.0.0-4ubuntu1 " # string offset=0
.Linfo_string1:
	.asciz	"opt_remark_licm.c"     # string offset=31
.Linfo_string2:
	.asciz	"/mnt/d/projects/llvm-learn/LLVM-tricks/Chapter_11" # string offset=49
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	0                       # DW_CHILDREN_no
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1f DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0 # DW_AT_high_pc
.Ldebug_info_end0:
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
