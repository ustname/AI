	.file	"variable.c"
	.text
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -24(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	VAR_vault
	.bss
	.align 8
VAR_vault:
	.space 8
	.globl	vaultdata
	.align 8
vaultdata:
	.space 8
	.globl	vaultnum
	.align 8
vaultnum:
	.space 8
	.globl	var_current
	.align 8
var_current:
	.space 8
	.globl	var_currentstack
	.align 8
var_currentstack:
	.space 8
	.globl	var_stackcount
	.align 8
var_stackcount:
	.space 8
	.section .rdata,"dr"
.LC0:
	.ascii "lol\0"
	.text
	.globl	realloc2
	.def	realloc2;	.scl	2;	.type	32;	.endef
	.seh_proc	realloc2
realloc2:
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
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
	leaq	.LC0(%rip), %rcx
	call	printf
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_find
	.def	var_find;	.scl	2;	.type	32;	.endef
	.seh_proc	var_find
var_find:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	cmpq	$0, 24(%rbp)
	jne	.L8
	movq	VAR_vault(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	vaultnum(%rip), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	vaultdata(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L9
.L8:
	movq	24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$1, -16(%rbp)
.L9:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L10
.L13:
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L14
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L12
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, var_current(%rip)
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L7
.L14:
	nop
.L12:
	addq	$1, -32(%rbp)
.L10:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L13
	movl	$0, %eax
.L7:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_findempty
	.def	var_findempty;	.scl	2;	.type	32;	.endef
	.seh_proc	var_findempty
var_findempty:
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
	jmp	.L16
.L19:
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L17
	movl	-4(%rbp), %eax
	cltq
	jmp	.L18
.L17:
	addl	$1, -4(%rbp)
.L16:
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L19
	movq	$-1, %rax
.L18:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_create
	.def	var_create;	.scl	2;	.type	32;	.endef
	.seh_proc	var_create
var_create:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_find
	testq	%rax, %rax
	je	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	cmpq	$0, 24(%rbp)
	jne	.L23
	movq	VAR_vault(%rip), %rax
	movq	%rax, 24(%rbp)
	movq	vaultdata(%rip), %rax
	movl	%eax, -4(%rbp)
	movq	24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	vaultnum(%rip), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	vaultdata(%rip), %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	var_findempty
	movq	%rax, -16(%rbp)
	jmp	.L24
.L23:
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	24(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	var_findempty
	movq	%rax, -16(%rbp)
.L24:
	movq	24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rcx
	call	strdup
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, var_current(%rip)
	movq	-32(%rbp), %rax
.L22:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_findprop
	.def	var_findprop;	.scl	2;	.type	32;	.endef
	.seh_proc	var_findprop
var_findprop:
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
	movq	24(%rax), %rax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movl	$0, -4(%rbp)
	jmp	.L28
.L30:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L29
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	jmp	.L27
.L29:
	addl	$1, -4(%rbp)
.L28:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L30
	movl	$0, %eax
.L27:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_writeprop
	.def	var_writeprop;	.scl	2;	.type	32;	.endef
	.seh_proc	var_writeprop
var_writeprop:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L32
	movl	$-1, %eax
	jmp	.L33
.L32:
	cmpq	$0, 16(%rbp)
	jne	.L34
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L34:
	movq	16(%rbp), %rax
	movq	%rax, var_current(%rip)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L35
	movq	$0, -40(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movl	$32, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L37
.L36:
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	realloc
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L37:
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	salq	$5, %rax
	subq	$32, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L35:
	movq	-8(%rbp), %rcx
	movq	24(%rbp), %r8
	movq	(%r8), %rax
	movq	8(%r8), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%r8), %rax
	movq	24(%r8), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$-2, %eax
	jne	.L38
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	prop_edit
.L38:
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	$0, %eax
.L33:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_write
	.def	var_write;	.scl	2;	.type	32;	.endef
	.seh_proc	var_write
var_write:
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
	cmpq	$0, 24(%rbp)
	jne	.L40
	movl	$-1, %eax
	jmp	.L41
.L40:
	cmpq	$0, 16(%rbp)
	jne	.L42
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L42:
	movq	16(%rbp), %rax
	movq	%rax, var_current(%rip)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	movq	$0, -16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movl	$32, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L45
.L44:
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	realloc
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L45:
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	salq	$5, %rax
	subq	$32, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L43:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L46:
	cmpq	$0, 32(%rbp)
	je	.L47
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L48
.L47:
	movq	-8(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 16(%rax)
.L48:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	orl	48(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	$0, %eax
.L41:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_read
	.def	var_read;	.scl	2;	.type	32;	.endef
	.seh_proc	var_read
var_read:
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
	cmpq	$0, 24(%rbp)
	je	.L50
	cmpq	$0, 32(%rbp)
	je	.L50
	cmpq	$0, 40(%rbp)
	jne	.L51
.L50:
	movl	$-1, %eax
	jmp	.L52
.L51:
	cmpq	$0, 16(%rbp)
	jne	.L53
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L53:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L54
	movl	$-1, %eax
	jmp	.L52
.L54:
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L55
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-2, %eax
	jmp	.L52
.L55:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
.L52:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_read2
	.def	var_read2;	.scl	2;	.type	32;	.endef
	.seh_proc	var_read2
var_read2:
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
	cmpq	$0, 24(%rbp)
	je	.L57
	cmpq	$0, 32(%rbp)
	je	.L57
	cmpq	$0, 40(%rbp)
	je	.L57
	cmpq	$0, 48(%rbp)
	jne	.L58
.L57:
	movl	$-1, %eax
	jmp	.L59
.L58:
	cmpq	$0, 16(%rbp)
	jne	.L60
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L60:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L61
	movl	$-1, %eax
	jmp	.L59
.L61:
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L62
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-2, %eax
	jmp	.L59
.L62:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	24(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
.L59:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "(NULL)\0"
.LC2:
	.ascii "var name =\11 %s\0"
.LC3:
	.ascii "var prop num =\11 %lls\0"
	.text
	.globl	var_dump
	.def	var_dump;	.scl	2;	.type	32;	.endef
	.seh_proc	var_dump
var_dump:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L64
	leaq	.LC1(%rip), %rcx
	call	printf
	jmp	.L63
.L64:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	printf
	nop
.L63:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_setvarnum0
	.def	var_setvarnum0;	.scl	2;	.type	32;	.endef
	.seh_proc	var_setvarnum0
var_setvarnum0:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L67
.L68:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addq	$1, -8(%rbp)
.L67:
	movq	-8(%rbp), %rax
	cmpq	24(%rbp), %rax
	jb	.L68
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "var_vault\0"
.LC5:
	.ascii "var_num\0"
.LC6:
	.ascii "type\0"
.LC7:
	.ascii "var_stack\0"
.LC8:
	.ascii "data\0"
	.text
	.globl	var_init
	.def	var_init;	.scl	2;	.type	32;	.endef
	.seh_proc	var_init
var_init:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movl	$32, %ecx
	call	malloc
	movq	%rax, VAR_vault(%rip)
	movq	VAR_vault(%rip), %rbx
	leaq	.LC4(%rip), %rcx
	call	strdup
	movq	%rax, (%rbx)
	movq	VAR_vault(%rip), %rax
	movl	$1, 8(%rax)
	movq	$0, vaultnum(%rip)
	movq	$1, vaultdata(%rip)
	movq	VAR_vault(%rip), %rbx
	movl	$96, %ecx
	call	malloc
	movq	%rax, 16(%rbx)
	movq	VAR_vault(%rip), %rax
	movq	16(%rax), %rdx
	movq	vaultnum(%rip), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
	leaq	.LC5(%rip), %rcx
	call	strdup
	movq	%rax, (%rbx)
	movq	VAR_vault(%rip), %rax
	movq	16(%rax), %rdx
	movq	vaultnum(%rip), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	VAR_vault(%rip), %rax
	movq	16(%rax), %rax
	leaq	64(%rax), %rbx
	leaq	.LC6(%rip), %rcx
	call	strdup
	movq	%rax, (%rbx)
	movq	VAR_vault(%rip), %rax
	movq	16(%rax), %rax
	leaq	64(%rax), %rbx
	leaq	.LC7(%rip), %rcx
	call	strdup
	movq	%rax, 16(%rbx)
	movq	VAR_vault(%rip), %rax
	movq	16(%rax), %rdx
	movq	vaultdata(%rip), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
	leaq	.LC8(%rip), %rcx
	call	strdup
	movq	%rax, (%rbx)
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	VAR_vault(%rip), %rdx
	movq	16(%rdx), %rcx
	movq	vaultdata(%rip), %rdx
	salq	$5, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	malloc
	movq	%rax, 16(%rbx)
	movq	VAR_vault(%rip), %rax
	movq	16(%rax), %rdx
	movq	vaultdata(%rip), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	var_setvarnum0
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC9:
	.ascii "rb\0"
.LC10:
	.ascii "var \0"
	.text
	.globl	var_open
	.def	var_open;	.scl	2;	.type	32;	.endef
	.seh_proc	var_open
var_open:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$3120, %rsp
	.seh_stackalloc	3120
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 3008(%rbp)
	movq	%rdx, 3016(%rbp)
	movl	$0, 2956(%rbp)
	movl	$0, 2952(%rbp)
	movl	$0, 2948(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	3008(%rbp), %rcx
	call	fopen
	movq	%rax, 2976(%rbp)
	cmpq	$0, 2976(%rbp)
	jne	.L71
	movl	$0, %eax
	jmp	.L76
.L71:
	movq	2976(%rbp), %rdx
	leaq	1936(%rbp), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	movl	$1, %edx
	movq	%rax, %rcx
	call	fread
	leaq	1936(%rbp), %rax
	movl	$4, %r8d
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strncmp
	movl	%eax, 2972(%rbp)
	cmpl	$0, 2972(%rbp)
	je	.L73
	movl	$0, %eax
	jmp	.L76
.L73:
	movq	2976(%rbp), %rdx
	leaq	2956(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fread
	movq	2976(%rbp), %rdx
	leaq	2952(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fread
	movl	2952(%rbp), %eax
	movslq	%eax, %rdx
	movq	2976(%rbp), %rcx
	leaq	1936(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	fread
	movq	3016(%rbp), %rdx
	leaq	1936(%rbp), %rax
	movq	%rax, %rcx
	call	var_create
	movq	%rax, 2960(%rbp)
	movq	2976(%rbp), %rdx
	leaq	2948(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fread
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, 2988(%rbp)
	jmp	.L74
.L75:
	movq	2976(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fread
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	2976(%rbp), %rcx
	leaq	928(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	fread
	movq	2976(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fread
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	2976(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	fread
	addl	$1, 2988(%rbp)
.L74:
	movl	2948(%rbp), %eax
	cmpl	%eax, 2988(%rbp)
	jl	.L75
	movq	2960(%rbp), %rax
	movq	%rax, var_current(%rip)
	movq	2976(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movq	2960(%rbp), %rax
.L76:
	addq	$3120, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii "wb\0"
	.text
	.globl	var_save
	.def	var_save;	.scl	2;	.type	32;	.endef
	.seh_proc	var_save
var_save:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L78
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L78:
	movq	24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L79
	movl	$1, %eax
	jmp	.L83
.L79:
	movl	$1, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %r9
	movl	$4, %r8d
	movl	$1, %edx
	leaq	.LC10(%rip), %rcx
	call	fwrite
	movq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fwrite
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	strlen
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fwrite
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	movq	16(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-28(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fwrite
	movl	$0, -4(%rbp)
	jmp	.L81
.L82:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	strlen
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fwrite
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	movq	-16(%rbp), %rdx
	leaq	-36(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	fwrite
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	fwrite
	addl	$1, -4(%rbp)
.L81:
	movl	-28(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L82
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movl	$0, %eax
.L83:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_datagetlength
	.def	var_datagetlength;	.scl	2;	.type	32;	.endef
	.seh_proc	var_datagetlength
var_datagetlength:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L85
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L85:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
.L87:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_datagettype
	.def	var_datagettype;	.scl	2;	.type	32;	.endef
	.seh_proc	var_datagettype
var_datagettype:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L89
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L89:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	24(%rax), %eax
.L91:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_varsetname
	.def	var_varsetname;	.scl	2;	.type	32;	.endef
	.seh_proc	var_varsetname
var_varsetname:
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
	jne	.L93
	movl	$-1, %eax
	jmp	.L94
.L93:
	cmpq	$0, 16(%rbp)
	jne	.L95
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L95:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	addq	$1, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	movl	$0, %eax
.L94:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 10.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	prop_edit;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
