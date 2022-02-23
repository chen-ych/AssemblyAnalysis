	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"double-call.c"
	.globl	f                               # -- Begin function f
	.p2align	1
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a1, -12(s0)
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	call	__fixdfsi@plt
	call	__floatsidf@plt
	lui	a2, 629146
	addi	a2, a2, -1638
	lui	a3, 261274
	addi	a3, a3, -1639
	call	__adddf3@plt
	call	__fixdfsi@plt
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
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
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	zero, -12(s0)
	lui	a0, 209715
	addi	a0, a0, 819
	lui	a1, 262323
	addi	a1, a1, 819
	call	f
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"
	.section	".note.GNU-stack","",@progbits
