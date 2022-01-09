	.text
	.file	"stack-2d-ind.c"
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
	movl	$0, -12(%rbp)
	movl	$1, -8(%rbp)
	movl	$2, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	movslq	-8(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movl	-8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-4(%rbp), %eax
	movslq	-8(%rbp), %rcx
	movl	%eax, -40(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movslq	-4(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, 4(%rdx)
	movl	-52(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
