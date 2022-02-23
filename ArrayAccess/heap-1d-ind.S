	.file	"heap-1d-ind.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v_zfh_zvamo_zvlsseg"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	li	a0,24
	call	malloc
	mv	a5,a0
	sw	a5,-20(s0)
	li	a0,4
	call	malloc
	mv	a5,a0
	sw	a5,-24(s0)
	li	a0,4
	call	malloc
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	li	a4,4
	sw	a4,0(a5)
	lw	a5,-28(s0)
	li	a4,5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,4
	li	a4,5
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	li	a4,2
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,1073741824
	addi	a5,a5,-3
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	li	a4,8
	sw	a4,0(a5)
	lw	a5,-28(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	li	a4,3
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	lw	a3,-20(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	add	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.1 20210813"
