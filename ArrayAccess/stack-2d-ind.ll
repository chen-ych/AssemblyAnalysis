	.file	"stack-2d-ind.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v_zfh_zvamo_zvlsseg"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96
	sw	s0,92(sp)
	addi	s0,sp,96
	li	a5,1
	sw	a5,-20(s0)
	li	a5,2
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a2,a4,a5
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a3,a4,a5
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	add	a5,a5,a2
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,-68(a5)
	lw	a5,-20(s0)
	addi	a5,a5,10
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-24(s0)
	sw	a4,-68(a5)
	lw	a5,-24(s0)
	addi	a3,a5,2
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,-64(a5)
	lw	a5,-56(s0)
	mv	a0,a5
	lw	s0,92(sp)
	addi	sp,sp,96
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.1 20210813"
