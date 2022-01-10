	.text
	.file	"correlation.c"
	.globl	randTensor              # -- Begin function randTensor
	.p2align	4, 0x90
	.type	randTensor,@function
randTensor:                             # @randTensor
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_9
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	8(%rsi), %rax
	xorl	%r15d, %r15d
	movq	%rax, %rdx
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%edx, %edx
	addq	$1, %r15
	cmpq	%rcx, %r15
	jae	.LBB0_9
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_13 Depth 3
	testq	%rdx, %rdx
	je	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	16(%r14), %rcx
	xorl	%r12d, %r12d
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=2
	xorl	%ecx, %ecx
	addq	$1, %r12
	cmpq	%rax, %r12
	jae	.LBB0_7
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	testq	%rcx, %rcx
	je	.LBB0_6
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	rand
	movb	%al, (%r13,%rbx)
	addq	$1, %rbx
	movq	16(%r14), %rcx
	cmpq	%rcx, %rbx
	jb	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=2
	movq	8(%r14), %rax
	addq	%rbx, %r13
	addq	$1, %r12
	cmpq	%rax, %r12
	jb	.LBB0_5
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rcx
	movq	%rax, %rdx
	addq	$1, %r15
	cmpq	%rcx, %r15
	jb	.LBB0_2
.LBB0_9:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	movl	$49280, %edx            # imm = 0xC080
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r15, %r8
	movq	%r14, %r9
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r12
	addq	$88, %r9
	addq	$88, %r8
	cmpq	$112, %r12
	je	.LBB1_14
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	imulq	$88, %r12, %r10
	movq	%r8, %rsi
	movq	%r9, %rdi
	xorl	%eax, %eax
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_2 Depth=2
	movb	%bl, (%r13,%r11)
	addq	$1, %rax
	addq	$1, %rdi
	addq	$1, %rsi
	cmpq	$88, %rax
	je	.LBB1_13
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	leaq	(%rax,%r10), %r11
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=3
	addq	$19712, %rdx            # imm = 0x4D00
	cmpq	$571648, %rdx           # imm = 0x8B900
	je	.LBB1_12
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rsi,%rdx), %ebp
	movsbl	(%rdi,%rdx), %ecx
	imull	%ebp, %ecx
	sarl	$6, %ecx
	addl	%ebx, %ecx
	cmpl	$-32769, %ecx           # imm = 0xFFFF7FFF
	jg	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=3
	movl	$-32768, %ecx           # imm = 0x8000
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=3
	cmpl	$32768, %ecx            # imm = 0x8000
	jl	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=3
	movl	$32767, %ecx            # imm = 0x7FFF
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=3
	movsbl	9856(%rsi,%rdx), %ebp
	movsbl	9856(%rdi,%rdx), %ebx
	imull	%ebp, %ebx
	sarl	$6, %ebx
	addl	%ecx, %ebx
	cmpl	$-32769, %ebx           # imm = 0xFFFF7FFF
	jle	.LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=3
	cmpl	$32768, %ebx            # imm = 0x8000
	jl	.LBB1_11
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=3
	movl	$-32768, %ebx           # imm = 0x8000
	cmpl	$32768, %ebx            # imm = 0x8000
	jl	.LBB1_11
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=3
	movl	$32767, %ebx            # imm = 0x7FFF
	jmp	.LBB1_11
.LBB1_14:
	leaq	-1(%r14), %r8
	xorl	%r10d, %r10d
	movq	%r15, %r9
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_15 Depth=1
	addq	$1, %r10
	addq	$88, %r8
	addq	$88, %r9
	cmpq	$112, %r10
	je	.LBB1_26
.LBB1_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
                                        #       Child Loop BB1_19 Depth 3
	imulq	$88, %r10, %r11
	movq	%r9, %rdi
	movq	%r8, %rax
	xorl	%edx, %edx
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_16 Depth=2
	xorl	%esi, %esi
.LBB1_24:                               #   in Loop: Header=BB1_16 Depth=2
	movb	%sil, 9856(%r13,%r12)
	addq	$1, %rdx
	addq	$1, %rax
	addq	$1, %rdi
	cmpq	$88, %rdx
	je	.LBB1_25
.LBB1_16:                               #   Parent Loop BB1_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_19 Depth 3
	leaq	(%rdx,%r11), %r12
	testq	%rdx, %rdx
	je	.LBB1_17
