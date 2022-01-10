	.text
	.file	"psroi_golden.c"
	.globl	bilinear_interpolate    # -- Begin function bilinear_interpolate
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        # kill: def $r8w killed $r8w killed $r8d
                                        # kill: def $cx killed $cx killed $ecx
                                        # kill: def $dx killed $dx killed $edx
                                        # kill: def $si killed $si killed $esi
	movq	%rdi, -56(%rbp)
	movw	%si, -58(%rbp)
	movw	%dx, -60(%rbp)
	movw	%cx, -62(%rbp)
	movw	%r8w, -64(%rbp)
	movl	$0, -68(%rbp)
	movswl	-62(%rbp), %eax
	sarl	$4, %eax
	movswl	-58(%rbp), %r9d
	cmpl	%r9d, %eax
	jge	.LBB0_2
# %bb.1:
	movswl	-64(%rbp), %eax
	sarl	$4, %eax
	movswl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_3
.LBB0_2:
	movl	$0, -44(%rbp)
	jmp	.LBB0_14
.LBB0_3:
	movswl	-62(%rbp), %eax
	cmpl	$0, %eax
	jg	.LBB0_5
# %bb.4:
	movw	$0, -62(%rbp)
.LBB0_5:
	movswl	-64(%rbp), %eax
	cmpl	$0, %eax
	jg	.LBB0_7
# %bb.6:
	movw	$0, -64(%rbp)
