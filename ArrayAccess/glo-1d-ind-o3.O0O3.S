	.text
	.file	"glo-1d-ind-o3.c"
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
	movl	$0, -4(%rbp)
	movl	$1, a
	movl	$1, a+4
	movl	$2, i
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$600, i                         # imm = 0x258
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	i, %eax
	subl	$1, %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	i, %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	addl	a(,%rcx,4), %eax
	movslq	i, %rcx
	movl	%eax, a(,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	i, %eax
	addl	$1, %eax
	movl	%eax, i
	jmp	.LBB0_1
.LBB0_4:
	movl	a+20, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	a,@object                       # @a
	.comm	a,2400,16
	.type	i,@object                       # @i
	.comm	i,4,4
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
