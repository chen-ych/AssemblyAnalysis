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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $esi killed $esi def $rsi
	movl	%ecx, %ebx
	shrl	$4, %ebx
	xorl	%eax, %eax
	cmpw	%si, %bx
	jge	.LBB0_3
# %bb.1:
	movswl	%r8w, %ebx
	shrl	$4, %ebx
	cmpw	%dx, %bx
	jge	.LBB0_3
# %bb.2:
	movswl	%dx, %r9d
	xorl	%edx, %edx
	testw	%cx, %cx
	cmovsl	%edx, %ecx
	movzwl	%cx, %eax
	testw	%r8w, %r8w
	cmovsl	%edx, %r8d
	movzwl	%r8w, %ebx
	shrl	$4, %eax
	shrl	$4, %ebx
	addl	$-1, %esi
	movl	%esi, %edx
	shll	$4, %edx
	leal	1(%rax), %ebp
	cmpl	%eax, %esi
	cmovlel	%esi, %ebp
	cmovgl	%eax, %esi
	cmovgl	%ecx, %edx
	leal	-1(%r9), %eax
	movl	%eax, %ecx
	shll	$4, %ecx
	leal	1(%rbx), %r10d
	cmpl	%ebx, %eax
	cmovlel	%eax, %r10d
	cmovgl	%ebx, %eax
	cmovgl	%r8d, %ecx
	movl	%esi, %ebx
	shll	$4, %ebx
	subl	%ebx, %edx
	movl	%eax, %ebx
	shll	$4, %ebx
	subl	%ebx, %ecx
	movzwl	%dx, %r8d
	movl	$16, %r14d
	movl	$16, %r15d
	subl	%edx, %r15d
	movzwl	%cx, %ebx
	subl	%ecx, %r14d
	imull	%r9d, %esi
	leal	(%rsi,%rax), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rdi,%rcx), %r11d
	addl	%r10d, %esi
	movslq	%esi, %rcx
	movzbl	(%rdi,%rcx), %esi
	imull	%r9d, %ebp
	addl	%ebp, %eax
	cltq
	movzbl	(%rdi,%rax), %eax
	addl	%r10d, %ebp
	movslq	%ebp, %rcx
	movzbl	(%rdi,%rcx), %edx
	movzwl	%r15w, %ecx
	movzwl	%r14w, %ebp
	movl	%ebp, %edi
	imull	%ecx, %edi
	shrl	$4, %edi
	imull	%ebx, %ecx
	shrl	$4, %ecx
	imull	%r8d, %ebp
	shrl	$4, %ebp
	imull	%r8d, %ebx
	shrl	$4, %ebx
	movzwl	%di, %edi
	imull	%r11d, %edi
	movzwl	%cx, %ecx
	imull	%esi, %ecx
	addl	%edi, %ecx
	movzwl	%bp, %esi
	imull	%eax, %esi
	addl	%ecx, %esi
	movzwl	%bx, %eax
	imull	%edx, %eax
	addl	%esi, %eax
	shrl	$4, %eax
