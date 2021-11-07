	.file	"main.c"
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
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "apple\0"
.LC1:
	.ascii "properties\0"
.LC2:
	.ascii "%s with data = %llu\12\0"
.LC3:
	.ascii "done\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	call	__main
	movl	$10, %ecx
	call	var_init
	movl	$0, %edx
	leaq	.LC0(%rip), %rcx
	call	var_create
	movq	%rax, -8(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$64, -32(%rbp)
	movl	$0, -24(%rbp)
	movl	$-2, -20(%rbp)
	movq	$0, -56(%rbp)
	movq	$45, -64(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, 32(%rsp)
	movq	%rdx, %r9
	movl	$0, %r8d
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	var_write
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	var_findprop
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$112, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 10.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	var_init;	.scl	2;	.type	32;	.endef
	.def	var_create;	.scl	2;	.type	32;	.endef
	.def	var_write;	.scl	2;	.type	32;	.endef
	.def	var_findprop;	.scl	2;	.type	32;	.endef
