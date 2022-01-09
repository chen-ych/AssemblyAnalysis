	.text
	.file	"stat-1d-ind-o3.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, main.a(%rip)
	movl	$2, main.a+8(%rip)
	movl	$2, %eax
	movq	$-2388, %rcx            # imm = 0xF6AC
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addl	main.a+2392(%rcx), %eax
	movl	%eax, main.a+2400(%rcx)
	movl	main.a+2396(%rcx), %edx
	addl	%eax, %edx
	movl	%edx, main.a+2404(%rcx)
	addl	%edx, %eax
	movl	%eax, main.a+2408(%rcx)
	addq	$12, %rcx
	jne	.LBB0_1
# %bb.2:
	movl	main.a+20(%rip), %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	main.a,@object          # @main.a
	.local	main.a
	.comm	main.a,2400,16
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
