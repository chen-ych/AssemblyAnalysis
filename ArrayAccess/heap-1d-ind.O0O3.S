	.text
	.file	"heap-1d-ind.c"
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
	subq	$32, %rsp
	movl	$0, -28(%rbp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, -8(%rbp)
	movl	$4, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	movl	$4, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$4, (%rax)
	movq	-24(%rbp), %rax
	movl	$5, (%rax)
	movq	-8(%rbp), %rax
	movl	$5, 4(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	movl	$2, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$3, %ecx
	movslq	%ecx, %rcx
	movl	$8, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movl	$3, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	(%rdx), %rdx
	addl	(%rcx,%rdx,4), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
