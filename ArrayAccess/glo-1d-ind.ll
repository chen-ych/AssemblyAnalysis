	.file	"glo-1d-ind.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v_zfh_zvamo_zvlsseg"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	a
	.bss
	.align	2
	.type	a, @object
	.size	a, 24
a:
	.zero	24
	.globl	i
	.section	.sdata,"aw"
	.align	2
	.type	i, @object
	.size	i, 4
i:
	.word	4
	.globl	j
	.align	2
	.type	j, @object
	.size	j, 4
j:
	.word	5
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
	li	a4,5
	sw	a4,4(a5)
	lui	a5,%hi(i)
	lw	a5,%lo(i)(a5)
	lui	a4,%hi(a)
	addi	a4,a4,%lo(a)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,2
	sw	a4,0(a5)
	lui	a5,%hi(i)
	lw	a5,%lo(i)(a5)
	addi	a5,a5,-3
	lui	a4,%hi(a)
	addi	a4,a4,%lo(a)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,8
	sw	a4,0(a5)
	lui	a5,%hi(j)
	lw	a5,%lo(j)(a5)
	lui	a4,%hi(a)
	addi	a4,a4,%lo(a)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,3
	sw	a4,0(a5)
	lui	a5,%hi(a)
	addi	a5,a5,%lo(a)
	lw	a4,4(a5)
	lui	a5,%hi(i)
	lw	a5,%lo(i)(a5)
	lui	a3,%hi(a)
	addi	a3,a3,%lo(a)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	add	a5,a4,a5
	mv	a0,a5
	lw	s0,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.1 20210813"
