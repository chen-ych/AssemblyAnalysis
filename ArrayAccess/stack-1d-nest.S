	.text
	.file	"stack-1d-nest.c"
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
	movl	$0, -4(%rbp)
	movl	$4, -36(%rbp)
	movl	$2, -40(%rbp)
	movl	-36(%rbp), %eax
	subl	-40(%rbp), %eax
	movslq	%eax, %rcx
	movslq	-32(%rbp,%rcx,4), %rcx
	movl	-32(%rbp,%rcx,4), %eax
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movl	-32(%rbp,%rcx,4), %edx
	addl	$2, %edx
	addl	-40(%rbp), %edx
	movslq	%edx, %rcx
	movl	%eax, -32(%rbp,%rcx,4)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