# %bb.18:                               #   in Loop: Header=BB1_16 Depth=2
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_19 Depth=3
	addq	$9856, %rbx             # imm = 0x2680
	movl	%esi, %ebp
	cmpq	$571648, %rbx           # imm = 0x8B900
	je	.LBB1_24
.LBB1_19:                               #   Parent Loop BB1_15 Depth=1
                                        #     Parent Loop BB1_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rdi,%rbx), %ecx
	movsbl	(%rax,%rbx), %esi
	imull	%ecx, %esi
	sarl	$6, %esi
	addl	%ebp, %esi
	cmpl	$-32769, %esi           # imm = 0xFFFF7FFF
	jle	.LBB1_20
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=3
	cmpl	$32768, %esi            # imm = 0x8000
	jl	.LBB1_23
	jmp	.LBB1_22
	.p2align	4, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_19 Depth=3
	movl	$-32768, %esi           # imm = 0x8000
	cmpl	$32768, %esi            # imm = 0x8000
	jl	.LBB1_23
.LBB1_22:                               #   in Loop: Header=BB1_19 Depth=3
	movl	$32767, %esi            # imm = 0x7FFF
	jmp	.LBB1_23
.LBB1_26:
	leaq	-2(%r14), %r8
	xorl	%r10d, %r10d
	movq	%r15, %r9
	jmp	.LBB1_27
	.p2align	4, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_27 Depth=1
	addq	$1, %r10
	addq	$88, %r8
	addq	$88, %r9
	cmpq	$112, %r10
	je	.LBB1_37
.LBB1_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
                                        #       Child Loop BB1_30 Depth 3
	imulq	$88, %r10, %r11
	movq	%r9, %rdi
	movq	%r8, %rax
	xorl	%edx, %edx
	jmp	.LBB1_28
	.p2align	4, 0x90
.LBB1_35:                               #   in Loop: Header=BB1_28 Depth=2
	movb	%sil, 19712(%r13,%r12)
	addq	$1, %rdx
	addq	$1, %rax
	addq	$1, %rdi
	cmpq	$88, %rdx
	je	.LBB1_36
.LBB1_28:                               #   Parent Loop BB1_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_30 Depth 3
	leaq	(%rdx,%r11), %r12
	xorl	%esi, %esi
	cmpq	$2, %rdx
	jb	.LBB1_35
# %bb.29:                               #   in Loop: Header=BB1_28 Depth=2
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_34:                               #   in Loop: Header=BB1_30 Depth=3
	addq	$9856, %rbx             # imm = 0x2680
	movl	%esi, %ebp
	cmpq	$571648, %rbx           # imm = 0x8B900
	je	.LBB1_35
.LBB1_30:                               #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rdi,%rbx), %ecx
	movsbl	(%rax,%rbx), %esi
	imull	%ecx, %esi
	sarl	$6, %esi
	addl	%ebp, %esi
	cmpl	$-32769, %esi           # imm = 0xFFFF7FFF
	jle	.LBB1_31
# %bb.32:                               #   in Loop: Header=BB1_30 Depth=3
	cmpl	$32768, %esi            # imm = 0x8000
	jl	.LBB1_34
	jmp	.LBB1_33
	.p2align	4, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_30 Depth=3
	movl	$-32768, %esi           # imm = 0x8000
	cmpl	$32768, %esi            # imm = 0x8000
	jl	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_30 Depth=3
	movl	$32767, %esi            # imm = 0x7FFF
	jmp	.LBB1_34
.LBB1_37:
	leaq	-3(%r14), %r8
	xorl	%r10d, %r10d
	movq	%r15, %r9
	jmp	.LBB1_38
	.p2align	4, 0x90
.LBB1_47:                               #   in Loop: Header=BB1_38 Depth=1
	addq	$1, %r10
	addq	$88, %r8
	addq	$88, %r9
	cmpq	$112, %r10
	je	.LBB1_48
.LBB1_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
                                        #       Child Loop BB1_41 Depth 3
	imulq	$88, %r10, %r11
	movq	%r9, %rdi
	movq	%r8, %rax
	xorl	%edx, %edx
	jmp	.LBB1_39
	.p2align	4, 0x90
.LBB1_46:                               #   in Loop: Header=BB1_39 Depth=2
	movb	%sil, 29568(%r13,%r12)
	addq	$1, %rdx
	addq	$1, %rax
	addq	$1, %rdi
	cmpq	$88, %rdx
	je	.LBB1_47
