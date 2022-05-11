	.file	"class_system.cpp"
	.text
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
.LC0:
	.ascii "function\0"
.LC1:
	.ascii "ret\0"
.LC2:
	.ascii "argc\0"
.LC3:
	.ascii "argv\0"
.LC4:
	.ascii "ft\0"
.LC5:
	.ascii "data\0"
	.text
	.align 2
	.globl	_ZN13_class_system13function_initEv
	.def	_ZN13_class_system13function_initEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13_class_system13function_initEv
_ZN13_class_system13function_initEv:
.LFB2363:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	leaq	-48(%rbp), %rax
	movl	$4, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3varC1EPKch
	movq	32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	32(%rbp), %rax
	movl	$0, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKch
	movq	32(%rbp), %rax
	movl	$12, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKch
	movq	32(%rbp), %rax
	movl	$4, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKch
	movq	32(%rbp), %rax
	movl	$12, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKch
	movq	32(%rbp), %rax
	movl	$24, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKch
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN13_class_systemC2Ev
	.def	_ZN13_class_systemC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13_class_systemC2Ev
_ZN13_class_systemC2Ev:
.LFB2365:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3varC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN13_class_systemC1Ev
	.def	_ZN13_class_systemC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN13_class_systemC1Ev,_ZN13_class_systemC2Ev
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2880:
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
.LFB2879:
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
	jne	.L6
	cmpl	$65535, 24(%rbp)
	jne	.L6
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L6:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__ZN13_class_system13function_initEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN13_class_system13function_initEv
_GLOBAL__sub_I__ZN13_class_system13function_initEv:
.LFB2881:
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
	.quad	_GLOBAL__sub_I__ZN13_class_system13function_initEv
	.ident	"GCC: (Rev1, Built by MSYS2 project) 11.2.0"
	.def	_ZN3varC1EPKch;	.scl	2;	.type	32;	.endef
	.def	_ZN3var13struct_createEPKch;	.scl	2;	.type	32;	.endef
	.def	_ZN3varC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
