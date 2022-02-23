	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"simple-if.c"
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
	call	scanf
	lw	a1, 8(sp)
	addi	a2, zero, 5
	blt	a1, a2, .LBB0_3
# %bb.1:                                # %if.end
	addi	a3, a1, -10
	addi	a0, zero, 1
	bltu	a3, a2, .LBB0_4
# %bb.2:                                # %if.end4
	addi	a2, zero, 8
	addi	a0, zero, 3
	beq	a1, a2, .LBB0_4
.LBB0_3:                                # %if.end4
	mv	a0, zero
.LBB0_4:                                # %cleanup
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"
	.section	".note.GNU-stack","",@progbits