.LBB1_39:                               #   Parent Loop BB1_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_41 Depth 3
	leaq	(%rdx,%r11), %r12
	xorl	%esi, %esi
	cmpq	$3, %rdx
	jb	.LBB1_46
# %bb.40:                               #   in Loop: Header=BB1_39 Depth=2
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB1_41
	.p2align	4, 0x90
.LBB1_45:                               #   in Loop: Header=BB1_41 Depth=3
	addq	$9856, %rbx             # imm = 0x2680
	movl	%esi, %ebp
	cmpq	$571648, %rbx           # imm = 0x8B900
	je	.LBB1_46
.LBB1_41:                               #   Parent Loop BB1_38 Depth=1
                                        #     Parent Loop BB1_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rdi,%rbx), %ecx
	movsbl	(%rax,%rbx), %esi
	imull	%ecx, %esi
	sarl	$6, %esi
	addl	%ebp, %esi
	cmpl	$-32769, %esi           # imm = 0xFFFF7FFF
	jle	.LBB1_42
# %bb.43:                               #   in Loop: Header=BB1_41 Depth=3
	cmpl	$32768, %esi            # imm = 0x8000
	jl	.LBB1_45
	jmp	.LBB1_44
	.p2align	4, 0x90
.LBB1_42:                               #   in Loop: Header=BB1_41 Depth=3
	movl	$-32768, %esi           # imm = 0x8000
	cmpl	$32768, %esi            # imm = 0x8000
	jl	.LBB1_45
.LBB1_44:                               #   in Loop: Header=BB1_41 Depth=3
	movl	$32767, %esi            # imm = 0x7FFF
	jmp	.LBB1_45
.LBB1_48:
	addq	$-4, %r14
	xorl	%r8d, %r8d
	jmp	.LBB1_49
	.p2align	4, 0x90
.LBB1_58:                               #   in Loop: Header=BB1_49 Depth=1
	addq	$1, %r8
	addq	$88, %r14
	addq	$88, %r15
	cmpq	$112, %r8
	je	.LBB1_59
.LBB1_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
                                        #       Child Loop BB1_52 Depth 3
	imulq	$88, %r8, %r9
	movq	%r15, %rdx
	movq	%r14, %rsi
	xorl	%edi, %edi
	jmp	.LBB1_50
	.p2align	4, 0x90
.LBB1_57:                               #   in Loop: Header=BB1_50 Depth=2
	movb	%cl, 39424(%r13,%r10)
	addq	$1, %rdi
	addq	$1, %rsi
	addq	$1, %rdx
	cmpq	$88, %rdi
	je	.LBB1_58
.LBB1_50:                               #   Parent Loop BB1_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_52 Depth 3
	leaq	(%rdi,%r9), %r10
	xorl	%ecx, %ecx
	cmpq	$4, %rdi
	jb	.LBB1_57
# %bb.51:                               #   in Loop: Header=BB1_50 Depth=2
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB1_52
	.p2align	4, 0x90
.LBB1_56:                               #   in Loop: Header=BB1_52 Depth=3
	addq	$9856, %rbx             # imm = 0x2680
	movl	%ecx, %ebp
	cmpq	$571648, %rbx           # imm = 0x8B900
	je	.LBB1_57
.LBB1_52:                               #   Parent Loop BB1_49 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rdx,%rbx), %eax
	movsbl	(%rsi,%rbx), %ecx
	imull	%eax, %ecx
	sarl	$6, %ecx
	addl	%ebp, %ecx
	cmpl	$-32769, %ecx           # imm = 0xFFFF7FFF
	jle	.LBB1_53
# %bb.54:                               #   in Loop: Header=BB1_52 Depth=3
	cmpl	$32768, %ecx            # imm = 0x8000
	jl	.LBB1_56
	jmp	.LBB1_55
	.p2align	4, 0x90
.LBB1_53:                               #   in Loop: Header=BB1_52 Depth=3
	movl	$-32768, %ecx           # imm = 0x8000
	cmpl	$32768, %ecx            # imm = 0x8000
	jl	.LBB1_56
.LBB1_55:                               #   in Loop: Header=BB1_52 Depth=3
	movl	$32767, %ecx            # imm = 0x7FFF
	jmp	.LBB1_56
