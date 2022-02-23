	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"simple-call.c"
	.globl	f                               # -- Begin function f
	.p2align	1
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, s0, -16
	call	scanf
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	g                               # -- Begin function g
	.p2align	1
	.type	g,@function
g:                                      # @g
# %bb.0:                                # %entry
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, s0, -24
	call	scanf
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lw	a1, -20(s0)
	lw	a2, -24(s0)
	mul	a1, a1, a2
	sub	a0, a0, a1
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	g, .Lfunc_end1-g
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	zero, -12(s0)
	addi	a0, zero, 7
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	call	f
	sw	a0, -16(s0)
	lw	a2, -16(s0)
	addi	a0, a2, 1
	addi	a1, a2, -2
	addi	a3, zero, 3
	mul	a2, a2, a3
	call	g
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"
	.section	".note.GNU-stack","",@progbits
