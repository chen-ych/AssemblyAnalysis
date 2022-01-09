	.text
	.file	"stat-1d-ind-o3.c"
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
	movl	$1, main.a
	movl	$1, main.a+4
	movl	$2, main.i
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$600, main.i                    # imm = 0x258
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	main.i, %eax
	subl	$1, %eax
	cltq
	movl	main.a(,%rax,4), %eax
	movl	main.i, %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	addl	main.a(,%rcx,4), %eax
	movslq	main.i, %rcx
	movl	%eax, main.a(,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	main.i, %eax
	addl	$1, %eax
	movl	%eax, main.i
	jmp	.LBB0_1
.LBB0_4:
	movl	main.a+20, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	main.a,@object                  # @main.a
	.local	main.a
	.comm	main.a,2400,16
	.type	main.i,@object                  # @main.i
	.local	main.i
	.comm	main.i,4,4
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