.LBB1_59:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$2021, %edi             # imm = 0x7E5
	callq	srand
	movl	$image1, %r15d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	movb	%al, (%r15,%rbx)
	callq	rand
	movb	%al, 1(%r15,%rbx)
	callq	rand
	movb	%al, 2(%r15,%rbx)
	callq	rand
	movb	%al, 3(%r15,%rbx)
	callq	rand
	movb	%al, 4(%r15,%rbx)
	callq	rand
	movb	%al, 5(%r15,%rbx)
	callq	rand
	movb	%al, 6(%r15,%rbx)
	callq	rand
	movb	%al, 7(%r15,%rbx)
	callq	rand
	movb	%al, 8(%r15,%rbx)
	callq	rand
	movb	%al, 9(%r15,%rbx)
	callq	rand
	movb	%al, 10(%r15,%rbx)
	callq	rand
	movb	%al, 11(%r15,%rbx)
	callq	rand
	movb	%al, 12(%r15,%rbx)
	callq	rand
	movb	%al, 13(%r15,%rbx)
	callq	rand
	movb	%al, 14(%r15,%rbx)
	callq	rand
	movb	%al, 15(%r15,%rbx)
	callq	rand
	movb	%al, 16(%r15,%rbx)
	callq	rand
	movb	%al, 17(%r15,%rbx)
	callq	rand
	movb	%al, 18(%r15,%rbx)
	callq	rand
	movb	%al, 19(%r15,%rbx)
	callq	rand
	movb	%al, 20(%r15,%rbx)
	callq	rand
	movb	%al, 21(%r15,%rbx)
	callq	rand
	movb	%al, 22(%r15,%rbx)
	callq	rand
	movb	%al, 23(%r15,%rbx)
	callq	rand
	movb	%al, 24(%r15,%rbx)
	callq	rand
	movb	%al, 25(%r15,%rbx)
	callq	rand
	movb	%al, 26(%r15,%rbx)
	callq	rand
	movb	%al, 27(%r15,%rbx)
	callq	rand
	movb	%al, 28(%r15,%rbx)
	callq	rand
	movb	%al, 29(%r15,%rbx)
	callq	rand
	movb	%al, 30(%r15,%rbx)
	callq	rand
	movb	%al, 31(%r15,%rbx)
	callq	rand
	movb	%al, 32(%r15,%rbx)
	callq	rand
	movb	%al, 33(%r15,%rbx)
	callq	rand
	movb	%al, 34(%r15,%rbx)
	callq	rand
	movb	%al, 35(%r15,%rbx)
	callq	rand
	movb	%al, 36(%r15,%rbx)
	callq	rand
	movb	%al, 37(%r15,%rbx)
	callq	rand
	movb	%al, 38(%r15,%rbx)
	callq	rand
	movb	%al, 39(%r15,%rbx)
	callq	rand
	movb	%al, 40(%r15,%rbx)
	callq	rand
	movb	%al, 41(%r15,%rbx)
	callq	rand
	movb	%al, 42(%r15,%rbx)
	callq	rand
	movb	%al, 43(%r15,%rbx)
	callq	rand
	movb	%al, 44(%r15,%rbx)
	callq	rand
	movb	%al, 45(%r15,%rbx)
	callq	rand
	movb	%al, 46(%r15,%rbx)
	callq	rand
	movb	%al, 47(%r15,%rbx)
	callq	rand
	movb	%al, 48(%r15,%rbx)
	callq	rand
	movb	%al, 49(%r15,%rbx)
	callq	rand
	movb	%al, 50(%r15,%rbx)
	callq	rand
	movb	%al, 51(%r15,%rbx)
	callq	rand
	movb	%al, 52(%r15,%rbx)
	callq	rand
	movb	%al, 53(%r15,%rbx)
	callq	rand
	movb	%al, 54(%r15,%rbx)
	callq	rand
	movb	%al, 55(%r15,%rbx)
	callq	rand
	movb	%al, 56(%r15,%rbx)
	callq	rand
	movb	%al, 57(%r15,%rbx)
	callq	rand
	movb	%al, 58(%r15,%rbx)
	callq	rand
	movb	%al, 59(%r15,%rbx)
	callq	rand
	movb	%al, 60(%r15,%rbx)
	callq	rand
	movb	%al, 61(%r15,%rbx)
	callq	rand
	movb	%al, 62(%r15,%rbx)
	callq	rand
	movb	%al, 63(%r15,%rbx)
	callq	rand
	movb	%al, 64(%r15,%rbx)
	callq	rand
	movb	%al, 65(%r15,%rbx)
	callq	rand
	movb	%al, 66(%r15,%rbx)
	callq	rand
	movb	%al, 67(%r15,%rbx)
	callq	rand
	movb	%al, 68(%r15,%rbx)
	callq	rand
	movb	%al, 69(%r15,%rbx)
	callq	rand
	movb	%al, 70(%r15,%rbx)
	callq	rand
	movb	%al, 71(%r15,%rbx)
	callq	rand
	movb	%al, 72(%r15,%rbx)
	callq	rand
	movb	%al, 73(%r15,%rbx)
	callq	rand
	movb	%al, 74(%r15,%rbx)
	callq	rand
	movb	%al, 75(%r15,%rbx)
	callq	rand
	movb	%al, 76(%r15,%rbx)
	callq	rand
	movb	%al, 77(%r15,%rbx)
	callq	rand
	movb	%al, 78(%r15,%rbx)
	callq	rand
	movb	%al, 79(%r15,%rbx)
	callq	rand
	movb	%al, 80(%r15,%rbx)
	callq	rand
	movb	%al, 81(%r15,%rbx)
	callq	rand
	movb	%al, 82(%r15,%rbx)
	callq	rand
	movb	%al, 83(%r15,%rbx)
	callq	rand
	movb	%al, 84(%r15,%rbx)
	callq	rand
	movb	%al, 85(%r15,%rbx)
	callq	rand
	movb	%al, 86(%r15,%rbx)
	callq	rand
	movb	%al, 87(%r15,%rbx)
	addq	$88, %rbx
	cmpq	$9856, %rbx             # imm = 0x2680
	jne	.LBB2_2
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	addq	$1, %r14
	addq	%rbx, %r15
	cmpq	$58, %r14
	jne	.LBB2_1
