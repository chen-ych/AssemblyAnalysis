	.file	"stat-1d-ind-o3.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v_zfh_zvamo_zvlsseg"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sw	s0,12(sp)
	addi	s0,sp,16
	lui	a5,%hi(a.1)
	addi	a5,a5,%lo(a.1)
	li	a4,1
	sw	a4,0(a5)
	lui	a5,%hi(a.1)
	addi	a5,a5,%lo(a.1)
	li	a4,1
	sw	a4,4(a5)
	lui	a5,%hi(i.0)
	li	a4,2
	sw	a4,%lo(i.0)(a5)
	j	.L2
.L3:
	lui	a5,%hi(i.0)
	lw	a5,%lo(i.0)(a5)
	addi	a5,a5,-1
	lui	a4,%hi(a.1)
	addi	a4,a4,%lo(a.1)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lui	a5,%hi(i.0)
	lw	a5,%lo(i.0)(a5)
	addi	a5,a5,-2
	lui	a4,%hi(a.1)
	addi	a4,a4,%lo(a.1)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(i.0)
	lw	a5,%lo(i.0)(a5)
	add	a4,a3,a4
	lui	a3,%hi(a.1)
	addi	a3,a3,%lo(a.1)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lui	a5,%hi(i.0)
	lw	a5,%lo(i.0)(a5)
	addi	a4,a5,1
	lui	a5,%hi(i.0)
	sw	a4,%lo(i.0)(a5)
.L2:
	lui	a5,%hi(i.0)
	lw	a4,%lo(i.0)(a5)
	li	a5,599
	ble	a4,a5,.L3
	lui	a5,%hi(a.1)
	addi	a5,a5,%lo(a.1)
	lw	a5,20(a5)
	mv	a0,a5
	lw	s0,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.local	a.1
	.comm	a.1,2400,4
	.local	i.0
	.comm	i.0,4,4
	.ident	"GCC: (GNU) 11.2.1 20210813"
