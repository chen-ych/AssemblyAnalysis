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
	movl	%r9d, -92(%rsp)                 # 4-byte Spill
	testw	%r8w, %r8w
	je	.LBB0_9
# %bb.1:
	movzwl	%dx, %eax
	movq	%rdi, -104(%rsp)                # 8-byte Spill
	movzwl	-92(%rsp), %r9d                 # 2-byte Folded Reload
	movzwl	%cx, %ecx
	leal	-1(%rcx), %ebp
	movl	%ebp, -60(%rsp)                 # 4-byte Spill
	movzwl	%r8w, %ebp
	movzwl	56(%rsp), %ebx
	movq	%rbx, -16(%rsp)                 # 8-byte Spill
	movq	%rbp, -32(%rsp)                 # 8-byte Spill
	movl	%ebp, %edx
	movl	%r9d, -84(%rsp)                 # 4-byte Spill
	imull	%r9d, %edx
	movq	-104(%rsp), %rdi                # 8-byte Reload
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movl	%ecx, %r8d
	imull	%eax, %r8d
	addl	$-1, %eax
	movl	%eax, -64(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-88(%rsp), %ecx                 # 4-byte Reload
	addl	$1, %ecx
	movq	-24(%rsp), %rbp                 # 8-byte Reload
	addq	$1, %rbp
	movq	-80(%rsp), %rax                 # 8-byte Reload
	addl	-84(%rsp), %eax                 # 4-byte Folded Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	cmpq	-32(%rsp), %rbp                 # 8-byte Folded Reload
	je	.LBB0_9
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	movq	%rbp, -24(%rsp)                 # 8-byte Spill
	movl	%ecx, -88(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	shrl	%eax
	movl	%eax, %ecx
	andl	$511, %ecx                      # imm = 0x1FF
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	addl	$1, %ecx
	movl	-64(%rsp), %ebp                 # 4-byte Reload
	cmpl	%ecx, %ebp
	cmovll	%ebp, %ecx
	cmpw	$0, -92(%rsp)                   # 2-byte Folded Reload
	je	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpw	$0, 56(%rsp)
	je	.LBB0_8
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	andl	$32767, %eax                    # imm = 0x7FFF
	movzwl	%cx, %ebp
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	imull	%ecx, %ebp
	movq	%rbp, -8(%rsp)                  # 8-byte Spill
	movq	-72(%rsp), %rbp                 # 8-byte Reload
	imull	%ecx, %ebp
	movq	%rbp, -72(%rsp)                 # 8-byte Spill
	movl	-88(%rsp), %ecx                 # 4-byte Reload
	shll	$6, %ecx
	movzwl	%ax, %eax
	shll	$7, %eax
	subl	%eax, %ecx
	movl	$128, %eax
	subl	%ecx, %eax
	movzwl	%cx, %r9d
	movzwl	%ax, %eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%r14d, %r14d
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r15d
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	movl	%r14d, %r13d
	shrl	%r13d
	andl	$511, %r13d                     # imm = 0x1FF
	leal	1(%r13), %eax
	movl	-60(%rsp), %ecx                 # 4-byte Reload
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movzwl	%ax, %r12d
	movq	-8(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%r12), %r11d
	addl	%r13d, %eax
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %r12d
	addl	%ecx, %r13d
	movl	%r14d, -52(%rsp)                # 4-byte Spill
	shll	$6, %r14d
	movl	%r14d, %r10d
	andl	$-4194240, %r10d                # imm = 0xFFC00040
	andl	$64, %r14d
	movl	$128, %ecx
	subl	%r10d, %ecx
	movzwl	%cx, %ecx
	movl	%ecx, -44(%rsp)                 # 4-byte Spill
	movl	%r15d, -56(%rsp)                # 4-byte Spill
	movq	-16(%rsp), %r10                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r13d, %ecx
	movswl	(%rdi,%rcx,2), %ecx
	movl	-44(%rsp), %ebx                 # 4-byte Reload
	imull	%ebx, %ecx
	movl	%r12d, %ebp
	movq	-104(%rsp), %rdi                # 8-byte Reload
	movswl	(%rdi,%rbp,2), %ebp
	imull	%r14d, %ebp
	addl	%ecx, %ebp
	movl	%eax, %ecx
	movq	-104(%rsp), %rdi                # 8-byte Reload
	movswl	(%rdi,%rcx,2), %ecx
	imull	%ebx, %ecx
	movl	%r8d, %ebx
	movq	%rsi, %r8
	movl	%r11d, %esi
	movq	-104(%rsp), %rdi                # 8-byte Reload
	movswl	(%rdi,%rsi,2), %esi
	imull	%r14d, %esi
	addl	%ecx, %esi
	shrl	$7, %ebp
	movswl	%bp, %ecx
	movq	-104(%rsp), %rdi                # 8-byte Reload
	imull	-48(%rsp), %ecx                 # 4-byte Folded Reload
	shrl	$7, %esi
	movswl	%si, %esi
	imull	%r9d, %esi
	addl	%ecx, %esi
	shrl	$7, %esi
	movl	%r15d, %ecx
	movw	%si, (%r8,%rcx,2)
	movq	%r8, %rsi
	movl	%ebx, %r8d
	addl	%edx, %r15d
	addl	%ebx, %r11d
	addl	%ebx, %eax
	addl	%ebx, %r12d
	addl	%ebx, %r13d
	addq	$-1, %r10
	jne	.LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	movl	-52(%rsp), %r14d                # 4-byte Reload
	addl	$1, %r14d
	movl	-56(%rsp), %r15d                # 4-byte Reload
	addl	$1, %r15d
	cmpl	-84(%rsp), %r14d                # 4-byte Folded Reload
	jne	.LBB0_5
	jmp	.LBB0_8
.LBB0_9:
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
	.size	resize_golden, .Lfunc_end0-resize_golden
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$98560, %rsp                    # imm = 0x18100
	.cfi_def_cfa_offset 98576
	.cfi_offset %rbx, -16
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	leal	63(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$65472, %ecx                    # imm = 0xFFC0
	subl	%ecx, %eax
	movw	%ax, (%rsp,%rbx,2)
	addq	$1, %rbx
	cmpq	$9856, %rbx                     # imm = 0x2680
	jne	.LBB1_1
# %bb.2:
	xorl	%eax, %eax
	callq	rdcycle
	movslq	%eax, %rbx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	8(%rsp), %rdi
	leaq	19720(%rsp), %rsi
	movl	$112, %edx
	movl	$88, %ecx
	movl	$224, %r8d
	movl	$176, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	resize_golden
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	xorl	%eax, %eax
	callq	rdcycle
	movslq	%eax, %rsi
	subq	%rbx, %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$98560, %rsp                    # imm = 0x18100
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
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
