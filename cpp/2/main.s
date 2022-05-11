	.file	"main.cpp"
	.text
	.section	.text$_ZNSt11char_traitsIcE12to_char_typeERKi,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE12to_char_typeERKi
	.def	_ZNSt11char_traitsIcE12to_char_typeERKi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE12to_char_typeERKi
_ZNSt11char_traitsIcE12to_char_typeERKi:
.LFB500:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	.def	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
_ZNSt11char_traitsIcE11eq_int_typeERKiS2_:
.LFB502:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE3eofEv,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE3eofEv
	.def	_ZNSt11char_traitsIcE3eofEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE3eofEv
_ZNSt11char_traitsIcE3eofEv:
.LFB503:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	$-1, %eax
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
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
.LC0:
	.ascii "%p\0"
	.text
	.globl	_ZlsRSoPv
	.def	_ZlsRSoPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZlsRSoPv
_ZlsRSoPv:
.LFB2363:
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
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	_ZL6printfPKcz
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "Could not open the file - '\0"
.LC2:
	.ascii "'\0"
	.text
	.def	_ZL9read_filePKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL9read_filePKc
_ZL9read_filePKc:
.LFB2364:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$584, %rsp
	.seh_stackalloc	584
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 480(%rbp)
	movq	%rdx, 488(%rbp)
	movq	488(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE0:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L12
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cerr(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	488(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
.LEHE1:
	movl	$1, %ecx
	call	exit
.L12:
	leaq	415(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev
	leaq	-64(%rbp), %rdx
	leaq	432(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	416(%rbp), %rax
	movq	424(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	415(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	480(%rbp), %rcx
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_
.LEHE2:
	leaq	415(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L18
.L17:
	movq	%rax, %rbx
	leaq	415(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L15
.L16:
	movq	%rax, %rbx
.L15:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L18:
	movq	480(%rbp), %rax
	addq	$584, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2364:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2364-.LLSDACSB2364
.LLSDACSB2364:
	.uleb128 .LEHB0-.LFB2364
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2364
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L16-.LFB2364
	.uleb128 0
	.uleb128 .LEHB2-.LFB2364
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L17-.LFB2364
	.uleb128 0
	.uleb128 .LEHB3-.LFB2364
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2364:
	.text
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC3:
	.ascii "parent\0"
.LC4:
	.ascii "x\0"
.LC5:
	.ascii "amongus\0"
.LC6:
	.ascii "son\0"
.LC7:
	.ascii "enum\0"
.LC8:
	.ascii "true\0"
.LC9:
	.ascii "false\0"
	.align 8
.LC10:
	.ascii "C:\\Users\\HP\\Documents\\pro\\AI\\cpp\\2\\program.txt\0"
.LC11:
	.ascii "amongus_file.bin\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2365:
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
	leaq	-64(%rbp), %rax
	movl	$4, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
.LEHB4:
	call	_ZN3varC1EPKch
	leaq	-64(%rbp), %rax
	movl	$10, %r9d
	movl	$14, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKchx
	movl	$9, %edx
	leaq	-64(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var12struct_writeEPKcx7variant
	leaq	-64(%rbp), %rax
	movl	$0, %r9d
	movl	$14, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKchx
	leaq	-64(%rbp), %rax
	movl	$4, %r8d
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKch
	leaq	-64(%rbp), %rax
	movl	$4, %r8d
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKch
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$8, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var13struct_createEPKch
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN3var5writeE7variant
	leaq	-64(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var11struct_findEPKc
	movq	%rax, %rcx
	movl	$8, %r8d
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	call	_ZN3var13struct_createEPKch
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN3var5writeE7variant
	leaq	-96(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZL9read_filePKc
.LEHE4:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
.LEHB5:
	call	_ZN3bsi4readER3varPc
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN3var5printEv
	leaq	-64(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN3var4saveEPKc
.LEHE5:
	movl	$0, -12(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
.L23:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2365:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2365-.LLSDACSB2365
.LLSDACSB2365:
	.uleb128 .LEHB4-.LFB2365
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2365
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L22-.LFB2365
	.uleb128 0
	.uleb128 .LEHB6-.LFB2365
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2365:
	.text
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
.LFB2475:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIcED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi
	.def	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi:
.LFB2657:
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
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	call	_ZNSt11char_traitsIcE3eofEv
	movq	16(%rbp), %rdx
	movl	%eax, 8(%rdx)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2657:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2657-.LLSDACSB2657
.LLSDACSB2657:
.LLSDACSE2657:
	.section	.text$_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev
	.def	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev:
.LFB2660:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	call	_ZNSt11char_traitsIcE3eofEv
	movq	16(%rbp), %rdx
	movl	%eax, 8(%rdx)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_:
.LFB2663:
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
	movq	%rdx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r9, 56(%rbp)
	movq	32(%rbp), %rbx
	movq	32(%rbp), %rcx
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	56(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
.LEHE7:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_
.LEHE8:
	jmp	.L30
.L29:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB9:
	call	_Unwind_Resume
	nop
.LEHE9:
.L30:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2663:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2663-.LLSDACSB2663
.LLSDACSB2663:
	.uleb128 .LEHB7-.LFB2663
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB2663
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L29-.LFB2663
	.uleb128 0
	.uleb128 .LEHB9-.LFB2663
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2663:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_:
.LFB2766:
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
	movq	%rdx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type:
.LFB2807:
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
	movq	%rdx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag:
.LFB2849:
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
	movq	%rdx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$15, -24(%rbp)
	jmp	.L34
.L37:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
.LEHB10:
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	movl	%eax, %ebx
	movq	32(%rbp), %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	addq	%rcx, %rax
	movb	%bl, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
.L34:
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
.LEHE10:
	testb	%al, %al
	je	.L35
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	movl	$0, %eax
.L36:
	testb	%al, %al
	jne	.L37
	jmp	.L38
.L40:
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L39
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy
	movq	32(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
.L39:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	movl	%eax, %ebx
	movq	32(%rbp), %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	addq	%rcx, %rax
	movb	%bl, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
.L38:
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
.LEHE11:
	testb	%al, %al
	jne	.L40
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
.LEHB12:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
.LEHE12:
	jmp	.L45
.L43:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	32(%rbp), %rcx
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	call	__cxa_rethrow
.LEHE13:
.L44:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB14:
	call	_Unwind_Resume
	nop
.LEHE14:
.L45:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA2849:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2849-.LLSDATTD2849
.LLSDATTD2849:
	.byte	0x1
	.uleb128 .LLSDACSE2849-.LLSDACSB2849
.LLSDACSB2849:
	.uleb128 .LEHB10-.LFB2849
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB2849
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L43-.LFB2849
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB2849
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2849
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L44-.LFB2849
	.uleb128 0
	.uleb128 .LEHB14-.LFB2849
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE2849:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2849:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_,"x"
	.linkonce discard
	.globl	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	.def	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_:
.LFB2894:
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
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	xorl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	.def	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv:
.LFB2895:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11char_traitsIcE12to_char_typeERKi
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
	.def	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv:
.LFB2896:
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
	movq	%rax, %rcx
	call	_ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv
	call	_ZNSt11char_traitsIcE3eofEv
	movq	16(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	.def	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_:
.LFB2921:
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
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	movl	%eax, %ebx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	cmpb	%al, %bl
	sete	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	.def	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv:
.LFB2922:
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
	movl	%eax, -4(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEE9_S_is_eofEi
	testb	%al, %al
	je	.L55
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEE9_S_is_eofEi
	testb	%al, %al
	je	.L55
	movl	$1, %eax
	jmp	.L56
.L55:
	movl	$0, %eax
.L56:
	testb	%al, %al
	je	.L57
	movq	16(%rbp), %rax
	movq	$0, (%rax)
.L57:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	.def	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv:
.LFB2936:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	movl	%eax, %ecx
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEE9_S_is_eofEi
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEE9_S_is_eofEi,"x"
	.linkonce discard
	.globl	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEE9_S_is_eofEi
	.def	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEE9_S_is_eofEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEE9_S_is_eofEi
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEE9_S_is_eofEi:
.LFB2937:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	$-1, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
	call	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2947:
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
.LFB2946:
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
	jne	.L66
	cmpl	$65535, 24(%rbp)
	jne	.L66
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rax
	movq	%rax, %rcx
	call	atexit
.L66:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__ZlsRSoPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZlsRSoPv
_GLOBAL__sub_I__ZlsRSoPv:
.LFB2948:
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
	.quad	_GLOBAL__sub_I__ZlsRSoPv
	.ident	"GCC: (Rev1, Built by MSYS2 project) 11.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3varC1EPKch;	.scl	2;	.type	32;	.endef
	.def	_ZN3var13struct_createEPKchx;	.scl	2;	.type	32;	.endef
	.def	_ZN3var12struct_writeEPKcx7variant;	.scl	2;	.type	32;	.endef
	.def	_ZN3var13struct_createEPKch;	.scl	2;	.type	32;	.endef
	.def	_ZN3var5writeE7variant;	.scl	2;	.type	32;	.endef
	.def	_ZN3var11struct_findEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3bsi4readER3varPc;	.scl	2;	.type	32;	.endef
	.def	_ZN3var5printEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3var4saveEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcED2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv;	.scl	2;	.type	32;	.endef
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
