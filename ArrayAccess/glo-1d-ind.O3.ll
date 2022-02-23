	.file	"glo-1d-ind.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v_zfh_zvamo_zvlsseg"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(i)
	lw	a5,%lo(i)(a5)
	lui	a4,%hi(j)
	lw	a3,%lo(j)(a4)
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	slli	a2,a5,2
	li	a1,5
	addi	a5,a5,-3
	sw	a1,4(a4)
	add	a2,a4,a2
	li	a1,2
	slli	a5,a5,2
	sw	a1,0(a2)
	add	a5,a4,a5
	slli	a3,a3,2
	li	a1,8
	sw	a1,0(a5)
	add	a5,a4,a3
	li	a3,3
	sw	a3,0(a5)
	lw	a0,4(a4)
	lw	a5,0(a2)
	add	a0,a0,a5
	ret
	.size	main, .-main
	.globl	j
	.globl	i
	.globl	a
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	a, @object
	.size	a, 24
a:
	.zero	24
	.section	.sdata,"aw"
	.align	2
	.type	j, @object
	.size	j, 4
j:
	.word	5
	.type	i, @object
	.size	i, 4
i:
	.word	4
	.ident	"GCC: (GNU) 11.2.1 20210813"
