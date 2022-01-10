	.text
	.file	"warp.c"
	.globl	warp_golden             # -- Begin function warp_golden
	.p2align	4, 0x90
	.type	warp_golden,@function
warp_golden:                            # @warp_golden
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r10
	movq	%rsi, %r11
	movq	%rdi, %r14
	xorl	%r8d, %r8d
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %r8
	addq	$9856, %r10             # imm = 0x2680
	addq	$9856, %r14             # imm = 0x2680
	cmpq	$58, %r8
	je	.LBB0_10
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
	movq	%r14, %r12
	movq	%r10, %r13
	movq	%r11, %r15
	xorl	%r9d, %r9d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=2
	addq	$1, %r9
	addq	$176, %r15
	addq	$88, %r13
	addq	$88, %r12
	cmpq	$112, %r9
	je	.LBB0_9
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	movl	$-65536, %ebx           # imm = 0xFFFF0000
	xorl	%ebp, %ebp
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=3
	movzbl	%dl, %ecx
	movl	$256, %edx              # imm = 0x100
	subl	%ecx, %edx
	imull	%edi, %edx
	imull	%ecx, %eax
	addl	%edx, %eax
	movq	%r13, %rcx
	movb	%ah, (%rcx,%rbp)
	addq	$1, %rbp
	addl	$65536, %ebx            # imm = 0x10000
	cmpq	$88, %rbp
	je	.LBB0_8
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%r15,%rbp,2), %edx
	movswl	%dx, %ecx
	sarl	$8, %ecx
	movslq	%ecx, %rsi
	movl	%esi, %eax
	shll	$16, %eax
	xorl	%edi, %edi
	cmpl	%eax, %ebx
	movl	$0, %eax
	js	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=3
	movq	%rsi, %rax
	notq	%rax
	addq	%r12, %rax
	movsbl	(%rbp,%rax), %eax
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=3
	negl	%ecx
	addw	%bp, %cx
	js	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=3
	movq	%r12, %rcx
	subq	%rsi, %rcx
	movsbl	(%rcx,%rbp), %edi
	jmp	.LBB0_7
.LBB0_10:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	warp_golden, .Lfunc_end0-warp_golden
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	$-581504, %rbx          # imm = 0xFFF72080
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	leal	127(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$128, %ecx
	subl	%ecx, %eax
	movb	%al, src_arr+581504(%rbx)
	incq	%rbx
	jne	.LBB1_1
# %bb.2:
	movl	$offset_arr, %r15d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	movl	%eax, %ebx
	leal	127(%rbx), %eax
	testl	%ebx, %ebx
	cmovnsl	%ebx, %eax
	andl	$65408, %eax            # imm = 0xFF80
	subl	%eax, %ebx
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	leal	127(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$128, %ecx
	subl	%ecx, %eax
	shll	$8, %eax
	addl	%ebx, %eax
	movw	%ax, (%r15,%rbp,2)
	addq	$1, %rbp
	cmpq	$88, %rbp
	jne	.LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	addq	$1, %r14
	addq	$176, %r15
	cmpq	$112, %r14
	jne	.LBB1_3
# %bb.6:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_7 Depth=1
	addq	$1, %r9
	addq	$9856, %r8              # imm = 0x2680
	cmpq	$58, %r9
	je	.LBB1_16
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_9 Depth 3
	movl	$offset_arr, %r11d
	movq	%r8, %rdi
	xorl	%r10d, %r10d
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_8 Depth=2
	addq	$1, %r10
	addq	$88, %rdi
	addq	$176, %r11
	cmpq	$112, %r10
	je	.LBB1_15
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
	movl	$-65536, %ebx           # imm = 0xFFFF0000
	xorl	%ebp, %ebp
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_9 Depth=3
	movzbl	%r14b, %eax
	movl	$256, %edx              # imm = 0x100
	subl	%eax, %edx
	imull	%r15d, %edx
	imull	%eax, %ecx
	addl	%edx, %ecx
	movb	%ch, golden_arr(%rdi,%rbp)
	addq	$1, %rbp
	addl	$65536, %ebx            # imm = 0x10000
	cmpq	$88, %rbp
	je	.LBB1_14
.LBB1_9:                                #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%r11,%rbp,2), %r14d
	movswl	%r14w, %esi
	sarl	$8, %esi
	movslq	%esi, %rdx
	movl	%edx, %ecx
	shll	$16, %ecx
	xorl	%r15d, %r15d
	cmpl	%ecx, %ebx
	movl	$0, %ecx
	js	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=3
	movq	%rdi, %rcx
	subq	%rdx, %rcx
	movsbl	src_arr-1(%rbp,%rcx), %ecx
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=3
	negl	%esi
	addw	%bp, %si
	js	.LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_9 Depth=3
	movq	%rdi, %rsi
	subq	%rdx, %rsi
	movsbl	src_arr(%rbp,%rsi), %r15d
	jmp	.LBB1_13
.LBB1_16:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	src_arr,@object         # @src_arr
	.comm	src_arr,581504,16
	.type	offset_arr,@object      # @offset_arr
	.comm	offset_arr,19712,16
	.type	golden_arr,@object      # @golden_arr
	.comm	golden_arr,571648,16
	.type	l_mask_arr,@object      # @l_mask_arr
	.comm	l_mask_arr,9856,16
	.type	r_mask_arr,@object      # @r_mask_arr
	.comm	r_mask_arr,9856,16
	.type	out_arr,@object         # @out_arr
	.comm	out_arr,571648,16
	.type	right_idx_arr,@object   # @right_idx_arr
	.comm	right_idx_arr,19712,16
	.type	left_idx_arr,@object    # @left_idx_arr
	.comm	left_idx_arr,19712,16
	.type	offset_fraction_arr,@object # @offset_fraction_arr
	.comm	offset_fraction_arr,9856,16
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
