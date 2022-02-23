	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"nested-if.c"
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, sp, 8
	addi	a2, sp, 4
	call	scanf
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	slt	a1, a0, a1
	slti	a0, a0, 100
	and	a1, a1, a0
	addi	a0, zero, 3
	bnez	a1, .LBB0_2
# %bb.1:                                # %entry
	mv	a0, zero
.LBB0_2:                                # %entry
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d%d\n"
	.size	.L.str, 6

	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"
	.section	".note.GNU-stack","",@progbits
