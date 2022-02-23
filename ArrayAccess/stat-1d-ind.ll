	.file	"stat-1d-ind.c"
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
	lui	a5,%hi(a.2)
	addi	a5,a5,%lo(a.2)
	li	a4,5
	sw	a4,4(a5)
	lui	a5,%hi(i.1)
	lw	a5,%lo(i.1)(a5)
	lui	a4,%hi(a.2)
	addi	a4,a4,%lo(a.2)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,2
	sw	a4,0(a5)
	lui	a5,%hi(i.1)
	lw	a5,%lo(i.1)(a5)
	addi	a5,a5,-3
	lui	a4,%hi(a.2)
	addi	a4,a4,%lo(a.2)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,8
	sw	a4,0(a5)
	lui	a5,%hi(j.0)
	lw	a5,%lo(j.0)(a5)
	lui	a4,%hi(a.2)
	addi	a4,a4,%lo(a.2)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,3
	sw	a4,0(a5)
	lui	a5,%hi(a.2)
	addi	a5,a5,%lo(a.2)
	lw	a4,4(a5)
	lui	a5,%hi(i.1)
	lw	a5,%lo(i.1)(a5)
	lui	a3,%hi(a.2)
	addi	a3,a3,%lo(a.2)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	add	a5,a4,a5
	mv	a0,a5
	lw	s0,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.local	a.2
	.comm	a.2,24,4
	.section	.sdata,"aw"
	.align	2
	.type	i.1, @object
	.size	i.1, 4
i.1:
	.word	4
	.align	2
	.type	j.0, @object
	.size	j.0, 4
j.0:
	.word	5
	.ident	"GCC: (GNU) 11.2.1 20210813"
