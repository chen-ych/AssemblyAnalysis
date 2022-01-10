	.text
	.file	"resize.c"
	.globl	resize_golden                   # -- Begin function resize_golden
	.p2align	4, 0x90
	.type	resize_golden,@function
resize_golden:                          # @resize_golden
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	32(%rbp), %ax
	movw	24(%rbp), %ax
	movw	16(%rbp), %ax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -80(%rbp)
	movw	%dx, -6(%rbp)
	movw	%cx, -2(%rbp)
	movw	%r8w, -34(%rbp)
	movw	%r9w, -18(%rbp)
	movw	$0, -14(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movzwl	-14(%rbp), %eax
	movzwl	-34(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_18
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movzwl	-14(%rbp), %eax
	shll	$7, %eax
	sarl	$1, %eax
	movw	%ax, -32(%rbp)
	movzwl	-32(%rbp), %eax
	sarl	$7, %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	addl	$1, %eax
	movzwl	-6(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movzwl	-12(%rbp), %eax
	addl	$1, %eax
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movzwl	-6(%rbp), %eax
	subl	$1, %eax
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movw	%ax, -30(%rbp)
	movw	$0, -10(%rbp)
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movzwl	-10(%rbp), %eax
	movzwl	-18(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_16
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movzwl	-10(%rbp), %eax
	shll	$7, %eax
	sarl	$1, %eax
	movw	%ax, -28(%rbp)
	movzwl	-28(%rbp), %eax
	sarl	$7, %eax
	movw	%ax, -8(%rbp)
	movzwl	-8(%rbp), %eax
	addl	$1, %eax
	movzwl	-2(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	movzwl	-8(%rbp), %eax
	addl	$1, %eax
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=2
	movzwl	-2(%rbp), %eax
	subl	$1, %eax
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=2
	movw	%ax, -26(%rbp)
	movw	$0, -4(%rbp)
.LBB0_11:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	-4(%rbp), %eax
	movzwl	16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movw	$128, -24(%rbp)
	movzwl	-32(%rbp), %eax
	movzwl	-12(%rbp), %ecx
	shll	$7, %ecx
	subl	%ecx, %eax
	movw	%ax, -22(%rbp)
	movzwl	-24(%rbp), %eax
	movzwl	-22(%rbp), %ecx
	subl	%ecx, %eax
	movw	%ax, -40(%rbp)
	movzwl	-28(%rbp), %eax
	movzwl	-8(%rbp), %ecx
	shll	$7, %ecx
	subl	%ecx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-24(%rbp), %eax
	movzwl	-16(%rbp), %ecx
	subl	%ecx, %eax
	movw	%ax, -20(%rbp)
	movzwl	-4(%rbp), %eax
	movzwl	-2(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-6(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-12(%rbp), %ecx
	movzwl	-2(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-8(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movzwl	-4(%rbp), %eax
	movzwl	-2(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-6(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-12(%rbp), %ecx
	movzwl	-2(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-26(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movzwl	-4(%rbp), %eax
	movzwl	-2(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-6(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-30(%rbp), %ecx
	movzwl	-2(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-8(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movzwl	-4(%rbp), %eax
	movzwl	-2(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-6(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-30(%rbp), %ecx
	movzwl	-2(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-26(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movzwl	-4(%rbp), %eax
	movzwl	-18(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-34(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-14(%rbp), %ecx
	movzwl	-18(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-10(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movzwl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	-68(%rbp), %edx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	movzwl	-16(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-64(%rbp), %esi
	movswl	(%rdx,%rsi,2), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	sarl	$7, %eax
	movw	%ax, -38(%rbp)
	movzwl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	-60(%rbp), %edx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	movzwl	-16(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %esi
	movswl	(%rdx,%rsi,2), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	sarl	$7, %eax
	movw	%ax, -36(%rbp)
	movzwl	-40(%rbp), %eax
	movswl	-38(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-22(%rbp), %ecx
	movswl	-36(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	sarl	$7, %eax
	movq	-80(%rbp), %rcx
	movl	-52(%rbp), %edx
	movw	%ax, (%rcx,%rdx,2)
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=3
	movw	-4(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=2
	movw	-10(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -10(%rbp)
	jmp	.LBB0_6
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movw	-14(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -14(%rbp)
	jmp	.LBB0_1
.LBB0_18:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	resize_golden, .Lfunc_end0-resize_golden
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
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$0, -48(%rbp)
	movw	$112, -22(%rbp)
	movw	$88, -20(%rbp)
	movw	$1, -18(%rbp)
	movw	$2, -30(%rbp)
	movw	$2, -28(%rbp)
	movzwl	-22(%rbp), %eax
	movzwl	-20(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-18(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -40(%rbp)
	movzwl	-22(%rbp), %eax
	movzwl	-30(%rbp), %ecx
	imull	%ecx, %eax
	movw	%ax, -26(%rbp)
	movzwl	-20(%rbp), %eax
	movzwl	-28(%rbp), %ecx
	imull	%ecx, %eax
	movw	%ax, -24(%rbp)
	movzwl	-26(%rbp), %eax
	movzwl	-24(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-18(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	movq	%rsp, -72(%rbp)
	leaq	15(%rax,%rax), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rsp
	movq	%rax, -88(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(%rax,%rax), %rcx
	andq	$-16, %rcx
	movq	%rsp, %r14
	subq	%rcx, %r14
	movq	%r14, %rsp
	movq	%rax, -80(%rbp)
	movl	$0, -36(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jae	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	callq	rand
	cltd
	movl	$64, %ecx
	idivl	%ecx
	movl	-36(%rbp), %eax
	movw	%dx, (%rbx,%rax,2)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movb	$0, %al
	callq	rdcycle
	cltq
	movq	%rax, -64(%rbp)
	movw	-22(%rbp), %ax
	movw	-20(%rbp), %cx
	movw	-26(%rbp), %r8w
	movw	-24(%rbp), %r9w
	movw	-18(%rbp), %r10w
	movw	-30(%rbp), %r11w
	subq	$32, %rsp
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movzwl	%ax, %edx
	movzwl	%cx, %ecx
	movzwl	%r8w, %r8d
	movzwl	%r9w, %r9d
	movzwl	%r10w, %eax
	movl	%eax, (%rsp)
	movzwl	%r11w, %eax
	movl	%eax, 8(%rsp)
	movzwl	-28(%rbp), %eax
	movl	%eax, 16(%rsp)
	callq	resize_golden
	addq	$32, %rsp
	movb	$0, %al
	callq	rdcycle
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	subq	-64(%rbp), %rsi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movq	-72(%rbp), %rsp
	movl	-48(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"resize process cycles: %lu\n"
	.size	.L.str, 28

	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
