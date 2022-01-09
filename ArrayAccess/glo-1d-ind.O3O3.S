	.text
	.file	"glo-1d-ind.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movl	$5, a+4(%rip)
	movslq	i(%rip), %rax
	movl	$2, a(,%rax,4)
	movl	$8, a-12(,%rax,4)
	movslq	j(%rip), %rcx
	movl	$3, a(,%rcx,4)
	movl	a(,%rax,4), %eax
	addl	a+4(%rip), %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	i,@object               # @i
	.data
	.globl	i
	.p2align	2
i:
	.long	4                       # 0x4
	.size	i, 4

	.type	j,@object               # @j
	.globl	j
	.p2align	2
j:
	.long	5                       # 0x5
	.size	j, 4

	.type	a,@object               # @a
	.comm	a,24,16
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
