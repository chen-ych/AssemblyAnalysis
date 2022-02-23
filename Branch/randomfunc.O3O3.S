	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0_m2p0_a2p0_c2p0"
	.file	"randomfunc.c"
	.globl	f1                              # -- Begin function f1
	.p2align	1
	.type	f1,@function
f1:                                     # @f1
# %bb.0:                                # %entry
	add	a0, a0, a1
	addi	a0, a0, 1
	ret
.Lfunc_end0:
	.size	f1, .Lfunc_end0-f1
                                        # -- End function
	.globl	f2                              # -- Begin function f2
	.p2align	1
	.type	f2,@function
f2:                                     # @f2
# %bb.0:                                # %entry
	add	a0, a0, a1
	addi	a0, a0, 2
	ret
.Lfunc_end1:
	.size	f2, .Lfunc_end1-f2
                                        # -- End function
	.globl	f3                              # -- Begin function f3
	.p2align	1
	.type	f3,@function
f3:                                     # @f3
# %bb.0:                                # %entry
	add	a0, a0, a1
	addi	a0, a0, 3
	ret
.Lfunc_end2:
	.size	f3, .Lfunc_end2-f3
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	lui	a0, %hi(f1)
	addi	a0, a0, %lo(f1)
	lui	a1, %hi(f)
	sw	a0, %lo(f)(a1)
	lui	a0, %hi(f2)
	addi	a0, a0, %lo(f2)
	addi	s0, a1, %lo(f)
	sw	a0, 4(s0)
	lui	a0, %hi(f3)
	addi	a0, a0, %lo(f3)
	sw	a0, 8(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, sp, 4
	call	scanf
	lw	a0, 4(sp)
	slli	a0, a0, 2
	add	a0, a0, s0
	lw	a2, 0(a0)
	li	a0, 1
	li	a1, 2
	jalr	a2
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.type	f,@object                       # @f
	.bss
	.globl	f
	.p2align	2
f:
	.zero	12
	.size	f, 12

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f1
	.addrsig_sym f2
	.addrsig_sym f3
