	.file	"heap-1d-ind-o3.c"
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
	li	a5,4096
	addi	a0,a5,-1696
	call	malloc
	mv	a5,a0
	sw	a5,-24(s0)
	li	a0,4
	call	malloc
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	li	a4,1
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,4
	li	a4,1
	sw	a4,0(a5)
	lw	a5,-20(s0)
	li	a4,2
	sw	a4,0(a5)
	j	.L2
.L3:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,1073741824
	addi	a5,a5,-2
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	lw	a2,-24(s0)
	add	a5,a2,a5
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	lw	a4,0(a5)
	li	a5,599
	ble	a4,a5,.L3
	lw	a5,-24(s0)
	lw	a5,20(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.1 20210813"
