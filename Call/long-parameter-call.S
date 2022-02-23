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
	addi	s0, sp, 64
	lw	t0, 8(s0)
	lw	t0, 4(s0)
	lw	t0, 0(s0)
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	sw	a3, -24(s0)
	sw	a4, -28(s0)
	sw	a5, -32(s0)
	sw	a6, -36(s0)
	sw	a7, -40(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, s0, -44
	call	scanf
	lw	a0, 8(s0)
	lw	a1, 4(s0)
	lw	a2, 0(s0)
	lw	a3, -40(s0)
	lw	a4, -36(s0)
	lw	a5, -32(s0)
	lw	a6, -28(s0)
	lw	a7, -24(s0)
	lw	t0, -20(s0)
	lw	t2, -16(s0)
	lw	t3, -44(s0)
	mv	t1, sp
	sw	t3, 8(t1)
	sw	t2, 4(t1)
	sw	t0, 0(t1)
	call	f
	sw	a0, -44(s0)
	lw	a0, 8(s0)
	lw	a1, 4(s0)
	add	a0, a0, a1
	lw	a1, 0(s0)
	add	a0, a0, a1
	lw	a1, -40(s0)
	add	a0, a0, a1
	lw	a1, -44(s0)
	add	a0, a0, a1
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
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
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	li	a0, 0
	sw	a0, -12(s0)
	li	a1, 15
	sw	a1, -16(s0)
	lw	a6, -16(s0)
	mv	a2, sp
	li	a1, 10
	sw	a1, 8(a2)
	li	a1, 9
	sw	a1, 4(a2)
	li	a1, 8
	sw	a1, 0(a2)
	li	a1, 1
	li	a2, 2
	li	a3, 3
	li	a4, 4
	li	a5, 5
	li	a7, 7
	call	f
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
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
	.addrsig_sym f
	.addrsig_sym scanf