.LBB0_7:
	movswl	-62(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -72(%rbp)
	movswl	-64(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	movswl	-58(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_9
# %bb.8:
	movswl	-58(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %eax
	shll	$4, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -62(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
.LBB0_10:
	movl	-76(%rbp), %eax
	movswl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_12
# %bb.11:
	movswl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -84(%rbp)
	movl	-76(%rbp), %eax
	shll	$4, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -64(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB0_13:
	movswl	-62(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$4, %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -86(%rbp)
	movswl	-64(%rbp), %ecx
	movl	-76(%rbp), %edx
	shll	$4, %edx
	subl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, -88(%rbp)
	movzwl	-86(%rbp), %edx
	movl	$16, %esi
	movl	%esi, %edi
	subl	%edx, %edi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -90(%rbp)
	movzwl	-88(%rbp), %edx
	subl	%edx, %esi
                                        # kill: def $si killed $si killed $esi
	movw	%si, -92(%rbp)
	movq	-56(%rbp), %r8
	movl	-72(%rbp), %edx
	movswl	-60(%rbp), %r9d
	imull	%r9d, %edx
	addl	-76(%rbp), %edx
	movslq	%edx, %r10
	movzbl	(%r8,%r10), %edx
                                        # kill: def $dx killed $dx killed $edx
	movw	%dx, -94(%rbp)
	movq	-56(%rbp), %r8
	movl	-72(%rbp), %r9d
	movswl	-60(%rbp), %r11d
	imull	%r11d, %r9d
	addl	-84(%rbp), %r9d
	movslq	%r9d, %r10
	movzbl	(%r8,%r10), %r9d
                                        # kill: def $r9w killed $r9w killed $r9d
	movw	%r9w, -96(%rbp)
	movq	-56(%rbp), %r8
	movl	-80(%rbp), %r11d
	movswl	-60(%rbp), %ebx
	imull	%ebx, %r11d
	addl	-76(%rbp), %r11d
	movslq	%r11d, %r10
	movzbl	(%r8,%r10), %r11d
                                        # kill: def $r11w killed $r11w killed $r11d
	movw	%r11w, -98(%rbp)
	movq	-56(%rbp), %r8
	movl	-80(%rbp), %ebx
	movswl	-60(%rbp), %r14d
	imull	%r14d, %ebx
	addl	-84(%rbp), %ebx
	movslq	%ebx, %r10
	movzbl	(%r8,%r10), %ebx
                                        # kill: def $bx killed $bx killed $ebx
	movw	%bx, -100(%rbp)
	movzwl	-90(%rbp), %r14d
	movzwl	-92(%rbp), %r15d
	imull	%r15d, %r14d
	sarl	$4, %r14d
                                        # kill: def $r14w killed $r14w killed $r14d
	movw	%r14w, -102(%rbp)
	movzwl	-90(%rbp), %r15d
	movzwl	-88(%rbp), %r12d
	imull	%r12d, %r15d
	sarl	$4, %r15d
                                        # kill: def $r15w killed $r15w killed $r15d
	movw	%r15w, -104(%rbp)
	movzwl	-86(%rbp), %r12d
	movzwl	-92(%rbp), %r13d
	imull	%r13d, %r12d
	sarl	$4, %r12d
                                        # kill: def $r12w killed $r12w killed $r12d
	movw	%r12w, -106(%rbp)
	movzwl	-86(%rbp), %r13d
	movzwl	-88(%rbp), %eax
	imull	%eax, %r13d
	sarl	$4, %r13d
                                        # kill: def $r13w killed $r13w killed $r13d
	movw	%r13w, -108(%rbp)
	movzwl	-102(%rbp), %eax
	movzwl	-94(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-104(%rbp), %ecx
	movzwl	-96(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-106(%rbp), %ecx
	movzwl	-98(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzwl	-108(%rbp), %ecx
	movzwl	-100(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	shrl	$4, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_14:
	movl	-44(%rbp), %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	bilinear_interpolate, .Lfunc_end0-bilinear_interpolate
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function psroi_align_golden
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4643211215818981376     # double 256
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	64(%rbp), %al
	movl	56(%rbp), %r10d
	movl	48(%rbp), %r11d
	movl	40(%rbp), %ebx
	movl	32(%rbp), %r14d
	movl	24(%rbp), %r15d
	movl	16(%rbp), %r12d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movl	-64(%rbp), %ecx
	movb	%al, -147(%rbp)         # 1-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	16(%rbp)
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -82(%rbp)
	movl	-64(%rbp), %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	16(%rbp)
                                        # kill: def $dx killed $dx killed $edx
	movw	%dx, -84(%rbp)
	movl	$0, -88(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_13 Depth 4
	movl	-88(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB1_22
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movl	-88(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movw	(%rax,%rdx,2), %si
	movw	%si, -90(%rbp)
	movq	-48(%rbp), %rax
	movl	-88(%rbp), %ecx
	shll	$2, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movw	(%rax,%rdx,2), %si
	movw	%si, -92(%rbp)
	movq	-48(%rbp), %rax
	movl	-88(%rbp), %ecx
	shll	$2, %ecx
	addl	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movw	(%rax,%rdx,2), %si
	movw	%si, -94(%rbp)
	movq	-48(%rbp), %rax
	movl	-88(%rbp), %ecx
	shll	$2, %ecx
	addl	$3, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movw	(%rax,%rdx,2), %si
	movw	%si, -96(%rbp)
	movzwl	-94(%rbp), %ecx
	movzwl	-90(%rbp), %edi
	subl	%edi, %ecx
	cmpl	$16, %ecx
	jle	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movzwl	-94(%rbp), %eax
	movzwl	-90(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$16, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -98(%rbp)
	movzwl	-96(%rbp), %ecx
	movzwl	-92(%rbp), %edx
	subl	%edx, %ecx
	cmpl	$16, %ecx
	jle	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_1 Depth=1
	movzwl	-96(%rbp), %eax
	movzwl	-92(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$16, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -100(%rbp)
	movl	16(%rbp), %ecx
	movl	%ecx, %edx
	cvtsi2sd	%rdx, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, -102(%rbp)
	movl	-68(%rbp), %esi
	movl	%esi, %edx
	cvtsi2sd	%rdx, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
                                        # kill: def $si killed $si killed $esi
	movw	%si, -104(%rbp)
	movzwl	-98(%rbp), %edi
	movzwl	-102(%rbp), %r8d
	imull	%r8d, %edi
	sarl	$8, %edi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -106(%rbp)
	movzwl	-100(%rbp), %r8d
	movzwl	-104(%rbp), %r9d
	imull	%r9d, %r8d
	sarl	$8, %r8d
                                        # kill: def $r8w killed $r8w killed $r8d
	movw	%r8w, -108(%rbp)
	movzbl	64(%rbp), %r9d
	movl	%r9d, -112(%rbp)
	movzbl	64(%rbp), %r9d
	movl	%r9d, -116(%rbp)
	movzwl	-106(%rbp), %eax
	movzbl	64(%rbp), %r9d
	shll	$1, %r9d
	cltd
	idivl	%r9d
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -118(%rbp)
	movzwl	-108(%rbp), %eax
	movzbl	64(%rbp), %r9d
	shll	$1, %r9d
	cltd
	idivl	%r9d
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -120(%rbp)
	movl	$0, -124(%rbp)
.LBB1_9:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_13 Depth 4
	movl	-124(%rbp), %eax
	cmpl	24(%rbp), %eax
	jae	.LBB1_20
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$0, -128(%rbp)
	movl	-88(%rbp), %eax
	imull	48(%rbp), %eax
	movl	-124(%rbp), %ecx
	imull	56(%rbp), %ecx
	addl	%ecx, %eax
	movzwl	-82(%rbp), %ecx
	imull	16(%rbp), %ecx
	addl	%ecx, %eax
	movzwl	-84(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	$0, -136(%rbp)
.LBB1_11:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_13 Depth 4
	movl	-136(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB1_18
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=3
	movzwl	-92(%rbp), %eax
	movzwl	-82(%rbp), %ecx
	movzwl	-108(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movzwl	-120(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -138(%rbp)
	movl	$0, -144(%rbp)
.LBB1_13:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-144(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=4
	movzwl	-90(%rbp), %eax
	movzwl	-84(%rbp), %ecx
	movzwl	-106(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movzwl	-118(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -146(%rbp)
	movq	-80(%rbp), %rdi
	movl	32(%rbp), %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movl	40(%rbp), %edx
                                        # kill: def $dx killed $dx killed $edx
	movw	-138(%rbp), %ax
	movswl	%cx, %esi
	movswl	%dx, %edx
	movswl	%ax, %ecx
	movswl	-146(%rbp), %r8d
	callq	bilinear_interpolate
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=4
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB1_13
.LBB1_16:                               #   in Loop: Header=BB1_11 Depth=3
	jmp	.LBB1_17
.LBB1_17:                               #   in Loop: Header=BB1_11 Depth=3
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB1_11
.LBB1_18:                               #   in Loop: Header=BB1_9 Depth=2
	movl	-128(%rbp), %eax
	shrl	$2, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-56(%rbp), %rcx
	movl	-132(%rbp), %edx
	movl	%edx, %esi
	movw	%ax, (%rcx,%rsi,2)
	movl	32(%rbp), %edx
	imull	40(%rbp), %edx
	movq	-80(%rbp), %rcx
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rcx
	movq	%rcx, -80(%rbp)
# %bb.19:                               #   in Loop: Header=BB1_9 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB1_9
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               #   in Loop: Header=BB1_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB1_1
.LBB1_22:
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	psroi_align_golden, .Lfunc_end1-psroi_align_golden
	.cfi_endproc
                                        # -- End function
	.globl	psroi_pooling_align_golden # -- Begin function psroi_pooling_align_golden
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
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	64(%rbp), %al
	movl	56(%rbp), %r10d
	movl	48(%rbp), %r11d
	movl	40(%rbp), %ebx
	movl	32(%rbp), %r14d
	movl	24(%rbp), %r15d
	movl	16(%rbp), %r12d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jae	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movl	-68(%rbp), %r9d
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
	movq	-80(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -80(%rbp)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	psroi_pooling_align_golden, .Lfunc_end2-psroi_pooling_align_golden
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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$496, %rsp              # imm = 0x1F0
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$0, -36(%rbp)
	movl	$1, -40(%rbp)
	movl	$23, -44(%rbp)
	movl	$40, -48(%rbp)
	movl	$7, -52(%rbp)
	movl	$7, -56(%rbp)
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	$8, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -68(%rbp)
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	%ecx, %eax
	movl	-64(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -72(%rbp)
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	$2, -80(%rbp)
	movl	$300, -84(%rbp)         # imm = 0x12C
	movl	$4, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -92(%rbp)
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	imull	%ecx, %eax
	movl	-68(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -96(%rbp)
	movl	-84(%rbp), %eax
	movl	-52(%rbp), %ecx
	imull	%ecx, %eax
	movl	-56(%rbp), %ecx
	imull	%ecx, %eax
	movl	-64(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -100(%rbp)
	movl	-84(%rbp), %eax
	movl	-60(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -104(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, %edx
	movq	%rsp, %rsi
	movq	%rsi, -112(%rbp)
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rsp
	movq	%rdx, -120(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r8
	subq	%rsi, %r8
	movq	%r8, %rsp
	movq	%rdx, -128(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	leaq	15(%rdx,%rdx), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r8
	subq	%rsi, %r8
	movq	%r8, %rsp
	movq	%rdx, -136(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	leaq	15(%rdx,%rdx), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r9
	subq	%rsi, %r9
	movq	%r9, %rsp
	movq	%rdx, -144(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	leaq	15(%rdx,%rdx), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r10
	subq	%rsi, %r10
	movq	%r10, %rsp
	movq	%rdx, -152(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	leaq	15(%rdx,%rdx), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r10
	subq	%rsi, %r10
	movq	%r10, %rsp
	movq	%rdx, -160(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -168(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -176(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -184(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -192(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -200(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -208(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -216(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -224(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -232(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -240(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -248(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -256(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -264(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -272(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -280(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	leaq	15(,%rdx,4), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -288(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -296(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -304(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -312(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -320(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -328(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -336(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -344(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -352(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -360(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -368(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -376(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -384(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -392(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -400(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -408(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	addq	$15, %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -416(%rbp)
	movl	-44(%rbp), %eax
	addl	$-1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -418(%rbp)
	movl	-48(%rbp), %ecx
	addl	$-1, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, -420(%rbp)
	movl	-84(%rbp), %ebx
	movl	%ebx, %edx
	leaq	15(%rdx,%rdx), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r11
	subq	%rsi, %r11
	movq	%r11, %rsp
	movq	%rdx, -432(%rbp)
	movl	-84(%rbp), %ebx
	movl	%ebx, %edx
	leaq	15(%rdx,%rdx), %rsi
	andq	$-16, %rsi
	movq	%rsp, %r14
	subq	%rsi, %r14
	movq	%r14, %rsp
	movq	%rdx, -440(%rbp)
	movl	$0, -444(%rbp)
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%r8, -472(%rbp)         # 8-byte Spill
	movq	%r9, -480(%rbp)         # 8-byte Spill
	movq	%r10, -488(%rbp)        # 8-byte Spill
	movq	%r11, -496(%rbp)        # 8-byte Spill
	movq	%r14, -504(%rbp)        # 8-byte Spill
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-444(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jae	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movw	-418(%rbp), %ax
	movl	-444(%rbp), %ecx
	movl	%ecx, %edx
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movw	%ax, (%rsi,%rdx,2)
	movw	-420(%rbp), %ax
	movl	-444(%rbp), %ecx
	movl	%ecx, %edx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movw	%ax, (%rdi,%rdx,2)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-444(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -444(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movl	$0, -448(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movl	-448(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jae	.LBB3_8
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movl	-448(%rbp), %eax
	cltd
	movl	$64, %ecx
	idivl	%ecx
	shll	$2, %edx
                                        # kill: def $dl killed $dl killed $edx
	movslq	-448(%rbp), %rsi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movb	%dl, (%rdi,%rsi)
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	movl	-448(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -448(%rbp)
	jmp	.LBB3_5
.LBB3_8:
	movl	$0, -452(%rbp)
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	movl	-452(%rbp), %eax
	movl	-84(%rbp), %ecx
	shrl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB3_12
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	movl	-452(%rbp), %eax
	shll	$3, %eax
	movslq	%eax, %rcx
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movw	$16, (%rdx,%rcx,2)
	movl	-452(%rbp), %eax
	shll	$3, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movw	$16, (%rdx,%rcx,2)
	movl	-452(%rbp), %eax
	shll	$3, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movw	$80, (%rdx,%rcx,2)
	movl	-452(%rbp), %eax
	shll	$3, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movw	$80, (%rdx,%rcx,2)
	movl	-452(%rbp), %eax
	shll	$3, %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movw	$176, (%rdx,%rcx,2)
	movl	-452(%rbp), %eax
	shll	$3, %eax
	addl	$5, %eax
	movslq	%eax, %rcx
	movw	$176, (%rdx,%rcx,2)
	movl	-452(%rbp), %eax
	shll	$3, %eax
	addl	$6, %eax
	movslq	%eax, %rcx
	movw	$240, (%rdx,%rcx,2)
	movl	-452(%rbp), %eax
	shll	$3, %eax
	addl	$7, %eax
	movslq	%eax, %rcx
	movw	$240, (%rdx,%rcx,2)
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=1
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	jmp	.LBB3_9
.LBB3_12:
	movl	-84(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	-64(%rbp), %edx
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edi
	movl	-72(%rbp), %r10d
	movl	-76(%rbp), %r11d
	movl	-80(%rbp), %ebx
                                        # kill: def $bl killed $bl killed $ebx
	subq	$64, %rsp
	movq	-464(%rbp), %r14        # 8-byte Reload
	movl	%edi, -508(%rbp)        # 4-byte Spill
	movq	%r14, %rdi
	movq	-472(%rbp), %r15        # 8-byte Reload
	movl	%esi, -512(%rbp)        # 4-byte Spill
	movq	%r15, %rsi
	movq	-480(%rbp), %r12        # 8-byte Reload
	movl	%edx, -516(%rbp)        # 4-byte Spill
	movq	%r12, %rdx
	movl	%eax, (%rsp)
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%r11d, 40(%rsp)
	movzbl	%bl, %eax
	movl	%eax, 48(%rsp)
	callq	psroi_pooling_align_golden
	addq	$64, %rsp
	movl	$0, -456(%rbp)
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movl	-456(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jae	.LBB3_18
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	-456(%rbp), %rax
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %edx
	movslq	-456(%rbp), %rax
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movzwl	(%rsi,%rax,2), %edi
	cmpl	%edi, %edx
	je	.LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	-456(%rbp), %rax
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %esi
	movslq	-456(%rbp), %rax
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movzwl	(%rdx,%rax,2), %edi
	movabsq	$.L.str, %rax
	movl	%edi, -520(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-520(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, %edx
	movb	$0, %al
	callq	printf
	movl	$0, -40(%rbp)
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_17
.LBB3_17:                               #   in Loop: Header=BB3_13 Depth=1
	movl	-456(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -456(%rbp)
	jmp	.LBB3_13
.LBB3_18:
	cmpl	$0, -40(%rbp)
	je	.LBB3_20
# %bb.19:
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
.LBB3_20:
	cmpl	$0, -40(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsp
	movl	-36(%rbp), %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed, %d != %d\n"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"passed\n"
	.size	.L.str.1, 8

	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bilinear_interpolate
	.addrsig_sym psroi_align_golden
	.addrsig_sym psroi_pooling_align_golden
	.addrsig_sym printf
