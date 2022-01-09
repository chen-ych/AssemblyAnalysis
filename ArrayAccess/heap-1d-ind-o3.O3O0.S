	.text
	.file	"heap-1d-ind-o3.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$2400, %edi                     # imm = 0x960
	callq	malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	malloc
	movabsq	$4294967297, %rcx               # imm = 0x100000001
	movq	%rcx, (%rbx)
	movl	$2, (%rax)
	addq	$4, %rax
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	movl	-8(%rbx,%rcx,4), %edx
	addl	-4(%rbx,%rcx,4), %edx
	movl	%edx, (%rbx,%rcx,4)
	movl	(%rax), %ecx
	addq	$4, %rax
	cmpl	$600, %ecx                      # imm = 0x258
	jl	.LBB0_1
# %bb.2:
	movl	20(%rbx), %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
