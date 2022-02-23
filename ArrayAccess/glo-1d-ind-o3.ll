	.file	"glo-1d-ind-o3.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v_zfh_zvamo_zvlsseg"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	j
	.section	.sdata,"aw"
	.align	2
	.type	j, @object
	.size	j, 4
j:
	.word	3
	.globl	a
	.data
	.align	2
	.type	a, @object
	.size	a, 2400
a:
	.word	1
	.word	2
	.word	3
	.zero	2388
	.globl	i
	.section	.sbss,"aw",@nobits
	.align	2
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sw	s0,12(sp)
	addi	s0,sp,16
	lui	a5,%hi(a)
	addi	a5,a5,%lo(a)
	li	a4,1
	sw	a4,0(a5)
	lui	a5,%hi(a)
	addi	a5,a5,%lo(a)
	li	a4,1
	sw	a4,4(a5)
	lui	a5,%hi(j)
	li	a4,7
	sw	a4,%lo(j)(a5)
	lui	a5,%hi(i)
	li	a4,2
	sw	a4,%lo(i)(a5)
	j	.L2
.L3:
	lui	a5,%hi(i)
	lw	a5,%lo(i)(a5)
	addi	a5,a5,-1
	lui	a4,%hi(a)
	addi	a4,a4,%lo(a)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lui	a5,%hi(i)
	lw	a5,%lo(i)(a5)
	addi	a5,a5,-2
	lui	a4,%hi(a)
	addi	a4,a4,%lo(a)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(i)
	lw	a5,%lo(i)(a5)
	add	a4,a3,a4
	lui	a3,%hi(a)
	addi	a3,a3,%lo(a)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lui	a5,%hi(i)
	lw	a5,%lo(i)(a5)
	addi	a4,a5,1
	lui	a5,%hi(i)
	sw	a4,%lo(i)(a5)
.L2:
	lui	a5,%hi(i)
	lw	a4,%lo(i)(a5)
	li	a5,599
	ble	a4,a5,.L3
	lui	a5,%hi(a)
	addi	a5,a5,%lo(a)
	lw	a5,20(a5)
	mv	a0,a5
	lw	s0,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.1 20210813"