.LBB0_3:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	je	.LBB1_31
# %bb.1:
	movq	%rdx, %r10
	movl	256(%rsp), %esi
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%esi
	movl	280(%rsp), %edi
	movl	272(%rsp), %r8d
	movl	%esi, %ebp
	cvtsi2sd	%rbp, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ebp
	movl	%r9d, %ebx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rbx, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ebx
	movzwl	%bp, %ebp
	movl	%ebp, 32(%rsp)          # 4-byte Spill
	movzwl	%bx, %ebp
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movzwl	%ax, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	imull	%eax, %esi
	movzwl	%dx, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	addl	%eax, %esi
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movl	264(%rsp), %edx
	movl	%edx, %eax
	andl	$-16, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	addq	$-16, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	shrq	$4, %rax
	addq	$1, %rax
	movl	%eax, %esi
	andl	$3, %esi
	movq	%rsi, %rbp
	subq	%rax, %rbp
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movswl	%di, %ebp
	movl	%edi, %eax
	imull	%r8d, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	andl	$3, %eax
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	negq	%rsi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rax, 128(%rsp)         # 8-byte Spill
	negq	%rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movswl	%r8w, %esi
	movl	296(%rsp), %r11d
	movzbl	304(%rsp), %r15d
	leal	(%r15,%r15), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	leaq	-1(%rdx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	movq	%r10, 168(%rsp)         # 8-byte Spill
	movq	%r15, 184(%rsp)         # 8-byte Spill
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_2 Depth=1
	movq	64(%rsp), %rdi          # 8-byte Reload
	addq	$1, %rdi
	cmpq	144(%rsp), %rdi         # 8-byte Folded Reload
	je	.LBB1_31
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_6 Depth 3
                                        #         Child Loop BB1_7 Depth 4
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_18 Depth 2
	leal	(,%rdi,4), %eax
	movq	152(%rsp), %rdx         # 8-byte Reload
	movzwl	(%rdx,%rax,2), %r8d
	leal	1(,%rdi,4), %eax
	movzwl	(%rdx,%rax,2), %r9d
	leal	2(,%rdi,4), %eax
	movzwl	(%rdx,%rax,2), %ecx
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	leal	3(,%rdi,4), %eax
	movzwl	(%rdx,%rax,2), %edi
	subl	%r8d, %ecx
	cmpl	$15, %ecx
	movl	$16, %eax
	cmovlel	%eax, %ecx
	subl	%r9d, %edi
	cmpl	$15, %edi
	cmovlel	%eax, %edi
	imull	32(%rsp), %ecx          # 4-byte Folded Reload
	shrl	$8, %ecx
	imull	28(%rsp), %edi          # 4-byte Folded Reload
	shrl	$8, %edi
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	24(%rsp), %ebx          # 4-byte Reload
	divw	%bx
	movl	%eax, %r14d
	movl	%edi, %eax
	xorl	%edx, %edx
	divw	%bx
	cmpl	$0, 264(%rsp)
	je	.LBB1_30
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %r12d
	imull	288(%rsp), %r12d
	addl	12(%rsp), %r12d         # 4-byte Folded Reload
	cmpb	$0, 304(%rsp)
	je	.LBB1_10
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movzwl	%r14w, %ebx
	movzwl	%ax, %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movzwl	%di, %eax
	movzwl	%cx, %ecx
	imull	20(%rsp), %eax          # 4-byte Folded Reload
	addl	%r9d, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	imull	16(%rsp), %ecx          # 4-byte Folded Reload
	addl	%r8d, %ecx
	xorl	%edx, %edx
	movq	136(%rsp), %r14         # 8-byte Reload
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	.p2align	4, 0x90
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_6 Depth 3
                                        #         Child Loop BB1_7 Depth 4
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	imull	%r11d, %eax
	addl	%r12d, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_6:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_7 Depth 4
	movq	%rax, 192(%rsp)         # 8-byte Spill
	addl	%eax, %eax
	addl	$1, %eax
	imull	48(%rsp), %eax          # 4-byte Folded Reload
	addl	44(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	%r15d, %r13d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB1_7:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edx, 60(%rsp)          # 4-byte Spill
	leal	(%r12,%r12), %eax
	addl	$1, %eax
	imull	%ebx, %eax
	addl	%ecx, %eax
	movswl	%ax, %r8d
	movswl	56(%rsp), %ecx          # 2-byte Folded Reload
	movq	%r14, %rdi
	movl	%ebp, %edx
	movl	%esi, %r15d
	callq	bilinear_interpolate
	movl	60(%rsp), %edx          # 4-byte Reload
	movl	52(%rsp), %ecx          # 4-byte Reload
	movl	%r15d, %esi
	addl	%eax, %edx
	addl	$1, %r12d
	addl	$-1, %r13d
	jne	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=3
	movq	192(%rsp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	184(%rsp), %r15         # 8-byte Reload
	cmpl	%r15d, %eax
	jne	.LBB1_6
# %bb.9:                                #   in Loop: Header=BB1_5 Depth=2
	shrl	$2, %edx
	movl	40(%rsp), %eax          # 4-byte Reload
	movq	168(%rsp), %r10         # 8-byte Reload
	movw	%dx, (%r10,%rax,2)
	addq	160(%rsp), %r14         # 8-byte Folded Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movl	264(%rsp), %eax
	cmpq	%rax, %rdx
	movl	296(%rsp), %r11d
	movl	36(%rsp), %r12d         # 4-byte Reload
	jne	.LBB1_5
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	cmpl	$15, 264(%rsp)
	ja	.LBB1_19
.LBB1_11:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%r9d, %r9d
.LBB1_12:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r9, %r8
	notq	%r8
	movl	264(%rsp), %edx
	addq	%rdx, %r8
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	je	.LBB1_16
# %bb.13:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	movq	%r9, %rax
	movq	120(%rsp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_14:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edi
	imull	%r11d, %edi
	addl	%r12d, %edi
	movw	$0, (%r10,%rdi,2)
	addq	$1, %rax
	addq	$-1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB1_14
# %bb.15:                               #   in Loop: Header=BB1_2 Depth=1
	subq	%rdx, %r9
.LBB1_16:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_30
# %bb.17:                               #   in Loop: Header=BB1_2 Depth=1
	movl	264(%rsp), %ecx
	subq	%r9, %rcx
	.p2align	4, 0x90
.LBB1_18:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movw	$0, (%r10,%rdx,2)
	leal	1(%r9), %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movw	$0, (%r10,%rdx,2)
	leal	2(%r9), %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movw	$0, (%r10,%rdx,2)
	leal	3(%r9), %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movw	$0, (%r10,%rdx,2)
	addq	$4, %r9
	addq	$-4, %rcx
	jne	.LBB1_18
	jmp	.LBB1_30
.LBB1_19:                               #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1, %r11d
	jne	.LBB1_11
# %bb.20:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %eax
	imull	288(%rsp), %eax
	addl	12(%rsp), %eax          # 4-byte Folded Reload
	notl	%eax
	movq	112(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jb	.LBB1_11
# %bb.21:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	$0, %r9d
	jne	.LBB1_12
# %bb.22:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	$48, 96(%rsp)           # 8-byte Folded Reload
	jae	.LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	xorpd	%xmm0, %xmm0
	jmp	.LBB1_26
.LBB1_24:                               #   in Loop: Header=BB1_2 Depth=1
	movq	72(%rsp), %rcx          # 8-byte Reload
	xorl	%eax, %eax
	xorpd	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_25:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movupd	%xmm0, (%r10,%rdx,2)
	movupd	%xmm0, 16(%r10,%rdx,2)
	movl	%eax, %edx
	orl	$16, %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movupd	%xmm0, (%r10,%rdx,2)
	movupd	%xmm0, 16(%r10,%rdx,2)
	movl	%eax, %edx
	orl	$32, %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movupd	%xmm0, (%r10,%rdx,2)
	movupd	%xmm0, 16(%r10,%rdx,2)
	movl	%eax, %edx
	orl	$48, %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movupd	%xmm0, (%r10,%rdx,2)
	movupd	%xmm0, 16(%r10,%rdx,2)
	addq	$64, %rax
	addq	$4, %rcx
	jne	.LBB1_25
.LBB1_26:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	$0, 88(%rsp)            # 8-byte Folded Reload
	je	.LBB1_29
# %bb.27:                               #   in Loop: Header=BB1_2 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_28:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edx
	imull	%r11d, %edx
	addl	%r12d, %edx
	movupd	%xmm0, (%r10,%rdx,2)
	movupd	%xmm0, 16(%r10,%rdx,2)
	addq	$16, %rax
	incq	%rcx
	jne	.LBB1_28
.LBB1_29:                               #   in Loop: Header=BB1_2 Depth=1
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %r9
	movl	264(%rsp), %ecx
	cmpq	%rcx, %rdx
	je	.LBB1_30
	jmp	.LBB1_12
.LBB1_31:
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testl	%r8d, %r8d
	je	.LBB2_3
# %bb.1:
	movl	%r9d, %r13d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	104(%rsp), %eax
	movl	96(%rsp), %edi
	movl	88(%rsp), %ebp
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	imull	%ebp, %edi
	imull	%eax, %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	movzbl	128(%rsp), %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%ecx, %ebp
	movl	%r14d, %r8d
	movl	%r13d, %r9d
	pushq	16(%rsp)                # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movl	136(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	136(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	136(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	136(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	136(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	136(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	psroi_align_golden
	movl	68(%rsp), %r8d          # 4-byte Reload
	movl	%ebp, %ecx
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	addq	16(%rsp), %rbx          # 8-byte Folded Reload
	addl	$1, %r14d
	cmpl	%r14d, %r8d
	jne	.LBB2_2
.LBB2_3:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
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
.Lfunc_end2:
	.size	psroi_pooling_align_golden, .Lfunc_end2-psroi_pooling_align_golden
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function main
.LCPI3_0:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	10                      # 0xa
	.byte	11                      # 0xb
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	14                      # 0xe
	.byte	15                      # 0xf
.LCPI3_1:
	.zero	16,252
.LCPI3_2:
	.zero	16,64
.LCPI3_3:
	.zero	16,128
.LCPI3_4:
	.zero	16,192
.LCPI3_5:
	.zero	16,80
.LCPI3_6:
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	176                     # 0xb0
	.short	176                     # 0xb0
	.short	240                     # 0xf0
	.short	240                     # 0xf0
	.text
	.globl	main
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$833440, %rsp           # imm = 0xCB7A0
	.cfi_def_cfa_offset 833488
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movdqa	.LCPI3_0(%rip), %xmm0   # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	movl	$64, %eax
	movdqa	.LCPI3_1(%rip), %xmm1   # xmm1 = [252,252,252,252,252,252,252,252,252,252,252,252,252,252,252,252]
	movdqa	.LCPI3_2(%rip), %xmm2   # xmm2 = [64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64]
	movdqa	.LCPI3_3(%rip), %xmm3   # xmm3 = [128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128]
	movdqa	.LCPI3_4(%rip), %xmm4   # xmm4 = [192,192,192,192,192,192,192,192,192,192,192,192,192,192,192,192]
	movdqa	.LCPI3_5(%rip), %xmm5   # xmm5 = [80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80]
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm6
	psllw	$2, %xmm6
	pand	%xmm1, %xmm6
	movdqa	%xmm6, 2336(%rsp,%rax)
	movdqa	%xmm6, %xmm7
	paddb	%xmm2, %xmm7
	movdqa	%xmm7, 2352(%rsp,%rax)
	movdqa	%xmm6, %xmm7
	pxor	%xmm3, %xmm7
	movdqa	%xmm7, 2368(%rsp,%rax)
	movdqa	%xmm6, %xmm7
	paddb	%xmm4, %xmm7
	movdqa	%xmm7, 2384(%rsp,%rax)
	movdqa	%xmm6, 2400(%rsp,%rax)
	paddb	%xmm5, %xmm0
	addq	$80, %rax
	cmpq	$360704, %rax           # imm = 0x58100
	jne	.LBB3_1
# %bb.2:
	movl	$80, %eax
	movaps	.LCPI3_6(%rip), %xmm0   # xmm0 = [16,16,80,80,176,176,240,240]
	.p2align	4, 0x90
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -80(%rsp,%rax)
	movaps	%xmm0, -64(%rsp,%rax)
	movaps	%xmm0, -48(%rsp,%rax)
	movaps	%xmm0, -32(%rsp,%rax)
	movaps	%xmm0, -16(%rsp,%rax)
	movaps	%xmm0, (%rsp,%rax)
	addq	$96, %rax
	cmpq	$2480, %rax             # imm = 0x9B0
	jne	.LBB3_3
# %bb.4:
	xorl	%ebx, %ebx
	leaq	2400(%rsp), %r14
	movq	%rsp, %r15
	leaq	363040(%rsp), %r12
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	$300, %ecx              # imm = 0x12C
	movl	%ebx, %r8d
	movl	$7, %r9d
	pushq	$2
	.cfi_adjust_cfa_offset 8
	pushq	$49
	.cfi_adjust_cfa_offset 8
	pushq	$392                    # imm = 0x188
	.cfi_adjust_cfa_offset 8
	pushq	$40
	.cfi_adjust_cfa_offset 8
	pushq	$23
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$7
	.cfi_adjust_cfa_offset 8
	callq	psroi_align_golden
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	addq	$7360, %r14             # imm = 0x1CC0
	addl	$1, %ebx
	cmpl	$49, %ebx
	jne	.LBB3_5
# %bb.6:
	movl	$1, %ebp
	xorl	%ebx, %ebx
	jmp	.LBB3_7
	.p2align	4, 0x90
.LBB3_9:                                #   in Loop: Header=BB3_7 Depth=1
	addq	$1, %rbx
	cmpq	$117600, %rbx           # imm = 0x1CB60
	je	.LBB3_10
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	movzwl	598240(%rsp,%rbx,2), %esi
	movzwl	363040(%rsp,%rbx,2), %edx
	cmpw	%dx, %si
	je	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	xorl	%ebp, %ebp
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB3_9
.LBB3_10:
	testl	%ebp, %ebp
	je	.LBB3_12
# %bb.11:
	movl	$.Lstr, %edi
	callq	puts
.LBB3_12:
	xorl	%eax, %eax
	testl	%ebp, %ebp
	sete	%al
	addq	$833440, %rsp           # imm = 0xCB7A0
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
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

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"passed"
	.size	.Lstr, 7

	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
