	.text
	.file	"psroi_golden.c"
	.globl	bilinear_interpolate            # -- Begin function bilinear_interpolate
	.p2align	4, 0x90
	.type	bilinear_interpolate,@function
bilinear_interpolate:                   # @bilinear_interpolate
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -72(%rbp)
	movw	%si, -22(%rbp)
	movw	%dx, -2(%rbp)
	movw	%cx, -6(%rbp)
	movw	%r8w, -4(%rbp)
	movl	$0, -56(%rbp)
	movswl	-6(%rbp), %eax
	sarl	$4, %eax
	movswl	-22(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_2
# %bb.1:
	movswl	-4(%rbp), %eax
	sarl	$4, %eax
	movswl	-2(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_3
.LBB0_2:
	movl	$0, -60(%rbp)
	jmp	.LBB0_14
.LBB0_3:
	movswl	-6(%rbp), %eax
	cmpl	$0, %eax
	jg	.LBB0_5
# %bb.4:
	movw	$0, -6(%rbp)
.LBB0_5:
	movswl	-4(%rbp), %eax
	cmpl	$0, %eax
	jg	.LBB0_7
# %bb.6:
	movw	$0, -4(%rbp)
.LBB0_7:
	movswl	-6(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -16(%rbp)
	movswl	-4(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movswl	-22(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_9
# %bb.8:
	movswl	-22(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	shll	$4, %eax
	movw	%ax, -6(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB0_10:
	movl	-12(%rbp), %eax
	movswl	-2(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_12
# %bb.11:
	movswl	-2(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	shll	$4, %eax
	movw	%ax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB0_13:
	movswl	-6(%rbp), %eax
	movl	-16(%rbp), %ecx
	shll	$4, %ecx
	subl	%ecx, %eax
	movw	%ax, -20(%rbp)
	movswl	-4(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$4, %ecx
	subl	%ecx, %eax
	movw	%ax, -18(%rbp)
	movzwl	-20(%rbp), %eax
	movl	$16, %ecx
	movl	$16, %edx
	subl	%eax, %edx
	movw	%dx, -26(%rbp)
	movzwl	-18(%rbp), %eax
	subl	%eax, %ecx
	movw	%cx, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	-16(%rbp), %ecx
	movswl	-2(%rbp), %edx
	imull	%edx, %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movw	%ax, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	-16(%rbp), %ecx
	movswl	-2(%rbp), %edx
	imull	%edx, %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movw	%ax, -50(%rbp)
	movq	-72(%rbp), %rax
	movl	-36(%rbp), %ecx
	movswl	-2(%rbp), %edx
	imull	%edx, %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movw	%ax, -48(%rbp)
	movq	-72(%rbp), %rax
	movl	-36(%rbp), %ecx
	movswl	-2(%rbp), %edx
	imull	%edx, %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movw	%ax, -46(%rbp)
	movzwl	-26(%rbp), %eax
	movzwl	-24(%rbp), %ecx
	imull	%ecx, %eax
	sarl	$4, %eax
	movw	%ax, -44(%rbp)
	movzwl	-26(%rbp), %eax
	movzwl	-18(%rbp), %ecx
	imull	%ecx, %eax
	sarl	$4, %eax
	movw	%ax, -42(%rbp)
	movzwl	-20(%rbp), %eax
	movzwl	-24(%rbp), %ecx
	imull	%ecx, %eax
	sarl	$4, %eax
	movw	%ax, -40(%rbp)
	movzwl	-20(%rbp), %eax
	movzwl	-18(%rbp), %ecx
	imull	%ecx, %eax
	sarl	$4, %eax
	movw	%ax, -38(%rbp)
	movzwl	-44(%rbp), %eax
	movzwl	-52(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-42(%rbp), %ecx
	movzwl	-50(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-40(%rbp), %ecx
	movzwl	-48(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-38(%rbp), %ecx
	movzwl	-46(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	shrl	$4, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB0_14:
	movl	-60(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	bilinear_interpolate, .Lfunc_end0-bilinear_interpolate
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function psroi_align_golden
.LCPI1_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI1_1:
	.quad	0x4070000000000000              # double 256
	.text
	.globl	psroi_align_golden
	.p2align	4, 0x90
	.type	psroi_align_golden,@function
psroi_align_golden:                     # @psroi_align_golden
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	64(%rbp), %al
	movl	56(%rbp), %eax
	movl	48(%rbp), %eax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -104(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -112(%rbp)
	movl	%ecx, -92(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -88(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	xorl	%edx, %edx
	divl	16(%rbp)
	movw	%ax, -20(%rbp)
	movl	-56(%rbp), %eax
	xorl	%edx, %edx
	divl	16(%rbp)
	movw	%dx, -18(%rbp)
	movl	$0, -4(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_13 Depth 4
	movl	-4(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB1_22
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movl	-4(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	-4(%rbp), %ecx
	shll	$2, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -6(%rbp)
	movq	-72(%rbp), %rax
	movl	-4(%rbp), %ecx
	shll	$2, %ecx
	addl	$2, %ecx
	movl	%ecx, %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	-4(%rbp), %ecx
	shll	$2, %ecx
	addl	$3, %ecx
	movl	%ecx, %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-8(%rbp), %ecx
	subl	%ecx, %eax
	cmpl	$16, %eax
	jle	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movzwl	-16(%rbp), %eax
	movzwl	-8(%rbp), %ecx
	subl	%ecx, %eax
	jmp	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$16, %eax
	jmp	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	movw	%ax, -52(%rbp)
	movzwl	-14(%rbp), %eax
	movzwl	-6(%rbp), %ecx
	subl	%ecx, %eax
	cmpl	$16, %eax
	jle	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_1 Depth=1
	movzwl	-14(%rbp), %eax
	movzwl	-6(%rbp), %ecx
	subl	%ecx, %eax
	jmp	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$16, %eax
	jmp	.LBB1_8
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movw	%ax, -50(%rbp)
	movl	16(%rbp), %eax
	cvtsi2sd	%rax, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	.LCPI1_1(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movw	%ax, -48(%rbp)
	movl	-88(%rbp), %eax
	cvtsi2sd	%rax, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, -46(%rbp)
	movzwl	-52(%rbp), %eax
	movzwl	-48(%rbp), %ecx
	imull	%ecx, %eax
	sarl	$8, %eax
	movw	%ax, -12(%rbp)
	movzwl	-50(%rbp), %eax
	movzwl	-46(%rbp), %ecx
	imull	%ecx, %eax
	sarl	$8, %eax
	movw	%ax, -10(%rbp)
	movzbl	64(%rbp), %eax
	movl	%eax, -84(%rbp)
	movzbl	64(%rbp), %eax
	movl	%eax, -80(%rbp)
	movzwl	-12(%rbp), %eax
	movzbl	64(%rbp), %ecx
	shll	$1, %ecx
	cltd
	idivl	%ecx
	movw	%ax, -44(%rbp)
	movzwl	-10(%rbp), %eax
	movzbl	64(%rbp), %ecx
	shll	$1, %ecx
	cltd
	idivl	%ecx
	movw	%ax, -42(%rbp)
	movl	$0, -32(%rbp)
.LBB1_9:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_13 Depth 4
	movl	-32(%rbp), %eax
	cmpl	24(%rbp), %eax
	jae	.LBB1_20
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$0, -36(%rbp)
	movl	-4(%rbp), %eax
	imull	48(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	56(%rbp), %ecx
	addl	%ecx, %eax
	movzwl	-20(%rbp), %ecx
	imull	16(%rbp), %ecx
	addl	%ecx, %eax
	movzwl	-18(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -28(%rbp)
.LBB1_11:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_13 Depth 4
	movl	-28(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB1_18
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=3
	movzwl	-6(%rbp), %eax
	movzwl	-20(%rbp), %ecx
	movzwl	-10(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movzwl	-42(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movw	%ax, -40(%rbp)
	movl	$0, -24(%rbp)
.LBB1_13:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-24(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=4
	movzwl	-8(%rbp), %eax
	movzwl	-18(%rbp), %ecx
	movzwl	-12(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movzwl	-44(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movw	%ax, -38(%rbp)
	movq	-64(%rbp), %rdi
	movl	32(%rbp), %eax
	movl	40(%rbp), %ecx
	movw	-40(%rbp), %r8w
	movswl	%ax, %esi
	movswl	%cx, %edx
	movswl	%r8w, %ecx
	movswl	-38(%rbp), %r8d
	callq	bilinear_interpolate
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_13
.LBB1_16:                               #   in Loop: Header=BB1_11 Depth=3
	jmp	.LBB1_17
.LBB1_17:                               #   in Loop: Header=BB1_11 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_11
.LBB1_18:                               #   in Loop: Header=BB1_9 Depth=2
	movl	-36(%rbp), %eax
	shrl	$2, %eax
	movq	-112(%rbp), %rcx
	movl	-76(%rbp), %edx
	movw	%ax, (%rcx,%rdx,2)
	movl	32(%rbp), %eax
	imull	40(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, %eax
	addq	%rax, %rcx
	movq	%rcx, -64(%rbp)
# %bb.19:                               #   in Loop: Header=BB1_9 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_9
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               #   in Loop: Header=BB1_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_1
.LBB1_22:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	psroi_align_golden, .Lfunc_end1-psroi_align_golden
	.cfi_endproc
                                        # -- End function
	.globl	psroi_pooling_align_golden      # -- Begin function psroi_pooling_align_golden
	.p2align	4, 0x90
	.type	psroi_pooling_align_golden,@function
psroi_pooling_align_golden:             # @psroi_pooling_align_golden
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	64(%rbp), %al
	movl	56(%rbp), %eax
	movl	48(%rbp), %eax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -80(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	16(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	40(%rbp), %ebx
	movl	48(%rbp), %r14d
	movl	56(%rbp), %r15d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%r15d, 40(%rsp)
	movzbl	64(%rbp), %eax
	movl	%eax, 48(%rsp)
	callq	psroi_align_golden
	movl	32(%rbp), %eax
	imull	40(%rbp), %eax
	imull	24(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, %eax
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	psroi_pooling_align_golden, .Lfunc_end2-psroi_pooling_align_golden
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$440, %rsp                      # imm = 0x1B8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$0, -108(%rbp)
	movl	$1, -100(%rbp)
	movl	$23, -96(%rbp)
	movl	$40, -92(%rbp)
	movl	$7, -72(%rbp)
	movl	$7, -68(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	$8, -80(%rbp)
	movl	-80(%rbp), %eax
	movl	-88(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	imull	%ecx, %eax
	movl	-80(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	$2, -120(%rbp)
	movl	$300, -52(%rbp)                 # imm = 0x12C
	movl	$4, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	-52(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -112(%rbp)
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %ecx
	imull	%ecx, %eax
	movl	-132(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -84(%rbp)
	movl	-52(%rbp), %eax
	movl	-72(%rbp), %ecx
	imull	%ecx, %eax
	movl	-68(%rbp), %ecx
	movl	-80(%rbp), %edx
	imull	%edx, %ecx
	imull	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-52(%rbp), %eax
	movl	-88(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-84(%rbp), %eax
	movq	%rsp, -152(%rbp)
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdi
	subq	%rcx, %rdi
	movq	%rdi, %rsp
	movq	%rax, -472(%rbp)
	movl	-84(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -464(%rbp)
	movl	-112(%rbp), %eax
	leaq	15(%rax,%rax), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rsp
	movq	%rax, -456(%rbp)
	movl	-76(%rbp), %eax
	leaq	15(%rax,%rax), %rcx
	andq	$-16, %rcx
	movq	%rsp, %r15
	subq	%rcx, %r15
	movq	%r15, %rsp
	movq	%rax, -448(%rbp)
	movl	-76(%rbp), %eax
	leaq	15(%rax,%rax), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -440(%rbp)
	movl	-76(%rbp), %eax
	leaq	15(%rax,%rax), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, -144(%rbp)                # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rax, -432(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -424(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -416(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -408(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -400(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -392(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -384(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -376(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -368(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -360(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -352(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -344(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -336(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -328(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -320(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -312(%rbp)
	movl	-44(%rbp), %eax
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -304(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -296(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -288(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -280(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -272(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -264(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -256(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -248(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -240(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -232(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -224(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -216(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -208(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -200(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -192(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -184(%rbp)
	movl	-44(%rbp), %eax
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rax, -176(%rbp)
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movw	%ax, -104(%rbp)
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movw	%ax, -102(%rbp)
	movl	-52(%rbp), %ecx
	leaq	15(%rcx,%rcx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rax
	subq	%rdx, %rax
	movq	%rax, %rsp
	movq	%rcx, -168(%rbp)
	movl	-52(%rbp), %edx
	leaq	15(%rdx,%rdx), %rbx
	andq	$-16, %rbx
	movq	%rsp, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %rsp
	movq	%rdx, -160(%rbp)
	movl	$0, -64(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %edx
	cmpl	-52(%rbp), %edx
	jae	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movw	-104(%rbp), %dx
	movl	-64(%rbp), %ebx
	movw	%dx, (%rax,%rbx,2)
	movw	-102(%rbp), %dx
	movl	-64(%rbp), %ebx
	movw	%dx, (%rcx,%rbx,2)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-64(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -64(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movl	$0, -60(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jae	.LBB3_8
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movl	-60(%rbp), %eax
	cltd
	movl	$64, %ecx
	idivl	%ecx
	shll	$2, %edx
	movslq	-60(%rbp), %rax
	movb	%dl, (%rdi,%rax)
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_5
.LBB3_8:
	movl	$0, -48(%rbp)
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	shrl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB3_12
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	movl	-48(%rbp), %eax
	shll	$3, %eax
	cltq
	movw	$16, (%rsi,%rax,2)
	movl	-48(%rbp), %eax
	shll	$3, %eax
	addl	$1, %eax
	cltq
	movw	$16, (%rsi,%rax,2)
	movl	-48(%rbp), %eax
	shll	$3, %eax
	addl	$2, %eax
	cltq
	movw	$80, (%rsi,%rax,2)
	movl	-48(%rbp), %eax
	shll	$3, %eax
	addl	$3, %eax
	cltq
	movw	$80, (%rsi,%rax,2)
	movl	-48(%rbp), %eax
	shll	$3, %eax
	addl	$4, %eax
	cltq
	movw	$176, (%rsi,%rax,2)
	movl	-48(%rbp), %eax
	shll	$3, %eax
	addl	$5, %eax
	cltq
	movw	$176, (%rsi,%rax,2)
	movl	-48(%rbp), %eax
	shll	$3, %eax
	addl	$6, %eax
	cltq
	movw	$240, (%rsi,%rax,2)
	movl	-48(%rbp), %eax
	shll	$3, %eax
	addl	$7, %eax
	cltq
	movw	$240, (%rsi,%rax,2)
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB3_9
.LBB3_12:
	movl	-52(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-68(%rbp), %eax
	movl	-80(%rbp), %ebx
	movl	-96(%rbp), %r10d
	movl	-92(%rbp), %r11d
	movl	-128(%rbp), %r12d
	movl	-124(%rbp), %r13d
	movl	-120(%rbp), %r14d
	subq	$64, %rsp
	movq	%r15, %rdx
	movl	%eax, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movzbl	%r14b, %eax
	movl	%eax, 48(%rsp)
	callq	psroi_pooling_align_golden
	addq	$64, %rsp
	movl	$0, -56(%rbp)
	movq	-144(%rbp), %rbx                # 8-byte Reload
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jae	.LBB3_18
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	-56(%rbp), %rax
	movzwl	(%rbx,%rax,2), %eax
	movslq	-56(%rbp), %rcx
	movzwl	(%r15,%rcx,2), %ecx
	cmpl	%ecx, %eax
	je	.LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	-56(%rbp), %rax
	movzwl	(%rbx,%rax,2), %esi
	movslq	-56(%rbp), %rax
	movzwl	(%r15,%rax,2), %edx
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -100(%rbp)
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_17
.LBB3_17:                               #   in Loop: Header=BB3_13 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_13
.LBB3_18:
	cmpl	$0, -100(%rbp)
	je	.LBB3_20
# %bb.19:
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
.LBB3_20:
	cmpl	$0, -100(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -108(%rbp)
	movq	-152(%rbp), %rsp
	movl	-108(%rbp), %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed, %d != %d\n"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"passed\n"
	.size	.L.str.1, 8

	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
