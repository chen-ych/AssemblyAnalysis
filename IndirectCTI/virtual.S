	.text
	.file	"virtual.cpp"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$16, %edi
	callq	_Znwm
	xorl	%esi, %esi
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	$16, %edx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	memset
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZN4BaseC2Ev
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movl	$16, %edi
	callq	_Znwm
	xorl	%esi, %esi
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	$16, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	memset
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	_ZN7DerviveC2Ev
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rax, %rdi
	movl	$5, %esi
	callq	*(%rcx)
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	$6, %esi
	callq	*(%rdx)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	xorl	%edx, %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4BaseC2Ev,"axG",@progbits,_ZN4BaseC2Ev,comdat
	.weak	_ZN4BaseC2Ev            # -- Begin function _ZN4BaseC2Ev
	.p2align	4, 0x90
	.type	_ZN4BaseC2Ev,@function
_ZN4BaseC2Ev:                           # @_ZN4BaseC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$_ZTV4Base, %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZN4BaseC2Ev, .Lfunc_end1-_ZN4BaseC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7DerviveC2Ev,"axG",@progbits,_ZN7DerviveC2Ev,comdat
	.weak	_ZN7DerviveC2Ev         # -- Begin function _ZN7DerviveC2Ev
	.p2align	4, 0x90
	.type	_ZN7DerviveC2Ev,@function
_ZN7DerviveC2Ev:                        # @_ZN7DerviveC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	_ZN4BaseC2Ev
	movabsq	$_ZTV7Dervive, %rax
	addq	$16, %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN7DerviveC2Ev, .Lfunc_end2-_ZN7DerviveC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4Base1gEi,"axG",@progbits,_ZN4Base1gEi,comdat
	.weak	_ZN4Base1gEi            # -- Begin function _ZN4Base1gEi
	.p2align	4, 0x90
	.type	_ZN4Base1gEi,@function
_ZN4Base1gEi:                           # @_ZN4Base1gEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$2, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZN4Base1gEi, .Lfunc_end3-_ZN4Base1gEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7Dervive1gEi,"axG",@progbits,_ZN7Dervive1gEi,comdat
	.weak	_ZN7Dervive1gEi         # -- Begin function _ZN7Dervive1gEi
	.p2align	4, 0x90
	.type	_ZN7Dervive1gEi,@function
_ZN7Dervive1gEi:                        # @_ZN7Dervive1gEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$3, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZN7Dervive1gEi, .Lfunc_end4-_ZN7Dervive1gEi
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d\n"
	.size	.L.str, 7

	.type	_ZTV4Base,@object       # @_ZTV4Base
	.section	.rodata._ZTV4Base,"aG",@progbits,_ZTV4Base,comdat
	.weak	_ZTV4Base
	.p2align	3
_ZTV4Base:
	.quad	0
	.quad	_ZTI4Base
	.quad	_ZN4Base1gEi
	.size	_ZTV4Base, 24

	.type	_ZTS4Base,@object       # @_ZTS4Base
	.section	.rodata._ZTS4Base,"aG",@progbits,_ZTS4Base,comdat
	.weak	_ZTS4Base
_ZTS4Base:
	.asciz	"4Base"
	.size	_ZTS4Base, 6

	.type	_ZTI4Base,@object       # @_ZTI4Base
	.section	.rodata._ZTI4Base,"aG",@progbits,_ZTI4Base,comdat
	.weak	_ZTI4Base
	.p2align	3
_ZTI4Base:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS4Base
	.size	_ZTI4Base, 16

	.type	_ZTV7Dervive,@object    # @_ZTV7Dervive
	.section	.rodata._ZTV7Dervive,"aG",@progbits,_ZTV7Dervive,comdat
	.weak	_ZTV7Dervive
	.p2align	3
_ZTV7Dervive:
	.quad	0
	.quad	_ZTI7Dervive
	.quad	_ZN7Dervive1gEi
	.size	_ZTV7Dervive, 24

	.type	_ZTS7Dervive,@object    # @_ZTS7Dervive
	.section	.rodata._ZTS7Dervive,"aG",@progbits,_ZTS7Dervive,comdat
	.weak	_ZTS7Dervive
_ZTS7Dervive:
	.asciz	"7Dervive"
	.size	_ZTS7Dervive, 9

	.type	_ZTI7Dervive,@object    # @_ZTI7Dervive
	.section	.rodata._ZTI7Dervive,"aG",@progbits,_ZTI7Dervive,comdat
	.weak	_ZTI7Dervive
	.p2align	3
_ZTI7Dervive:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS7Dervive
	.quad	_ZTI4Base
	.size	_ZTI7Dervive, 24

	.ident	"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Znwm
	.addrsig_sym printf
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS4Base
	.addrsig_sym _ZTI4Base
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS7Dervive
	.addrsig_sym _ZTI7Dervive
