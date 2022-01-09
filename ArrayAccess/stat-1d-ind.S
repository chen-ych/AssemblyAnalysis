	.text
	.file	"stat-1d-ind.c"
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
	movl	$5, main.a+4
	movslq	main.i, %rax
	movl	$2, main.a(,%rax,4)
	movl	main.i, %ecx
	subl	$3, %ecx
	movslq	%ecx, %rax
	movl	$8, main.a(,%rax,4)
	movslq	main.j, %rax
	movl	$3, main.a(,%rax,4)
	movl	main.a+4, %ecx
	movslq	main.i, %rax
	addl	main.a(,%rax,4), %ecx
	movl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	main.a,@object          # @main.a
	.local	main.a
	.comm	main.a,24,16
	.type	main.i,@object          # @main.i
	.data
	.p2align	2
main.i:
	.long	4                       # 0x4
	.size	main.i, 4

	.type	main.j,@object          # @main.j
	.p2align	2
main.j:
	.long	5                       # 0x5
	.size	main.j, 4

	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym main.a
	.addrsig_sym main.i
	.addrsig_sym main.j
