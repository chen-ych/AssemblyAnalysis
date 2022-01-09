	.text
	.file	"heap-1d-ind-o3.c"
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$2400, %edi             # imm = 0x960
	callq	malloc
	movq	%rax, -16(%rbp)
	movl	$4, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpl	$600, (%rax)            # imm = 0x258
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %esi
	subl	$2, %esi
	movslq	%esi, %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
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
	.addrsig
	.addrsig_sym malloc
