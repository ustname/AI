	.file	"main.cpp"
	.text
.lcomm _ZStL8__ioinit,1,1
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implD1Ev:
.LFB2604:
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
.LFB2605:
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
.LFB2608:
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
	.section	.text$_ZN2al3varC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2al3varC1Ev
	.def	_ZN2al3varC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3varC1Ev
_ZN2al3varC1Ev:
.LFB2610:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EEC1Ev
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movl	$0, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN2al3varD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2al3varD1Ev
	.def	_ZN2al3varD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3varD1Ev
_ZN2al3varD1Ev:
.LFB2613:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN2al3var7destroyEv
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2613:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2613-.LLSDACSB2613
.LLSDACSB2613:
.LLSDACSE2613:
	.section	.text$_ZN2al3varD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "var_num\0"
.LC1:
	.ascii "stack var\0"
.LC2:
	.ascii "type\0"
.LC3:
	.ascii "data\0"
	.section	.text$_ZN2al3varC1EPci,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2al3varC1EPci
	.def	_ZN2al3varC1EPci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2al3varC1EPci
_ZN2al3varC1EPci:
.LFB2619:
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
	movl	%r8d, 48(%rbp)
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2al4propESaIS1_EEC1Ev
	movq	40(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	strdup
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movl	$3, 8(%rax)
	movq	32(%rbp), %rax
	movl	$0, 12(%rax)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZN2al3var5writeEPcd
	leaq	.LC1(%rip), %r8
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZN2al3var5writeEPcS1_
	movl	48(%rbp), %eax
	cltq
	movq	%rax, %r9
	movl	$23, %r8d
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZN2al3var5writeEPchy
.LEHE0:
	jmp	.L9
.L8:
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
.L9:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2619:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2619-.LLSDACSB2619
.LLSDACSB2619:
	.uleb128 .LEHB0-.LFB2619
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB2619
	.uleb128 0
	.uleb128 .LEHB1-.LFB2619
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2619:
	.section	.text$_ZN2al3varC1EPci,"x"
	.linkonce discard
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC4:
	.ascii "Hello\0"
.LC5:
	.ascii "Indi\0"
.LC6:
	.ascii "vardata.bin\0"
.LC7:
	.ascii "program done\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2620:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	-48(%rbp), %rax
	movl	$2, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
.LEHB2:
	call	_ZN2al3varC1EPci
.LEHE2:
	leaq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
.LEHB3:
	call	_ZN2al3var6createEPc
	leaq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN2al3var4saveEPc
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE3:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2al3varC1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2al3varD1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2al3varD1Ev
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2al3varD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L14:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2620:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2620-.LLSDACSB2620
.LLSDACSB2620:
	.uleb128 .LEHB2-.LFB2620
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2620
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L13-.LFB2620
	.uleb128 0
	.uleb128 .LEHB4-.LFB2620
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2620:
	.text
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseIN2al4propESaIS1_EE12_Vector_implC1Ev:
.LFB2928:
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
.LFB2930:
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
.LFB2933:
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
.LLSDA2933:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2933-.LLSDACSB2933
.LLSDACSB2933:
.LLSDACSE2933:
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
.LFB2937:
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
.LLSDA2937:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2937-.LLSDACSB2937
.LLSDACSB2937:
.LLSDACSE2937:
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
.LFB3029:
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
.LFB3032:
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
.LFB3035:
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
.LFB3037:
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
	je	.L24
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2al4propEEE10deallocateERS2_PS1_y
.L24:
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
.LFB3038:
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
.LFB3039:
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
.LFB3081:
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
.LFB3083:
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
.LFB3084:
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
.LFB3132:
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
.LFB3133:
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
.LFB3217:
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
.LFB3216:
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
	jne	.L37
	cmpl	$65535, 24(%rbp)
	jne	.L37
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L37:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB3218:
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
	.quad	_GLOBAL__sub_I_main
	.ident	"GCC: (Rev1, Built by MSYS2 project) 11.2.0"
	.def	_ZN2al3var7destroyEv;	.scl	2;	.type	32;	.endef
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	_ZN2al3var5writeEPcd;	.scl	2;	.type	32;	.endef
	.def	_ZN2al3var5writeEPcS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN2al3var5writeEPchy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN2al3var6createEPc;	.scl	2;	.type	32;	.endef
	.def	_ZN2al3var4saveEPc;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
