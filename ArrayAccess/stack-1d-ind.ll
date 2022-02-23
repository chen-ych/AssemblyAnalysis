	.file	"stack-1d-ind.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v_zfh_zvamo_zvlsseg"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	li	a5,4
	sw	a5,-20(s0)
	li	a5,5
	sw	a5,-24(s0)
	li	a5,5
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,2
	sw	a4,-32(a5)
	lw	a5,-20(s0)
	addi	a5,a5,-3
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,8
	sw	a4,-32(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,3
	sw	a4,-32(a5)
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-32(a5)
	add	a5,a4,a5
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.1 20210813"
