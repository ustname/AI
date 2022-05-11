	.file	"var.cpp"
	.text
	.section	.text$_ZStorSt13_Ios_OpenmodeS_,"x"
	.linkonce discard
	.globl	_ZStorSt13_Ios_OpenmodeS_
	.def	_ZStorSt13_Ios_OpenmodeS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStorSt13_Ios_OpenmodeS_
_ZStorSt13_Ios_OpenmodeS_:
.LFB1402:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	orl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
.lcomm _ZStL8__ioinit,1,1
	.text
	.globl	_Z10legal_typei
	.def	_Z10legal_typei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10legal_typei
_Z10legal_typei:
.LFB2363:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$27, 16(%rbp)
	jle	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	cmpl	$0, 16(%rbp)
	jns	.L6
	movl	$0, %eax
	jmp	.L5
.L6:
	movl	$1, %eax
.L5:
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN3varC2Ev
	.def	_ZN3varC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3varC2Ev
_ZN3varC2Ev:
.LFB2365:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movb	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	16(%rbp), %rax
	movb	$0, 9(%rax)
	movq	16(%rbp), %rax
	movw	$0, 10(%rax)
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN3varC1Ev
	.def	_ZN3varC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3varC1Ev,_ZN3varC2Ev
	.align 2
	.globl	_ZN3var4initEPKch
	.def	_ZN3var4initEPKch;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var4initEPKch
