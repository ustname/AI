	.file	"properties.c"
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
	.globl	prop_create
	.def	prop_create;	.scl	2;	.type	32;	.endef
	.seh_proc	prop_create
prop_create:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$32, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rcx
	call	strdup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	prop_edit
	.def	prop_edit;	.scl	2;	.type	32;	.endef
	.seh_proc	prop_edit
prop_edit:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L6
	movl	$-1, %eax
	jmp	.L18
.L6:
	cmpq	$0, 32(%rbp)
	je	.L8
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L8:
	cmpl	$3, 24(%rbp)
	je	.L9
	cmpl	$3, 24(%rbp)
	jg	.L10
	cmpl	$2, 24(%rbp)
	je	.L11
	cmpl	$2, 24(%rbp)
	jg	.L10
	cmpl	$0, 24(%rbp)
	je	.L12
	cmpl	$1, 24(%rbp)
	je	.L13
	jmp	.L10
.L11:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
.L14:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L15
.L9:
	movq	-8(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L15
.L13:
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L15
.L12:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
.L16:
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
.L17:
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L15
.L10:
	movl	$-1, %eax
	jmp	.L18
.L15:
	movl	$0, %eax
.L18:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	prop_write
	.def	prop_write;	.scl	2;	.type	32;	.endef
	.seh_proc	prop_write
prop_write:
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
	cmpq	$0, 16(%rbp)
	jne	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	cmpq	$0, 32(%rbp)
	jne	.L22
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L23
.L22:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	free
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L23:
	movl	$0, %eax
.L21:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	prop_setname
	.def	prop_setname;	.scl	2;	.type	32;	.endef
	.seh_proc	prop_setname
prop_setname:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L25
	movl	$1, %eax
	jmp	.L26
.L25:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
.L27:
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	strdup
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
.L26:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "(NULL)\0"
.LC1:
	.ascii "prop name = %s\0"
.LC2:
	.ascii "prop data length = %lli\0"
.LC3:
	.ascii "char ptr\0"
.LC4:
	.ascii "void ptr\0"
.LC5:
	.ascii "sint64\0"
.LC6:
	.ascii "uint64\0"
.LC7:
	.ascii "sint32\0"
.LC8:
	.ascii "uint32\0"
.LC9:
	.ascii "sint16\0"
.LC10:
	.ascii "uint16\0"
.LC11:
	.ascii "sint8\0"
.LC12:
	.ascii "uint8\0"
.LC13:
	.ascii "float\0"
.LC14:
	.ascii "double\0"
.LC15:
	.ascii "prop data type = %s\0"
	.text
	.globl	prop_dump
	.def	prop_dump;	.scl	2;	.type	32;	.endef
	.seh_proc	prop_dump
prop_dump:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L29
	leaq	.LC0(%rip), %rcx
	call	printf
	jmp	.L28
.L29:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	printf
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	movq	16(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$16, %eax
	ja	.L31
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L33(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L33(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L33:
	.long	.L31-.L33
	.long	.L31-.L33
	.long	.L44-.L33
	.long	.L43-.L33
	.long	.L42-.L33
	.long	.L41-.L33
	.long	.L40-.L33
	.long	.L39-.L33
	.long	.L38-.L33
	.long	.L37-.L33
	.long	.L36-.L33
	.long	.L31-.L33
	.long	.L31-.L33
	.long	.L31-.L33
	.long	.L35-.L33
	.long	.L34-.L33
	.long	.L32-.L33
	.text
.L36:
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L35:
	leaq	.LC4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L37:
	leaq	.LC5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L38:
	leaq	.LC6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L39:
	leaq	.LC7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L40:
	leaq	.LC8(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L41:
	leaq	.LC9(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L42:
	leaq	.LC10(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L43:
	leaq	.LC11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L44:
	leaq	.LC12(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L34:
	leaq	.LC13(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L32:
	leaq	.LC14(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L45
.L31:
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	nop
.L45:
	leaq	.LC15(%rip), %rcx
	call	printf
	nop
.L28:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 10.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
