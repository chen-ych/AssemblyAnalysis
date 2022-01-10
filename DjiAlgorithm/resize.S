	.text
	.file	"resize.c"
	.globl	resize_golden           # -- Begin function resize_golden
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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
                                        # kill: def $r9w killed $r9w killed $r9d
                                        # kill: def $r8w killed $r8w killed $r8d
                                        # kill: def $cx killed $cx killed $ecx
                                        # kill: def $dx killed $dx killed $edx
	movw	32(%rbp), %ax
	movw	24(%rbp), %r10w
	movw	16(%rbp), %r11w
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movw	%dx, -34(%rbp)
	movw	%cx, -36(%rbp)
	movw	%r8w, -38(%rbp)
	movw	%r9w, -40(%rbp)
	movw	$0, -42(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movzwl	-42(%rbp), %eax
	movzwl	-38(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_18
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movzwl	-42(%rbp), %eax
	shll	$7, %eax
	sarl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -44(%rbp)
	movzwl	-44(%rbp), %ecx
	sarl	$7, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, -46(%rbp)
	movzwl	-46(%rbp), %edx
	addl	$1, %edx
	movzwl	-34(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	jge	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movzwl	-46(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movzwl	-34(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -48(%rbp)
	movw	$0, -50(%rbp)
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movzwl	-50(%rbp), %eax
	movzwl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_16
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movzwl	-50(%rbp), %eax
	shll	$7, %eax
	sarl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -52(%rbp)
	movzwl	-52(%rbp), %ecx
	sarl	$7, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, -54(%rbp)
	movzwl	-54(%rbp), %edx
	addl	$1, %edx
	movzwl	-36(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	jge	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	movzwl	-54(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=2
	movzwl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=2
	movl	-100(%rbp), %eax        # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -56(%rbp)
	movw	$0, -58(%rbp)
.LBB0_11:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	-58(%rbp), %eax
	movzwl	16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movw	$128, -60(%rbp)
	movzwl	-44(%rbp), %eax
	movzwl	-46(%rbp), %ecx
	shll	$7, %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -62(%rbp)
	movzwl	-60(%rbp), %ecx
	movzwl	-62(%rbp), %edx
	subl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, -64(%rbp)
	movzwl	-52(%rbp), %edx
	movzwl	-54(%rbp), %esi
	shll	$7, %esi
	subl	%esi, %edx
                                        # kill: def $dx killed $dx killed $edx
	movw	%dx, -66(%rbp)
	movzwl	-60(%rbp), %esi
	movzwl	-66(%rbp), %edi
	subl	%edi, %esi
                                        # kill: def $si killed $si killed $esi
	movw	%si, -68(%rbp)
	movzwl	-58(%rbp), %edi
	movzwl	-36(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-34(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-46(%rbp), %r8d
	movzwl	-36(%rbp), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edi
	movzwl	-54(%rbp), %r8d
	addl	%r8d, %edi
	movl	%edi, -72(%rbp)
	movzwl	-58(%rbp), %edi
	movzwl	-36(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-34(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-46(%rbp), %r8d
	movzwl	-36(%rbp), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edi
	movzwl	-56(%rbp), %r8d
	addl	%r8d, %edi
	movl	%edi, -76(%rbp)
	movzwl	-58(%rbp), %edi
	movzwl	-36(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-34(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-48(%rbp), %r8d
	movzwl	-36(%rbp), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edi
	movzwl	-54(%rbp), %r8d
	addl	%r8d, %edi
	movl	%edi, -80(%rbp)
	movzwl	-58(%rbp), %edi
	movzwl	-36(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-34(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-48(%rbp), %r8d
	movzwl	-36(%rbp), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edi
	movzwl	-56(%rbp), %r8d
	addl	%r8d, %edi
	movl	%edi, -84(%rbp)
	movzwl	-58(%rbp), %edi
	movzwl	-40(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-38(%rbp), %r8d
	imull	%r8d, %edi
	movzwl	-42(%rbp), %r8d
	movzwl	-40(%rbp), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edi
	movzwl	-50(%rbp), %r8d
	addl	%r8d, %edi
	movl	%edi, -88(%rbp)
	movzwl	-68(%rbp), %edi
	movq	-24(%rbp), %r10
	movl	-72(%rbp), %r8d
	movl	%r8d, %r11d
	movswl	(%r10,%r11,2), %r8d
	imull	%r8d, %edi
	movzwl	-66(%rbp), %r8d
	movq	-24(%rbp), %r10
	movl	-76(%rbp), %r9d
	movl	%r9d, %r11d
	movswl	(%r10,%r11,2), %r9d
	imull	%r9d, %r8d
	addl	%r8d, %edi
	sarl	$7, %edi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -90(%rbp)
	movzwl	-68(%rbp), %r8d
	movq	-24(%rbp), %r10
	movl	-80(%rbp), %r9d
	movl	%r9d, %r11d
	movswl	(%r10,%r11,2), %r9d
	imull	%r9d, %r8d
	movzwl	-66(%rbp), %r9d
	movq	-24(%rbp), %r10
	movl	-84(%rbp), %ebx
	movl	%ebx, %r11d
	movswl	(%r10,%r11,2), %ebx
	imull	%ebx, %r9d
	addl	%r9d, %r8d
	sarl	$7, %r8d
                                        # kill: def $r8w killed $r8w killed $r8d
	movw	%r8w, -92(%rbp)
	movzwl	-64(%rbp), %r9d
	movswl	-90(%rbp), %ebx
	imull	%ebx, %r9d
	movzwl	-62(%rbp), %ebx
	movswl	-92(%rbp), %r14d
	imull	%r14d, %ebx
	addl	%ebx, %r9d
	sarl	$7, %r9d
                                        # kill: def $r9w killed $r9w killed $r9d
	movq	-32(%rbp), %r10
	movl	-88(%rbp), %ebx
	movl	%ebx, %r11d
	movw	%r9w, (%r10,%r11,2)
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=3
	movw	-58(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -58(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=2
	movw	-50(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -50(%rbp)
	jmp	.LBB0_6
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movw	-42(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -42(%rbp)
	jmp	.LBB0_1
.LBB0_18:
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	resize_golden, .Lfunc_end0-resize_golden
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
	subq	$112, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$0, -36(%rbp)
	movw	$112, -38(%rbp)
	movw	$88, -40(%rbp)
	movw	$1, -42(%rbp)
	movw	$2, -44(%rbp)
	movw	$2, -46(%rbp)
	movzwl	-38(%rbp), %eax
	movzwl	-40(%rbp), %ecx
	imull	%ecx, %eax
	movzwl	-42(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -52(%rbp)
	movzwl	-38(%rbp), %eax
	movzwl	-44(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -54(%rbp)
	movzwl	-40(%rbp), %ecx
	movzwl	-46(%rbp), %edx
	imull	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, -56(%rbp)
	movzwl	-54(%rbp), %edx
	movzwl	-56(%rbp), %esi
	imull	%esi, %edx
	movzwl	-42(%rbp), %esi
	imull	%esi, %edx
	movl	%edx, -60(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, %edi
	movq	%rsp, %r8
	movq	%r8, -72(%rbp)
	leaq	15(%rdi,%rdi), %r8
	andq	$-16, %r8
	movq	%rsp, %r9
	subq	%r8, %r9
	movq	%r9, %rsp
	movq	%rdi, -80(%rbp)
	movl	-60(%rbp), %edx
	movl	%edx, %edi
	leaq	15(%rdi,%rdi), %r8
	andq	$-16, %r8
	movq	%rsp, %r10
	subq	%r8, %r10
	movq	%r10, %rsp
	movq	%rdi, -88(%rbp)
	movl	$0, -92(%rbp)
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, -128(%rbp)        # 8-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	callq	rand
	cltd
	movl	$64, %ecx
	idivl	%ecx
                                        # kill: def $dx killed $dx killed $edx
	movl	-92(%rbp), %ecx
	movl	%ecx, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movw	%dx, (%rdi,%rsi,2)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movb	$0, %al
	callq	rdcycle
	movslq	%eax, %rcx
	movq	%rcx, -104(%rbp)
	movw	-38(%rbp), %dx
	movw	-40(%rbp), %si
	movw	-54(%rbp), %di
	movw	-56(%rbp), %r8w
	movw	-42(%rbp), %r9w
	movw	-44(%rbp), %r10w
	subq	$32, %rsp
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movw	%di, -130(%rbp)         # 2-byte Spill
	movq	%rcx, %rdi
	movq	-128(%rbp), %r11        # 8-byte Reload
	movw	%si, -132(%rbp)         # 2-byte Spill
	movq	%r11, %rsi
	movzwl	%dx, %edx
	movw	-132(%rbp), %bx         # 2-byte Reload
	movzwl	%bx, %eax
	movl	%eax, %ecx
	movw	-130(%rbp), %r14w       # 2-byte Reload
	movzwl	%r14w, %eax
	movw	%r8w, -134(%rbp)        # 2-byte Spill
	movl	%eax, %r8d
	movw	-134(%rbp), %r15w       # 2-byte Reload
	movzwl	%r15w, %eax
	movw	%r9w, -136(%rbp)        # 2-byte Spill
	movl	%eax, %r9d
	movw	-136(%rbp), %r12w       # 2-byte Reload
	movzwl	%r12w, %eax
	movl	%eax, (%rsp)
	movzwl	%r10w, %eax
	movl	%eax, 8(%rsp)
	movzwl	-46(%rbp), %eax
	movl	%eax, 16(%rsp)
	callq	resize_golden
	addq	$32, %rsp
	movb	$0, %al
	callq	rdcycle
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	movq	-112(%rbp), %rsi
	subq	-104(%rbp), %rsi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movq	-72(%rbp), %rsi
	movq	%rsi, %rsp
	movl	-36(%rbp), %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"resize process cycles: %lu\n"
	.size	.L.str, 28

	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_golden
	.addrsig_sym rand
	.addrsig_sym rdcycle
	.addrsig_sym printf
