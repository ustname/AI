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
	.globl	var_current
	.align 8
var_current:
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
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	VAR_vault(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -16(%rbp)
.L12:
	movl	$0, -12(%rbp)
	jmp	.L8
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	%rax, var_current(%rip)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	jmp	.L7
.L13:
	nop
.L10:
	addl	$1, -12(%rbp)
.L8:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L11
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$0, %eax
.L7:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "%i\0"
	.text
	.globl	var_findempty
	.def	var_findempty;	.scl	2;	.type	32;	.endef
	.seh_proc	var_findempty
var_findempty:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	VAR_vault(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -16(%rbp)
.L15:
	movl	$0, -12(%rbp)
	jmp	.L16
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L17
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	movl	$0, %eax
	jmp	.L21
.L17:
	addl	$1, -12(%rbp)
.L16:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L19
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L20:
	movl	$8, %ecx
	call	var_makestack
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L21:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "over\0"
	.text
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
	movq	16(%rbp), %rcx
	call	var_find
	testq	%rax, %rax
	je	.L23
	movl	$0, %eax
	jmp	.L26
.L23:
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	var_findempty
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$88, 8(%rax)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L25
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
.L25:
	movq	16(%rbp), %rcx
	call	strlen
	addq	$1, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -16(%rbp)
	leaq	.LC2(%rip), %rcx
	call	printf
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, var_current(%rip)
	movq	-8(%rbp), %rax
.L26:
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
	jne	.L28
	movl	$-1, %eax
	jmp	.L29
.L28:
	movl	$0, -4(%rbp)
	jmp	.L30
.L32:
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
	jne	.L31
	movl	-4(%rbp), %eax
	jmp	.L29
.L31:
	addl	$1, -4(%rbp)
.L30:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L32
	movl	$-1, %eax
.L29:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_write
	.def	var_write;	.scl	2;	.type	32;	.endef
	.seh_proc	var_write
var_write:
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
	movl	%r9d, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L34
	cmpq	$0, -32(%rbp)
	je	.L34
	cmpl	$0, -24(%rbp)
	jne	.L35
.L34:
	movl	$-1, %eax
	jmp	.L36
.L35:
	cmpq	$0, -48(%rbp)
	jne	.L37
	movq	var_current(%rip), %rax
	movq	%rax, -48(%rbp)
.L37:
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	var_findprop
	movl	%eax, -84(%rbp)
	cmpl	$-1, -84(%rbp)
	jne	.L38
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	realloc
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	addq	$1, %rax
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	malloc
	movq	%rax, (%rbx)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	$0, 16(%rax)
.L38:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	free
.L39:
	movl	-24(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	malloc
	movq	%rax, 8(%rbx)
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, 16(%rdx)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	$0, 24(%rax)
	movl	$0, %eax
.L36:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_write2
	.def	var_write2;	.scl	2;	.type	32;	.endef
	.seh_proc	var_write2
var_write2:
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
	movl	%r9d, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L41
	cmpq	$0, -32(%rbp)
	je	.L41
	cmpl	$0, -24(%rbp)
	je	.L41
	cmpl	$0, -16(%rbp)
	jne	.L42
.L41:
	movl	$-1, %eax
	jmp	.L43
.L42:
	cmpq	$0, -48(%rbp)
	jne	.L44
	movq	var_current(%rip), %rax
	movq	%rax, -48(%rbp)
.L44:
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	var_findprop
	movl	%eax, -84(%rbp)
	cmpl	$-1, -84(%rbp)
	jne	.L45
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	realloc
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	addq	$1, %rax
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	malloc
	movq	%rax, (%rbx)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	$0, 16(%rax)
.L45:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	free
.L46:
	movl	-24(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	malloc
	movq	%rax, 8(%rbx)
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, 16(%rdx)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, 24(%rdx)
	movl	$0, %eax
.L43:
	addq	$56, %rsp
	popq	%rbx
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
	je	.L48
	cmpq	$0, 32(%rbp)
	je	.L48
	cmpq	$0, 40(%rbp)
	jne	.L49
.L48:
	movl	$-1, %eax
	jmp	.L50
.L49:
	cmpq	$0, 16(%rbp)
	jne	.L51
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L51:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L52
	movl	$-1, %eax
	jmp	.L50
.L52:
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L53
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-2, %eax
	jmp	.L50
.L53:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
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
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
.L50:
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
	je	.L55
	cmpq	$0, 32(%rbp)
	je	.L55
	cmpq	$0, 40(%rbp)
	je	.L55
	cmpq	$0, 48(%rbp)
	jne	.L56
.L55:
	movl	$-1, %eax
	jmp	.L57
.L56:
	cmpq	$0, 16(%rbp)
	jne	.L58
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L58:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L59
	movl	$-1, %eax
	jmp	.L57
.L59:
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L60
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-2, %eax
	jmp	.L57
.L60:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
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
	movq	16(%rax), %rax
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
.L57:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	var_delete
	.def	var_delete;	.scl	2;	.type	32;	.endef
	.seh_proc	var_delete
var_delete:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L62
	movq	var_current(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L63
.L62:
	movq	16(%rbp), %rcx
	call	var_find
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L63
	movl	$-1, %eax
	jmp	.L64
.L63:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L65
.L66:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	free
	addl	$1, -12(%rbp)
.L65:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L66
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movl	$0, %eax
.L64:
	addq	$48, %rsp
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
	movl	$0, -4(%rbp)
	jmp	.L68
.L69:
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L68:
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L69
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "make stack\0"
	.text
	.globl	var_makestack
	.def	var_makestack;	.scl	2;	.type	32;	.endef
	.seh_proc	var_makestack
var_makestack:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	VAR_vault(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L71
.L72:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L71:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	var_stackcount(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L72
	movl	$32, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	16(%rbp), %eax
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	var_setvarnum0
	movq	var_stackcount(%rip), %rax
	addq	$1, %rax
	movq	%rax, var_stackcount(%rip)
	leaq	.LC3(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	variableinit
	.def	variableinit;	.scl	2;	.type	32;	.endef
	.seh_proc	variableinit
variableinit:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	$32, %ecx
	call	malloc
	movq	%rax, VAR_vault(%rip)
	movq	VAR_vault(%rip), %rax
	movl	$0, 12(%rax)
	movq	VAR_vault(%rip), %rax
	movq	$0, 24(%rax)
	movq	VAR_vault(%rip), %rax
	movq	$0, 16(%rax)
	movq	VAR_vault(%rip), %rbx
	movl	$256, %ecx
	call	malloc
	movq	%rax, (%rbx)
	movq	VAR_vault(%rip), %rax
	movl	$8, 8(%rax)
	movq	VAR_vault(%rip), %rax
	movq	%rax, %rcx
	call	var_setvarnum0
	movq	$1, var_stackcount(%rip)
	nop
	addq	$40, %rsp
	popq	%rbx
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
	jne	.L75
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L75:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
.L77:
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
	jne	.L79
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L79:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	var_findprop
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	24(%rax), %eax
.L81:
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
	jne	.L83
	movl	$-1, %eax
	jmp	.L84
.L83:
	cmpq	$0, 16(%rbp)
	jne	.L85
	movq	var_current(%rip), %rax
	movq	%rax, 16(%rbp)
.L85:
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
.L84:
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
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
