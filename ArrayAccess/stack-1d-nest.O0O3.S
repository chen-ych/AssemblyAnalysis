	.text
	.file	"stack-1d-nest.c"
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
	movl	$4, -8(%rbp)
	movl	$2, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	movslq	-48(%rbp,%rax,4), %rax
	movl	-48(%rbp,%rax,4), %eax
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	-48(%rbp,%rcx,4), %ecx
	addl	$2, %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, -48(%rbp,%rcx,4)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
