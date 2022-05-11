	.file	"bsi.cpp"
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
.lcomm _ZStL8__ioinit,1,1
	.section	.text$_ZN4unitC1Eh7variantS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4unitC1Eh7variantS0_
	.def	_ZN4unitC1Eh7variantS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4unitC1Eh7variantS0_
_ZN4unitC1Eh7variantS0_:
.LFB2365:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movb	%al, 24(%rbp)
	movq	16(%rbp), %rax
	movb	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	16(%rbp), %rax
	movzbl	24(%rbp), %edx
	movb	%dl, (%rax)
	movzbl	24(%rbp), %eax
	cmpl	$1, %eax
	jne	.L4
	movq	32(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L5
.L4:
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
.L5:
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Name: \0"
.LC1:
	.ascii "Operator: \0"
.LC2:
	.ascii "==\0"
.LC3:
	.ascii "!=\0"
.LC4:
	.ascii ">=\0"
.LC5:
	.ascii "<=\0"
.LC6:
	.ascii "Value: \0"
.LC7:
	.ascii "True\0"
.LC8:
	.ascii "False\0"
.LC9:
	.ascii "\"\0"
.LC10:
	.ascii "Empty\0"
.LC11:
	.ascii "Invalid code \0"
	.section	.text$_ZN4unit4dumpEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4unit4dumpEv
	.def	_ZN4unit4dumpEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4unit4dumpEv
_ZN4unit4dumpEv:
.LFB2366:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$3, %eax
	je	.L7
	cmpl	$3, %eax
	jg	.L8
	cmpl	$2, %eax
	je	.L9
	cmpl	$2, %eax
	jg	.L8
	testl	%eax, %eax
	je	.L10
	cmpl	$1, %eax
	jne	.L8
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L11
.L9:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$64, %rax
	je	.L12
	cmpq	$64, %rax
	jg	.L13
	cmpq	$63, %rax
	je	.L14
	cmpq	$63, %rax
	jg	.L13
	cmpq	$38, %rax
	je	.L15
	cmpq	$39, %rax
	je	.L16
	jmp	.L13
.L15:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L17
.L16:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L17
.L12:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L17
.L14:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L17
.L13:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	%al, %eax
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	nop
.L17:
	jmp	.L11
.L7:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$20, %rax
	je	.L18
	cmpq	$20, %rax
	jg	.L26
	cmpq	$16, %rax
	je	.L20
	cmpq	$16, %rax
	jg	.L26
	cmpq	$8, %rax
	je	.L21
	cmpq	$12, %rax
	jne	.L26
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	jmp	.L22
.L20:
	movq	16(%rbp), %rax
	movsd	16(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	jmp	.L22
.L21:
	movq	16(%rbp), %rax
	movzbl	16(%rax), %eax
	testb	%al, %al
	je	.L23
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L22
.L23:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L22
.L18:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L22
.L26:
	nop
.L22:
	jmp	.L11
.L10:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L6
.L8:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, %rdx
	call	_ZNSolsEx
	nop
.L11:
	nop
.L6:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii ". \0"
	.text
	.globl	_Z10unit_printRSt6vectorI4unitSaIS0_EE
	.def	_Z10unit_printRSt6vectorI4unitSaIS0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10unit_printRSt6vectorI4unitSaIS0_EE
_Z10unit_printRSt6vectorI4unitSaIS0_EE:
.LFB2368:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	movl	%eax, -12(%rbp)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	$0, -8(%rbp)
	jmp	.L28
.L29:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEy
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	addq	$1, -8(%rbp)
.L28:
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jb	.L29
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z10unit_clearRSt6vectorI4unitSaIS0_EE
	.def	_Z10unit_clearRSt6vectorI4unitSaIS0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10unit_clearRSt6vectorI4unitSaIS0_EE
_Z10unit_clearRSt6vectorI4unitSaIS0_EE:
.LFB2369:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L31
.L40:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$3, %eax
	je	.L32
	cmpl	$3, %eax
	jg	.L41
	testl	%eax, %eax
	je	.L42
	cmpl	$1, %eax
	jne	.L41
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L35
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L36:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$0, 8(%rax)
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$0, 8(%rax)
	jmp	.L37
.L32:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$20, %rax
	jne	.L43
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$0, 16(%rax)
	jmp	.L34
.L43:
	nop
.L34:
	jmp	.L42
.L41:
	nop
	jmp	.L37
.L42:
	nop
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movb	$0, (%rax)
	addq	$1, -8(%rbp)
.L31:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L40
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "int\0"
.LC14:
	.ascii "float\0"
.LC15:
	.ascii "string\0"
.LC16:
	.ascii "bool\0"
.LC17:
	.ascii "struct\0"
.LC18:
	.ascii "fucntion\0"
.LC19:
	.ascii "for\0"
.LC20:
	.ascii "while\0"
	.text
	.globl	_Z12islegal_namePc
	.def	_Z12islegal_namePc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12islegal_namePc
_Z12islegal_namePc:
.LFB2370:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$8, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L45
.L48:
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z8sen_compPKcS0_
	testb	%al, %al
	je	.L46
	movl	$0, %eax
	jmp	.L49
.L46:
	addq	$1, -8(%rbp)
.L45:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L48
	movl	$1, %eax
.L49:
	addq	$112, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	keyword_list
	.section .rdata,"dr"
.LC21:
	.ascii "print\0"
.LC22:
	.ascii "exit\0"
	.data
	.align 16
keyword_list:
	.quad	.LC21
	.quad	.LC22
	.section .rdata,"dr"
.LC23:
	.ascii "Requested variable\0"
.LC24:
	.ascii "Undefined \0"
.LC25:
	.ascii "Expected an expression\0"
.LC26:
	.ascii "Nope \0"
	.text
	.globl	_Z7keywordR3varRSt6vectorI4unitSaIS2_EE
	.def	_Z7keywordR3varRSt6vectorI4unitSaIS2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7keywordR3varRSt6vectorI4unitSaIS2_EE
_Z7keywordR3varRSt6vectorI4unitSaIS2_EE:
.LFB2371:
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
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	setne	%al
	testb	%al, %al
	je	.L51
	movl	$0, %eax
	jmp	.L74
.L51:
	movq	40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	movq	keyword_list(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_Z8sen_compPKcS0_
	testb	%al, %al
	je	.L53
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	$1, %rax
	sete	%al
	testb	%al, %al
	je	.L54
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$-1, %ecx
	call	exit
.L54:
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L55
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L56
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L56:
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5printEv
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	jmp	.L57
.L55:
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L58
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$20, %rax
	je	.L59
	cmpq	$20, %rax
	jg	.L75
	cmpq	$12, %rax
	je	.L61
	cmpq	$16, %rax
	je	.L62
	jmp	.L75
.L61:
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	jmp	.L63
.L62:
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	jmp	.L63
.L59:
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L63
.L75:
	nop
.L63:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	jmp	.L57
.L58:
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L57
	movl	$1, -40(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L57
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	sete	%al
	testb	%al, %al
	je	.L65
	leaq	.LC25(%rip), %rax
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
.L65:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L66
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L67
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L67:
	movq	-16(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$20, -20(%rbp)
	je	.L68
	cmpl	$20, -20(%rbp)
	jg	.L69
	cmpl	$12, -20(%rbp)
	je	.L70
	cmpl	$16, -20(%rbp)
	je	.L71
	jmp	.L69
.L70:
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	jmp	.L57
.L71:
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	jmp	.L57
.L68:
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	leaq	-56(%rbp), %rcx
	movq	40(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z17read_value_stringR3varRSt6vectorI4unitSaIS2_EEiRx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	jmp	.L57
.L69:
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movl	$-1, %ecx
	call	exit
.L66:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
.L57:
	movl	$1, %eax
	jmp	.L74
.L53:
	movq	8+keyword_list(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_Z8sen_compPKcS0_
	testb	%al, %al
	je	.L73
	movl	$-1, %ecx
	call	exit
.L73:
	movl	$0, %eax
.L74:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC27:
	.ascii "array\0"
	.text
	.globl	_Z14is_declarationPc
	.def	_Z14is_declarationPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14is_declarationPc
_Z14is_declarationPc:
.LFB2372:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC27(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$7, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L77
.L80:
	movq	-8(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z8sen_compPKcS0_
	testb	%al, %al
	je	.L78
	movq	-8(%rbp), %rax
	addl	$1, %eax
	jmp	.L81
.L78:
	addq	$1, -8(%rbp)
.L77:
	cmpq	$3, -8(%rbp)
	jbe	.L80
	movl	$0, %eax
.L81:
	addq	$112, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC28:
	.ascii "Redeclaration of \0"
.LC29:
	.ascii "Nope\0"
	.text
	.globl	_Z12check_syntaxR3varRSt6vectorI4unitSaIS2_EERi
	.def	_Z12check_syntaxR3varRSt6vectorI4unitSaIS2_EERi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12check_syntaxR3varRSt6vectorI4unitSaIS2_EERi
_Z12check_syntaxR3varRSt6vectorI4unitSaIS2_EERi:
.LFB2373:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	$0, -20(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L83
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	_Z14is_declarationPc
	movl	%eax, -4(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -4(%rbp)
	je	.L84
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L85
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-20(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L86
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L86:
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	movq	32(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	sete	%al
	testb	%al, %al
	je	.L85
	movl	$1, %eax
	jmp	.L89
.L84:
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-20(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	testb	%al, %al
	je	.L85
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L85
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$61, %rax
	sete	%al
	testb	%al, %al
	je	.L88
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %edx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3varC1Eh
	leaq	-64(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z11right_valueR3varRSt6vectorI4unitSaIS2_EERiS0_
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5clearEv
	jmp	.L85
.L88:
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$-1, %ecx
	call	exit
.L83:
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$-1, %ecx
	call	exit
.L85:
	movl	$0, %eax
.L89:
	addq	$96, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC30:
	.ascii "Expected an identifier\0"
	.text
	.globl	_Z7declareR3varRSt6vectorI4unitSaIS2_EE
	.def	_Z7declareR3varRSt6vectorI4unitSaIS2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7declareR3varRSt6vectorI4unitSaIS2_EE
_Z7declareR3varRSt6vectorI4unitSaIS2_EE:
.LFB2374:
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
	movq	40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	setne	%al
	testb	%al, %al
	je	.L91
	movl	$0, %eax
	jmp	.L96
.L91:
	movl	$0, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	_Z14is_declarationPc
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L93
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	setne	%al
	testb	%al, %al
	je	.L94
	leaq	.LC30(%rip), %rax
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
.L94:
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-20(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L95
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L95:
	movl	-8(%rbp), %eax
	jmp	.L96
.L93:
	movl	$0, %eax
.L96:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z13read_functionR3varRSt6vectorI4unitSaIS2_EEiPc
	.def	_Z13read_functionR3varRSt6vectorI4unitSaIS2_EEiPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13read_functionR3varRSt6vectorI4unitSaIS2_EEiPc
_Z13read_functionR3varRSt6vectorI4unitSaIS2_EEiPc:
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
	movl	%r8d, 32(%rbp)
	movq	%r9, 40(%rbp)
	movl	32(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	setne	%al
	testb	%al, %al
	je	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	movl	32(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	setne	%al
	testb	%al, %al
	je	.L100
	movl	$0, %eax
	jmp	.L99
.L100:
	movl	$1, %eax
.L99:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z13read_operatorPcRi
	.def	_Z13read_operatorPcRi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13read_operatorPcRi
_Z13read_operatorPcRi:
.LFB2376:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$33, %eax
	cmpl	$92, %eax
	ja	.L127
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L104(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L104(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L104:
	.long	.L120-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L119-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L118-.L104
	.long	.L117-.L104
	.long	.L116-.L104
	.long	.L115-.L104
	.long	.L114-.L104
	.long	.L113-.L104
	.long	.L112-.L104
	.long	.L111-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L110-.L104
	.long	.L109-.L104
	.long	.L108-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L107-.L104
	.long	.L127-.L104
	.long	.L106-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L127-.L104
	.long	.L105-.L104
	.long	.L127-.L104
	.long	.L103-.L104
	.text
.L115:
	movl	$43, %eax
	jmp	.L121
.L113:
	movl	$45, %eax
	jmp	.L121
.L116:
	movl	$42, %eax
	jmp	.L121
.L111:
	movl	$92, %eax
	jmp	.L121
.L119:
	movl	$37, %eax
	jmp	.L121
.L109:
	movq	16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L122
	movq	24(%rbp), %rax
	movl	$2, (%rax)
	movl	$38, %eax
	jmp	.L121
.L122:
	movl	$61, %eax
	jmp	.L121
.L110:
	movq	16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L123
	movq	24(%rbp), %rax
	movl	$2, (%rax)
	movl	$63, %eax
	jmp	.L121
.L123:
	movl	$60, %eax
	jmp	.L121
.L108:
	movq	16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L124
	movq	24(%rbp), %rax
	movl	$2, (%rax)
	movl	$64, %eax
	jmp	.L121
.L124:
	movl	$62, %eax
	jmp	.L121
.L120:
	movq	16(%rbp), %rax
	addq	$1, %rax
	movb	$61, (%rax)
	movl	$1, %eax
	testb	%al, %al
	je	.L125
	movq	24(%rbp), %rax
	movl	$2, (%rax)
	movl	$39, %eax
	jmp	.L121
.L125:
	movl	$33, %eax
	jmp	.L121
.L112:
	movl	$46, %eax
	jmp	.L121
.L114:
	movl	$44, %eax
	jmp	.L121
.L118:
	movl	$40, %eax
	jmp	.L121
.L117:
	movl	$41, %eax
	jmp	.L121
.L107:
	movl	$91, %eax
	jmp	.L121
.L106:
	movl	$93, %eax
	jmp	.L121
.L105:
	movl	$123, %eax
	jmp	.L121
.L103:
	movl	$125, %eax
	jmp	.L121
.L127:
	nop
	movl	$0, %eax
.L121:
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC31:
	.ascii "kiunbytvc\0"
	.text
	.globl	_Z15read_value_boolR3varRSt6vectorI4unitSaIS2_EEi
	.def	_Z15read_value_boolR3varRSt6vectorI4unitSaIS2_EEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15read_value_boolR3varRSt6vectorI4unitSaIS2_EEi
_Z15read_value_boolR3varRSt6vectorI4unitSaIS2_EEi:
.LFB2377:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$168, %rsp
	.seh_stackalloc	168
	leaq	160(%rsp), %rbp
	.seh_setframe	%rbp, 160
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movl	%r8d, 48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3varC1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3varC1Ev
	movl	$0, -116(%rbp)
	movl	48(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L129
	movl	48(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-116(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L130
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	48(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L130:
	movq	-16(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$8, %al
	jne	.L131
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L132
.L131:
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L132
.L129:
	movl	48(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L132
	movl	48(%rbp), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$8, %rax
	sete	%al
	testb	%al, %al
	je	.L133
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L132
.L133:
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L132:
	addl	$1, 48(%rbp)
	movl	48(%rbp), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	nop
.L134:
	movzbl	-1(%rbp), %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC32:
	.ascii "false\0"
.LC33:
	.ascii "true\0"
.LC34:
	.ascii " are not allowed\0"
.LC35:
	.ascii "Expected an operator\0"
	.text
	.globl	_Z17read_value_stringR3varRSt6vectorI4unitSaIS2_EEiRx
	.def	_Z17read_value_stringR3varRSt6vectorI4unitSaIS2_EEiRx;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17read_value_stringR3varRSt6vectorI4unitSaIS2_EEiRx
_Z17read_value_stringR3varRSt6vectorI4unitSaIS2_EEiRx:
.LFB2378:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$520, %rsp
	.seh_stackalloc	520
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 416(%rbp)
	movq	%rdx, 424(%rbp)
	movl	%r8d, 432(%rbp)
	movq	%r9, 440(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev
.LEHE0:
	movl	$0, -84(%rbp)
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L137
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-84(%rbp), %rdx
	movq	%rax, %rcx
.LEHB1:
	call	_ZN3bsi6searchEPcRi
	movq	%rax, 376(%rbp)
	cmpq	$0, 376(%rbp)
	jne	.L138
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L138:
	movq	376(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$20, %al
	jne	.L155
	movq	376(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L155
.L137:
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L163
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$20, %rax
	sete	%al
	testb	%al, %al
	je	.L155
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L155
.L163:
	nop
.L139:
.L155:
	addl	$1, 432(%rbp)
	movl	432(%rbp), %eax
	movslq	%eax, %rbx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L164
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L142
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$43, %rax
	sete	%al
	testb	%al, %al
	je	.L143
	addl	$1, 432(%rbp)
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L144
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-84(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, 376(%rbp)
	cmpq	$0, 376(%rbp)
	jne	.L145
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L145:
	movq	376(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$20, %al
	jne	.L146
	movq	376(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L147
.L146:
	movq	376(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L148
	movq	376(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	jmp	.L147
.L148:
	movq	376(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L149
	movq	376(%rbp), %rax
	movsd	16(%rax), %xmm0
	leaq	-80(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	jmp	.L147
.L149:
	movq	376(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$8, %al
	jne	.L155
	movq	376(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L150
	leaq	-80(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L147
.L150:
	leaq	-80(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L147
.L144:
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L155
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$20, %rax
	sete	%al
	testb	%al, %al
	je	.L151
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L147
.L151:
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L152
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSolsEx
	jmp	.L147
.L152:
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L153
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	leaq	-80(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	jmp	.L147
.L153:
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$8, %rax
	sete	%al
	testb	%al, %al
	je	.L155
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	16(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L154
	leaq	-80(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L147
.L154:
	leaq	-80(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L147:
	jmp	.L155
.L143:
	movl	432(%rbp), %eax
	movslq	%eax, %rdx
	movq	424(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L142:
	leaq	.LC35(%rip), %rax
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
.L164:
	nop
.L141:
	leaq	304(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv
	leaq	304(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	movq	%rax, %rdx
	movq	440(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	304(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	336(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv
.LEHE1:
	leaq	336(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv
	movq	%rax, %rcx
	movq	__imp__strdup(%rip), %rax
.LEHB2:
	call	*%rax
.LEHE2:
	movq	%rax, %rbx
	nop
	leaq	336(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	jmp	.L162
.L160:
	movq	%rax, %rbx
	leaq	336(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L158
.L159:
	movq	%rax, %rbx
.L158:
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L162:
	addq	$520, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2378:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2378-.LLSDACSB2378
.LLSDACSB2378:
	.uleb128 .LEHB0-.LFB2378
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2378
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L159-.LFB2378
	.uleb128 0
	.uleb128 .LEHB2-.LFB2378
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L160-.LFB2378
	.uleb128 0
	.uleb128 .LEHB3-.LFB2378
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2378:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC37:
	.ascii "Expected closing backet\0"
.LC38:
	.ascii "Expected closing bracket\0"
	.text
	.globl	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	.def	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi:
.LFB2379:
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
	movq	%r8, 48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -36(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L166
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L167
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L167:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L168
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L169
.L168:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L169
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
.L169:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L276
	jmp	.L171
.L166:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L172
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L173
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L174
.L173:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L174
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
.L174:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L276
	jmp	.L171
.L172:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L292
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L175
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L176
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L176
	leaq	.LC37(%rip), %rax
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
.L176:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
.L175:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L293
	jmp	.L276
.L292:
	nop
.L170:
.L276:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L177
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$43, %rax
	sete	%al
	testb	%al, %al
	je	.L178
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L179
	leaq	.LC25(%rip), %rax
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
.L179:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L180
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L181
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L181:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L182
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L182:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L197
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L180:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L184
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L185
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L185:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L184:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L294
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L186
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L187
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L187
	leaq	.LC37(%rip), %rax
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
.L187:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L197
	jmp	.L171
.L186:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L294:
	nop
.L183:
.L197:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L189
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L171
.L189:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$42, %rax
	sete	%al
	testb	%al, %al
	je	.L190
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L191
	leaq	.LC25(%rip), %rax
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
.L191:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L192
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L193
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L193:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L194
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L194:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L197
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L192:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L196
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L196:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L190:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$92, %rax
	sete	%al
	testb	%al, %al
	je	.L198
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L199
	leaq	.LC25(%rip), %rax
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
.L199:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L200
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L201
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L201:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L202
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L202:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L197
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L200:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L204
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L204:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L198:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$43, %rax
	sete	%al
	testb	%al, %al
	je	.L205
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L206
	leaq	.LC25(%rip), %rax
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
.L206:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L207
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L208
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L208:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L209
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L209:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L197
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L207:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L211
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L211:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L205:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$45, %rax
	sete	%al
	testb	%al, %al
	je	.L212
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L213
	leaq	.LC25(%rip), %rax
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
.L213:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L214
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L215
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L215:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L216
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L216:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L197
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L214:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L218
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L218:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L197
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L197
.L212:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	sete	%al
	testb	%al, %al
	je	.L219
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L171
.L219:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$93, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L220
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L171
.L220:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L171
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L295
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L295
	leaq	.LC37(%rip), %rax
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
.L178:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$45, %rax
	sete	%al
	testb	%al, %al
	je	.L223
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L224
	leaq	.LC25(%rip), %rax
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
.L224:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L225
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L226
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L226:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L227
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L227:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L241
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L225:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L228
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L229
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L229:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L228:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L296
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L230
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L231
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L231
	leaq	.LC37(%rip), %rax
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
.L231:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L241
	jmp	.L171
.L230:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L295:
	nop
	jmp	.L241
.L296:
	nop
.L222:
.L241:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L233
	movsd	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L171
.L233:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$42, %rax
	sete	%al
	testb	%al, %al
	je	.L234
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L235
	leaq	.LC25(%rip), %rax
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
.L235:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L236
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L237
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L237:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L238
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L238:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L241
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L236:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L240
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L240:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L234:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$92, %rax
	sete	%al
	testb	%al, %al
	je	.L242
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L243
	leaq	.LC25(%rip), %rax
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
.L243:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L244
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L245
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L245:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L246
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L246:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L241
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L244:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L248
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L248:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L242:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$43, %rax
	sete	%al
	testb	%al, %al
	je	.L249
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L250
	leaq	.LC25(%rip), %rax
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
.L250:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L251
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L252
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L252:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L253
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L253:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L241
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L251:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L255
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L255:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L249:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$45, %rax
	sete	%al
	testb	%al, %al
	je	.L256
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L257
	leaq	.LC25(%rip), %rax
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
.L257:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L258
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L259
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L259:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L260
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L260:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L241
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L258:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L262
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L262:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L241
.L256:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	sete	%al
	testb	%al, %al
	je	.L263
	movsd	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L171
.L263:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$93, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L264
	movsd	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L171
.L264:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L171
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L241
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L241
	leaq	.LC37(%rip), %rax
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
.L223:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$42, %rax
	sete	%al
	testb	%al, %al
	je	.L266
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L267
	leaq	.LC25(%rip), %rax
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
.L267:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L268
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L269
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L269:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L270
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L271
.L270:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L271
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L271
.L268:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L272
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L273
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L271
.L273:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L271
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L271
.L272:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L271
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$40, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L274
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L271
	leaq	.LC38(%rip), %rax
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
.L274:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L271:
	movsd	-8(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L297
	jmp	.L276
.L266:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$92, %rax
	sete	%al
	testb	%al, %al
	je	.L277
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L278
	leaq	.LC25(%rip), %rax
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
.L278:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L279
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L280
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L280:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L281
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L282
.L281:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L282
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L282
.L279:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L283
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L284
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L282
.L284:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L282
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L282
.L283:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L282
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$40, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L285
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L282
	leaq	.LC38(%rip), %rax
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
.L285:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L282:
	movsd	-8(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L298
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	sete	%al
	testb	%al, %al
	jne	.L299
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$93, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L300
	jmp	.L276
.L277:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$41, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L301
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$93, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L302
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L177:
	leaq	.LC35(%rip), %rax
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
.L293:
	nop
	jmp	.L171
.L297:
	nop
	jmp	.L171
.L298:
	nop
	jmp	.L171
.L299:
	nop
	jmp	.L171
.L300:
	nop
	jmp	.L171
.L301:
	nop
	jmp	.L171
.L302:
	nop
.L171:
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	.def	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi:
.LFB2380:
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
	movq	$0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L304
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L305
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L305:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L306
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L307
.L306:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L307
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
.L307:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L308
.L304:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L309
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L310
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L311
.L310:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L311
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
.L311:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L308
.L309:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L308
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L308
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	movq	%rax, -8(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L312
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L312
	leaq	.LC37(%rip), %rax
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
.L312:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
.L308:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L412
	nop
.L313:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L315
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$43, %rax
	sete	%al
	testb	%al, %al
	je	.L316
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L317
	leaq	.LC25(%rip), %rax
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
.L317:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L318
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L319
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L319:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L333
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L318:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L321
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L322
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L322:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L321:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L413
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L323
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L324
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L324
	leaq	.LC37(%rip), %rax
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
.L324:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L333
	jmp	.L314
.L323:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L413:
	nop
.L320:
.L333:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L326
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L314
.L326:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$42, %rax
	sete	%al
	testb	%al, %al
	je	.L327
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L328
	leaq	.LC25(%rip), %rax
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
.L328:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L329
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L330
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L330:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L333
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L329:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L332
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L332:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L327:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$92, %rax
	sete	%al
	testb	%al, %al
	je	.L334
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L335
	leaq	.LC25(%rip), %rax
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
.L335:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L336
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L337
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L337:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L333
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L336:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L339
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L339:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L334:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$43, %rax
	sete	%al
	testb	%al, %al
	je	.L340
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L341
	leaq	.LC25(%rip), %rax
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
.L341:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L342
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L343
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L343:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L333
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L342:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L345
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L345:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L340:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$45, %rax
	sete	%al
	testb	%al, %al
	je	.L346
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L347
	leaq	.LC25(%rip), %rax
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
.L347:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L348
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L349
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L349:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L333
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L348:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L351
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L351:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L333
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L333
.L346:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	sete	%al
	testb	%al, %al
	je	.L352
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L314
.L352:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$93, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L314
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L314
.L316:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$45, %rax
	sete	%al
	testb	%al, %al
	je	.L353
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L354
	leaq	.LC25(%rip), %rax
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
.L354:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L355
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L356
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L356:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L370
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L355:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L358
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L359
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L359:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L358:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L414
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L360
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L361
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L361
	leaq	.LC37(%rip), %rax
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
.L361:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L370
	jmp	.L314
.L360:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L414:
	nop
.L357:
.L370:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L363
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L314
.L363:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$42, %rax
	sete	%al
	testb	%al, %al
	je	.L364
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L365
	leaq	.LC25(%rip), %rax
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
.L365:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L366
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L367
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L367:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L370
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L366:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L369
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L369:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L364:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$92, %rax
	sete	%al
	testb	%al, %al
	je	.L371
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L372
	leaq	.LC25(%rip), %rax
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
.L372:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L373
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L374
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L374:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L370
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L373:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L376
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L376:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L371:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$43, %rax
	sete	%al
	testb	%al, %al
	je	.L377
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L378
	leaq	.LC25(%rip), %rax
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
.L378:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L379
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L380
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L380:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L370
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L379:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L382
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L382:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L377:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$45, %rax
	sete	%al
	testb	%al, %al
	je	.L383
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L384
	leaq	.LC25(%rip), %rax
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
.L384:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L385
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L386
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L386:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L370
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L385:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L388
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L388:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L370
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L370
.L383:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	sete	%al
	testb	%al, %al
	je	.L389
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L314
.L389:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$93, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L314
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L314
.L353:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$42, %rax
	sete	%al
	testb	%al, %al
	je	.L390
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L391
	leaq	.LC25(%rip), %rax
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
.L391:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L392
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L393
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L394
.L393:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L394
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L394
.L392:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L395
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L396
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L394
.L396:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L394
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L394
.L395:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L394
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L397
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L394
	leaq	.LC38(%rip), %rax
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
.L397:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L394:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L415
	jmp	.L313
.L390:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$92, %rax
	sete	%al
	testb	%al, %al
	je	.L399
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L400
	leaq	.LC25(%rip), %rax
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
.L400:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	testb	%al, %al
	je	.L401
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-28(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$12, %al
	jne	.L402
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L403
.L402:
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$16, %al
	jne	.L403
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L403
.L401:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	testb	%al, %al
	je	.L404
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$12, %rax
	sete	%al
	testb	%al, %al
	je	.L405
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L403
.L405:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$16, %rax
	sete	%al
	testb	%al, %al
	je	.L403
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L403
.L404:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L403
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$40, %rax
	sete	%al
	testb	%al, %al
	je	.L406
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	setne	%al
	testb	%al, %al
	je	.L403
	leaq	.LC38(%rip), %rax
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
.L406:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L403:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L416
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$41, %rax
	sete	%al
	testb	%al, %al
	jne	.L417
	jmp	.L313
.L399:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$41, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L418
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	$93, 8(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L419
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	%rax, %rcx
	call	_ZN4unit4dumpEv
	leaq	.LC34(%rip), %rax
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
.L315:
	leaq	.LC35(%rip), %rax
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
.L412:
	nop
	jmp	.L314
.L415:
	nop
	jmp	.L314
.L416:
	nop
	jmp	.L314
.L417:
	nop
	jmp	.L314
.L418:
	nop
	jmp	.L314
.L419:
	nop
.L314:
	movq	-8(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC39:
	.ascii "Error syntax\0"
	.text
	.globl	_Z10left_valueR3varRSt6vectorI4unitSaIS2_EERi
	.def	_Z10left_valueR3varRSt6vectorI4unitSaIS2_EERi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10left_valueR3varRSt6vectorI4unitSaIS2_EERi
_Z10left_valueR3varRSt6vectorI4unitSaIS2_EERi:
.LFB2381:
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
	movl	$0, -12(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L421
	movl	$0, %eax
	jmp	.L428
.L421:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-12(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L423
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L423:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L424
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$46, %rax
	sete	%al
	testb	%al, %al
	je	.L430
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L429
.L424:
	leaq	.LC39(%rip), %rax
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
.L429:
	jmp	.L421
.L430:
	nop
	movq	-8(%rbp), %rax
.L428:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC40:
	.ascii "not written for \0"
	.text
	.globl	_Z11right_valueR3varRSt6vectorI4unitSaIS2_EERiS0_
	.def	_Z11right_valueR3varRSt6vectorI4unitSaIS2_EERiS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11right_valueR3varRSt6vectorI4unitSaIS2_EERiS0_
_Z11right_valueR3varRSt6vectorI4unitSaIS2_EERiS0_:
.LFB2382:
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
	movl	$0, -4(%rbp)
	movq	56(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$20, -8(%rbp)
	je	.L432
	cmpl	$20, -8(%rbp)
	jg	.L433
	cmpl	$16, -8(%rbp)
	je	.L434
	cmpl	$16, -8(%rbp)
	jg	.L433
	cmpl	$8, -8(%rbp)
	je	.L435
	cmpl	$12, -8(%rbp)
	jne	.L433
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5writeE7variant
	jmp	.L436
.L434:
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z16read_value_floatR3varRSt6vectorI4unitSaIS2_EERi
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5writeE7variant
	jmp	.L436
.L432:
	movq	48(%rbp), %rax
	movl	(%rax), %edx
	leaq	-24(%rbp), %rcx
	movq	40(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z17read_value_stringR3varRSt6vectorI4unitSaIS2_EEiRx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5writeE7variant
	jmp	.L436
.L435:
	movq	48(%rbp), %rax
	movl	(%rax), %edx
	movq	40(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_Z15read_value_boolR3varRSt6vectorI4unitSaIS2_EEi
	movb	%al, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5writeE7variant
	jmp	.L436
.L433:
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	call	_Z12get_datatypei
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	nop
.L436:
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC41:
	.ascii " \12\0"
.LC42:
	.ascii "\12\0"
.LC43:
	.ascii "Invalid float writing\0"
	.text
	.globl	_Z9read_linePcRSt6vectorI4unitSaIS1_EE
	.def	_Z9read_linePcRSt6vectorI4unitSaIS1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9read_linePcRSt6vectorI4unitSaIS1_EE
_Z9read_linePcRSt6vectorI4unitSaIS1_EE:
.LFB2383:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$336, %rsp
	.seh_stackalloc	336
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 224(%rbp)
	movq	%rdx, 232(%rbp)
	movq	224(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L439
	movl	$0, %eax
	jmp	.L480
.L439:
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE5clearEv
	movl	$0, 204(%rbp)
	movb	$0, 203(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	movq	224(%rbp), %rcx
	call	_Z7skip_atPcPKc
	subq	224(%rbp), %rax
	movl	%eax, 184(%rbp)
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdx
	movq	224(%rbp), %rcx
	call	_Z7stop_atPcPKc
	addl	$1, %eax
	movl	%eax, 180(%rbp)
	movl	180(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L441
	movb	$1, 203(%rbp)
.L441:
	movl	180(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movq	224(%rbp), %rcx
	call	_Z7strndupPKcy
	movq	%rax, 224(%rbp)
	movl	$0, 196(%rbp)
	movq	$0, 168(%rbp)
	movl	$0, 164(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, 160(%rbp)
	movl	$0, 192(%rbp)
	movq	$0, 152(%rbp)
	movl	$0, 148(%rbp)
	movl	$0, 188(%rbp)
.L442:
	jmp	.L443
.L454:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L444
	addl	$1, 204(%rbp)
	jmp	.L443
.L444:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L445
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$90, %al
	jle	.L483
.L445:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L447
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$122, %al
	jle	.L484
.L447:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L485
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L449
	addl	$1, 204(%rbp)
	nop
.L450:
	movl	$0, 192(%rbp)
	jmp	.L463
.L449:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L451
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L486
.L451:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-68(%rbp), %rax
	movq	%rax, %rdx
	call	_Z13read_operatorPcRi
	movl	%eax, 164(%rbp)
	cmpl	$0, 164(%rbp)
	setne	%al
	testb	%al, %al
	je	.L453
	movl	164(%rbp), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZN4unitC1Eh7variantS0_
	leaq	-64(%rbp), %rdx
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_
	movl	-68(%rbp), %eax
	addl	%eax, 204(%rbp)
	jmp	.L443
.L453:
	addl	$1, 204(%rbp)
.L443:
	movl	204(%rbp), %eax
	cmpl	180(%rbp), %eax
	jl	.L454
	jmp	.L482
.L483:
	nop
	jmp	.L446
.L484:
	nop
	jmp	.L446
.L485:
	nop
.L446:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 168(%rbp)
	movl	$0, 196(%rbp)
	jmp	.L456
.L462:
	addl	$1, 196(%rbp)
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L457
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L457
	jmp	.L456
.L457:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L458
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$90, %al
	jg	.L458
	jmp	.L456
.L458:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L459
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$122, %al
	jg	.L459
	jmp	.L456
.L459:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	jne	.L460
	jmp	.L456
.L460:
	movl	196(%rbp), %eax
	movslq	%eax, %rdx
	movq	168(%rbp), %rax
	movq	%rax, %rcx
	call	_Z7strndupPKcy
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN4unitC1Eh7variantS0_
	leaq	-32(%rbp), %rdx
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_
	jmp	.L461
.L456:
	addl	$1, 204(%rbp)
	movl	204(%rbp), %eax
	cmpl	180(%rbp), %eax
	setl	%al
	testb	%al, %al
	jne	.L462
.L461:
	jmp	.L442
.L468:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L464
	cmpl	$0, 192(%rbp)
	jne	.L465
	movq	$20, -80(%rbp)
	movl	$1, %ecx
	call	malloc
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN4unitC1Eh7variantS0_
	movq	%rbp, %rdx
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_
	jmp	.L466
.L465:
	movq	$20, -80(%rbp)
	movl	192(%rbp), %eax
	cltq
	movl	204(%rbp), %edx
	movslq	%edx, %rdx
	movl	192(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rdx
	movq	%rdx, %r8
	movq	224(%rbp), %rdx
	leaq	(%r8,%rdx), %rcx
	movq	%rax, %rdx
	call	_Z7strndupPKcy
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	32(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN4unitC1Eh7variantS0_
	leaq	32(%rbp), %rdx
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_
.L466:
	addl	$1, 204(%rbp)
	jmp	.L467
.L464:
	addl	$1, 192(%rbp)
	addl	$1, 204(%rbp)
.L463:
	movl	204(%rbp), %eax
	cmpl	180(%rbp), %eax
	jl	.L468
.L467:
	jmp	.L442
.L486:
	nop
.L452:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 152(%rbp)
	movl	$0, 188(%rbp)
	jmp	.L469
.L474:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L470
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L470
	addl	$1, 204(%rbp)
	jmp	.L469
.L470:
	movl	204(%rbp), %eax
	movslq	%eax, %rdx
	movq	224(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L487
	cmpl	$0, 188(%rbp)
	je	.L472
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$-1, %ecx
	call	exit
.L472:
	addl	$1, 188(%rbp)
	addl	$1, 204(%rbp)
	nop
.L469:
	movl	204(%rbp), %eax
	cmpl	180(%rbp), %eax
	jl	.L474
	jmp	.L473
.L487:
	nop
.L473:
	cmpl	$0, 188(%rbp)
	je	.L475
	movq	152(%rbp), %rax
	movq	%rax, %rcx
	call	atof
	movq	%xmm0, %rax
	movq	%rax, 128(%rbp)
	movq	$16, -80(%rbp)
	movsd	128(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	64(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN4unitC1Eh7variantS0_
	leaq	64(%rbp), %rdx
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_
	jmp	.L442
.L475:
	movq	152(%rbp), %rax
	movq	%rax, %rcx
	call	atoll
	movq	%rax, 136(%rbp)
	movq	$12, -80(%rbp)
	movq	136(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	96(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN4unitC1Eh7variantS0_
	leaq	96(%rbp), %rdx
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_
	jmp	.L442
.L482:
.L455:
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L477
	movl	$0, %eax
	jmp	.L480
.L477:
	movq	224(%rbp), %rax
	testq	%rax, %rax
	je	.L478
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L478:
	cmpb	$0, 203(%rbp)
	je	.L479
	movl	$0, %eax
	jmp	.L480
.L479:
	movl	180(%rbp), %edx
	movl	184(%rbp), %eax
	addl	%edx, %eax
.L480:
	addq	$336, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC44:
	.ascii "not written\0"
	.align 8
.LC45:
	.ascii " are not allowed to be asigned\0"
.LC46:
	.ascii " are not an array\0"
	.text
	.globl	_Z3runR3varRSt6vectorI4unitSaIS2_EERi
	.def	_Z3runR3varRSt6vectorI4unitSaIS2_EERi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3runR3varRSt6vectorI4unitSaIS2_EERi
_Z3runR3varRSt6vectorI4unitSaIS2_EERi:
.LFB2384:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	$0, -12(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3varC1Ev
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z7keywordR3varRSt6vectorI4unitSaIS2_EE
	testb	%al, %al
	jne	.L501
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z7declareR3varRSt6vectorI4unitSaIS2_EE
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	setne	%al
	testb	%al, %al
	je	.L490
	cmpl	$1, -12(%rbp)
	jne	.L491
	movq	24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movl	$12, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN3var13struct_createEPKch
	movq	%rax, -8(%rbp)
	jmp	.L492
.L491:
	cmpl	$2, -12(%rbp)
	jne	.L493
	movq	24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movl	$16, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN3var13struct_createEPKch
	movq	%rax, -8(%rbp)
	jmp	.L492
.L493:
	cmpl	$3, -12(%rbp)
	jne	.L494
	movq	24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movl	$20, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN3var13struct_createEPKch
	movq	%rax, -8(%rbp)
	jmp	.L492
.L494:
	cmpl	$4, -12(%rbp)
	jne	.L495
	movq	24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	movl	$8, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN3var13struct_createEPKch
	movq	%rax, -8(%rbp)
	jmp	.L492
.L495:
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L492:
	movq	24(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L501
	movq	24(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$61, %rax
	sete	%al
	testb	%al, %al
	je	.L501
	movq	32(%rbp), %rax
	movl	$3, (%rax)
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	movb	%al, -56(%rbp)
	leaq	-64(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z11right_valueR3varRSt6vectorI4unitSaIS2_EERiS0_
	movl	%eax, -12(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5writeERS_
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5clearEv
	jmp	.L501
.L490:
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z10left_valueR3varRSt6vectorI4unitSaIS2_EERi
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	testb	%al, %al
	je	.L501
	movl	$0, -68(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	leaq	-68(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN3bsi6searchEPcRi
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$61, %rax
	sete	%al
	testb	%al, %al
	je	.L496
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	je	.L497
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L497:
	movq	32(%rbp), %rax
	movl	$2, (%rax)
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	movb	%al, -56(%rbp)
	leaq	-64(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z11right_valueR3varRSt6vectorI4unitSaIS2_EERiS0_
	movl	%eax, -12(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5writeERS_
	jmp	.L501
.L496:
	movq	24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$91, %rax
	sete	%al
	testb	%al, %al
	je	.L501
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L499
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %ecx
	call	exit
.L499:
	movl	$2, -72(%rbp)
	leaq	-72(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z14read_value_intR3varRSt6vectorI4unitSaIS2_EERi
	movq	%rax, -24(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movzbl	(%rax), %eax
	cmpb	$2, %al
	sete	%al
	testb	%al, %al
	je	.L501
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEixEy
	movq	8(%rax), %rax
	cmpq	$61, %rax
	sete	%al
	testb	%al, %al
	je	.L501
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$2, %eax
	movb	%al, -56(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_Z11right_valueR3varRSt6vectorI4unitSaIS2_EERiS0_
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	_ZN3var9arr_writeEiRS_
.L501:
	nop
	addq	$112, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implD1Ev:
.LFB2391:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaI4unitED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4unitSaIS0_EEC2Ev
	.def	_ZNSt12_Vector_baseI4unitSaIS0_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4unitSaIS0_EEC2Ev
_ZNSt12_Vector_baseI4unitSaIS0_EEC2Ev:
.LFB2392:
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
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EEC1Ev
	.def	_ZNSt6vectorI4unitSaIS0_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EEC1Ev
_ZNSt6vectorI4unitSaIS0_EEC1Ev:
.LFB2395:
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
	call	_ZNSt12_Vector_baseI4unitSaIS0_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.globl	_ZN3bsi4readER3varPc
	.def	_ZN3bsi4readER3varPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3bsi4readER3varPc
_ZN3bsi4readER3varPc:
.LFB2385:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$256, %rsp
	.seh_stackalloc	256
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 160(%rbp)
	movq	%rdx, 168(%rbp)
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EEC1Ev
	movl	$40, %ecx
.LEHB4:
	call	_Znwy
.LEHE4:
	movq	%rax, %rbx
	movq	%rbx, %rcx
.LEHB5:
	call	_ZN3varC1Ev
.LEHE5:
	movq	%rbx, 112(%rbp)
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB6:
	call	_ZN3varC1Ev
	movq	.refptr._ZN3bsi8bsi_rootE(%rip), %rax
	movq	160(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, 124(%rbp)
	movl	$0, 108(%rbp)
	movl	$0, 104(%rbp)
	jmp	.L506
.L507:
	movl	108(%rbp), %eax
	addl	%eax, 124(%rbp)
	movl	$0, -84(%rbp)
	leaq	-84(%rbp), %rdx
	leaq	80(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	160(%rbp), %rcx
	call	_Z3runR3varRSt6vectorI4unitSaIS2_EERi
	movl	$0, -84(%rbp)
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_Z10unit_clearRSt6vectorI4unitSaIS0_EE
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE5clearEv
.L506:
	movl	124(%rbp), %eax
	movslq	%eax, %rdx
	movq	168(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	80(%rbp), %rax
	movq	%rax, %rdx
	call	_Z9read_linePcRSt6vectorI4unitSaIS1_EE
.LEHE6:
	movl	%eax, 108(%rbp)
	cmpl	$0, 108(%rbp)
	setne	%al
	testb	%al, %al
	jne	.L507
	movl	$0, %ebx
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EED1Ev
	movl	%ebx, %eax
	jmp	.L513
.L512:
	movq	%rax, %rsi
	movl	$40, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movq	%rsi, %rbx
	jmp	.L510
.L511:
	movq	%rax, %rbx
.L510:
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L513:
	addq	$256, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2385:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2385-.LLSDACSB2385
.LLSDACSB2385:
	.uleb128 .LEHB4-.LFB2385
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L511-.LFB2385
	.uleb128 0
	.uleb128 .LEHB5-.LFB2385
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L512-.LFB2385
	.uleb128 0
	.uleb128 .LEHB6-.LFB2385
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L511-.LFB2385
	.uleb128 0
	.uleb128 .LEHB7-.LFB2385
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2385:
	.text
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4unitSaIS0_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	.def	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
_ZNKSt6vectorI4unitSaIS0_EE4sizeEv:
.LFB2678:
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
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EEixEy
	.def	_ZNSt6vectorI4unitSaIS0_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EEixEy
_ZNSt6vectorI4unitSaIS0_EEixEy:
.LFB2682:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EE5clearEv
	.def	_ZNSt6vectorI4unitSaIS0_EE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE5clearEv
_ZNSt6vectorI4unitSaIS0_EE5clearEv:
.LFB2696:
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
	call	_ZNSt6vectorI4unitSaIS0_EE15_M_erase_at_endEPS0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_
	.def	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_
_ZNSt6vectorI4unitSaIS0_EE9push_backEOS0_:
.LFB2697:
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
	movq	%rax, %rcx
	call	_ZSt4moveIR4unitEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implC1Ev:
.LFB2700:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaI4unitEC2Ev
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4unitED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4unitED2Ev
	.def	_ZNSaI4unitED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4unitED2Ev
_ZNSaI4unitED2Ev:
.LFB2702:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4unitED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4unitSaIS0_EED2Ev
	.def	_ZNSt12_Vector_baseI4unitSaIS0_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4unitSaIS0_EED2Ev
_ZNSt12_Vector_baseI4unitSaIS0_EED2Ev:
.LFB2705:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE13_M_deallocateEPS0_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2705:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2705-.LLSDACSB2705
.LLSDACSB2705:
.LLSDACSE2705:
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EED1Ev
	.def	_ZNSt6vectorI4unitSaIS0_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EED1Ev
_ZNSt6vectorI4unitSaIS0_EED1Ev:
.LFB2709:
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
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP4unitS0_EvT_S2_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2709:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2709-.LLSDACSB2709
.LLSDACSB2709:
.LLSDACSE2709:
	.section	.text$_ZNSt6vectorI4unitSaIS0_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE15_M_erase_at_endEPS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EE15_M_erase_at_endEPS0_
	.def	_ZNSt6vectorI4unitSaIS0_EE15_M_erase_at_endEPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE15_M_erase_at_endEPS0_
_ZNSt6vectorI4unitSaIS0_EE15_M_erase_at_endEPS0_:
.LFB2813:
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
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L526
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP4unitS0_EvT_S2_RSaIT0_E
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L526:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2813:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2813-.LLSDACSB2813
.LLSDACSB2813:
.LLSDACSE2813:
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE15_M_erase_at_endEPS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt4moveIR4unitEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIR4unitEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIR4unitEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIR4unitEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIR4unitEONSt16remove_referenceIT_E4typeEOS3_:
.LFB2814:
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
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.def	_ZNSt6vectorI4unitSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
_ZNSt6vectorI4unitSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_:
.LFB2815:
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
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L530
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4unitEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	24(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L531
.L530:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE3endEv
	movq	%rbx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L531:
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE4backEv
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4unitEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4unitEC2Ev
	.def	_ZNSaI4unitEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4unitEC2Ev
_ZNSaI4unitEC2Ev:
.LFB2818:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4unitEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4unitSaIS0_EE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseI4unitSaIS0_EE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4unitSaIS0_EE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseI4unitSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB2821:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4unitED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4unitED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI4unitED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4unitED2Ev
_ZN9__gnu_cxx13new_allocatorI4unitED2Ev:
.LFB2824:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EE13_M_deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4unitSaIS0_EE13_M_deallocateEPS0_y
	.def	_ZNSt12_Vector_baseI4unitSaIS0_EE13_M_deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4unitSaIS0_EE13_M_deallocateEPS0_y
_ZNSt12_Vector_baseI4unitSaIS0_EE13_M_deallocateEPS0_y:
.LFB2826:
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
	je	.L538
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4unitEE10deallocateERS1_PS0_y
.L538:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB2827:
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
	.section	.text$_ZSt8_DestroyIP4unitS0_EvT_S2_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP4unitS0_EvT_S2_RSaIT0_E
	.def	_ZSt8_DestroyIP4unitS0_EvT_S2_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP4unitS0_EvT_S2_RSaIT0_E
_ZSt8_DestroyIP4unitS0_EvT_S2_RSaIT0_E:
.LFB2828:
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
	call	_ZSt8_DestroyIP4unitEvT_S2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE
	.def	_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE
_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB2879:
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
	.section	.text$_ZNSt16allocator_traitsISaI4unitEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4unitEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaI4unitEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4unitEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
_ZNSt16allocator_traitsISaI4unitEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_:
.LFB2880:
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
	movq	%rax, %rcx
	call	_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4unitE9constructIS1_JS1_EEEvPT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EE3endEv
	.def	_ZNSt6vectorI4unitSaIS0_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE3endEv
_ZNSt6vectorI4unitSaIS0_EE3endEv:
.LFB2881:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC47:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.def	_ZNSt6vectorI4unitSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
_ZNSt6vectorI4unitSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB2882:
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
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	leaq	.LC47(%rip), %r8
	movl	$1, %edx
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE12_M_check_lenEyPKc
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE5beginEv
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIP4unitSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE11_M_allocateEy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4unitEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	$0, -48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -48(%rbp)
	addq	$24, -48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	sarq	$3, %rcx
	movabsq	$-6148914691236517205, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4unitSaIS0_EE13_M_deallocateEPS0_y
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE4backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EE4backEv
	.def	_ZNSt6vectorI4unitSaIS0_EE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE4backEv
_ZNSt6vectorI4unitSaIS0_EE4backEv:
.LFB2886:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE3endEv
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEmiEx
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEdeEv
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4unitEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4unitEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI4unitEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4unitEC2Ev
_ZN9__gnu_cxx13new_allocatorI4unitEC2Ev:
.LFB2888:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI4unitEE10deallocateERS1_PS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4unitEE10deallocateERS1_PS0_y
	.def	_ZNSt16allocator_traitsISaI4unitEE10deallocateERS1_PS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4unitEE10deallocateERS1_PS0_y
_ZNSt16allocator_traitsISaI4unitEE10deallocateERS1_PS0_y:
.LFB2890:
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
	call	_ZN9__gnu_cxx13new_allocatorI4unitE10deallocateEPS1_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP4unitEvT_S2_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP4unitEvT_S2_
	.def	_ZSt8_DestroyIP4unitEvT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP4unitEvT_S2_
_ZSt8_DestroyIP4unitEvT_S2_:
.LFB2891:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP4unitEEvT_S4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4unitE9constructIS1_JS1_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4unitE9constructIS1_JS1_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorI4unitE9constructIS1_JS1_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4unitE9constructIS1_JS1_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorI4unitE9constructIS1_JS1_EEEvPT_DpOT0_:
.LFB2944:
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
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardI4unitEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movl	$24, %ecx
	call	_ZnwyPv
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rcx)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.def	_ZN9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEC1ERKS2_
_ZN9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEC1ERKS2_:
.LFB2947:
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
	.section	.text$_ZNKSt6vectorI4unitSaIS0_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4unitSaIS0_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorI4unitSaIS0_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4unitSaIS0_EE12_M_check_lenEyPKc
_ZNKSt6vectorI4unitSaIS0_EE12_M_check_lenEyPKc:
.LFB2948:
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
	call	_ZNKSt6vectorI4unitSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L556
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L556:
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	movq	%rax, -16(%rbp)
	leaq	40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE4sizeEv
	cmpq	%rax, -8(%rbp)
	jb	.L557
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE8max_sizeEv
	cmpq	%rax, -8(%rbp)
	jbe	.L558
.L557:
	movq	32(%rbp), %rcx
	call	_ZNKSt6vectorI4unitSaIS0_EE8max_sizeEv
	jmp	.L559
.L558:
	movq	-8(%rbp), %rax
.L559:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4unitSaIS0_EE5beginEv
	.def	_ZNSt6vectorI4unitSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE5beginEv
_ZNSt6vectorI4unitSaIS0_EE5beginEv:
.LFB2949:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIP4unitSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIP4unitSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.def	_ZN9__gnu_cxxmiIP4unitSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIP4unitSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
_ZN9__gnu_cxxmiIP4unitSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB2950:
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
	movq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4unitSaIS0_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4unitSaIS0_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseI4unitSaIS0_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4unitSaIS0_EE11_M_allocateEy
_ZNSt12_Vector_baseI4unitSaIS0_EE11_M_allocateEy:
.LFB2951:
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
	je	.L566
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4unitEE8allocateERS1_y
	jmp	.L568
.L566:
	movl	$0, %eax
.L568:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorI4unitSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.def	_ZNSt6vectorI4unitSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
_ZNSt6vectorI4unitSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB2952:
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
	call	_ZNSt6vectorI4unitSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB2953:
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
	.section	.text$_ZNSt16allocator_traitsISaI4unitEE7destroyIS0_EEvRS1_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4unitEE7destroyIS0_EEvRS1_PT_
	.def	_ZNSt16allocator_traitsISaI4unitEE7destroyIS0_EEvRS1_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4unitEE7destroyIS0_EEvRS1_PT_
_ZNSt16allocator_traitsISaI4unitEE7destroyIS0_EEvRS1_PT_:
.LFB2954:
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
	call	_ZN9__gnu_cxx13new_allocatorI4unitE7destroyIS1_EEvPT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEmiEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEmiEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEmiEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEmiEx
_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEmiEx:
.LFB2955:
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
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	negq	%rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIP4unitSt6vectorIS1_SaIS1_EEEdeEv:
.LFB2956:
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
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4unitE10deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4unitE10deallocateEPS1_y
	.def	_ZN9__gnu_cxx13new_allocatorI4unitE10deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4unitE10deallocateEPS1_y
_ZN9__gnu_cxx13new_allocatorI4unitE10deallocateEPS1_y:
.LFB2957:
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
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIP4unitEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIP4unitEEvT_S4_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIP4unitEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIP4unitEEvT_S4_
_ZNSt12_Destroy_auxILb1EE9__destroyIP4unitEEvT_S4_:
.LFB2958:
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
	.section	.text$_ZNKSt6vectorI4unitSaIS0_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4unitSaIS0_EE8max_sizeEv
	.def	_ZNKSt6vectorI4unitSaIS0_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4unitSaIS0_EE8max_sizeEv
_ZNKSt6vectorI4unitSaIS0_EE8max_sizeEv:
.LFB3012:
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
	call	_ZNKSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt6vectorI4unitSaIS0_EE11_S_max_sizeERKS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB3013:
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
	jnb	.L584
	movq	24(%rbp), %rax
	jmp	.L585
.L584:
	movq	16(%rbp), %rax
.L585:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI4unitEE8allocateERS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4unitEE8allocateERS1_y
	.def	_ZNSt16allocator_traitsISaI4unitEE8allocateERS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4unitEE8allocateERS1_y
_ZNSt16allocator_traitsISaI4unitEE8allocateERS1_y:
.LFB3014:
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
	call	_ZN9__gnu_cxx13new_allocatorI4unitE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.globl	_ZNSt6vectorI4unitSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.def	_ZNSt6vectorI4unitSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
_ZNSt6vectorI4unitSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE:
.LFB3015:
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
	call	_ZSt12__relocate_aIP4unitS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4unitE7destroyIS1_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4unitE7destroyIS1_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorI4unitE7destroyIS1_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4unitE7destroyIS1_EEvPT_
_ZN9__gnu_cxx13new_allocatorI4unitE7destroyIS1_EEvPT_:
.LFB3016:
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
	.section	.text$_ZNSt6vectorI4unitSaIS0_EE11_S_max_sizeERKS1_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorI4unitSaIS0_EE11_S_max_sizeERKS1_
	.def	_ZNSt6vectorI4unitSaIS0_EE11_S_max_sizeERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4unitSaIS0_EE11_S_max_sizeERKS1_
_ZNSt6vectorI4unitSaIS0_EE11_S_max_sizeERKS1_:
.LFB3044:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$384307168202282325, %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt16allocator_traitsISaI4unitEE8max_sizeERKS1_
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
	.section	.text$_ZNKSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseI4unitSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3045:
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
	.section	.text$_ZNK9__gnu_cxx13new_allocatorI4unitE11_M_max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorI4unitE11_M_max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorI4unitE11_M_max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorI4unitE11_M_max_sizeEv
_ZNK9__gnu_cxx13new_allocatorI4unitE11_M_max_sizeEv:
.LFB3047:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$384307168202282325, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4unitE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4unitE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorI4unitE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4unitE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorI4unitE8allocateEyPKv:
.LFB3046:
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
	call	_ZNK9__gnu_cxx13new_allocatorI4unitE11_M_max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L598
	movabsq	$768614336404564650, %rax
	cmpq	%rax, 24(%rbp)
	jbe	.L599
	call	_ZSt28__throw_bad_array_new_lengthv
.L599:
	call	_ZSt17__throw_bad_allocv
.L598:
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__relocate_aIP4unitS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIP4unitS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt12__relocate_aIP4unitS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIP4unitS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt12__relocate_aIP4unitS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3048:
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
	call	_ZSt12__niter_baseIP4unitET_S2_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIP4unitET_S2_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIP4unitET_S2_
	movq	56(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt14__relocate_a_1IP4unitS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI4unitEE8max_sizeERKS1_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4unitEE8max_sizeERKS1_
	.def	_ZNSt16allocator_traitsISaI4unitEE8max_sizeERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4unitEE8max_sizeERKS1_
_ZNSt16allocator_traitsISaI4unitEE8max_sizeERKS1_:
.LFB3060:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorI4unitE8max_sizeEv
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
.LFB3061:
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
	jnb	.L606
	movq	24(%rbp), %rax
	jmp	.L607
.L606:
	movq	16(%rbp), %rax
.L607:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIP4unitET_S2_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIP4unitET_S2_
	.def	_ZSt12__niter_baseIP4unitET_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIP4unitET_S2_
_ZSt12__niter_baseIP4unitET_S2_:
.LFB3062:
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
	.section	.text$_ZSt14__relocate_a_1IP4unitS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IP4unitS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt14__relocate_a_1IP4unitS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IP4unitS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt14__relocate_a_1IP4unitS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3063:
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
	movq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L611
.L612:
	movq	32(%rbp), %rcx
	call	_ZSt11__addressofI4unitEPT_RS1_
	movq	%rax, %rbx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofI4unitEPT_RS1_
	movq	56(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt19__relocate_object_aI4unitS0_SaIS0_EEvPT_PT0_RT1_
	addq	$24, 32(%rbp)
	addq	$24, -8(%rbp)
.L611:
	movq	32(%rbp), %rax
	cmpq	40(%rbp), %rax
	jne	.L612
	movq	-8(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorI4unitE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorI4unitE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorI4unitE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorI4unitE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorI4unitE8max_sizeEv:
.LFB3066:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorI4unitE11_M_max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofI4unitEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofI4unitEPT_RS1_
	.def	_ZSt11__addressofI4unitEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofI4unitEPT_RS1_
_ZSt11__addressofI4unitEPT_RS1_:
.LFB3067:
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
	.section	.text$_ZSt19__relocate_object_aI4unitS0_SaIS0_EEvPT_PT0_RT1_,"x"
	.linkonce discard
	.globl	_ZSt19__relocate_object_aI4unitS0_SaIS0_EEvPT_PT0_RT1_
	.def	_ZSt19__relocate_object_aI4unitS0_SaIS0_EEvPT_PT0_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__relocate_object_aI4unitS0_SaIS0_EEvPT_PT0_RT1_
_ZSt19__relocate_object_aI4unitS0_SaIS0_EEvPT_PT0_RT1_:
.LFB3068:
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
	movq	%rax, %rcx
	call	_ZSt4moveIR4unitEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4unitEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofI4unitEPT_RS1_
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4unitEE7destroyIS0_EEvRS1_PT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3070:
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
.LFB3069:
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
	jne	.L622
	cmpl	$65535, 24(%rbp)
	jne	.L622
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L622:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__Z10unit_printRSt6vectorI4unitSaIS0_EE;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z10unit_printRSt6vectorI4unitSaIS0_EE
_GLOBAL__sub_I__Z10unit_printRSt6vectorI4unitSaIS0_EE:
.LFB3071:
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
	.quad	_GLOBAL__sub_I__Z10unit_printRSt6vectorI4unitSaIS0_EE
	.ident	"GCC: (Rev1, Built by MSYS2 project) 11.2.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEx;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Z8sen_compPKcS0_;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3bsi6searchEPcRi;	.scl	2;	.type	32;	.endef
	.def	_ZN3var5printEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZN3varC1Eh;	.scl	2;	.type	32;	.endef
	.def	_ZN3var5clearEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3varC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3var5writeE7variant;	.scl	2;	.type	32;	.endef
	.def	_Z12get_datatypei;	.scl	2;	.type	32;	.endef
	.def	_Z7skip_atPcPKc;	.scl	2;	.type	32;	.endef
	.def	_Z7stop_atPcPKc;	.scl	2;	.type	32;	.endef
	.def	_Z7strndupPKcy;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	atof;	.scl	2;	.type	32;	.endef
	.def	atoll;	.scl	2;	.type	32;	.endef
	.def	_ZN3var13struct_createEPKch;	.scl	2;	.type	32;	.endef
	.def	_ZN3var5writeERS_;	.scl	2;	.type	32;	.endef
	.def	_ZN3var9arr_writeEiRS_;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZN3bsi8bsi_rootE, "dr"
	.globl	.refptr._ZN3bsi8bsi_rootE
	.linkonce	discard
.refptr._ZN3bsi8bsi_rootE:
	.quad	_ZN3bsi8bsi_rootE
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
