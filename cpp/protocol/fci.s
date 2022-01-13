	.file	"fci.cpp"
	.text
.lcomm _ZStL8__ioinit,1,1
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev:
.LFB2178:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIN2al4propEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EEC2Ev
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EEC2Ev
_ZNSt12_Vector_baseIN2al4propESaIS1_EEC2Ev:
.LFB2179:
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
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EEC1Ev
	.def	_ZNSt6vectorIN2al4propESaIS1_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EEC1Ev
_ZNSt6vectorIN2al4propESaIS1_EEC1Ev:
.LFB2182:
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
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN2al3varC1EPc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2al3varC1EPc
	.def	_ZN2al3varC1EPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3varC1EPc
_ZN2al3varC1EPc:
.LFB2187:
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
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EEC1Ev
	movq	40(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	strdup
.LEHE0:
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movl	$1, 8(%rax)
	movq	32(%rbp), %rax
	movl	$0, 12(%rax)
	jmp	.L7
.L6:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
.L7:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2187:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2187-.LLSDACSB2187
.LLSDACSB2187:
	.uleb128 .LEHB0-.LFB2187
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6-.LFB2187
	.uleb128 0
	.uleb128 .LEHB1-.LFB2187
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2187:
	.section	.text$_ZN2al3varC1EPc,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "var_num\0"
.LC1:
	.ascii "data\0"
.LC2:
	.ascii "stack var\0"
.LC3:
	.ascii "type\0"
	.section	.text$_ZN2al3varC1EPcx,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2al3varC1EPcx
	.def	_ZN2al3varC1EPcx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3varC1EPcx
_ZN2al3varC1EPcx:
.LFB2190:
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
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EEC1Ev
	movq	40(%rbp), %rax
	movq	%rax, %rcx
.LEHB2:
	call	strdup
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movl	$3, 8(%rax)
	movq	32(%rbp), %rax
	movl	$0, 12(%rax)
	movq	48(%rbp), %rax
	movq	%rax, %r8
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZN2al3var5writeEPcx
	movq	48(%rbp), %rax
	movq	%rax, %r9
	movl	$23, %r8d
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZN2al3var5writeEPchy
	leaq	.LC2(%rip), %r8
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZN2al3var5writeEPcS1_
.LEHE2:
	jmp	.L11
.L10:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
.L11:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2190:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2190-.LLSDACSB2190
.LLSDACSB2190:
	.uleb128 .LEHB2-.LFB2190
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L10-.LFB2190
	.uleb128 0
	.uleb128 .LEHB3-.LFB2190
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2190:
	.section	.text$_ZN2al3varC1EPcx,"x"
	.linkonce discard
	.seh_endproc
	.globl	gdata
	.bss
	.align 8
gdata:
	.space 8
.lcomm _ZZL4readiE4data,8,8
.lcomm _ZGVZL4readiE4data,8,8
	.text
	.def	_ZL4readi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL4readi
_ZL4readi:
.LFB2191:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movzbl	_ZGVZL4readiE4data(%rip), %eax
	testb	%al, %al
	sete	%al
	testb	%al, %al
	je	.L13
	leaq	_ZGVZL4readiE4data(%rip), %rax
	movq	%rax, %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L13
	movq	gdata(%rip), %rax
	movq	%rax, _ZZL4readiE4data(%rip)
	leaq	_ZGVZL4readiE4data(%rip), %rax
	movq	%rax, %rcx
	call	__cxa_guard_release
.L13:
	cmpl	$8, 16(%rbp)
	je	.L14
	cmpl	$8, 16(%rbp)
	jg	.L22
	cmpl	$4, 16(%rbp)
	je	.L16
	cmpl	$4, 16(%rbp)
	jg	.L22
	cmpl	$1, 16(%rbp)
	je	.L17
	cmpl	$2, 16(%rbp)
	je	.L18
	jmp	.L22
.L17:
	movq	_ZZL4readiE4data(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movq	$0, -8(%rbp)
	movb	%al, -8(%rbp)
	movq	_ZZL4readiE4data(%rip), %rax
	movq	(%rax), %rdx
	movq	_ZZL4readiE4data(%rip), %rax
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L12
.L18:
	movq	_ZZL4readiE4data(%rip), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %eax
	movq	$0, -8(%rbp)
	movw	%ax, -8(%rbp)
	movq	_ZZL4readiE4data(%rip), %rax
	movq	(%rax), %rdx
	movq	_ZZL4readiE4data(%rip), %rax
	addq	$2, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L12
.L16:
	movq	_ZZL4readiE4data(%rip), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movq	$0, -8(%rbp)
	movl	%eax, -8(%rbp)
	movq	_ZZL4readiE4data(%rip), %rax
	movq	(%rax), %rdx
	movq	_ZZL4readiE4data(%rip), %rax
	addq	$4, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L12
.L14:
	movq	_ZZL4readiE4data(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	_ZZL4readiE4data(%rip), %rax
	movq	(%rax), %rdx
	movq	_ZZL4readiE4data(%rip), %rax
	addq	$8, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L12
.L22:
	nop
.L12:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "Unknown instrucion\0"
	.text
	.globl	_Z8fci_readPv
	.def	_Z8fci_readPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8fci_readPv
_Z8fci_readPv:
.LFB2192:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	leaq	32(%rbp), %rax
	movq	%rax, gdata(%rip)
	movl	$1, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -28(%rbp)
.L37:
	cmpl	$4, -4(%rbp)
	ja	.L44
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L26(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L26(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L26:
	.long	.L30-.L26
	.long	.L29-.L26
	.long	.L28-.L26
	.long	.L27-.L26
	.long	.L25-.L26
	.text
.L30:
	movl	$0, -4(%rbp)
	jmp	.L31
.L29:
	movl	$8, %ecx
	call	_ZL4readi
	movq	%rax, -16(%rbp)
	jmp	.L31
.L28:
	movl	$8, %ecx
	call	_ZL4readi
	movq	%rax, -24(%rbp)
	jmp	.L31
.L27:
	movl	$1, %ecx
	call	_ZL4readi
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L32
	cmpl	$2, -28(%rbp)
	je	.L33
	jmp	.L42
.L32:
	movl	$8, %ecx
	call	_ZL4readi
	movq	%rax, -40(%rbp)
	movl	$40, %ecx
.LEHB4:
	call	_Znwy
.LEHE4:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB5:
	call	_ZN2al3varC1EPc
.LEHE5:
	movq	%rbx, -16(%rbp)
	jmp	.L35
.L33:
	movl	$8, %ecx
	call	_ZL4readi
	movq	%rax, -40(%rbp)
	movl	$8, %ecx
	call	_ZL4readi
	movq	%rax, -48(%rbp)
	movl	$40, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB7:
	call	_ZN2al3varC1EPcx
.LEHE7:
	movq	%rbx, -16(%rbp)
	jmp	.L35
.L42:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	nop
.L35:
	jmp	.L31
.L25:
	movl	$1, %ecx
	call	_ZL4readi
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	nop
.L44:
	nop
.L31:
	cmpl	$0, -4(%rbp)
	jne	.L37
	jmp	.L43
.L40:
	movq	%rax, %rsi
	movl	$40, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movq	%rsi, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.L41:
	movq	%rax, %rsi
	movl	$40, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movq	%rsi, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE8:
.L43:
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2192:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2192-.LLSDACSB2192
.LLSDACSB2192:
	.uleb128 .LEHB4-.LFB2192
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2192
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L40-.LFB2192
	.uleb128 0
	.uleb128 .LEHB6-.LFB2192
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2192
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L41-.LFB2192
	.uleb128 0
	.uleb128 .LEHB8-.LFB2192
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2192:
	.text
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev:
.LFB2455:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIN2al4propEEC2Ev
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE17_Vector_impl_dataC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIN2al4propEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIN2al4propEED2Ev
	.def	_ZNSaIN2al4propEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIN2al4propEED2Ev
_ZNSaIN2al4propEED2Ev:
.LFB2457:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2al4propEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EED2Ev
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EED2Ev
_ZNSt12_Vector_baseIN2al4propESaIS1_EED2Ev:
.LFB2460:
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
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2460:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2460-.LLSDACSB2460
.LLSDACSB2460:
.LLSDACSE2460:
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2al4propESaIS1_EED1Ev
	.def	_ZNSt6vectorIN2al4propESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2al4propESaIS1_EED1Ev
_ZNSt6vectorIN2al4propESaIS1_EED1Ev:
.LFB2464:
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
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPN2al4propES1_EvT_S3_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2al4propESaIS1_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2464:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2464-.LLSDACSB2464
.LLSDACSB2464:
.LLSDACSE2464:
	.section	.text$_ZNSt6vectorIN2al4propESaIS1_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSaIN2al4propEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIN2al4propEEC2Ev
	.def	_ZNSaIN2al4propEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIN2al4propEEC2Ev
_ZNSaIN2al4propEEC2Ev:
.LFB2546:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2al4propEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseIN2al4propESaIS1_EE17_Vector_impl_dataC2Ev:
.LFB2549:
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
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2al4propEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2al4propEED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIN2al4propEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2al4propEED2Ev
_ZN9__gnu_cxx13new_allocatorIN2al4propEED2Ev:
.LFB2552:
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
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y
_ZNSt12_Vector_baseIN2al4propESaIS1_EE13_M_deallocateEPS1_y:
.LFB2554:
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
	je	.L54
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y
.L54:
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
.LFB2555:
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
.LFB2556:
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
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2al4propEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2al4propEEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIN2al4propEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2al4propEEC2Ev
_ZN9__gnu_cxx13new_allocatorIN2al4propEEC2Ev:
.LFB2595:
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
	.section	.text$_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y
	.def	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y
_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y:
.LFB2597:
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
.LFB2598:
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
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y
	.def	_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y
_ZN9__gnu_cxx13new_allocatorIN2al4propEE10deallocateEPS2_y:
.LFB2643:
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
.LFB2644:
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
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2728:
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
.LFB2727:
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
	jne	.L67
	cmpl	$65535, 24(%rbp)
	jne	.L67
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L67:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_gdata;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_gdata
_GLOBAL__sub_I_gdata:
.LFB2729:
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
	.quad	_GLOBAL__sub_I_gdata
	.ident	"GCC: (Rev1, Built by MSYS2 project) 11.2.0"
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN2al3var5writeEPcx;	.scl	2;	.type	32;	.endef
	.def	_ZN2al3var5writeEPchy;	.scl	2;	.type	32;	.endef
	.def	_ZN2al3var5writeEPcS1_;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_acquire;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_release;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
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
