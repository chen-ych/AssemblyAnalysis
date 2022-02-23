	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
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
	add	s0, zero, a7
	add	s3, zero, a6
	add	s4, zero, a5
	add	s5, zero, a4
	add	s6, zero, a3
	add	s7, zero, a2
	add	s8, zero, a1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, sp, 16
	call	scanf
	lw	a0, 16(sp)
	sw	a0, 8(sp)
	sw	s8, 4(sp)
	sw	s7, 0(sp)
	add	a1, zero, s2
	add	a2, zero, s1
	add	a3, zero, s0
	add	a4, zero, s3
	add	a5, zero, s4
	add	a6, zero, s5
	add	a7, zero, s6
	call	f
	add	a1, s1, s0
	add	a1, a1, s2
	add	a1, a1, s9
	add	a0, a0, a1
	lw	s9, 20(sp)                      # 4-byte Folded Reload
	lw	s8, 24(sp)                      # 4-byte Folded Reload
	lw	s7, 28(sp)                      # 4-byte Folded Reload
	lw	s6, 32(sp)                      # 4-byte Folded Reload
	lw	s5, 36(sp)                      # 4-byte Folded Reload
	lw	s4, 40(sp)                      # 4-byte Folded Reload
	lw	s3, 44(sp)                      # 4-byte Folded Reload
	lw	s2, 48(sp)                      # 4-byte Folded Reload
	lw	s1, 52(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	lw	ra, 60(sp)                      # 4-byte Folded Reload
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
	addi	a0, zero, 10
	sw	a0, 8(sp)
	addi	a0, zero, 9
	sw	a0, 4(sp)
	addi	a0, zero, 8
	addi	a1, zero, 1
	addi	a2, zero, 2
	addi	a3, zero, 3
	addi	a4, zero, 4
	addi	a5, zero, 5
	addi	a6, zero, 15
	addi	a7, zero, 7
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
