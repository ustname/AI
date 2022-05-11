	.file	"bsi2.cpp"
	.text
.lcomm _ZStL8__ioinit,1,1
	.globl	_ZN3bsi8bsi_rootE
	.bss
	.align 8
_ZN3bsi8bsi_rootE:
	.space 8
	.section .rdata,"dr"
.LC0:
	.ascii "enum\0"
.LC1:
	.ascii "class\0"
.LC2:
	.ascii "function\0"
	.text
	.globl	_ZN3bsi6searchEPcRi
	.def	_ZN3bsi6searchEPcRi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3bsi6searchEPcRi
_ZN3bsi6searchEPcRi:
.LFB2363:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	_ZN3bsi8bsi_rootE(%rip), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	testb	%al, %al
	je	.L2
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L3
.L2:
	movq	_ZN3bsi8bsi_rootE(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	testb	%al, %al
	je	.L4
	movq	-16(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	testb	%al, %al
	je	.L4
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L3
.L4:
	movq	_ZN3bsi8bsi_rootE(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	testb	%al, %al
	je	.L5
	movq	-16(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	testb	%al, %al
	je	.L5
	movq	24(%rbp), %rax
	movl	$2, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L3
.L5:
	movq	_ZN3bsi8bsi_rootE(%rip), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	testb	%al, %al
	je	.L6
	movq	-16(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	testb	%al, %al
	je	.L6
	movq	24(%rbp), %rax
	movl	$3, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L3
.L6:
	movl	$0, %eax
.L3:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2877:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2876:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L10
	cmpl	$65535, 24(%rbp)
	jne	.L10
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L10:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__ZN3bsi8bsi_rootE;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN3bsi8bsi_rootE
_GLOBAL__sub_I__ZN3bsi8bsi_rootE:
.LFB2878:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN3bsi8bsi_rootE
	.ident	"GCC: (Rev1, Built by MSYS2 project) 11.2.0"
	.def	_ZN3var11struct_findEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
