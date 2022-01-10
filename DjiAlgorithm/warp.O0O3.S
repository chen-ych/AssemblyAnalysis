	.text
	.file	"warp.c"
	.globl	warp_golden                     # -- Begin function warp_golden
	.p2align	4, 0x90
	.type	warp_golden,@function
warp_golden:                            # @warp_golden
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -40(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	cmpq	$58, -40(%rbp)
	jae	.LBB0_18
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	$0, -32(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	cmpq	$112, -32(%rbp)
	jae	.LBB0_16
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	$0, -16(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$88, -16(%rbp)
	jae	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	imulq	$88, -32(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -6(%rbp)
	movswl	-6(%rbp), %eax
	sarl	$8, %eax
	movw	%ax, -2(%rbp)
	imulq	$112, -40(%rbp), %rax
	addq	-32(%rbp), %rax
	imulq	$88, %rax, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movswq	-2(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	cwtl
	cmpl	$0, %eax
	jl	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movswq	-2(%rbp), %rdx
	subq	%rdx, %rcx
	subq	$1, %rcx
	movsbl	(%rax,%rcx), %eax
	cwtl
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=3
	xorl	%eax, %eax
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=3
	movw	%ax, -20(%rbp)
	movq	-16(%rbp), %rax
	movswq	-2(%rbp), %rcx
	subq	%rcx, %rax
	cwtl
	cmpl	$0, %eax
	jl	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=3
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movswq	-2(%rbp), %rdx
	subq	%rdx, %rcx
	movsbl	(%rax,%rcx), %eax
	cwtl
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=3
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=3
	movw	%ax, -18(%rbp)
	movswl	-6(%rbp), %eax
	movswl	-2(%rbp), %ecx
	shll	$8, %ecx
	subl	%ecx, %eax
	movw	%ax, -4(%rbp)
	movswl	-4(%rbp), %eax
	movl	$256, %ecx                      # imm = 0x100
	subl	%eax, %ecx
	movw	%cx, -22(%rbp)
	movswl	-20(%rbp), %eax
	movswl	-4(%rbp), %ecx
	imull	%ecx, %eax
	movswl	-18(%rbp), %ecx
	movswl	-22(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	sarl	$8, %eax
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_18:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	warp_golden, .Lfunc_end0-warp_golden
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$581504, -20(%rbp)              # imm = 0x8DF80
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	callq	rand
	cltd
	movl	$128, %ecx
	idivl	%ecx
	movslq	-20(%rbp), %rax
	movb	%dl, src_arr(,%rax)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movl	$0, -16(%rbp)
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	cmpl	$112, -16(%rbp)
	jge	.LBB1_12
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movl	$0, -12(%rbp)
.LBB1_7:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$88, -12(%rbp)
	jge	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	imull	$88, -16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	callq	rand
	cltd
	movl	$128, %ecx
	idivl	%ecx
	movl	%edx, %ebx
	callq	rand
	cltd
	movl	$128, %ecx
	idivl	%ecx
	shll	$8, %edx
	addl	%edx, %ebx
	movslq	-24(%rbp), %rax
	movw	%bx, offset_arr(,%rax,2)
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_5
.LBB1_12:
	movabsq	$src_arr, %rdi
	movabsq	$offset_arr, %rsi
	movabsq	$golden_arr, %rdx
	callq	warp_golden
	movl	-28(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	src_arr,@object                 # @src_arr
	.comm	src_arr,581504,16
	.type	offset_arr,@object              # @offset_arr
	.comm	offset_arr,19712,16
	.type	golden_arr,@object              # @golden_arr
	.comm	golden_arr,571648,16
	.type	l_mask_arr,@object              # @l_mask_arr
	.comm	l_mask_arr,9856,16
	.type	r_mask_arr,@object              # @r_mask_arr
	.comm	r_mask_arr,9856,16
	.type	out_arr,@object                 # @out_arr
	.comm	out_arr,571648,16
	.type	right_idx_arr,@object           # @right_idx_arr
	.comm	right_idx_arr,19712,16
	.type	left_idx_arr,@object            # @left_idx_arr
	.comm	left_idx_arr,19712,16
	.type	offset_fraction_arr,@object     # @offset_fraction_arr
	.comm	offset_fraction_arr,9856,16
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
