	.text
	.file	"warp.c"
	.globl	warp_golden             # -- Begin function warp_golden
	.p2align	4, 0x90
	.type	warp_golden,@function
warp_golden:                            # @warp_golden
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -64(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	cmpq	$58, -64(%rbp)
	jae	.LBB0_18
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	$0, -72(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	cmpq	$112, -72(%rbp)
	jae	.LBB0_16
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	$0, -80(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$88, -80(%rbp)
	jae	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	imulq	$88, -72(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movw	(%rax,%rcx,2), %dx
	movw	%dx, -44(%rbp)
	movswl	-44(%rbp), %esi
	sarl	$8, %esi
                                        # kill: def $si killed $si killed $esi
	movw	%si, -46(%rbp)
	imulq	$112, -64(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$88, %rax, %rax
	addq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movswq	-46(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
                                        # kill: def $ax killed $ax killed $rax
	movswl	%ax, %edi
	cmpl	$0, %edi
	jl	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movswq	-46(%rbp), %rdx
	subq	%rdx, %rcx
	subq	$1, %rcx
	movsbl	(%rax,%rcx), %esi
                                        # kill: def $si killed $si killed $esi
	movswl	%si, %edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=3
	xorl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-84(%rbp), %eax         # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -52(%rbp)
	movq	-80(%rbp), %rcx
	movswq	-46(%rbp), %rdx
	subq	%rdx, %rcx
                                        # kill: def $cx killed $cx killed $rcx
	movswl	%cx, %esi
	cmpl	$0, %esi
	jl	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=3
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movswq	-46(%rbp), %rdx
	subq	%rdx, %rcx
	movsbl	(%rax,%rcx), %esi
                                        # kill: def $si killed $si killed $esi
	movswl	%si, %edi
	movl	%edi, -88(%rbp)         # 4-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=3
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-88(%rbp), %eax         # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -54(%rbp)
	movswl	-44(%rbp), %ecx
	movswl	-46(%rbp), %edx
	shll	$8, %edx
	subl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, -48(%rbp)
	movswl	-48(%rbp), %edx
	movl	$256, %esi              # imm = 0x100
	subl	%edx, %esi
                                        # kill: def $si killed $si killed $esi
	movw	%si, -50(%rbp)
	movswl	-52(%rbp), %edx
	movswl	-48(%rbp), %edi
	imull	%edi, %edx
	movswl	-54(%rbp), %edi
	movswl	-50(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %edx
	sarl	$8, %edx
                                        # kill: def $dl killed $dl killed $edx
	movq	-24(%rbp), %r9
	movq	-40(%rbp), %r10
	movb	%dl, (%r9,%r10)
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=3
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_3
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_1
.LBB0_18:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	warp_golden, .Lfunc_end0-warp_golden
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$581504, -16(%rbp)      # imm = 0x8DF80
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	callq	rand
	cltd
	movl	$128, %ecx
	idivl	%ecx
                                        # kill: def $dl killed $dl killed $edx
	movslq	-16(%rbp), %rsi
	movb	%dl, src_arr(,%rsi)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movl	$0, -20(%rbp)
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	cmpl	$112, -20(%rbp)
	jge	.LBB1_12
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movl	$0, -24(%rbp)
.LBB1_7:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$88, -24(%rbp)
	jge	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	imull	$88, -20(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	callq	rand
	cltd
	movl	$128, %ecx
	idivl	%ecx
	movl	%edx, -28(%rbp)         # 4-byte Spill
	callq	rand
	cltd
	movl	$128, %ecx
	idivl	%ecx
	shll	$8, %edx
	movl	-28(%rbp), %ecx         # 4-byte Reload
	addl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movslq	-12(%rbp), %rsi
	movw	%cx, offset_arr(,%rsi,2)
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_5
.LBB1_12:
	movabsq	$src_arr, %rdi
	movabsq	$offset_arr, %rsi
	movabsq	$golden_arr, %rdx
	callq	warp_golden
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	src_arr,@object         # @src_arr
	.comm	src_arr,581504,16
	.type	offset_arr,@object      # @offset_arr
	.comm	offset_arr,19712,16
	.type	golden_arr,@object      # @golden_arr
	.comm	golden_arr,571648,16
	.type	l_mask_arr,@object      # @l_mask_arr
	.comm	l_mask_arr,9856,16
	.type	r_mask_arr,@object      # @r_mask_arr
	.comm	r_mask_arr,9856,16
	.type	out_arr,@object         # @out_arr
	.comm	out_arr,571648,16
	.type	right_idx_arr,@object   # @right_idx_arr
	.comm	right_idx_arr,19712,16
	.type	left_idx_arr,@object    # @left_idx_arr
	.comm	left_idx_arr,19712,16
	.type	offset_fraction_arr,@object # @offset_fraction_arr
	.comm	offset_fraction_arr,9856,16
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym warp_golden
	.addrsig_sym rand
	.addrsig_sym src_arr
	.addrsig_sym offset_arr
	.addrsig_sym golden_arr