# %bb.4:
	movl	$image2, %r15d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_6:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	movb	%al, (%r15,%rbx)
	callq	rand
	movb	%al, 1(%r15,%rbx)
	callq	rand
	movb	%al, 2(%r15,%rbx)
	callq	rand
	movb	%al, 3(%r15,%rbx)
	callq	rand
	movb	%al, 4(%r15,%rbx)
	callq	rand
	movb	%al, 5(%r15,%rbx)
	callq	rand
	movb	%al, 6(%r15,%rbx)
	callq	rand
	movb	%al, 7(%r15,%rbx)
	callq	rand
	movb	%al, 8(%r15,%rbx)
	callq	rand
	movb	%al, 9(%r15,%rbx)
	callq	rand
	movb	%al, 10(%r15,%rbx)
	callq	rand
	movb	%al, 11(%r15,%rbx)
	callq	rand
	movb	%al, 12(%r15,%rbx)
	callq	rand
	movb	%al, 13(%r15,%rbx)
	callq	rand
	movb	%al, 14(%r15,%rbx)
	callq	rand
	movb	%al, 15(%r15,%rbx)
	callq	rand
	movb	%al, 16(%r15,%rbx)
	callq	rand
	movb	%al, 17(%r15,%rbx)
	callq	rand
	movb	%al, 18(%r15,%rbx)
	callq	rand
	movb	%al, 19(%r15,%rbx)
	callq	rand
	movb	%al, 20(%r15,%rbx)
	callq	rand
	movb	%al, 21(%r15,%rbx)
	callq	rand
	movb	%al, 22(%r15,%rbx)
	callq	rand
	movb	%al, 23(%r15,%rbx)
	callq	rand
	movb	%al, 24(%r15,%rbx)
	callq	rand
	movb	%al, 25(%r15,%rbx)
	callq	rand
	movb	%al, 26(%r15,%rbx)
	callq	rand
	movb	%al, 27(%r15,%rbx)
	callq	rand
	movb	%al, 28(%r15,%rbx)
	callq	rand
	movb	%al, 29(%r15,%rbx)
	callq	rand
	movb	%al, 30(%r15,%rbx)
	callq	rand
	movb	%al, 31(%r15,%rbx)
	callq	rand
	movb	%al, 32(%r15,%rbx)
	callq	rand
	movb	%al, 33(%r15,%rbx)
	callq	rand
	movb	%al, 34(%r15,%rbx)
	callq	rand
	movb	%al, 35(%r15,%rbx)
	callq	rand
	movb	%al, 36(%r15,%rbx)
	callq	rand
	movb	%al, 37(%r15,%rbx)
	callq	rand
	movb	%al, 38(%r15,%rbx)
	callq	rand
	movb	%al, 39(%r15,%rbx)
	callq	rand
	movb	%al, 40(%r15,%rbx)
	callq	rand
	movb	%al, 41(%r15,%rbx)
	callq	rand
	movb	%al, 42(%r15,%rbx)
	callq	rand
	movb	%al, 43(%r15,%rbx)
	callq	rand
	movb	%al, 44(%r15,%rbx)
	callq	rand
	movb	%al, 45(%r15,%rbx)
	callq	rand
	movb	%al, 46(%r15,%rbx)
	callq	rand
	movb	%al, 47(%r15,%rbx)
	callq	rand
	movb	%al, 48(%r15,%rbx)
	callq	rand
	movb	%al, 49(%r15,%rbx)
	callq	rand
	movb	%al, 50(%r15,%rbx)
	callq	rand
	movb	%al, 51(%r15,%rbx)
	callq	rand
	movb	%al, 52(%r15,%rbx)
	callq	rand
	movb	%al, 53(%r15,%rbx)
	callq	rand
	movb	%al, 54(%r15,%rbx)
	callq	rand
	movb	%al, 55(%r15,%rbx)
	callq	rand
	movb	%al, 56(%r15,%rbx)
	callq	rand
	movb	%al, 57(%r15,%rbx)
	callq	rand
	movb	%al, 58(%r15,%rbx)
	callq	rand
	movb	%al, 59(%r15,%rbx)
	callq	rand
	movb	%al, 60(%r15,%rbx)
	callq	rand
	movb	%al, 61(%r15,%rbx)
	callq	rand
	movb	%al, 62(%r15,%rbx)
	callq	rand
	movb	%al, 63(%r15,%rbx)
	callq	rand
	movb	%al, 64(%r15,%rbx)
	callq	rand
	movb	%al, 65(%r15,%rbx)
	callq	rand
	movb	%al, 66(%r15,%rbx)
	callq	rand
	movb	%al, 67(%r15,%rbx)
	callq	rand
	movb	%al, 68(%r15,%rbx)
	callq	rand
	movb	%al, 69(%r15,%rbx)
	callq	rand
	movb	%al, 70(%r15,%rbx)
	callq	rand
	movb	%al, 71(%r15,%rbx)
	callq	rand
	movb	%al, 72(%r15,%rbx)
	callq	rand
	movb	%al, 73(%r15,%rbx)
	callq	rand
	movb	%al, 74(%r15,%rbx)
	callq	rand
	movb	%al, 75(%r15,%rbx)
	callq	rand
	movb	%al, 76(%r15,%rbx)
	callq	rand
	movb	%al, 77(%r15,%rbx)
	callq	rand
	movb	%al, 78(%r15,%rbx)
	callq	rand
	movb	%al, 79(%r15,%rbx)
	callq	rand
	movb	%al, 80(%r15,%rbx)
	callq	rand
	movb	%al, 81(%r15,%rbx)
	callq	rand
	movb	%al, 82(%r15,%rbx)
	callq	rand
	movb	%al, 83(%r15,%rbx)
	callq	rand
	movb	%al, 84(%r15,%rbx)
	callq	rand
	movb	%al, 85(%r15,%rbx)
	callq	rand
	movb	%al, 86(%r15,%rbx)
	callq	rand
	movb	%al, 87(%r15,%rbx)
	addq	$88, %rbx
	cmpq	$9856, %rbx             # imm = 0x2680
	jne	.LBB2_6
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %r14
	addq	%rbx, %r15
	cmpq	$58, %r14
	jne	.LBB2_5
# %bb.8:
	movl	$image1, %edi
	movl	$image2, %esi
	movl	$golden_res, %edx
	callq	scorrelation_golden
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
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

	.type	image1,@object          # @image1
	.comm	image1,571648,16
	.type	image2,@object          # @image2
	.comm	image2,571648,16
	.type	golden_res,@object      # @golden_res
	.comm	golden_res,49280,16
	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym image1
	.addrsig_sym image2
	.addrsig_sym golden_res
