	.text
	.file	"stack-1d-ind.c"
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
	movl	$0, -36(%rbp)
	movl	$4, -4(%rbp)
	movl	$5, -8(%rbp)
	movl	$5, -28(%rbp)
	movslq	-4(%rbp), %rax
	movl	$2, -32(%rbp,%rax,4)
	movl	-4(%rbp), %eax
	subl	$3, %eax
	cltq
	movl	$8, -32(%rbp,%rax,4)
	movslq	-8(%rbp), %rax
	movl	$3, -32(%rbp,%rax,4)
	movl	-28(%rbp), %eax
	movslq	-4(%rbp), %rcx
	addl	-32(%rbp,%rcx,4), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
