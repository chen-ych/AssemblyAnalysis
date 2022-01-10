	.text
	.file	"correlation.c"
	.globl	randTensor              # -- Begin function randTensor
	.p2align	4, 0x90
	.type	randTensor,@function
randTensor:                             # @randTensor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	$0, -32(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	$0, -40(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jae	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	callq	rand
	cltd
	movl	$256, %ecx              # imm = 0x100
	idivl	%ecx
                                        # kill: def $dl killed $dl killed $edx
	movq	-8(%rbp), %rsi
	movb	%dl, (%rsi)
	movq	-8(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	randTensor, .Lfunc_end0-randTensor
	.cfi_endproc
                                        # -- End function
	.globl	scorrelation_golden     # -- Begin function scorrelation_golden
	.p2align	4, 0x90
	.type	scorrelation_golden,@function
scorrelation_golden:                    # @scorrelation_golden
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	$49280, %edx            # imm = 0xC080
	callq	memset
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
                                        #         Child Loop BB1_7 Depth 4
	cmpq	$5, -56(%rbp)
	jae	.LBB1_23
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	$0, -64(%rbp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
                                        #         Child Loop BB1_7 Depth 4
	cmpq	$112, -64(%rbp)
	jae	.LBB1_21
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movq	$0, -72(%rbp)
.LBB1_5:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_7 Depth 4
	cmpq	$88, -72(%rbp)
	jae	.LBB1_19
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=3
	imulq	$88, -56(%rbp), %rax
	imulq	$112, %rax, %rax
	imulq	$88, -64(%rbp), %rcx
	addq	%rcx, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -88(%rbp)
.LBB1_7:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	$58, -88(%rbp)
	jae	.LBB1_17
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=4
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB1_15
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=4
	imulq	$88, -88(%rbp), %rax
	imulq	$112, %rax, %rax
	imulq	$88, -64(%rbp), %rcx
	addq	%rcx, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	imulq	$88, -88(%rbp), %rax
	imulq	$112, %rax, %rax
	imulq	$88, -64(%rbp), %rcx
	addq	%rcx, %rax
	addq	-72(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	imull	%esi, %edx
	sarl	$6, %edx
                                        # kill: def $dx killed $dx killed $edx
	movw	%dx, -90(%rbp)
	movswl	-90(%rbp), %esi
	addl	-76(%rbp), %esi
	movl	%esi, -76(%rbp)
	cmpl	$32767, -76(%rbp)       # imm = 0x7FFF
	jle	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_7 Depth=4
	movl	$32767, -76(%rbp)       # imm = 0x7FFF
	jmp	.LBB1_14
.LBB1_11:                               #   in Loop: Header=BB1_7 Depth=4
	cmpl	$-32768, -76(%rbp)      # imm = 0x8000
	jge	.LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_7 Depth=4
	movl	$-32768, -76(%rbp)      # imm = 0x8000
.LBB1_13:                               #   in Loop: Header=BB1_7 Depth=4
	jmp	.LBB1_14
.LBB1_14:                               #   in Loop: Header=BB1_7 Depth=4
	jmp	.LBB1_15
.LBB1_15:                               #   in Loop: Header=BB1_7 Depth=4
	jmp	.LBB1_16
.LBB1_16:                               #   in Loop: Header=BB1_7 Depth=4
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB1_7
.LBB1_17:                               #   in Loop: Header=BB1_5 Depth=3
	movl	-76(%rbp), %eax
	sarl	$0, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
# %bb.18:                               #   in Loop: Header=BB1_5 Depth=3
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_5
.LBB1_19:                               #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_20
.LBB1_20:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB1_3
.LBB1_21:                               #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_22
.LBB1_22:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_1
.LBB1_23:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	scorrelation_golden, .Lfunc_end1-scorrelation_golden
	.cfi_endproc
                                        # -- End function
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
	subq	$80, %rsp
	movl	$2021, %edi             # imm = 0x7E5
	callq	srand
	leaq	-32(%rbp), %rax
	movq	.L__const.main.image_shape, %rcx
	movq	%rcx, -32(%rbp)
	movq	.L__const.main.image_shape+8, %rcx
	movq	%rcx, -24(%rbp)
	movq	.L__const.main.image_shape+16, %rcx
	movq	%rcx, -16(%rbp)
	movabsq	$image1, %rcx
	movq	%rcx, -40(%rbp)
	movabsq	$image2, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	randTensor
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	randTensor
	movabsq	$golden_res, %rax
	movq	%rax, -64(%rbp)
	movabsq	$rvv_res, %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	scorrelation_golden
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	rvv_res,@object         # @rvv_res
	.bss
	.globl	rvv_res
	.p2align	4
rvv_res:
	.zero	49280
	.size	rvv_res, 49280

	.type	.L__const.main.image_shape,@object # @__const.main.image_shape
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.main.image_shape:
	.quad	58                      # 0x3a
	.quad	112                     # 0x70
	.quad	88                      # 0x58
	.size	.L__const.main.image_shape, 24

	.type	image1,@object          # @image1
	.comm	image1,571648,16
	.type	image2,@object          # @image2
	.comm	image2,571648,16
	.type	golden_res,@object      # @golden_res
	.comm	golden_res,49280,16
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym randTensor
	.addrsig_sym rand
	.addrsig_sym scorrelation_golden
	.addrsig_sym srand
	.addrsig_sym rvv_res
	.addrsig_sym image1
	.addrsig_sym image2
	.addrsig_sym golden_res
