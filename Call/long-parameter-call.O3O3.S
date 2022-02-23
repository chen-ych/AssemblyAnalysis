	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0_m2p0_a2p0_c2p0"
	.file	"long-parameter-call.c"
	.globl	f                               # -- Begin function f
	.p2align	1
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	addi	sp, sp, -64
	sw	ra, 60(sp)                      # 4-byte Folded Spill
	sw	s0, 56(sp)                      # 4-byte Folded Spill
	sw	s1, 52(sp)                      # 4-byte Folded Spill
	sw	s2, 48(sp)                      # 4-byte Folded Spill
	sw	s3, 44(sp)                      # 4-byte Folded Spill
	sw	s4, 40(sp)                      # 4-byte Folded Spill
	sw	s5, 36(sp)                      # 4-byte Folded Spill
	sw	s6, 32(sp)                      # 4-byte Folded Spill
	sw	s7, 28(sp)                      # 4-byte Folded Spill
	sw	s8, 24(sp)                      # 4-byte Folded Spill
	sw	s9, 20(sp)                      # 4-byte Folded Spill
	lw	s9, 72(sp)
	lw	s2, 68(sp)
	lw	s1, 64(sp)
	mv	s0, a7
	mv	s3, a6
	mv	s4, a5
	mv	s5, a4
	mv	s6, a3
	mv	s7, a2
	mv	s8, a1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, sp, 16
	call	scanf
	lw	a0, 16(sp)
	sw	a0, 8(sp)
	sw	s8, 4(sp)
	sw	s7, 0(sp)
	mv	a1, s2
	mv	a2, s1
	mv	a3, s0
	mv	a4, s3
	mv	a5, s4
	mv	a6, s5
	mv	a7, s6
	call	f
	add	a1, s1, s0
	add	a1, a1, s2
	add	a1, a1, s9
	add	a0, a0, a1
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	lw	s1, 52(sp)                      # 4-byte Folded Reload
	lw	s2, 48(sp)                      # 4-byte Folded Reload
	lw	s3, 44(sp)                      # 4-byte Folded Reload
	lw	s4, 40(sp)                      # 4-byte Folded Reload
	lw	s5, 36(sp)                      # 4-byte Folded Reload
	lw	s6, 32(sp)                      # 4-byte Folded Reload
	lw	s7, 28(sp)                      # 4-byte Folded Reload
	lw	s8, 24(sp)                      # 4-byte Folded Reload
	lw	s9, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	li	a0, 10
	sw	a0, 8(sp)
	li	a0, 9
	sw	a0, 4(sp)
	li	a0, 8
	li	a1, 1
	li	a2, 2
	li	a3, 3
	li	a4, 4
	li	a5, 5
	li	a6, 15
	li	a7, 7
	sw	a0, 0(sp)
	call	f
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
