	.file	"var.cpp"
	.text
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB83:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt17__size_to_integery,"x"
	.linkonce discard
	.globl	_ZSt17__size_to_integery
	.def	_ZSt17__size_to_integery;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt17__size_to_integery
_ZSt17__size_to_integery:
.LFB417:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_ZL6printfPKcz;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL6printfPKcz
_ZL6printfPKcz:
.LFB556:
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
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
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
	.globl	var_current
	.bss
	.align 8
var_current:
	.space 8
	.text
	.globl	_Z6_writePN2al3varEPcy4DATAhj
	.def	_Z6_writePN2al3varEPcy4DATAhj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6_writePN2al3varEPcy4DATAhj
_Z6_writePN2al3varEPcy4DATAhj:
.LFB2620:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movl	64(%rbp), %eax
	movb	%al, -20(%rbp)
	cmpq	$0, 40(%rbp)
	jne	.L10
	movl	$-1, %eax
	jmp	.L11
.L10:
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L13
	movq	32(%rbp), %rax
	addq	$16, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE6resizeEy
	jmp	.L14
.L13:
	movq	32(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	addq	$1, %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE6resizeEy
.L14:
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE4backEv
	movq	%rax, -8(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 25(%rax)
.L12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 48(%rbp)
	je	.L15
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L15:
	cmpl	$1, 72(%rbp)
	je	.L16
	cmpl	$2, 72(%rbp)
	je	.L17
	jmp	.L22
.L16:
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movq	-8(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L19
.L17:
	cmpq	$0, 48(%rbp)
	je	.L20
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	-8(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L19
.L20:
	movq	-8(%rbp), %rax
	movq	56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L19
.L22:
	movq	-8(%rbp), %rax
	movq	56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
.L19:
	movq	-8(%rbp), %rax
	movzbl	-20(%rbp), %edx
	movb	%dl, 24(%rax)
	movq	32(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	$0, %eax
.L11:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN2al3var5writeEPcy4DATAhj
	.def	_ZN2al3var5writeEPcy4DATAhj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var5writeEPcy4DATAhj
_ZN2al3var5writeEPcy4DATAhj:
.LFB2621:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movl	48(%rbp), %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %edx
	movq	40(%rbp), %r9
	movq	32(%rbp), %r8
	movq	24(%rbp), %rax
	movl	56(%rbp), %ecx
	movl	%ecx, 40(%rsp)
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z6_writePN2al3varEPcy4DATAhj
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN2al3var5writeEPcS1_
	.def	_ZN2al3var5writeEPcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var5writeEPcS1_
_ZN2al3var5writeEPcS1_:
.LFB2622:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L26
	movl	$-1, %eax
	jmp	.L28
.L26:
	movq	32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	leaq	1(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$2, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z6_writePN2al3varEPcy4DATAhj
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L28:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN2al3var5writeEPcd
	.def	_ZN2al3var5writeEPcd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var5writeEPcd
_ZN2al3var5writeEPcd:
.LFB2623:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movsd	%xmm2, 32(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L30
	movl	$-1, %eax
	jmp	.L32
.L30:
	movsd	32(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$4, 40(%rsp)
	movl	$20, 32(%rsp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z6_writePN2al3varEPcy4DATAhj
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L32:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN2al3var5writeEPchy
	.def	_ZN2al3var5writeEPchy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var5writeEPchy
_ZN2al3var5writeEPchy:
.LFB2624:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, %eax
	movq	%r9, 40(%rbp)
	movb	%al, 32(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L34
	movl	$-1, %eax
	jmp	.L38
.L34:
	movq	$0, -8(%rbp)
	movzbl	32(%rbp), %eax
	cmpl	$23, %eax
	jne	.L36
	movq	40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, -8(%rbp)
	jmp	.L37
.L36:
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L37:
	orb	$1, 32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movzbl	32(%rbp), %edx
	movq	-24(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	24(%rbp), %rax
	movl	$1, 40(%rsp)
	movl	%edx, 32(%rsp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z6_writePN2al3varEPcy4DATAhj
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
.L38:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN2al3var5writeEPcPvy
	.def	_ZN2al3var5writeEPcPvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var5writeEPcPvy
_ZN2al3var5writeEPcPvy:
.LFB2625:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L40
	movl	$-1, %eax
	jmp	.L44
.L40:
	movq	32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, 40(%rbp)
	jne	.L42
	movq	-16(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$4, 40(%rsp)
	movl	$1, 32(%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z6_writePN2al3varEPcy4DATAhj
	movl	%eax, -4(%rbp)
	jmp	.L43
.L42:
	movq	-16(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$2, 40(%rsp)
	movl	$1, 32(%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z6_writePN2al3varEPcy4DATAhj
	movl	%eax, -4(%rbp)
.L43:
	movl	-4(%rbp), %eax
.L44:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN2al3var7rewriteEPcS1_
	.def	_ZN2al3var7rewriteEPcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var7rewriteEPcS1_
_ZN2al3var7rewriteEPcS1_:
.LFB2626:
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
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L48:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
.L47:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN2al3var4readEPc
	.def	_ZN2al3var4readEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var4readEPc
_ZN2al3var4readEPc:
.LFB2627:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-8(%rbp), %rax
	addq	$16, %rax
.L51:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN2al3var8findpropEPc
	.def	_ZN2al3var8findpropEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var8findpropEPc
_ZN2al3var8findpropEPc:
.LFB2628:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	cmpq	$0, -8(%rbp)
	jne	.L55
	movq	var_current(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L56
.L55:
	movq	-8(%rbp), %rax
	movq	%rax, var_current(%rip)
.L56:
	movl	$0, -12(%rbp)
	jmp	.L57
.L59:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, %rdx
	call	_ZNSt6vectorIN2al4propESaIS1_EEixEy
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L58
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, %rdx
	call	_ZNSt6vectorIN2al4propESaIS1_EEixEy
	jmp	.L54
.L58:
	addl	$1, -12(%rbp)
.L57:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L59
	movl	$0, %eax
.L54:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "type\0"
.LC2:
	.ascii " is incomplete var\0"
.LC3:
	.ascii "stack var\0"
.LC4:
	.ascii "not stack var, but %i\0"
.LC5:
	.ascii "var_num\0"
.LC7:
	.ascii "data\0"
	.text
	.align 2
	.globl	_ZN2al3var4findEPc
	.def	_ZN2al3var4findEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var4findEPc
_ZN2al3var4findEPc:
.LFB2629:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L63
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, %ecx
	call	exit
.L63:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L64
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	_ZL6printfPKcz
	movl	$7, %ecx
	call	exit
.L64:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movsd	16(%rax), %xmm0
	comisd	.LC6(%rip), %xmm0
	jnb	.L65
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	jmp	.L66
.L65:
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -24(%rbp)
.L66:
	movq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L67
.L70:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L71
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L69
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L62
.L71:
	nop
.L69:
	addq	$1, -8(%rbp)
.L67:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L70
	movl	$0, %eax
.L62:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z13var_findemptyPN2al3varEi
	.def	_Z13var_findemptyPN2al3varEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13var_findemptyPN2al3varEi
_Z13var_findemptyPN2al3varEi:
.LFB2630:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L73
.L76:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L74
	movl	-4(%rbp), %eax
	cltq
	jmp	.L75
.L74:
	addl	$1, -4(%rbp)
.L73:
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L76
	movq	$-1, %rax
.L75:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii " is not stack var, but \0"
.LC10:
	.ascii "Created variable \"\0"
.LC11:
	.ascii "\"\0"
	.text
	.align 2
	.globl	_ZN2al3var6createEPc
	.def	_ZN2al3var6createEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var6createEPc
_ZN2al3var6createEPc:
.LFB2631:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var4findEPc
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L80
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$1, %ecx
	call	exit
.L80:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L81
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$1, %ecx
	call	exit
.L81:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movq	%rax, -32(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN2al3var8findpropEPc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	cvttsd2sil	%xmm0, %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_Z13var_findemptyPN2al3varEi
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L82
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	cvttsd2sil	%xmm0, %eax
	addl	$8, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	realloc
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	cvttsd2sil	%xmm0, %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	.LC9(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.L82:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 12(%rax)
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movq	-48(%rbp), %rax
	movq	%rax, var_current(%rip)
	movq	-48(%rbp), %rax
.L79:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z17var_cleanfromtypePN2al4propE
	.def	_Z17var_cleanfromtypePN2al4propE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17var_cleanfromtypePN2al4propE
_Z17var_cleanfromtypePN2al4propE:
.LFB2632:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %eax
	cmpl	$23, %eax
	jne	.L84
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	_Z10var_deletePN2al3varE
	jmp	.L85
.L84:
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	free
	nop
.L85:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z10var_deletePN2al3varE
	.def	_Z10var_deletePN2al3varE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10var_deletePN2al3varE
_Z10var_deletePN2al3varE:
.LFB2633:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L87
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L87:
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L88
.L91:
	movq	16(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	call	_ZNSt6vectorIN2al4propESaIS1_EEixEy
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	16(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	call	_ZNSt6vectorIN2al4propESaIS1_EEixEy
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L93
	movq	16(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	call	_ZNSt6vectorIN2al4propESaIS1_EEixEy
	movq	%rax, %rcx
	call	_Z17var_cleanfromtypePN2al4propE
	movq	16(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	call	_ZNSt6vectorIN2al4propESaIS1_EEixEy
	movq	$0, 8(%rax)
	jmp	.L90
.L93:
	nop
.L90:
	addl	$1, -4(%rbp)
.L88:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L91
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "Destroyed variable \"\0"
	.text
	.align 2
	.globl	_ZN2al3var7destroyEv
	.def	_ZN2al3var7destroyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var7destroyEv
_ZN2al3var7destroyEv:
.LFB2634:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L95
	movl	$1, %eax
	jmp	.L96
.L95:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rcx
	call	_Z10var_deletePN2al3varE
	movl	%eax, -12(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movl	-12(%rbp), %eax
.L96:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "Can't save \"\0"
.LC14:
	.ascii "var \0"
.LC15:
	.ascii " var is written\0"
.LC16:
	.ascii " prop is written\0"
	.text
	.globl	_Z5_savePN2al3varERSt14basic_ofstreamIcSt11char_traitsIcEE
	.def	_Z5_savePN2al3varERSt14basic_ofstreamIcSt11char_traitsIcEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5_savePN2al3varERSt14basic_ofstreamIcSt11char_traitsIcEE
_Z5_savePN2al3varERSt14basic_ofstreamIcSt11char_traitsIcEE:
.LFB2635:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L98
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %eax
	jmp	.L109
.L98:
	movq	$0, -16(%rbp)
	movl	$4, -44(%rbp)
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jne	.L100
	movq	24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	24(%rbp), %rax
	leaq	-44(%rbp), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movl	$0, %eax
	jmp	.L109
.L100:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	strlen
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	movl	%eax, -60(%rbp)
	movq	24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	24(%rbp), %rax
	leaq	-44(%rbp), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	leaq	-52(%rbp), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %ecx
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	leaq	-60(%rbp), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L109
.L101:
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE4dataEv
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L102
.L108:
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	strlen
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	25(%rax), %eax
	movb	%al, -65(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	24(%rax), %eax
	movb	%al, -66(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	24(%rbp), %rax
	leaq	-65(%rbp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %r8d
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	leaq	-66(%rbp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movq	24(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movzbl	-66(%rbp), %eax
	cmpb	$23, %al
	jne	.L103
	movq	-80(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$5, %rax
	movl	%eax, -28(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L104
.L105:
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_Z5_savePN2al3varERSt14basic_ofstreamIcSt11char_traitsIcEE
	addl	$1, -8(%rbp)
.L104:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L105
	jmp	.L106
.L103:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L107
	movq	24(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
	jmp	.L106
.L107:
	movq	24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSo5writeEPKcx
.L106:
	addl	$1, -4(%rbp)
.L102:
	movl	-4(%rbp), %edx
	movl	-60(%rbp), %eax
	cmpl	%eax, %edx
	jb	.L108
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	movl	$0, %eax
.L109:
	subq	$-128, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC17:
	.ascii "\" into \"\0"
	.text
	.align 2
	.globl	_ZN2al3var4saveEPc
	.def	_ZN2al3var4saveEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var4saveEPc
_ZN2al3var4saveEPc:
.LFB2636:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$504, %rsp
	.seh_stackalloc	504
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 400(%rbp)
	movq	%rdx, 408(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE0:
	movl	$16, %edx
	movl	$4, %ecx
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %ecx
	movq	408(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L111
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	400(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	408(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ebx
	jmp	.L112
.L111:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	400(%rbp), %rcx
	call	_Z5_savePN2al3varERSt14basic_ofstreamIcSt11char_traitsIcEE
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE1:
	movl	$0, %ebx
.L112:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movl	%ebx, %eax
	jmp	.L116
.L115:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L116:
	addq	$504, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2636:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2636-.LLSDACSB2636
.LLSDACSB2636:
	.uleb128 .LEHB0-.LFB2636
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2636
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L115-.LFB2636
	.uleb128 0
	.uleb128 .LEHB2-.LFB2636
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2636:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC18:
	.ascii "Can't load \"\0"
.LC19:
	.ascii " is not Variable data\0"
	.text
	.align 2
	.globl	_ZN2al3var4loadEPc
	.def	_ZN2al3var4loadEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3var4loadEPc
_ZN2al3var4loadEPc:
.LFB2637:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$2648, %rsp
	.seh_stackalloc	2648
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 2544(%rbp)
	movq	%rdx, 2552(%rbp)
	leaq	2016(%rbp), %rax
	movq	%rax, %rcx
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
.LEHE3:
	movl	$8, %edx
	movl	$4, %ecx
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %ecx
	movq	2552(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
.LEHB4:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	2016(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L118
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	2552(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %ebx
	jmp	.L119
.L118:
	movl	$3, 2008(%rbp)
	leaq	2012(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	2012(%rbp), %rax
	movl	$4, %r8d
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	strncmp
	testl	%eax, %eax
	je	.L120
	movq	2552(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
.L120:
	leaq	2008(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	972(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	movl	972(%rbp), %eax
	movl	%eax, %ecx
	leaq	976(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	968(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	964(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	960(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	976(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, %rdx
	movq	2544(%rbp), %rax
	movq	%rdx, (%rax)
	movl	968(%rbp), %edx
	movq	2544(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	964(%rbp), %edx
	movq	2544(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	2544(%rbp), %rax
	addq	$16, %rax
	movl	960(%rbp), %edx
	movl	%edx, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE6resizeEy
	movq	2544(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE4dataEv
	movq	%rax, 2496(%rbp)
	movl	$0, 2508(%rbp)
	jmp	.L121
.L124:
	leaq	956(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	movl	956(%rbp), %eax
	movl	%eax, %ecx
	leaq	-96(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	955(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	954(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	leaq	944(%rbp), %rdx
	leaq	2016(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	movl	2508(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	2496(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, (%rbx)
	movl	2508(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	2496(%rbp), %rax
	addq	%rax, %rdx
	movzbl	955(%rbp), %eax
	movb	%al, 25(%rdx)
	movl	2508(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	2496(%rbp), %rax
	addq	%rax, %rdx
	movzbl	954(%rbp), %eax
	movb	%al, 24(%rdx)
	movl	2508(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	2496(%rbp), %rax
	addq	%rax, %rdx
	movq	944(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	944(%rbp), %rax
	testq	%rax, %rax
	jne	.L122
	movq	2496(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	2016(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
	jmp	.L123
.L122:
	movq	944(%rbp), %rax
	movq	%rax, %rcx
	movl	2508(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	2496(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	leaq	2016(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSi4readEPcx
.L123:
	addl	$1, 2508(%rbp)
.L121:
	movl	2508(%rbp), %edx
	movl	960(%rbp), %eax
	cmpl	%eax, %edx
	jb	.L124
	leaq	2016(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE4:
	movl	$0, %ebx
.L119:
	leaq	2016(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	jmp	.L128
.L127:
	movq	%rax, %rbx
	leaq	2016(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L128:
	addq	$2648, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2637:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2637-.LLSDACSB2637
.LLSDACSB2637:
	.uleb128 .LEHB3-.LFB2637
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2637
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L127-.LFB2637
	.uleb128 0
	.uleb128 .LEHB5-.LFB2637
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2637:
	.text
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	.def	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv:
.LFB2958:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$5, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE6resizeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE6resizeEy
	.def	_ZNSt6vectorIN2al4propESaIS1_EE6resizeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE6resizeEy
_ZNSt6vectorIN2al4propESaIS1_EE6resizeEy:
.LFB2959:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L132
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE17_M_default_appendEy
	jmp	.L134
.L132:
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	cmpq	%rax, 24(%rbp)
	setb	%al
	testb	%al, %al
	je	.L134
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE15_M_erase_at_endEPS1_
.L134:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE4backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE4backEv
	.def	_ZNSt6vectorIN2al4propESaIS1_EE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE4backEv
_ZNSt6vectorIN2al4propESaIS1_EE4backEv:
.LFB2960:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE3endEv
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEmiEx
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEdeEv
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EEixEy
	.def	_ZNSt6vectorIN2al4propESaIS1_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EEixEy
_ZNSt6vectorIN2al4propESaIS1_EEixEy:
.LFB2961:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE4dataEv
	.def	_ZNSt6vectorIN2al4propESaIS1_EE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE4dataEv
_ZNSt6vectorIN2al4propESaIS1_EE4dataEv:
.LFB2963:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE11_M_data_ptrIS1_EEPT_S6_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y
_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y:
.LFB3079:
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
	cmpq	$0, 24(%rbp)
	je	.L143
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y
.L143:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB3080:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPN2al4propES1_EvT_S3_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPN2al4propES1_EvT_S3_RSaIT0_E
	.def	_ZSt8_DestroyIPN2al4propES1_EvT_S3_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPN2al4propES1_EvT_S3_RSaIT0_E
_ZSt8_DestroyIPN2al4propES1_EvT_S3_RSaIT0_E:
.LFB3081:
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
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPN2al4propEEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC20:
	.ascii "vector::_M_default_append\0"
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE17_M_default_appendEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE17_M_default_appendEy
	.def	_ZNSt6vectorIN2al4propESaIS1_EE17_M_default_appendEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE17_M_default_appendEy
_ZNSt6vectorIN2al4propESaIS1_EE17_M_default_appendEy:
.LFB3085:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	cmpq	$0, 40(%rbp)
	je	.L158
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$5, %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv
	cmpq	%rax, -8(%rbp)
	ja	.L149
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv
	subq	-8(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L150
.L149:
	movl	$1, %eax
	jmp	.L151
.L150:
	movl	$0, %eax
.L151:
	testb	%al, %al
	movq	-16(%rbp), %rax
	cmpq	40(%rbp), %rax
	jb	.L153
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB6:
	call	_ZSt27__uninitialized_default_n_aIPN2al4propEyS1_ET_S3_T0_RSaIT1_E
	movq	32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L158
.L153:
	movq	40(%rbp), %rax
	leaq	.LC20(%rip), %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE12_M_check_lenEyPKc
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE11_M_allocateEy
.LEHE6:
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rax, %rcx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
.LEHB7:
	call	_ZSt27__uninitialized_default_n_aIPN2al4propEyS1_ET_S3_T0_RSaIT1_E
.LEHE7:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %r8
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	movq	32(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	32(%rbp), %rdx
	movq	(%rdx), %r8
	subq	%r8, %rcx
	movq	%rcx, %rdx
	sarq	$5, %rdx
	movq	%rdx, %rcx
	movq	32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB8:
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y
.LEHE8:
	movq	32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	40(%rbp), %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L158
.L156:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB9:
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y
	call	__cxa_rethrow
.LEHE9:
.L157:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB10:
	call	_Unwind_Resume
.LEHE10:
.L158:
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA3085:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3085-.LLSDATTD3085
.LLSDATTD3085:
	.byte	0x1
	.uleb128 .LLSDACSE3085-.LLSDACSB3085
.LLSDACSB3085:
	.uleb128 .LEHB6-.LFB3085
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB3085
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L156-.LFB3085
	.uleb128 0x1
	.uleb128 .LEHB8-.LFB3085
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB3085
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L157-.LFB3085
	.uleb128 0
	.uleb128 .LEHB10-.LFB3085
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE3085:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3085:
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE17_M_default_appendEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE15_M_erase_at_endEPS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE15_M_erase_at_endEPS1_
	.def	_ZNSt6vectorIN2al4propESaIS1_EE15_M_erase_at_endEPS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE15_M_erase_at_endEPS1_
_ZNSt6vectorIN2al4propESaIS1_EE15_M_erase_at_endEPS1_:
.LFB3090:
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
	movq	8(%rax), %rax
	subq	24(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L161
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPN2al4propES1_EvT_S3_RSaIT0_E
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L161:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3090:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3090-.LLSDACSB3090
.LLSDACSB3090:
.LLSDACSE3090:
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE15_M_erase_at_endEPS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE3endEv
	.def	_ZNSt6vectorIN2al4propESaIS1_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE3endEv
_ZNSt6vectorIN2al4propESaIS1_EE3endEv:
.LFB3091:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEmiEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEmiEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEmiEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEmiEx
_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEmiEx:
.LFB3092:
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
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEdeEv:
.LFB3093:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN2al4propESaIS1_EE11_M_data_ptrIS1_EEPT_S6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN2al4propESaIS1_EE11_M_data_ptrIS1_EEPT_S6_
	.def	_ZNKSt6vectorIN2al4propESaIS1_EE11_M_data_ptrIS1_EEPT_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN2al4propESaIS1_EE11_M_data_ptrIS1_EEPT_S6_
_ZNKSt6vectorIN2al4propESaIS1_EE11_M_data_ptrIS1_EEPT_S6_:
.LFB3095:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y
	.def	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y
_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y:
.LFB3161:
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
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPN2al4propEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPN2al4propEEvT_S3_
	.def	_ZSt8_DestroyIPN2al4propEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPN2al4propEEvT_S3_
_ZSt8_DestroyIPN2al4propEEvT_S3_:
.LFB3162:
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
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2al4propEEEvT_S5_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv
	.def	_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv
_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv:
.LFB3165:
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
	call	_ZNKSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE11_S_max_sizeERKS2_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIPN2al4propEyS1_ET_S3_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIPN2al4propEyS1_ET_S3_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIPN2al4propEyS1_ET_S3_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIPN2al4propEyS1_ET_S3_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIPN2al4propEyS1_ET_S3_T0_RSaIT1_E:
.LFB3166:
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
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt25__uninitialized_default_nIPN2al4propEyET_S3_T0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN2al4propESaIS1_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN2al4propESaIS1_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIN2al4propESaIS1_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN2al4propESaIS1_EE12_M_check_lenEyPKc
_ZNKSt6vectorIN2al4propESaIS1_EE12_M_check_lenEyPKc:
.LFB3167:
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
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L177
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L177:
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	movq	%rax, -16(%rbp)
	leaq	40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE4sizeEv
	cmpq	%rax, -8(%rbp)
	jb	.L178
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv
	cmpq	%rax, -8(%rbp)
	jbe	.L179
.L178:
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorIN2al4propESaIS1_EE8max_sizeEv
	jmp	.L180
.L179:
	movq	-8(%rbp), %rax
.L180:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE11_M_allocateEy
_ZNSt12_Vector_baseIN2al4propESaIS1_EE11_M_allocateEy:
.LFB3168:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L183
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2al4propEEE8allocateERS2_y
	jmp	.L185
.L183:
	movl	$0, %eax
.L185:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.def	_ZNSt6vectorIN2al4propESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
_ZNSt6vectorIN2al4propESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_:
.LFB3169:
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
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPN2al4propESt6vectorIS2_SaIS2_EEEC1ERKS3_:
.LFB3172:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y
	.def	_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y
_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y:
.LFB3221:
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
	movq	32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPN2al4propEEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2al4propEEEvT_S5_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2al4propEEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2al4propEEEvT_S5_
_ZNSt12_Destroy_auxILb1EE9__destroyIPN2al4propEEEvT_S5_:
.LFB3222:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE11_S_max_sizeERKS2_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE11_S_max_sizeERKS2_
	.def	_ZNSt6vectorIN2al4propESaIS1_EE11_S_max_sizeERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE11_S_max_sizeERKS2_
_ZNSt6vectorIN2al4propESaIS1_EE11_S_max_sizeERKS2_:
.LFB3223:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$288230376151711743, %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt16allocator_traitsISaIN2al4propEEE8max_sizeERKS2_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB3224:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIPN2al4propEyET_S3_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIPN2al4propEyET_S3_T0_
	.def	_ZSt25__uninitialized_default_nIPN2al4propEyET_S3_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIPN2al4propEyET_S3_T0_
_ZSt25__uninitialized_default_nIPN2al4propEyET_S3_T0_:
.LFB3225:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	$1, -1(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPN2al4propEyEET_S5_T0_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB3226:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L199
	movq	24(%rbp), %rax
	jmp	.L200
.L199:
	movq	16(%rbp), %rax
.L200:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2al4propEEE8allocateERS2_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2al4propEEE8allocateERS2_y
	.def	_ZNSt16allocator_traitsISaIN2al4propEEE8allocateERS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2al4propEEE8allocateERS2_y
_ZNSt16allocator_traitsISaIN2al4propEEE8allocateERS2_y:
.LFB3227:
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
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2al4propEE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIN2al4propESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.def	_ZNSt6vectorIN2al4propESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
_ZNSt6vectorIN2al4propESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE:
.LFB3228:
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
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt12__relocate_aIPN2al4propES2_SaIS1_EET0_T_S5_S4_RT1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2al4propEEE8max_sizeERKS2_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2al4propEEE8max_sizeERKS2_
	.def	_ZNSt16allocator_traitsISaIN2al4propEEE8max_sizeERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2al4propEEE8max_sizeERKS2_
_ZNSt16allocator_traitsISaIN2al4propEEE8max_sizeERKS2_:
.LFB3273:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE8max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3minIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIyERKT_S2_S2_
	.def	_ZSt3minIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIyERKT_S2_S2_
_ZSt3minIyERKT_S2_S2_:
.LFB3274:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L208
	movq	24(%rbp), %rax
	jmp	.L209
.L208:
	movq	16(%rbp), %rax
.L209:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIN2al4propEEPT_RS2_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIN2al4propEEPT_RS2_
	.def	_ZSt11__addressofIN2al4propEEPT_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIN2al4propEEPT_RS2_
_ZSt11__addressofIN2al4propEEPT_RS2_:
.LFB3276:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPN2al4propEyEET_S5_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPN2al4propEyEET_S5_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPN2al4propEyEET_S5_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPN2al4propEyEET_S5_T0_
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPN2al4propEyEET_S5_T0_:
.LFB3275:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L213
	movq	16(%rbp), %rcx
	call	_ZSt11__addressofIN2al4propEEPT_RS2_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt10_ConstructIN2al4propEJEEvPT_DpOT0_
	addq	$32, 16(%rbp)
	movq	24(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt6fill_nIPN2al4propEyS1_ET_S3_T0_RKT1_
	movq	%rax, 16(%rbp)
.L213:
	movq	16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIN2al4propEE11_M_max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE11_M_max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE11_M_max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE11_M_max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIN2al4propEE11_M_max_sizeEv:
.LFB3278:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$288230376151711743, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2al4propEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2al4propEE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIN2al4propEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2al4propEE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIN2al4propEE8allocateEyPKv:
.LFB3277:
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
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE11_M_max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L218
	movabsq	$576460752303423487, %rax
	cmpq	%rax, 24(%rbp)
	jbe	.L219
	call	_ZSt28__throw_bad_array_new_lengthv
.L219:
	call	_ZSt17__throw_bad_allocv
.L218:
	movq	24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__relocate_aIPN2al4propES2_SaIS1_EET0_T_S5_S4_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIPN2al4propES2_SaIS1_EET0_T_S5_S4_RT1_
	.def	_ZSt12__relocate_aIPN2al4propES2_SaIS1_EET0_T_S5_S4_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIPN2al4propES2_SaIS1_EET0_T_S5_S4_RT1_
_ZSt12__relocate_aIPN2al4propES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB3279:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPN2al4propEET_S3_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPN2al4propEET_S3_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIPN2al4propEET_S3_
	movq	56(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt14__relocate_a_1IN2al4propES1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIN2al4propEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIN2al4propEE8max_sizeEv:
.LFB3304:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIN2al4propEE11_M_max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructIN2al4propEJEEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructIN2al4propEJEEvPT_DpOT0_
	.def	_ZSt10_ConstructIN2al4propEJEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructIN2al4propEJEEvPT_DpOT0_
_ZSt10_ConstructIN2al4propEJEEvPT_DpOT0_:
.LFB3305:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdx
	movl	$32, %ecx
	call	_ZnwyPv
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movb	$0, 24(%rax)
	movb	$0, 25(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt6fill_nIPN2al4propEyS1_ET_S3_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt6fill_nIPN2al4propEyS1_ET_S3_T0_RKT1_
	.def	_ZSt6fill_nIPN2al4propEyS1_ET_S3_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6fill_nIPN2al4propEyS1_ET_S3_T0_RKT1_
_ZSt6fill_nIPN2al4propEyS1_ET_S3_T0_RKT1_:
.LFB3306:
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
	movq	%r8, 48(%rbp)
	leaq	32(%rbp), %rcx
	call	_ZSt19__iterator_categoryIPN2al4propEENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt17__size_to_integery
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	48(%rbp), %rcx
	movl	%ebx, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt10__fill_n_aIPN2al4propEyS1_ET_S3_T0_RKT1_St26random_access_iterator_tag
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPN2al4propEET_S3_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPN2al4propEET_S3_
	.def	_ZSt12__niter_baseIPN2al4propEET_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPN2al4propEET_S3_
_ZSt12__niter_baseIPN2al4propEET_S3_:
.LFB3307:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IN2al4propES1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IN2al4propES1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E
	.def	_ZSt14__relocate_a_1IN2al4propES1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IN2al4propES1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E
_ZSt14__relocate_a_1IN2al4propES1_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS4_E4typeES6_S6_S6_RSaIT0_E:
.LFB3308:
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
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L231
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L231:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__iterator_categoryIPN2al4propEENSt15iterator_traitsIT_E17iterator_categoryERKS4_,"x"
	.linkonce discard
	.globl	_ZSt19__iterator_categoryIPN2al4propEENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	.def	_ZSt19__iterator_categoryIPN2al4propEENSt15iterator_traitsIT_E17iterator_categoryERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__iterator_categoryIPN2al4propEENSt15iterator_traitsIT_E17iterator_categoryERKS4_
_ZSt19__iterator_categoryIPN2al4propEENSt15iterator_traitsIT_E17iterator_categoryERKS4_:
.LFB3321:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__fill_n_aIPN2al4propEyS1_ET_S3_T0_RKT1_St26random_access_iterator_tag,"x"
	.linkonce discard
	.globl	_ZSt10__fill_n_aIPN2al4propEyS1_ET_S3_T0_RKT1_St26random_access_iterator_tag
	.def	_ZSt10__fill_n_aIPN2al4propEyS1_ET_S3_T0_RKT1_St26random_access_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__fill_n_aIPN2al4propEyS1_ET_S3_T0_RKT1_St26random_access_iterator_tag
_ZSt10__fill_n_aIPN2al4propEyS1_ET_S3_T0_RKT1_St26random_access_iterator_tag:
.LFB3322:
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
	cmpq	$0, 24(%rbp)
	jne	.L236
	movq	16(%rbp), %rax
	jmp	.L237
.L236:
	movq	24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8__fill_aIPN2al4propES1_EvT_S3_RKT0_
	movq	24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
.L237:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8__fill_aIPN2al4propES1_EvT_S3_RKT0_,"x"
	.linkonce discard
	.globl	_ZSt8__fill_aIPN2al4propES1_EvT_S3_RKT0_
	.def	_ZSt8__fill_aIPN2al4propES1_EvT_S3_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8__fill_aIPN2al4propES1_EvT_S3_RKT0_
_ZSt8__fill_aIPN2al4propES1_EvT_S3_RKT0_:
.LFB3325:
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
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9__fill_a1IPN2al4propES1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9__fill_a1IPN2al4propES1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_,"x"
	.linkonce discard
	.globl	_ZSt9__fill_a1IPN2al4propES1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_
	.def	_ZSt9__fill_a1IPN2al4propES1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9__fill_a1IPN2al4propES1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_
_ZSt9__fill_a1IPN2al4propES1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_:
.LFB3326:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	jmp	.L240
.L241:
	movq	16(%rbp), %rcx
	movq	32(%rbp), %r8
	movq	(%r8), %rax
	movq	8(%r8), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%r8), %rax
	movq	24(%r8), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	addq	$32, 16(%rbp)
.L240:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L241
	nop
	nop
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3328:
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
.LFB3327:
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
	jne	.L245
	cmpl	$65535, 24(%rbp)
	jne	.L245
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L245:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_var_current;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_var_current
_GLOBAL__sub_I_var_current:
.LFB3329:
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
	.quad	_GLOBAL__sub_I_var_current
	.section .rdata,"dr"
	.align 8
.LC6:
	.long	0
	.long	1138753536
	.align 8
.LC9:
	.long	0
	.long	1075838976
	.ident	"GCC: (Rev1, Built by MSYS2 project) 11.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5writeEPKcx;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSi4readEPcx;	.scl	2;	.type	32;	.endef
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
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
