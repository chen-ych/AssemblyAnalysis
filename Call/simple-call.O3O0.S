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
	add	s0, zero, a0
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, sp, 4
	call	scanf
	lw	a0, 4(sp)
	add	a0, a0, s0
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
	sw	s1, 20(sp)                      # 4-byte Folded Spill
	sw	s2, 16(sp)                      # 4-byte Folded Spill
	add	s2, zero, a2
	add	s1, zero, a1
	add	s0, zero, a0
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, sp, 12
	call	scanf
	lw	a0, 12(sp)
	add	a1, s1, s0
	mul	a0, a0, s2
	sub	a0, a1, a0
	lw	s2, 16(sp)                      # 4-byte Folded Reload
	lw	s1, 20(sp)                      # 4-byte Folded Reload
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
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	sw	s1, 20(sp)                      # 4-byte Folded Spill
	sw	s2, 16(sp)                      # 4-byte Folded Spill
	lui	a0, %hi(.L.str)
	addi	s0, a0, %lo(.L.str)
	addi	a1, sp, 8
	add	a0, zero, s0
	call	scanf
	lw	s1, 8(sp)
	addi	a0, zero, -3
	mul	a0, s1, a0
	addi	s2, a0, -21
	addi	a1, sp, 12
	add	a0, zero, s0
	call	scanf
	lw	a0, 12(sp)
	slli	a1, s1, 1
	mul	a0, a0, s2
	add	a0, a0, a1
	addi	a0, a0, 13
	lw	s2, 16(sp)                      # 4-byte Folded Reload
	lw	s1, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
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