_ZN3var4initEPKch:
.LFB2367:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movl	%r9d, %eax
	movb	%al, 56(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movzbl	56(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	32(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN3varC2Eh
	.def	_ZN3varC2Eh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3varC2Eh
_ZN3varC2Eh:
.LFB2369:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movzbl	24(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	16(%rbp), %rax
	movb	$0, 9(%rax)
	movq	16(%rbp), %rax
	movw	$0, 10(%rax)
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN3varC1Eh
	.def	_ZN3varC1Eh;	.scl	2;	.type	32;	.endef
	.set	_ZN3varC1Eh,_ZN3varC2Eh
	.section .rdata,"dr"
.LC0:
	.ascii "Unregistered type\0"
	.text
	.align 2
	.globl	_ZN3varC2Ehx
	.def	_ZN3varC2Ehx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3varC2Ehx
_ZN3varC2Ehx:
.LFB2372:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movq	%r8, 32(%rbp)
	movb	%al, 24(%rbp)
	movq	16(%rbp), %rax
	movb	$0, 9(%rax)
	movq	16(%rbp), %rax
	movw	$0, 10(%rax)
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movzbl	24(%rbp), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movb	%dl, 8(%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movzbl	24(%rbp), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	subl	$4, %eax
	cmpl	$16, %eax
	ja	.L12
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L14(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L14(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L14:
	.long	.L18-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L17-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L16-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L15-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L13-.L14
	.text
.L13:
	movq	32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L19
.L16:
	movq	32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L19
.L15:
	movq	32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L19
.L18:
	movq	32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L19
.L17:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	32(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L19
.L12:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$-1, %ecx
	call	exit
.L19:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN3varC1Ehx
	.def	_ZN3varC1Ehx;	.scl	2;	.type	32;	.endef
	.set	_ZN3varC1Ehx,_ZN3varC2Ehx
	.section .rdata,"dr"
.LC1:
	.ascii "(NULL)\0"
	.text
	.align 2
	.globl	_ZN3varC2EPKch
	.def	_ZN3varC2EPKch;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3varC2EPKch
_ZN3varC2EPKch:
.LFB2375:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, %eax
	movb	%al, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L21
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_Z7strndupPKcy
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L22
.L21:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
.L22:
	movq	16(%rbp), %rax
	movzbl	32(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	16(%rbp), %rax
	movb	$0, 9(%rax)
	movq	16(%rbp), %rax
	movw	$0, 10(%rax)
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN3varC1EPKch
	.def	_ZN3varC1EPKch;	.scl	2;	.type	32;	.endef
	.set	_ZN3varC1EPKch,_ZN3varC2EPKch
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "Reference type are not allowed to make an array\0"
	.text
	.align 2
	.globl	_ZN3varC2EPKchx
	.def	_ZN3varC2EPKchx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3varC2EPKchx
_ZN3varC2EPKchx:
.LFB2378:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, %eax
	movq	%r9, 40(%rbp)
	movb	%al, 32(%rbp)
	movzbl	32(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L24
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L24:
	movq	16(%rbp), %rax
	movb	$0, 9(%rax)
	movq	16(%rbp), %rax
	movw	$0, 10(%rax)
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movzbl	32(%rbp), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movb	%dl, 8(%rax)
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	movq	16(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.L23
.L25:
	movzbl	32(%rbp), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	subl	$4, %eax
	cmpl	$16, %eax
	ja	.L27
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L29(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L29(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L29:
	.long	.L33-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L32-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L31-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L30-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L28-.L29
	.text
.L28:
	movq	40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L23
.L31:
	movq	40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L23
.L30:
	movq	40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L23
.L33:
	movq	40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L23
.L32:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	40(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	jmp	.L23
.L27:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$-1, %ecx
	call	exit
	nop
.L23:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN3varC1EPKchx
	.def	_ZN3varC1EPKchx;	.scl	2;	.type	32;	.endef
	.set	_ZN3varC1EPKchx,_ZN3varC2EPKchx
	.align 2
	.globl	_ZN3var5clearEv
	.def	_ZN3var5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var5clearEv
_ZN3var5clearEv:
.LFB2380:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$1040, %rsp
	.seh_stackalloc	1040
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 928(%rbp)
	movq	928(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_Z8strcpy_sILy1000EEiRAT__cPKc
	movq	928(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	928(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L35:
	movq	928(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L36
	movq	928(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L39
.L36:
	movq	928(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	jne	.L39
	movq	928(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	928(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movl	$40, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L38:
	movq	928(%rbp), %rax
	movq	$0, 16(%rax)
.L39:
	nop
	addq	$1040, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "Type struct is not allowed at array duplicating \0"
.LC4:
	.ascii "Unknown data type of \0"
.LC5:
	.ascii " with data type \0"
	.text
	.align 2
	.globl	_ZN3var3dupEPc
	.def	_ZN3var3dupEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var3dupEPc
_ZN3var3dupEPc:
.LFB2381:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$192, %rsp
	.seh_stackalloc	192
	leaq	192(%rsp), %rbp
	.seh_setframe	%rbp, 192
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L41
	movl	$40, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	movq	%rbx, %rcx
.LEHB1:
	call	_ZN3varC1Ehx
.LEHE1:
	movq	%rbx, -8(%rbp)
	cmpq	$0, 40(%rbp)
	je	.L42
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
.LEHB2:
	call	*%rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L42:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L43
	cmpl	$20, %eax
	jg	.L70
	cmpl	$16, %eax
	je	.L45
	cmpl	$16, %eax
	jg	.L70
	cmpl	$4, %eax
	je	.L46
	cmpl	$12, %eax
	jne	.L70
	movq	$0, -16(%rbp)
	jmp	.L47
.L48:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -16(%rbp)
.L47:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L48
	jmp	.L54
.L45:
	movq	$0, -24(%rbp)
	jmp	.L50
.L51:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	addq	$1, -24(%rbp)
.L50:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L51
	jmp	.L54
.L43:
	movq	$0, -32(%rbp)
	jmp	.L52
.L53:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rcx
	movq	-32(%rbp), %rdx
	salq	$4, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	%rax, 8(%rbx)
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -32(%rbp)
.L52:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L53
	jmp	.L54
.L46:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L41:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	jne	.L55
	movl	$40, %ecx
	call	_Znwy
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZN3varC1Eh
	movq	%rbx, -8(%rbp)
	cmpq	$0, 40(%rbp)
	je	.L56
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L56:
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$40, %edx
	movq	%rax, %rcx
	call	calloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L57
.L60:
	movq	32(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	jne	.L58
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZN3var3dupEPc
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L59
.L58:
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN3varC1Eh
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-128(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-112(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_ZN3varC1EPKch
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-80(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	call	_ZN3var5writeERS_
.L59:
	addq	$1, -40(%rbp)
.L57:
	movq	-64(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L60
	jmp	.L54
.L55:
	movl	$40, %ecx
	call	_Znwy
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZN3varC1Eh
	movq	%rbx, -8(%rbp)
	cmpq	$0, 40(%rbp)
	je	.L61
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L61:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L62
	cmpl	$20, %eax
	jg	.L63
	cmpl	$12, %eax
	je	.L64
	cmpl	$16, %eax
	je	.L65
	jmp	.L63
.L64:
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L54
.L62:
	movq	32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L54
.L65:
	movq	32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.L54
.L63:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L70:
	nop
.L54:
	movq	-8(%rbp), %rax
	jmp	.L69
.L68:
	movq	%rax, %rsi
	movl	$40, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movq	%rsi, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE2:
.L69:
	addq	$192, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2381:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2381-.LLSDACSB2381
.LLSDACSB2381:
	.uleb128 .LEHB0-.LFB2381
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2381
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L68-.LFB2381
	.uleb128 0
	.uleb128 .LEHB2-.LFB2381
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2381:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "Unknown\0"
.LC7:
	.ascii "Array\0"
.LC8:
	.ascii "Structure\0"
.LC9:
	.ascii "Boolean\0"
.LC10:
	.ascii "Integral\0"
.LC11:
	.ascii "Float\0"
.LC12:
	.ascii "String\0"
.LC13:
	.ascii "Buffer\0"
.LC14:
	.ascii "Reference\0"
.LC15:
	.ascii "NULL\0"
	.text
	.globl	_Z12get_datatypei
	.def	_Z12get_datatypei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12get_datatypei
_Z12get_datatypei:
.LFB2382:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$24, 16(%rbp)
	ja	.L72
	movl	16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L74(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L74(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L74:
	.long	.L82-.L74
	.long	.L81-.L74
	.long	.L80-.L74
	.long	.L72-.L74
	.long	.L79-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L78-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L77-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L76-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L75-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L72-.L74
	.long	.L73-.L74
	.text
.L82:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	jmp	.L83
.L80:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	jmp	.L83
.L79:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	jmp	.L83
.L78:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	jmp	.L83
.L77:
	movl	$9, %edx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	_Z7strndupPKcy
	jmp	.L83
.L76:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	jmp	.L83
.L75:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	jmp	.L83
.L73:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	jmp	.L83
.L81:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	jmp	.L83
.L72:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	nop
.L83:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZL8sen_compPcPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL8sen_compPcPKc
_ZL8sen_compPcPKc:
.LFB2383:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L85
.L88:
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	addq	$1, -8(%rbp)
.L85:
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jb	.L88
	movl	$1, %eax
.L87:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC16:
	.ascii "int\0"
.LC17:
	.ascii "float\0"
.LC18:
	.ascii "bool\0"
.LC19:
	.ascii "string\0"
.LC20:
	.ascii "Undefined \0"
	.text
	.globl	_Z14get_datatype_iPc
	.def	_Z14get_datatype_iPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14get_datatype_iPc
_Z14get_datatype_iPc:
.LFB2384:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZL8sen_compPcPKc
	testb	%al, %al
	je	.L90
	movl	$12, %eax
	jmp	.L91
.L90:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZL8sen_compPcPKc
	testb	%al, %al
	je	.L92
	movl	$16, %eax
	jmp	.L91
.L92:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZL8sen_compPcPKc
	testb	%al, %al
	je	.L93
	movl	$8, %eax
	jmp	.L91
.L93:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZL8sen_compPcPKc
	testb	%al, %al
	je	.L94
	movl	$20, %eax
	jmp	.L91
.L94:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L91:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC21:
	.ascii "Cant write single data into \"\0"
.LC22:
	.ascii "\" since the data type was \0"
.LC23:
	.ascii " has unknown data type (\0"
.LC24:
	.ascii ")\0"
	.text
	.align 2
	.globl	_ZN3var5writeE7variant
	.def	_ZN3var5writeE7variant;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var5writeE7variant
_ZN3var5writeE7variant:
.LFB2385:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$2, %al
	je	.L96
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L96
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$24, %al
	jne	.L97
.L96:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L97:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	ja	.L98
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L100(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L100(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L100:
	.long	.L98-.L100
	.long	.L108-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L103-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L102-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L101-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L98-.L100
	.long	.L99-.L100
	.text
.L99:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rcx
	call	free
.L105:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	addq	$1, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L106
.L102:
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L106
.L101:
	movsd	40(%rbp), %xmm0
	movq	32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.L106
.L103:
	movzbl	40(%rbp), %edx
	movq	32(%rbp), %rax
	movb	%dl, 16(%rax)
	jmp	.L106
.L98:
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L108:
	nop
.L106:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC25:
	.ascii " from variable \0"
.LC26:
	.ascii " has data type \0"
.LC27:
	.ascii "Cant write \0"
.LC28:
	.ascii " into \0"
.LC29:
	.ascii "Not yet coded :p\0"
	.text
	.align 2
	.globl	_ZN3var5writeERS_
	.def	_ZN3var5writeERS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var5writeERS_
_ZN3var5writeERS_:
.LFB2386:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$2, %al
	je	.L110
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L110
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$24, %al
	jne	.L111
.L110:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L111:
	movq	40(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$2, %al
	je	.L112
	movq	40(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L112
	movq	40(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$24, %al
	jne	.L113
.L112:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L113:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %edx
	movq	40(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	%al, %dl
	je	.L114
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L114:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	ja	.L115
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L117(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L117(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L117:
	.long	.L115-.L117
	.long	.L121-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L120-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L119-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L118-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L115-.L117
	.long	.L116-.L117
	.text
.L116:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rcx
	call	free
.L122:
	movq	40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L123
.L119:
	movq	40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L123
.L118:
	movq	40(%rbp), %rax
	movsd	16(%rax), %xmm0
	movq	32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.L123
.L121:
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L120:
	movq	40(%rbp), %rax
	movzbl	16(%rax), %edx
	movq	32(%rbp), %rax
	movb	%dl, 16(%rax)
	jmp	.L123
.L115:
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h
	movq	%rax, %rcx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L123:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN3var4readEv
	.def	_ZN3var4readEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var4readEv
_ZN3var4readEv:
.LFB2387:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L126
	cmpl	$20, %eax
	jg	.L132
	cmpl	$16, %eax
	je	.L128
	cmpl	$16, %eax
	jg	.L132
	cmpl	$8, %eax
	je	.L129
	cmpl	$12, %eax
	jne	.L132
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L130
.L128:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L130
.L129:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L130
.L126:
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L130
.L132:
	nop
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
.L130:
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN3var7compareERS_
	.def	_ZN3var7compareERS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var7compareERS_
_ZN3var7compareERS_:
.LFB2388:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %edx
	movq	24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	%al, %dl
	je	.L134
	movl	$-2, %eax
	jmp	.L133
.L134:
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L136
	cmpl	$20, %eax
	jg	.L153
	cmpl	$12, %eax
	je	.L138
	cmpl	$16, %eax
	je	.L139
	jmp	.L153
.L138:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L140
	movl	$1, %eax
	jmp	.L133
.L140:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L141
	movl	$-1, %eax
	jmp	.L133
.L141:
	movl	$0, %eax
	jmp	.L133
.L139:
	movq	16(%rbp), %rax
	movsd	16(%rax), %xmm0
	movq	24(%rbp), %rax
	movsd	16(%rax), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L151
	movl	$1, %eax
	jmp	.L133
.L151:
	movq	16(%rbp), %rax
	movsd	16(%rax), %xmm1
	movq	24(%rbp), %rax
	movsd	16(%rax), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L152
	movl	$-1, %eax
	jmp	.L133
.L152:
	movl	$0, %eax
	jmp	.L133
.L136:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L146
	movl	$1, %eax
	jmp	.L133
.L146:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L147
	movl	$-1, %eax
	jmp	.L133
.L147:
	movq	24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rcx
	call	strcmp
	movl	$0, %eax
	jmp	.L133
.L153:
	nop
.L133:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC30:
	.ascii "Cant printing buffer\0"
.LC31:
	.ascii "\11\0"
.LC32:
	.ascii "(NULL) = \0"
.LC33:
	.ascii " = \0"
.LC34:
	.ascii "[ \0"
.LC35:
	.ascii "]\0"
.LC36:
	.ascii ", \0"
.LC37:
	.ascii "true, \0"
.LC38:
	.ascii "false, \0"
.LC39:
	.ascii "true\0"
.LC40:
	.ascii "false\0"
.LC41:
	.ascii "\"\0"
.LC42:
	.ascii "\", \0"
.LC43:
	.ascii " ]\0"
.LC44:
	.ascii "{ }\0"
.LC45:
	.ascii "{\0"
.LC46:
	.ascii "}\0"
	.text
	.globl	_Z9print_varP3vari
	.def	_Z9print_varP3vari;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9print_varP3vari
_Z9print_varP3vari:
.LFB2389:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movl	%edx, 40(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$24, %al
	jne	.L155
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE3:
.L155:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movq	$0, -8(%rbp)
	jmp	.L156
.L157:
	leaq	-64(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rcx
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	addq	$1, -8(%rbp)
.L156:
	movl	40(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jb	.L157
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L158
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L159
.L158:
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L159:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L160
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L161
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %ebx
	jmp	.L162
.L161:
	movq	$0, -16(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L163
	cmpl	$20, %eax
	jg	.L199
	cmpl	$16, %eax
	je	.L165
	cmpl	$16, %eax
	jg	.L199
	cmpl	$8, %eax
	je	.L166
	cmpl	$12, %eax
	jne	.L199
	movq	$0, -16(%rbp)
	jmp	.L167
.L168:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$1, -16(%rbp)
.L167:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L168
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	jmp	.L169
.L165:
	movq	$0, -16(%rbp)
	jmp	.L170
.L171:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$1, -16(%rbp)
.L170:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L171
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	jmp	.L169
.L166:
	movq	$0, -16(%rbp)
	jmp	.L172
.L175:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L173
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L174
.L173:
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L174:
	addq	$1, -16(%rbp)
.L172:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L175
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L176
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L169
.L176:
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L169
.L163:
	movq	$0, -16(%rbp)
	jmp	.L178
.L179:
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$1, -16(%rbp)
.L178:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L179
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L169
.L199:
	nop
.L169:
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L180
.L160:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	jne	.L181
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %ebx
	jmp	.L162
.L182:
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movq	$0, -24(%rbp)
	jmp	.L183
.L184:
	movl	40(%rbp), %eax
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movq	32(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%r8, %rax
	movq	%rax, %rcx
	call	_Z9print_varP3vari
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	addq	$1, -24(%rbp)
.L183:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.L184
	movl	40(%rbp), %eax
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movq	32(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%r8, %rax
	movq	%rax, %rcx
	call	_Z9print_varP3vari
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	%rax, %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L180
.L181:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L185
	cmpl	$20, %eax
	jg	.L200
	cmpl	$16, %eax
	je	.L187
	cmpl	$16, %eax
	jg	.L200
	cmpl	$8, %eax
	je	.L188
	cmpl	$12, %eax
	jne	.L200
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	jmp	.L189
.L187:
	movq	32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	jmp	.L189
.L188:
	movq	32(%rbp), %rax
	movzbl	16(%rax), %eax
	testb	%al, %al
	je	.L190
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L189
.L190:
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L189
.L185:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L192
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L189
.L192:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE4:
	jmp	.L189
.L200:
	nop
.L189:
	movl	$0, %ebx
	jmp	.L162
.L180:
	movl	$1, %ebx
.L162:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	cmpl	$1, %ebx
	jmp	.L198
.L197:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
.L198:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2389-.LLSDACSB2389
.LLSDACSB2389:
	.uleb128 .LEHB3-.LFB2389
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2389
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L197-.LFB2389
	.uleb128 0
	.uleb128 .LEHB5-.LFB2389
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2389:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC47:
	.ascii " size = \0"
	.text
	.align 2
	.globl	_ZN3var5printEv
	.def	_ZN3var5printEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var5printEv
_ZN3var5printEv:
.LFB2391:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$24, %al
	jne	.L202
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L202:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L203
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L204
.L203:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L204:
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L205
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	$0, -8(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L206
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L201
.L206:
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L208
	cmpl	$20, %eax
	jg	.L238
	cmpl	$16, %eax
	je	.L210
	cmpl	$16, %eax
	jg	.L238
	cmpl	$8, %eax
	je	.L211
	cmpl	$12, %eax
	jne	.L238
	movq	$0, -8(%rbp)
	jmp	.L212
.L213:
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$1, -8(%rbp)
.L212:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L213
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	jmp	.L214
.L210:
	movq	$0, -8(%rbp)
	jmp	.L215
.L216:
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$1, -8(%rbp)
.L215:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L216
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	jmp	.L214
.L211:
	movq	$0, -8(%rbp)
	jmp	.L217
.L220:
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L218
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L219
.L218:
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L219:
	addq	$1, -8(%rbp)
.L217:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L220
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L221
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L214
.L221:
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L214
.L208:
	movq	$0, -8(%rbp)
	jmp	.L223
.L224:
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addq	$1, -8(%rbp)
.L223:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L224
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L214
.L238:
	nop
.L214:
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L201
.L205:
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	jne	.L225
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L226
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L201
.L226:
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movq	$0, -16(%rbp)
	jmp	.L227
.L228:
	movq	16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_Z9print_varP3vari
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	addq	$1, -16(%rbp)
.L227:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L228
	movq	16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_Z9print_varP3vari
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L201
.L225:
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L229
	cmpl	$20, %eax
	jg	.L239
	cmpl	$16, %eax
	je	.L231
	cmpl	$16, %eax
	jg	.L239
	cmpl	$8, %eax
	je	.L232
	cmpl	$12, %eax
	jne	.L239
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	jmp	.L233
.L231:
	movq	16(%rbp), %rax
	movsd	16(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	jmp	.L233
.L232:
	movq	16(%rbp), %rax
	movzbl	16(%rax), %eax
	testb	%al, %al
	je	.L234
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L233
.L234:
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L233
.L229:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L236
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L233
.L236:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L233
.L239:
	nop
.L233:
	nop
.L201:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN3var4saveEPKc
	.def	_ZN3var4saveEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var4saveEPKc
_ZN3var4saveEPKc:
.LFB2392:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$552, %rsp
	.seh_stackalloc	552
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 448(%rbp)
	movq	%rdx, 456(%rbp)
	movl	$16, %edx
	movl	$4, %ecx
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %ecx
	movq	456(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
.LEHB6:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE6:
	movq	448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	strlen
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
.LEHB7:
	call	_ZNSo5writeEPKcx
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	448(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	448(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	448(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L241
	movq	448(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	448(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L242
	cmpl	$20, %eax
	jg	.L264
	cmpl	$16, %eax
	je	.L244
	cmpl	$16, %eax
	jg	.L264
	cmpl	$8, %eax
	je	.L245
	cmpl	$12, %eax
	jne	.L264
	movq	$0, 408(%rbp)
	jmp	.L246
.L247:
	movq	448(%rbp), %rax
	movq	32(%rax), %rdx
	movq	408(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	addq	$1, 408(%rbp)
.L246:
	movq	448(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, 408(%rbp)
	jb	.L247
	jmp	.L255
.L244:
	movq	$0, 400(%rbp)
	jmp	.L249
.L250:
	movq	448(%rbp), %rax
	movq	32(%rax), %rdx
	movq	400(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	addq	$1, 400(%rbp)
.L249:
	movq	448(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, 400(%rbp)
	jb	.L250
	jmp	.L255
.L245:
	movq	$0, 392(%rbp)
	jmp	.L251
.L252:
	movq	448(%rbp), %rax
	movq	32(%rax), %rdx
	movq	392(%rbp), %rax
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	addq	$1, 392(%rbp)
.L251:
	movq	448(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, 392(%rbp)
	jb	.L252
	jmp	.L255
.L242:
	movq	$0, 384(%rbp)
	jmp	.L253
.L254:
	movq	448(%rbp), %rax
	movq	32(%rax), %rdx
	movq	384(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	448(%rbp), %rax
	movq	32(%rax), %rdx
	movq	384(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	448(%rbp), %rax
	movq	32(%rax), %rdx
	movq	384(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	addq	$1, 384(%rbp)
.L253:
	movq	448(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, 384(%rbp)
	jb	.L254
	jmp	.L255
.L241:
	movq	448(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L256
	cmpl	$20, %eax
	jg	.L265
	cmpl	$16, %eax
	je	.L258
	cmpl	$16, %eax
	jg	.L265
	cmpl	$8, %eax
	je	.L259
	cmpl	$12, %eax
	jne	.L265
	movq	448(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	jmp	.L255
.L258:
	movq	448(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	jmp	.L255
.L256:
	movq	448(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	448(%rbp), %rax
	movq	16(%rax), %rcx
	movq	448(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	jmp	.L255
.L259:
	movq	448(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	jmp	.L255
.L264:
	nop
	jmp	.L255
.L265:
	nop
.L255:
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE7:
	movl	$0, %ebx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movl	%ebx, %eax
	jmp	.L263
.L262:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L263:
	addq	$552, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2392:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2392-.LLSDACSB2392
.LLSDACSB2392:
	.uleb128 .LEHB6-.LFB2392
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2392
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L262-.LFB2392
	.uleb128 0
	.uleb128 .LEHB8-.LFB2392
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2392:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC48:
	.ascii " is not an array but \0"
.LC49:
	.ascii " got an overflow with \0"
.LC50:
	.ascii " to \0"
	.text
	.align 2
	.globl	_ZN3var9arr_writeEi7variant
	.def	_ZN3var9arr_writeEi7variant;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var9arr_writeEi7variant
_ZN3var9arr_writeEi7variant:
.LFB2393:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movl	%edx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L267
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L267:
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jg	.L268
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC50(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	40(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L268:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L269
	cmpl	$20, %eax
	jg	.L276
	cmpl	$16, %eax
	je	.L271
	cmpl	$16, %eax
	jg	.L276
	cmpl	$8, %eax
	je	.L272
	cmpl	$12, %eax
	je	.L273
	jmp	.L276
.L272:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	48(%rbp), %eax
	movb	%al, (%rdx)
	jmp	.L274
.L273:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L274
.L271:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movsd	48(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L274
.L269:
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	32(%rbp), %rdx
	movq	32(%rdx), %rcx
	movl	40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	movq	48(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	32(%rdx), %rcx
	movl	40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	%rax, 8(%rbx)
	jmp	.L274
.L276:
	nop
.L274:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC51:
	.ascii "Expected \0"
.LC52:
	.ascii " but given \0"
	.align 8
.LC53:
	.ascii " got an overflow with the size of \0"
.LC54:
	.ascii " to index \0"
	.text
	.align 2
	.globl	_ZN3var9arr_writeEiRS_
	.def	_ZN3var9arr_writeEiRS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var9arr_writeEiRS_
_ZN3var9arr_writeEiRS_:
.LFB2394:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movl	%edx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L278
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L278:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movl	%eax, %edx
	movq	48(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	%al, %dl
	je	.L279
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L279:
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jg	.L280
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC54(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	40(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L280:
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	cmpl	$20, %eax
	je	.L281
	cmpl	$20, %eax
	jg	.L288
	cmpl	$16, %eax
	je	.L283
	cmpl	$16, %eax
	jg	.L288
	cmpl	$8, %eax
	je	.L284
	cmpl	$12, %eax
	je	.L285
	jmp	.L288
.L284:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movzbl	16(%rax), %eax
	movb	%al, (%rdx)
	jmp	.L286
.L285:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rdx)
	jmp	.L286
.L283:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, (%rdx)
	jmp	.L286
.L281:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	40(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rdx)
	movq	48(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rbp), %rdx
	movq	32(%rdx), %rcx
	movl	40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
	call	*%rax
	movq	%rax, 8(%rbx)
	jmp	.L286
.L288:
	nop
.L286:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC55:
	.ascii " is not an array type\0"
.LC56:
	.ascii " is overflowing at index \0"
.LC57:
	.ascii " while the count is \0"
	.text
	.align 2
	.globl	_ZN3varixEx
	.def	_ZN3varixEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3varixEx
_ZN3varixEx:
.LFB2395:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L290
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L290:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, 24(%rbp)
	jl	.L291
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC56(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	leaq	.LC57(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	call	_ZNSolsEx
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L291:
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movzbl	%al, %eax
	subl	$4, %eax
	cmpl	$16, %eax
	ja	.L292
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L294(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L294(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L294:
	.long	.L298-.L294
	.long	.L292-.L294
	.long	.L292-.L294
	.long	.L292-.L294
	.long	.L297-.L294
	.long	.L292-.L294
	.long	.L292-.L294
	.long	.L292-.L294
	.long	.L296-.L294
	.long	.L292-.L294
	.long	.L292-.L294
	.long	.L292-.L294
	.long	.L295-.L294
	.long	.L292-.L294
	.long	.L292-.L294
	.long	.L292-.L294
	.long	.L293-.L294
	.text
.L293:
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L299
.L296:
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L299
.L295:
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L299
.L298:
	movq	16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L299
.L297:
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -8(%rbp)
	jmp	.L299
.L292:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$-1, %ecx
	call	exit
.L299:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC58:
	.ascii " is not an buffer\0"
	.text
	.align 2
	.globl	_ZN3var9buf_writeEPvxi
	.def	_ZN3var9buf_writeEPvxi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var9buf_writeEPvxi
_ZN3var9buf_writeEPvxi:
.LFB2396:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$24, %al
	je	.L302
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L302:
	cmpl	$0, 40(%rbp)
	je	.L303
	cmpl	$1, 40(%rbp)
	jmp	.L305
.L303:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L306
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	free
.L306:
	movq	32(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
.L305:
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC59:
	.ascii " is not a structure\0"
.LC60:
	.ascii " doesn't have \0"
.LC61:
	.ascii "Writing \0"
.LC62:
	.ascii " expected second argument\0"
	.text
	.align 2
	.globl	_ZN3var12struct_writeEPKc7variant
	.def	_ZN3var12struct_writeEPKc7variant;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var12struct_writeEPKc7variant
_ZN3var12struct_writeEPKc7variant:
.LFB2397:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L309
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC59(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L309:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L310
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC60(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L310:
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$24, %al
	jne	.L311
	leaq	.LC61(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC62(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L311:
	movq	32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5writeE7variant
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC63:
	.ascii " but is not an array\0"
	.text
	.align 2
	.globl	_ZN3var12struct_writeEPKcx7variant
	.def	_ZN3var12struct_writeEPKcx7variant;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var12struct_writeEPKcx7variant
_ZN3var12struct_writeEPKcx7variant:
.LFB2398:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L314
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC59(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L314:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L315
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC60(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L315:
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L316
	leaq	.LC61(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC63(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L316:
	movq	32(%rbp), %rax
	movl	%eax, %ecx
	movq	40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	_ZN3var9arr_writeEi7variant
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC64:
	.ascii " is not an structure\0"
	.text
	.align 2
	.globl	_ZN3var11struct_findEPKc
	.def	_ZN3var11struct_findEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var11struct_findEPKc
_ZN3var11struct_findEPKc:
.LFB2399:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L319
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L319:
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L320
.L323:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZL8sen_compPcPKc
	testb	%al, %al
	je	.L321
	movq	16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	jmp	.L322
.L321:
	addq	$1, -8(%rbp)
.L320:
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L323
	movl	$0, %eax
.L322:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN3var13struct_createEPKch
	.def	_ZN3var13struct_createEPKch;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var13struct_createEPKch
_ZN3var13struct_createEPKch:
.LFB2400:
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
	movq	%rdx, 40(%rbp)
	movl	%r8d, %eax
	movb	%al, 48(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L325
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L325:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L326
	movl	$40, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L327
.L326:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	call	realloc
	movq	32(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L327:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movzbl	48(%rbp), %ecx
	movq	40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_ZN3varC1EPKch
	movq	-8(%rbp), %rax
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
	movq	-8(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN3var13struct_createEPKchx
	.def	_ZN3var13struct_createEPKchx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3var13struct_createEPKchx
_ZN3var13struct_createEPKchx:
.LFB2401:
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
	movq	%rdx, 40(%rbp)
	movl	%r8d, %eax
	movq	%r9, 56(%rbp)
	movb	%al, 48(%rbp)
	movq	32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L330
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L330:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L331
	movl	$40, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L332
.L331:
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	call	realloc
	movq	32(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L332:
	movq	32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movzbl	48(%rbp), %ecx
	movq	56(%rbp), %r8
	movq	40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%r8, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_ZN3varC1EPKchx
	movq	-8(%rbp), %rax
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
	movq	-8(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC65:
	.ascii " is not a strcuture type\0"
.LC66:
	.ascii "there is no member \"\0"
.LC67:
	.ascii "\" in \0"
	.text
	.align 2
	.globl	_ZN3varixEPKc
	.def	_ZN3varixEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3varixEPKc
_ZN3varixEPKc:
.LFB2402:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$4, %al
	je	.L335
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L335:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L336
	leaq	.LC66(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L336:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_Z8strcpy_sILy1000EEiRAT__cPKc,"x"
	.linkonce discard
	.globl	_Z8strcpy_sILy1000EEiRAT__cPKc
	.def	_Z8strcpy_sILy1000EEiRAT__cPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8strcpy_sILy1000EEiRAT__cPKc
_Z8strcpy_sILy1000EEiRAT__cPKc:
.LFB2684:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %r8
	movl	$1000, %edx
	movq	16(%rbp), %rcx
	movq	__imp_strcpy_s(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2964:
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
.LFB2963:
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
	jne	.L343
	cmpl	$65535, 24(%rbp)
	jne	.L343
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L343:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__Z10legal_typei;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z10legal_typei
_GLOBAL__sub_I__Z10legal_typei:
.LFB2965:
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
	.quad	_GLOBAL__sub_I__Z10legal_typei
	.ident	"GCC: (Rev1, Built by MSYS2 project) 11.2.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_Z7strndupPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	calloc;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEx;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5writeEPKcx;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
