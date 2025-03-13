	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"IntrinsicsBenchmark.cpp"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	__ymm@4020000000000000401000000000000040000000000000003ff0000000000000
	.section	.rdata,"dr",discard,__ymm@4020000000000000401000000000000040000000000000003ff0000000000000
	.p2align	5, 0x0
__ymm@4020000000000000401000000000000040000000000000003ff0000000000000:
	.quad	0x3ff0000000000000
	.quad	0x4000000000000000
	.quad	0x4010000000000000
	.quad	0x4020000000000000
	.globl	__real@4000000000000000
	.section	.rdata,"dr",discard,__real@4000000000000000
	.p2align	3, 0x0
__real@4000000000000000:
	.quad	0x4000000000000000
	.globl	__ymm@c05e000000000000c04e000000000000c03e000000000000c02e000000000000
	.section	.rdata,"dr",discard,__ymm@c05e000000000000c04e000000000000c03e000000000000c02e000000000000
	.p2align	5, 0x0
__ymm@c05e000000000000c04e000000000000c03e000000000000c02e000000000000:
	.quad	0xc02e000000000000
	.quad	0xc03e000000000000
	.quad	0xc04e000000000000
	.quad	0xc05e000000000000
	.globl	__real@412e848000000000
	.section	.rdata,"dr",discard,__real@412e848000000000
	.p2align	3, 0x0
__real@412e848000000000:
	.quad	0x412e848000000000
	.section	.text,"xr",one_only,main
	.globl	main
	.p2align	4, 0x90
main:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\Users\\\320\230\320\262\320\260\320\275\\Desktop\\IntrinsicsBenchmark\\IntrinsicsBenchmark\\IntrinsicsBenchmark.cpp" "2179F6C7BA2159AE042893CA2BA2156C" 1
	.cv_loc	0 1 9 0
.seh_proc main
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$344, %rsp
	.seh_stackalloc 344
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	vmovups	%xmm8, 192(%rbp)
	.seh_savexmm %xmm8, 320
	vmovups	%xmm7, 176(%rbp)
	.seh_savexmm %xmm7, 304
	vmovups	%xmm6, 160(%rbp)
	.seh_savexmm %xmm6, 288
	.seh_endprologue
	andq	$-32, %rsp
	movq	__security_cookie(%rip), %rax
	xorq	%rbp, %rax
	movq	%rax, 280(%rsp)
	vstmxcsr	224(%rsp)
	orl	$32832, 224(%rsp)
	vldmxcsr	224(%rsp)
.Ltmp0:
	.cv_loc	0 1 12 0
	vmovups	__ymm@4020000000000000401000000000000040000000000000003ff0000000000000(%rip), %ymm0
.Ltmp1:
	vmovups	%ymm0, 224(%rsp)
	.cv_loc	0 1 13 0
	vbroadcastsd	__real@4000000000000000(%rip), %ymm0
.Ltmp2:
	vmovups	%ymm0, 192(%rsp)
	.cv_loc	0 1 14 0
	vxorps	%xmm0, %xmm0, %xmm0
.Ltmp3:
	vmovups	%ymm0, 160(%rsp)
.Ltmp4:
	movq	%rsp, %rdi
	.cv_loc	0 1 15 0
	vmovups	%ymm0, 128(%rsp)
	.cv_loc	0 1 16 0
	vmovupd	__ymm@c05e000000000000c04e000000000000c03e000000000000c02e000000000000(%rip), %ymm0
.Ltmp5:
	vmovupd	%ymm0, 96(%rsp)
.Ltmp6:
	.cv_file	2 "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\__msvc_chrono.hpp" "1F38FB01ECF955BBE5DB7E8CD44E32E7" 1
	.cv_inline_site_id 1 within 0 inlined_at 1 18 0
	.cv_loc	1 2 679 0
	vzeroupper
.Ltmp7:
	callq	_Query_perf_frequency
	movq	%rax, %rsi
.Ltmp8:
	.cv_loc	1 2 680 0
	callq	_Query_perf_counter
.Ltmp9:
	.cv_loc	1 2 687 0
	cmpq	$10000000, %rsi
	jne	.LBB0_1
.Ltmp10:
	.cv_loc	1 2 693 0
	imulq	$100, %rax, %rsi
.Ltmp11:
.LBB0_10:
	.cv_loc	1 2 710 0
	movq	%rdi, %rsp
.Ltmp12:
	.cv_loc	0 1 19 0
	movl	"?ITERATIONS@@3JA"(%rip), %eax
	testl	%eax, %eax
	jle	.LBB0_12
.Ltmp13:
	decl	%eax
.Ltmp14:
	leaq	96(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	leaq	128(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	leaq	160(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	leaq	192(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, 72(%rsp)
	movq	$0, 64(%rsp)
	leaq	.L.kmpc_loc.19.19.4(%rip), %rcx
	leaq	main.extracted(%rip), %r8
	leaq	224(%rsp), %r9
	movl	$7, %edx
	callq	__kmpc_fork_call
.Ltmp15:
.LBB0_12:
	.cv_inline_site_id 2 within 0 inlined_at 1 26 0
	.cv_loc	2 2 679 0
	movq	%rsp, %rbx
.Ltmp16:
	callq	_Query_perf_frequency
	movq	%rax, %rdi
.Ltmp17:
	.cv_loc	2 2 680 0
	callq	_Query_perf_counter
.Ltmp18:
	.cv_loc	2 2 687 0
	cmpq	$10000000, %rdi
	jne	.LBB0_13
.Ltmp19:
	.cv_loc	2 2 693 0
	imulq	$100, %rax, %rdi
.Ltmp20:
.LBB0_22:
	.cv_inline_site_id 3 within 0 inlined_at 1 30 0
	.cv_inline_site_id 4 within 3 inlined_at 2 549 0
	.cv_loc	4 2 291 0
	subq	%rsi, %rdi
.Ltmp21:
	.cv_loc	2 2 710 0
	movq	%rbx, %rsp
.Ltmp22:
	.cv_loc	0 1 32 0
	vmovsd	128(%rsp), %xmm1
	vmovsd	136(%rsp), %xmm8
	vmovsd	144(%rsp), %xmm7
	vmovsd	152(%rsp), %xmm6
	movq	"__imp_?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rsi
.Ltmp23:
	movq	"__imp_??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"(%rip), %rbx
	movq	%rsi, %rcx
	callq	*%rbx
	movq	%rbx, %r13
	movq	%rax, %rbx
.Ltmp24:
	.cv_file	3 "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\ostream" "10F8B9EA0A681489424FECD52A499C39" 1
	.cv_inline_site_id 5 within 0 inlined_at 1 32 0
	.cv_inline_site_id 6 within 5 inlined_at 3 191 0
	.cv_loc	6 3 1011 0
	movq	(%rax), %rax
	movslq	4(%rax), %rcx
	addq	%rbx, %rcx
	movq	"__imp_?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z"(%rip), %r14
	movb	$10, %dl
	callq	*%r14
	movq	"__imp_?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z"(%rip), %r15
	movq	%rbx, %rcx
	movl	%eax, %edx
	callq	*%r15
	.cv_loc	6 3 1012 0
	movq	"__imp_?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(%rip), %r12
	movq	%rbx, %rcx
	callq	*%r12
.Ltmp25:
	.cv_loc	0 1 32 0
	movq	%rsi, %rcx
	vmovaps	%xmm8, %xmm1
	callq	*%r13
	movq	%rax, %rbx
.Ltmp26:
	.cv_loc	6 3 1011 0
	movq	(%rax), %rax
	movslq	4(%rax), %rcx
	addq	%rbx, %rcx
	movb	$10, %dl
	callq	*%r14
	movq	%rbx, %rcx
	movl	%eax, %edx
	callq	*%r15
	.cv_loc	6 3 1012 0
	movq	%rbx, %rcx
	callq	*%r12
.Ltmp27:
	.cv_loc	0 1 32 0
	movq	%rsi, %rcx
	vmovaps	%xmm7, %xmm1
	callq	*%r13
	movq	%rax, %rbx
.Ltmp28:
	.cv_loc	6 3 1011 0
	movq	(%rax), %rax
	movslq	4(%rax), %rcx
	addq	%rbx, %rcx
	movb	$10, %dl
	callq	*%r14
	movq	%rbx, %rcx
	movl	%eax, %edx
	callq	*%r15
	.cv_loc	6 3 1012 0
	movq	%rbx, %rcx
	callq	*%r12
.Ltmp29:
	.cv_loc	0 1 32 0
	movq	%rsi, %rcx
	vmovaps	%xmm6, %xmm1
	callq	*%r13
	movq	%rax, %rbx
.Ltmp30:
	.cv_loc	6 3 1011 0
	movq	(%rax), %rax
	movslq	4(%rax), %rcx
	addq	%rbx, %rcx
	movb	$10, %dl
	callq	*%r14
	movq	%rbx, %rcx
	movl	%eax, %edx
	callq	*%r15
	.cv_loc	6 3 1012 0
	movq	%rbx, %rcx
	callq	*%r12
.Ltmp31:
	movabsq	$4835703278458516699, %rcx
.Ltmp32:
	.cv_inline_site_id 7 within 0 inlined_at 1 30 0
	.cv_loc	7 2 440 0
	movq	%rdi, %rax
	imulq	%rcx
	movq	%rdx, %rdi
.Ltmp33:
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdi
	addq	%rax, %rdi
.Ltmp34:
	.cv_loc	0 1 35 0
	movl	"?ITERATIONS@@3JA"(%rip), %r13d
	shll	$3, %r13d
.Ltmp35:
	.cv_loc	0 1 36 0
	leaq	"??_C@_06ELNAEDJO@Time?3?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rcx
	movq	%rdi, %rdx
	callq	*"__imp_??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_J@Z"(%rip)
	leaq	"??_C@_0P@KCFGMNPP@?5milliseconds?$DL?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rbx
.Ltmp36:
	.cv_inline_site_id 8 within 0 inlined_at 1 36 0
	.cv_inline_site_id 9 within 8 inlined_at 3 191 0
	.cv_loc	9 3 1011 0
	movq	(%rax), %rax
	movslq	4(%rax), %rcx
	addq	%rbx, %rcx
	movb	$10, %dl
	callq	*%r14
	movq	%rbx, %rcx
	movl	%eax, %edx
	callq	*%r15
	.cv_loc	9 3 1012 0
	movq	%rbx, %rcx
	callq	*%r12
.Ltmp37:
	.cv_loc	0 1 37 0
	leaq	"??_C@_0O@KOPJABAP@Performance?3?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	vcvtsi2sd	%r13d, %xmm2, %xmm0
	vcvtsi2sd	%rdi, %xmm2, %xmm1
	vmulsd	__real@412e848000000000(%rip), %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm1
	movq	%rax, %rcx
	callq	*"__imp_??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"(%rip)
	leaq	"??_C@_07JIFIDNEC@?5GFLOPS?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rsi
.Ltmp38:
	.cv_inline_site_id 10 within 0 inlined_at 1 37 0
	.cv_inline_site_id 11 within 10 inlined_at 3 191 0
	.cv_loc	11 3 1011 0
	movq	(%rax), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	movb	$10, %dl
	callq	*%r14
	movq	%rsi, %rcx
	movl	%eax, %edx
	callq	*%r15
	.cv_loc	11 3 1012 0
	movq	%rsi, %rcx
	callq	*%r12
.Ltmp39:
	.cv_loc	0 1 38 0
	leaq	"??_C@_05PDJBBECF@pause?$AA@"(%rip), %rcx
	callq	*__imp_system(%rip)
	leaq	.L.kmpc_loc.0.0(%rip), %rcx
	callq	__kmpc_end
	movq	280(%rsp), %rcx
	xorq	%rbp, %rcx
	callq	__security_check_cookie
	.cv_loc	0 1 39 0
	xorl	%eax, %eax
	vmovups	160(%rbp), %xmm6
	vmovups	176(%rbp), %xmm7
	vmovups	192(%rbp), %xmm8
	leaq	216(%rbp), %rsp
	popq	%rbx
.Ltmp40:
	popq	%rdi
.Ltmp41:
	popq	%rsi
.Ltmp42:
	popq	%r12
	popq	%r13
.Ltmp43:
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp44:
.LBB0_1:
	.cv_loc	1 2 687 0
	cmpq	$24000000, %rsi
	jne	.LBB0_3
.Ltmp45:
	.cv_loc	1 2 697 0
	movabsq	$-5551535331153507085, %r9
	movq	%rax, %rcx
.Ltmp46:
	imulq	%r9
.Ltmp47:
	movq	%rdx, %r8
	addq	%rcx, %r8
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$24, %r8
	addq	%rax, %r8
.Ltmp48:
	imulq	$24000000, %r8, %rax
	subq	%rax, %rcx
.Ltmp49:
	imulq	$1000000000, %rcx, %rcx
	movq	%rcx, %rax
	imulq	%r9
	movq	%rdx, %rsi
.Ltmp50:
	.cv_loc	1 2 696 0
	imulq	$1000000000, %r8, %rax
.Ltmp51:
	.cv_loc	1 2 697 0
	addq	%rcx, %rsi
	movq	%rsi, %rcx
	shrq	$63, %rcx
	sarq	$24, %rsi
	addq	%rcx, %rsi
.Ltmp52:
	.cv_loc	1 2 698 0
	addq	%rax, %rsi
.Ltmp53:
	jmp	.LBB0_10
.Ltmp54:
.LBB0_13:
	.cv_loc	2 2 687 0
	cmpq	$24000000, %rdi
	jne	.LBB0_15
.Ltmp55:
	.cv_loc	2 2 697 0
	movabsq	$-5551535331153507085, %r9
	movq	%rax, %rcx
.Ltmp56:
	imulq	%r9
.Ltmp57:
	movq	%rdx, %r8
	addq	%rcx, %r8
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$24, %r8
	addq	%rax, %r8
.Ltmp58:
	imulq	$24000000, %r8, %rax
	subq	%rax, %rcx
.Ltmp59:
	imulq	$1000000000, %rcx, %rcx
	movq	%rcx, %rax
	imulq	%r9
	movq	%rdx, %rdi
.Ltmp60:
	.cv_loc	2 2 696 0
	imulq	$1000000000, %r8, %rax
.Ltmp61:
	.cv_loc	2 2 697 0
	addq	%rcx, %rdi
	movq	%rdi, %rcx
	shrq	$63, %rcx
	sarq	$24, %rdi
	addq	%rcx, %rdi
.Ltmp62:
	.cv_loc	2 2 698 0
	addq	%rax, %rdi
.Ltmp63:
	jmp	.LBB0_22
.Ltmp64:
.LBB0_3:
	.cv_loc	1 2 705 0
	movq	%rax, %rcx
	orq	%rsi, %rcx
	shrq	$32, %rcx
	je	.LBB0_4
.Ltmp65:
	cqto
.Ltmp66:
	idivq	%rsi
	jmp	.LBB0_6
.Ltmp67:
.LBB0_15:
	.cv_loc	2 2 705 0
	movq	%rax, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB0_16
.Ltmp68:
	cqto
.Ltmp69:
	idivq	%rdi
	jmp	.LBB0_18
.Ltmp70:
.LBB0_4:
	.cv_loc	1 2 705 0
	xorl	%edx, %edx
	divl	%esi
.Ltmp71:
.LBB0_6:
	imulq	$1000000000, %rax, %rcx
.Ltmp72:
	.cv_loc	1 2 706 0
	imulq	$1000000000, %rdx, %rax
	movq	%rsi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB0_7
.Ltmp73:
	cqto
	idivq	%rsi
	movq	%rax, %rsi
.Ltmp74:
	jmp	.LBB0_9
.Ltmp75:
.LBB0_16:
	.cv_loc	2 2 705 0
	xorl	%edx, %edx
	divl	%edi
.Ltmp76:
.LBB0_18:
	imulq	$1000000000, %rax, %rcx
.Ltmp77:
	.cv_loc	2 2 706 0
	imulq	$1000000000, %rdx, %rax
	movq	%rdi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB0_19
.Ltmp78:
	cqto
	idivq	%rdi
	movq	%rax, %rdi
.Ltmp79:
	jmp	.LBB0_21
.Ltmp80:
.LBB0_7:
	.cv_loc	1 2 706 0
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %esi
.Ltmp81:
.LBB0_9:
	.cv_loc	1 2 707 0
	addq	%rcx, %rsi
.Ltmp82:
	jmp	.LBB0_10
.Ltmp83:
.LBB0_19:
	.cv_loc	2 2 706 0
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %edi
.Ltmp84:
.LBB0_21:
	.cv_loc	2 2 707 0
	addq	%rcx, %rdi
.Ltmp85:
	jmp	.LBB0_22
.Ltmp86:
.Lfunc_end0:
	.seh_endproc

	.def	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.globl	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.p2align	4, 0x90
"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z":
.Lfunc_begin1:
	.cv_func_id 12
	.cv_loc	12 3 766 0
.seh_proc "??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.seh_handler __CxxFrameHandler3, @unwind, @except
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$72, %rsp
	.seh_stackalloc 72
	leaq	64(%rsp), %rbp
	.seh_setframe %rbp, 64
	.seh_endprologue
	movq	$-2, (%rbp)
	movq	%rdx, %rdi
	movq	%rcx, %r15
.Ltmp101:
	.cv_file	4 "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xstring" "82CCE7FA2B47DF84739F6D6164E3803F" 1
	.cv_inline_site_id 13 within 12 inlined_at 3 772 0
	.cv_loc	13 4 398 0
	movq	%rdx, %rcx
.Ltmp102:
	callq	strlen
.Ltmp103:
	movq	%rax, %rsi
.Ltmp104:
	.cv_loc	12 3 773 0
	movq	(%r15), %rax
	movslq	4(%rax), %rcx
.Ltmp105:
	.cv_file	5 "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xiosbase" "A9A6E1B9687D23A07817B3100FDB8427" 1
	.cv_inline_site_id 14 within 12 inlined_at 3 773 0
	.cv_loc	14 5 280 0
	movq	40(%r15,%rcx), %rax
	xorl	%edx, %edx
.Ltmp106:
	.cv_loc	12 3 773 0
	movq	%rax, %r14
	subq	%rsi, %r14
	movl	$0, %ebx
	cmovgq	%r14, %rbx
	testq	%rax, %rax
	cmovleq	%rdx, %rbx
.Ltmp107:
	.cv_inline_site_id 15 within 12 inlined_at 3 774 0
	.cv_inline_site_id 16 within 15 inlined_at 3 96 0
	.cv_loc	16 3 75 0
	movq	%r15, -32(%rbp)
.Ltmp108:
	.cv_file	6 "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\ios" "18F7C9A507B814F4764E58C39A966E8E" 1
	.cv_inline_site_id 17 within 16 inlined_at 3 76 0
	.cv_loc	17 6 78 0
	movq	72(%r15,%rcx), %rax
.Ltmp109:
	.cv_loc	16 3 77 0
	testq	%rax, %rax
	je	.LBB1_2
.Ltmp110:
	.cv_loc	16 3 78 0
	movq	(%rax), %rdx
	movq	%rax, %rcx
	callq	*8(%rdx)
.Ltmp111:
	.cv_loc	15 3 97 0
	movq	(%r15), %rax
	movslq	4(%rax), %rcx
.Ltmp112:
.LBB1_2:
	addq	%r15, %rcx
	callq	*"__imp_?good@ios_base@std@@QEBA_NXZ"(%rip)
	testb	%al, %al
	movq	%r15, -8(%rbp)
.Ltmp113:
	je	.LBB1_3
.Ltmp114:
	.cv_loc	15 3 102 0
	movq	(%r15), %rax
	movslq	4(%rax), %rcx
.Ltmp115:
	.cv_inline_site_id 18 within 15 inlined_at 3 102 0
	.cv_loc	18 6 68 0
	movq	80(%r15,%rcx), %rcx
.Ltmp116:
	.cv_loc	15 3 103 0
	testq	%rcx, %rcx
	je	.LBB1_12
.Ltmp117:
	cmpq	%r15, %rcx
	je	.LBB1_12
.Ltmp118:
	.cv_loc	15 3 108 0
.Ltmp87:
	callq	*"__imp_?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(%rip)
.Ltmp119:
.Ltmp88:
	.cv_loc	15 3 109 0
	movq	(%r15), %rax
	movslq	4(%rax), %rcx
	addq	%r15, %rcx
	callq	*"__imp_?good@ios_base@std@@QEBA_NXZ"(%rip)
	movb	%al, -24(%rbp)
	movl	$4, -12(%rbp)
.Ltmp120:
	.cv_loc	12 3 776 0
	testb	%al, %al
	je	.LBB1_4
.Ltmp121:
	.cv_loc	12 3 780 0
	movq	-8(%rbp), %r15
.Ltmp122:
	movq	(%r15), %rax
	jmp	.LBB1_17
.Ltmp123:
.LBB1_3:
	.cv_loc	15 3 98 0
	movb	$0, -24(%rbp)
	movl	$4, -12(%rbp)
	jmp	.LBB1_4
.Ltmp124:
.LBB1_12:
	.cv_loc	15 3 104 0
	movb	$1, -24(%rbp)
.Ltmp125:
.LBB1_17:
	.cv_loc	12 3 780 0
	movslq	4(%rax), %rax
	movl	$448, %ecx
	andl	24(%r15,%rax), %ecx
	cmpl	$64, %ecx
	je	.LBB1_26
.Ltmp126:
	testq	%rbx, %rbx
	jle	.LBB1_26
.Ltmp127:
	movq	"__imp_?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(%rip), %rbx
.Ltmp128:
	.p2align	4, 0x90
.LBB1_20:
	.cv_loc	12 3 782 0
	movq	(%r15), %rax
	movslq	4(%rax), %rax
.Ltmp129:
	.cv_inline_site_id 19 within 12 inlined_at 3 782 0
	.cv_loc	19 6 78 0
	movq	72(%r15,%rax), %rcx
.Ltmp130:
	.cv_inline_site_id 20 within 12 inlined_at 3 782 0
	.cv_loc	20 6 99 0
	movzbl	88(%r15,%rax), %edx
.Ltmp131:
	.cv_loc	12 3 782 0
.Ltmp89:
	callq	*%rbx
.Ltmp132:
.Ltmp90:
	.cv_inline_site_id 21 within 12 inlined_at 3 782 0
	.cv_loc	21 4 464 0
	cmpl	$-1, %eax
.Ltmp133:
	.cv_loc	12 3 782 0
	je	.LBB1_22
.Ltmp134:
	.cv_loc	12 3 781 0
	leaq	-1(%r14), %rax
.Ltmp135:
	.cv_loc	12 3 781 0
	cmpq	$1, %r14
	movq	%rax, %r14
.Ltmp136:
	movq	-8(%rbp), %r15
	jg	.LBB1_20
.Ltmp137:
	.cv_loc	12 3 789 0
	movq	(%r15), %rax
	movslq	4(%rax), %rax
	xorl	%ebx, %ebx
.Ltmp138:
.LBB1_26:
	.cv_inline_site_id 22 within 12 inlined_at 3 789 0
	.cv_loc	22 6 78 0
	movq	72(%r15,%rax), %rcx
.Ltmp139:
	.cv_file	7 "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\streambuf" "DCCB1AC684312409303E4D66E7083699" 1
	.cv_inline_site_id 23 within 12 inlined_at 3 789 0
	.cv_loc	23 7 171 0
	movq	(%rcx), %rax
.Ltmp140:
.Ltmp91:
	movq	%rdi, %rdx
	movq	%rsi, %r8
	callq	*72(%rax)
.Ltmp141:
.Ltmp92:
	.cv_loc	12 3 789 0
	cmpq	%rsi, %rax
	jne	.LBB1_22
.Ltmp142:
	.cv_loc	12 3 793 0
	testq	%rbx, %rbx
	movq	-8(%rbp), %rdx
	jle	.LBB1_33
.Ltmp143:
	movq	"__imp_?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(%rip), %rsi
.Ltmp144:
	.p2align	4, 0x90
.LBB1_30:
	.cv_loc	12 3 795 0
	movq	(%rdx), %rax
	movslq	4(%rax), %rax
.Ltmp145:
	.cv_inline_site_id 24 within 12 inlined_at 3 795 0
	.cv_loc	24 6 78 0
	movq	72(%rdx,%rax), %rcx
.Ltmp146:
	.cv_inline_site_id 25 within 12 inlined_at 3 795 0
	.cv_loc	25 6 99 0
	movzbl	88(%rdx,%rax), %edx
.Ltmp147:
	.cv_loc	12 3 795 0
.Ltmp93:
	callq	*%rsi
.Ltmp148:
.Ltmp94:
	.cv_inline_site_id 26 within 12 inlined_at 3 795 0
	.cv_loc	26 4 464 0
	cmpl	$-1, %eax
	je	.LBB1_22
.Ltmp149:
	.cv_loc	12 3 794 0
	leaq	-1(%rbx), %rax
.Ltmp150:
	.cv_loc	12 3 794 0
	cmpq	$1, %rbx
	movq	%rax, %rbx
.Ltmp151:
	movq	-8(%rbp), %rdx
	jg	.LBB1_30
.Ltmp152:
.LBB1_33:
	xorl	%eax, %eax
	jmp	.LBB1_23
.Ltmp153:
.LBB1_22:
	movl	$4, %eax
	movq	-8(%rbp), %rdx
.Ltmp154:
.LBB1_23:
	.cv_loc	12 3 802 0
	movl	%eax, -12(%rbp)
.Ltmp155:
	movq	(%rdx), %rax
	movslq	4(%rax), %rax
.Ltmp156:
	.cv_inline_site_id 27 within 12 inlined_at 3 802 0
	.cv_loc	27 5 286 0
	movq	$0, 40(%rdx,%rax)
.Ltmp157:
.LBB1_4:
$ehgcr_1_4:
	.cv_loc	12 3 806 0
	movq	-8(%rbp), %r8
	movq	(%r8), %rax
	movslq	4(%rax), %rax
	leaq	(%r8,%rax), %rcx
.Ltmp158:
	movl	-12(%rbp), %edx
.Ltmp159:
	.cv_inline_site_id 28 within 12 inlined_at 3 806 0
	.cv_loc	28 6 51 0
	orl	16(%r8,%rax), %edx
.Ltmp97:
	xorl	%r8d, %r8d
	callq	*"__imp_?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%rip)
.Ltmp160:
.Ltmp98:
	.cv_inline_site_id 29 within 12 inlined_at 3 808 0
	.cv_loc	29 3 117 0
	callq	"?uncaught_exception@std@@YA_NXZ"
.Ltmp161:
	.cv_inline_site_id 30 within 29 inlined_at 3 125 0
	.cv_loc	30 3 83 0
	movq	-32(%rbp), %rsi
.Ltmp162:
	.cv_loc	29 3 122 0
	testb	%al, %al
	jne	.LBB1_7
.Ltmp163:
	.cv_loc	29 3 123 0
	movq	%rsi, %rcx
	callq	*"__imp_?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ"(%rip)
.Ltmp164:
.LBB1_7:
	.cv_loc	30 3 83 0
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
.Ltmp165:
	.cv_inline_site_id 31 within 30 inlined_at 3 83 0
	.cv_loc	31 6 78 0
	movq	72(%rsi,%rax), %rcx
.Ltmp166:
	.cv_loc	30 3 84 0
	testq	%rcx, %rcx
	movq	-8(%rbp), %rsi
.Ltmp167:
	je	.LBB1_9
.Ltmp168:
	.cv_loc	30 3 85 0
	movq	(%rcx), %rax
.Ltmp99:
	callq	*16(%rax)
.Ltmp169:
.Ltmp100:
.LBB1_9:
	.cv_loc	12 3 808 0
	movq	%rsi, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp170:
	.seh_handlerdata
	.long	("$cppxdata$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z")@IMGREL
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.seh_endproc
	.def	"?dtor$13@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$13@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA":
.seh_proc "?dtor$13@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"
.LBB1_13:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	64(%rdx), %rbp
.Ltmp171:
	.seh_endprologue
	leaq	-32(%rbp), %rcx
.Ltmp172:
	.cv_loc	15 3 110 0
	callq	"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	nop
	addq	$40, %rsp
	popq	%rbx
.Ltmp173:
	popq	%rdi
.Ltmp174:
	popq	%rsi
.Ltmp175:
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp176:
	.seh_handlerdata
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.seh_endproc
	.def	"?catch$34@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?catch$34@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA":
.seh_proc "?catch$34@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"
	.seh_handler __CxxFrameHandler3, @unwind, @except
.LBB1_34:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	64(%rdx), %rbp
.Ltmp177:
	.seh_endprologue
	movq	-8(%rbp), %rdx
.Ltmp178:
	.cv_loc	12 3 803 0
	movq	(%rdx), %rax
	movslq	4(%rax), %rax
	leaq	(%rdx,%rax), %rcx
.Ltmp179:
	.cv_inline_site_id 32 within 12 inlined_at 3 803 0
	.cv_inline_site_id 33 within 32 inlined_at 6 51 0
	.cv_loc	33 5 189 0
	movl	16(%rdx,%rax), %edx
.Ltmp180:
	.cv_loc	32 6 51 0
	orl	$4, %edx
.Ltmp95:
	movb	$1, %r8b
	callq	*"__imp_?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%rip)
.Ltmp181:
.Ltmp96:
	.cv_loc	12 3 803 0
	movl	$0, -12(%rbp)
	leaq	.LBB1_4(%rip), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
.Ltmp182:
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp183:
	.seh_handlerdata
	.long	("$cppxdata$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z")@IMGREL
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.seh_endproc
	.def	"?dtor$36@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$36@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA":
.seh_proc "?dtor$36@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"
.LBB1_36:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
.Ltmp184:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	64(%rdx), %rbp
.Ltmp185:
	.seh_endprologue
	.cv_loc	30 3 85 0
	callq	__std_terminate
	int3
.Ltmp186:
	.seh_handlerdata
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.seh_endproc
	.def	"?dtor$37@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$37@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA":
.seh_proc "?dtor$37@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"
.LBB1_37:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	64(%rdx), %rbp
.Ltmp187:
	.seh_endprologue
	leaq	-32(%rbp), %rcx
	.cv_loc	12 3 808 0
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp188:
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.seh_endproc
	.section	.xdata,"dr",associative,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.p2align	2, 0x0
"$cppxdata$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z":
	.long	429065506
	.long	5
	.long	("$stateUnwindMap$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z")@IMGREL
	.long	1
	.long	("$tryMap$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z")@IMGREL
	.long	7
	.long	("$ip2state$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z")@IMGREL
	.long	64
	.long	0
	.long	1
"$stateUnwindMap$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z":
	.long	-1
	.long	"?dtor$13@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"@IMGREL
	.long	-1
	.long	"?dtor$36@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"@IMGREL
	.long	-1
	.long	"?dtor$37@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"@IMGREL
	.long	2
	.long	0
	.long	2
	.long	0
"$tryMap$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z":
	.long	3
	.long	3
	.long	4
	.long	1
	.long	("$handlerMap$0$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z")@IMGREL
"$handlerMap$0$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z":
	.long	64
	.long	0
	.long	0
	.long	"?catch$34@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"@IMGREL
	.long	104
"$ip2state$??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z":
	.long	.Lfunc_begin1@IMGREL
	.long	-1
	.long	.Ltmp87@IMGREL+1
	.long	0
	.long	.Ltmp89@IMGREL+1
	.long	3
	.long	.Ltmp97@IMGREL+1
	.long	2
	.long	.Ltmp99@IMGREL+1
	.long	1
	.long	.Ltmp100@IMGREL+1
	.long	-1
	.long	"?catch$34@?0???$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z@4HA"@IMGREL
	.long	4
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"

	.def	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.globl	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.p2align	4, 0x90
"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
.Lfunc_begin2:
	.cv_func_id 34
	.cv_loc	34 3 113 0
.seh_proc "??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.seh_handler __CxxFrameHandler3, @unwind, @except
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	32(%rsp), %rbp
	.seh_setframe %rbp, 32
	.seh_endprologue
	movq	$-2, (%rbp)
	movq	%rcx, %rsi
.Ltmp191:
	.cv_loc	34 3 117 0
	callq	"?uncaught_exception@std@@YA_NXZ"
.Ltmp192:
	.cv_loc	34 3 122 0
	testb	%al, %al
	jne	.LBB2_2
.Ltmp193:
	.cv_loc	34 3 123 0
	movq	(%rsi), %rcx
	callq	*"__imp_?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ"(%rip)
.Ltmp194:
.LBB2_2:
	.cv_inline_site_id 35 within 34 inlined_at 3 125 0
	.cv_loc	35 3 83 0
	movq	(%rsi), %rax
	movq	(%rax), %rcx
	movslq	4(%rcx), %rcx
.Ltmp195:
	.cv_inline_site_id 36 within 35 inlined_at 3 83 0
	.cv_loc	36 6 78 0
	movq	72(%rax,%rcx), %rcx
.Ltmp196:
	.cv_loc	35 3 84 0
	testq	%rcx, %rcx
	je	.LBB2_4
.Ltmp197:
	.cv_loc	35 3 85 0
	movq	(%rcx), %rax
.Ltmp189:
	callq	*16(%rax)
.Ltmp198:
.Ltmp190:
.LBB2_4:
	.cv_loc	34 3 125 0
	nop
	addq	$40, %rsp
	popq	%rsi
.Ltmp199:
	popq	%rbp
	retq
.Ltmp200:
	.seh_handlerdata
	.long	("$cppxdata$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ")@IMGREL
	.section	.text,"xr",discard,"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.seh_endproc
	.def	"?dtor$5@?0???1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$5@?0???1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ@4HA":
.seh_proc "?dtor$5@?0???1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ@4HA"
.LBB2_5:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
.Ltmp201:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	32(%rdx), %rbp
	.seh_endprologue
	.cv_loc	35 3 85 0
	callq	__std_terminate
	int3
.Ltmp202:
.Lfunc_end2:
	.seh_handlerdata
	.section	.text,"xr",discard,"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.seh_endproc
	.section	.xdata,"dr",associative,"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.p2align	2, 0x0
"$cppxdata$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
	.long	429065506
	.long	1
	.long	("$stateUnwindMap$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ")@IMGREL
	.long	0
	.long	0
	.long	3
	.long	("$ip2state$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ")@IMGREL
	.long	32
	.long	0
	.long	1
"$stateUnwindMap$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
	.long	-1
	.long	"?dtor$5@?0???1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ@4HA"@IMGREL
"$ip2state$??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
	.long	.Lfunc_begin2@IMGREL
	.long	-1
	.long	.Ltmp189@IMGREL+1
	.long	0
	.long	.Ltmp190@IMGREL+1
	.long	-1
	.section	.text,"xr",discard,"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"

	.def	"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.globl	"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.p2align	4, 0x90
"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
.Lfunc_begin3:
	.cv_func_id 37
	.cv_loc	37 3 82 0
.seh_proc "??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.seh_handler __CxxFrameHandler3, @unwind, @except
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$48, %rsp
	.seh_stackalloc 48
	leaq	48(%rsp), %rbp
	.seh_setframe %rbp, 48
	.seh_endprologue
.Ltmp205:
	.cv_loc	37 3 83 0
	movq	$-2, -8(%rbp)
	movq	(%rcx), %rax
	movq	(%rax), %rcx
.Ltmp206:
	movslq	4(%rcx), %rcx
.Ltmp207:
	.cv_inline_site_id 38 within 37 inlined_at 3 83 0
	.cv_loc	38 6 78 0
	movq	72(%rax,%rcx), %rcx
.Ltmp208:
	.cv_loc	37 3 84 0
	testq	%rcx, %rcx
	je	.LBB3_2
.Ltmp209:
	.cv_loc	37 3 85 0
	movq	(%rcx), %rax
.Ltmp203:
	callq	*16(%rax)
.Ltmp210:
.Ltmp204:
.LBB3_2:
	.cv_loc	37 3 87 0
	nop
	addq	$48, %rsp
	popq	%rbp
	retq
.Ltmp211:
	.seh_handlerdata
	.long	("$cppxdata$??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ")@IMGREL
	.section	.text,"xr",discard,"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.seh_endproc
	.def	"?dtor$3@?0???1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$3@?0???1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ@4HA":
.seh_proc "?dtor$3@?0???1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ@4HA"
.LBB3_3:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$32, %rsp
	.seh_stackalloc 32
	leaq	48(%rdx), %rbp
	.seh_endprologue
.Ltmp212:
	.cv_loc	37 3 85 0
	callq	__std_terminate
	int3
.Ltmp213:
.Lfunc_end3:
	.seh_handlerdata
	.section	.text,"xr",discard,"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.seh_endproc
	.section	.xdata,"dr",associative,"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.p2align	2, 0x0
"$cppxdata$??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
	.long	429065506
	.long	1
	.long	("$stateUnwindMap$??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ")@IMGREL
	.long	0
	.long	0
	.long	3
	.long	("$ip2state$??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ")@IMGREL
	.long	40
	.long	0
	.long	1
"$stateUnwindMap$??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
	.long	-1
	.long	"?dtor$3@?0???1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ@4HA"@IMGREL
"$ip2state$??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
	.long	.Lfunc_begin3@IMGREL
	.long	-1
	.long	.Ltmp203@IMGREL+1
	.long	0
	.long	.Ltmp204@IMGREL+1
	.long	-1
	.section	.text,"xr",discard,"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"

	.def	main.extracted;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,main.extracted
	.p2align	4, 0x90
main.extracted:
.Lfunc_begin4:
	.cv_func_id 39
	.cv_loc	39 1 19 0
.seh_proc main.extracted
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$208, %rsp
	.seh_stackalloc 208
	.seh_endprologue
	movq	%r8, %rsi
	movq	280(%rsp), %rbx
	movl	304(%rsp), %eax
.Ltmp214:
	movq	288(%rsp), %rdx
.Ltmp215:
	movq	272(%rsp), %r8
.Ltmp216:
	movq	__security_cookie(%rip), %r10
	xorq	%rsp, %r10
	movq	%r10, 200(%rsp)
	movl	$0, 196(%rsp)
	vmovups	(%r9), %ymm0
	vmovups	%ymm0, 144(%rsp)
	vmovups	(%r8), %ymm0
	vmovups	%ymm0, 112(%rsp)
	vmovupd	(%rdx), %ymm0
.Ltmp217:
	vmovupd	%ymm0, 80(%rsp)
.Ltmp218:
	.cv_loc	39 1 19 0
	movl	(%rcx), %edi
	movl	$0, 192(%rsp)
	movl	%eax, 188(%rsp)
	movl	$1, 184(%rsp)
	leaq	184(%rsp), %rax
.Ltmp219:
	movq	%rax, 48(%rsp)
	leaq	188(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, 56(%rsp)
	leaq	.L.kmpc_loc.19.19(%rip), %rcx
	leaq	196(%rsp), %r9
.Ltmp220:
	movl	%edi, %edx
.Ltmp221:
	movl	$34, %r8d
.Ltmp222:
	vzeroupper
	callq	__kmpc_for_static_init_4
	movl	192(%rsp), %ecx
	movl	188(%rsp), %eax
	cmpl	%eax, %ecx
	ja	.LBB4_9
.Ltmp223:
	vmovupd	(%rsi), %ymm0
	subl	%ecx, %eax
	leal	1(%rax), %ecx
	cmpl	$8, %ecx
	jae	.LBB4_3
.Ltmp224:
	vmovupd	144(%rsp), %ymm2
	vmovupd	112(%rsp), %ymm3
	vmovupd	80(%rsp), %ymm4
	jmp	.LBB4_5
.Ltmp225:
.LBB4_3:
	movl	%ecx, %edx
	shrl	$3, %edx
	vmovupd	144(%rsp), %ymm2
	vmovupd	112(%rsp), %ymm3
	vmovupd	80(%rsp), %ymm4
.Ltmp226:
	.p2align	4, 0x90
.LBB4_4:
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 24 0
	vfmadd213pd	%ymm4, %ymm2, %ymm0
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 24 0
	vfmadd213pd	%ymm4, %ymm2, %ymm0
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 24 0
	vfmadd213pd	%ymm4, %ymm2, %ymm0
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 24 0
	vfmadd213pd	%ymm4, %ymm2, %ymm0
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 24 0
	vfmadd213pd	%ymm4, %ymm2, %ymm0
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 24 0
	vfmadd213pd	%ymm4, %ymm2, %ymm0
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 24 0
	vfmadd213pd	%ymm4, %ymm2, %ymm0
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vmovapd	%ymm0, %ymm1
	vfmadd213pd	%ymm3, %ymm2, %ymm1
	.cv_loc	39 1 24 0
	vmovapd	%ymm2, %ymm0
	vfmadd213pd	%ymm4, %ymm1, %ymm0
	.cv_loc	39 1 25 0
	decl	%edx
	jne	.LBB4_4
.Ltmp227:
.LBB4_5:
	movl	%ecx, %edx
	andl	$-8, %edx
	cmpl	%ecx, %edx
	je	.LBB4_8
.Ltmp228:
	subl	%edx, %eax
	incl	%eax
.Ltmp229:
	.p2align	4, 0x90
.LBB4_7:
	.cv_loc	39 1 21 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 22 0
	vfmadd213pd	%ymm3, %ymm2, %ymm0
	.cv_loc	39 1 23 0
	vmovapd	%ymm0, %ymm1
	vfmadd213pd	%ymm3, %ymm2, %ymm1
	.cv_loc	39 1 24 0
	vmovapd	%ymm2, %ymm0
	vfmadd213pd	%ymm4, %ymm1, %ymm0
	.cv_loc	39 1 25 0
	decl	%eax
	jne	.LBB4_7
.Ltmp230:
.LBB4_8:
	.cv_loc	39 1 23 0
	vmovupd	%ymm0, (%rsi)
	vmovupd	%ymm1, (%rbx)
.Ltmp231:
.LBB4_9:
	.cv_loc	39 1 19 0
	leaq	.L.kmpc_loc.19.19.2(%rip), %rsi
	movq	200(%rsp), %rcx
	xorq	%rsp, %rcx
	vzeroupper
	callq	__security_check_cookie
	movq	%rsi, %rcx
	movl	%edi, %edx
	addq	$208, %rsp
	popq	%rbx
.Ltmp232:
	popq	%rdi
	popq	%rsi
	jmp	__kmpc_for_static_fini
.Ltmp233:
.Lfunc_end4:
	.seh_endproc

	.data
	.globl	"?ITERATIONS@@3JA"
	.p2align	2, 0x0
"?ITERATIONS@@3JA":
	.long	500000000

	.section	.rdata,"dr",discard,"??_C@_06ELNAEDJO@Time?3?5?$AA@"
	.globl	"??_C@_06ELNAEDJO@Time?3?5?$AA@"
"??_C@_06ELNAEDJO@Time?3?5?$AA@":
	.asciz	"Time: "

	.section	.rdata,"dr",discard,"??_C@_0P@KCFGMNPP@?5milliseconds?$DL?$AA@"
	.globl	"??_C@_0P@KCFGMNPP@?5milliseconds?$DL?$AA@"
"??_C@_0P@KCFGMNPP@?5milliseconds?$DL?$AA@":
	.asciz	" milliseconds;"

	.section	.rdata,"dr",discard,"??_C@_0O@KOPJABAP@Performance?3?5?$AA@"
	.globl	"??_C@_0O@KOPJABAP@Performance?3?5?$AA@"
"??_C@_0O@KOPJABAP@Performance?3?5?$AA@":
	.asciz	"Performance: "

	.section	.rdata,"dr",discard,"??_C@_07JIFIDNEC@?5GFLOPS?$AA@"
	.globl	"??_C@_07JIFIDNEC@?5GFLOPS?$AA@"
"??_C@_07JIFIDNEC@?5GFLOPS?$AA@":
	.asciz	" GFLOPS"

	.section	.rdata,"dr",discard,"??_C@_05PDJBBECF@pause?$AA@"
	.globl	"??_C@_05PDJBBECF@pause?$AA@"
"??_C@_05PDJBBECF@pause?$AA@":
	.asciz	"pause"

	.section	.rdata,"dr"
	.p2align	4, 0x0
.L.source.0.0:
	.ascii	";unknown;unknown;0;0;;"

	.data
	.p2align	4, 0x0
.L.kmpc_loc.0.0:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.0.0

	.p2align	4, 0x0
.L.kmpc_loc.19.19:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.19.19.1

	.section	.rdata,"dr"
	.p2align	4, 0x0
.L.source.19.19.1:
	.ascii	";C:\\Users\\\320\230\320\262\320\260\320\275\\Desktop\\IntrinsicsBenchmark\\IntrinsicsBenchmark/IntrinsicsBenchmark.cpp;main;19;19;;"

	.data
	.p2align	4, 0x0
.L.kmpc_loc.19.19.2:
	.long	0
	.long	838861314
	.long	0
	.long	0
	.quad	.L.source.19.19.1

	.section	.rdata,"dr"
	.p2align	4, 0x0
.L.source.19.19.3:
	.ascii	";C:\\Users\\\320\230\320\262\320\260\320\275\\Desktop\\IntrinsicsBenchmark\\IntrinsicsBenchmark/IntrinsicsBenchmark.cpp;main.extracted;19;19;;"

	.data
	.p2align	4, 0x0
.L.kmpc_loc.19.19.4:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.L.source.19.19.3

	.section	.drectve,"yni"
	.ascii	" /DEFAULTLIB:msvcprtd.lib"
	.ascii	" /DEFAULTLIB:msvcrtd.lib"
	.ascii	" /DEFAULTLIB:libircmt.lib"
	.ascii	" /DEFAULTLIB:svml_dispmd.lib"
	.ascii	" /DEFAULTLIB:libdecimal.lib"
	.ascii	" /DEFAULTLIB:libmmdd.lib"
	.ascii	" /DEFAULTLIB:oldnames.lib"
	.ascii	" /DEFAULTLIB:libiomp5md.lib"
	.ascii	" /FAILIFMISMATCH:\"_MSC_VER=1900\""
	.ascii	" /FAILIFMISMATCH:\"_ITERATOR_DEBUG_LEVEL=2\""
	.ascii	" /FAILIFMISMATCH:\"RuntimeLibrary=MDd_DynamicDebug\""
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_string=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_vector=0\""
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp235-.Ltmp234
.Ltmp234:
	.short	.Ltmp237-.Ltmp236
.Ltmp236:
	.short	4353
	.long	0
	.asciz	"C:\\Users\\\320\230\320\262\320\260\320\275\\Desktop\\IntrinsicsBenchmark\\IntrinsicsBenchmark\\IntrinsicsBenchmark.asm"
	.p2align	2, 0x0
.Ltmp237:
	.short	.Ltmp239-.Ltmp238
.Ltmp238:
	.short	4412
	.long	1
	.short	208
	.short	2024
	.short	2
	.short	1
	.short	0
	.short	19000
	.short	0
	.short	0
	.short	0
	.asciz	"clang based Intel(R) oneAPI DPC++/C++ Compiler 2024.2.1 (2024.2.1.20240711)"
	.p2align	2, 0x0
.Ltmp239:
.Ltmp235:
	.p2align	2, 0x0
	.long	246
	.long	.Ltmp241-.Ltmp240
.Ltmp240:
	.long	0


	.long	4147
	.cv_filechecksumoffset	2
	.long	678


	.long	4152
	.cv_filechecksumoffset	2
	.long	547


	.long	4155
	.cv_filechecksumoffset	2
	.long	288


	.long	4164
	.cv_filechecksumoffset	3
	.long	189


	.long	4166
	.cv_filechecksumoffset	3
	.long	1009


	.long	4192
	.cv_filechecksumoffset	2
	.long	420


	.long	4256
	.cv_filechecksumoffset	4
	.long	385


	.long	5036
	.cv_filechecksumoffset	5
	.long	279


	.long	5066
	.cv_filechecksumoffset	3
	.long	96


	.long	5067
	.cv_filechecksumoffset	3
	.long	75


	.long	5074
	.cv_filechecksumoffset	6
	.long	77


	.long	5077
	.cv_filechecksumoffset	6
	.long	67


	.long	5079
	.cv_filechecksumoffset	6
	.long	98


	.long	5080
	.cv_filechecksumoffset	4
	.long	463


	.long	5084
	.cv_filechecksumoffset	7
	.long	169


	.long	5085
	.cv_filechecksumoffset	5
	.long	283


	.long	5088
	.cv_filechecksumoffset	6
	.long	49


	.long	5089
	.cv_filechecksumoffset	3
	.long	113


	.long	5090
	.cv_filechecksumoffset	3
	.long	82


	.long	5091
	.cv_filechecksumoffset	5
	.long	188
.Ltmp241:
	.p2align	2, 0x0
	.section	.debug$S,"dr",associative,main
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp243-.Ltmp242
.Ltmp242:
	.short	.Ltmp245-.Ltmp244
.Ltmp244:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-main
	.long	0
	.long	0
	.long	5093
	.secrel32	main
	.secidx	main
	.byte	129
	.asciz	"main"
	.p2align	2, 0x0
.Ltmp245:
	.short	.Ltmp247-.Ltmp246
.Ltmp246:
	.short	4114
	.long	352
	.long	0
	.long	0
	.long	56
	.long	0
	.short	0
	.long	1200384
	.p2align	2, 0x0
.Ltmp247:
	.short	.Ltmp249-.Ltmp248
.Ltmp248:
	.short	4456
	.long	4
	.long	4147
	.long	4152
	.long	4164
	.long	4192
	.p2align	2, 0x0
.Ltmp249:
	.short	.Ltmp251-.Ltmp250
.Ltmp250:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x1"
	.p2align	2, 0x0
.Ltmp251:
	.cv_def_range	 .Ltmp1 .Ltmp2, reg, 368
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 224
	.short	.Ltmp253-.Ltmp252
.Ltmp252:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x2"
	.p2align	2, 0x0
.Ltmp253:
	.cv_def_range	 .Ltmp2 .Ltmp3, reg, 368
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 192
	.short	.Ltmp255-.Ltmp254
.Ltmp254:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x3"
	.p2align	2, 0x0
.Ltmp255:
	.cv_def_range	 .Ltmp3 .Ltmp5, reg, 154
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 160
	.short	.Ltmp257-.Ltmp256
.Ltmp256:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x4"
	.p2align	2, 0x0
.Ltmp257:
	.cv_def_range	 .Ltmp4 .Ltmp5, reg, 154
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 128
	.short	.Ltmp259-.Ltmp258
.Ltmp258:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x5"
	.p2align	2, 0x0
.Ltmp259:
	.cv_def_range	 .Ltmp5 .Ltmp7, reg, 368
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 96
	.short	.Ltmp261-.Ltmp260
.Ltmp260:
	.short	4414
	.long	4121
	.short	0
	.asciz	"start"
	.p2align	2, 0x0
.Ltmp261:
	.cv_def_range	 .Ltmp11 .Ltmp23 .Ltmp53 .Ltmp64 .Ltmp67 .Ltmp70 .Ltmp75 .Ltmp80 .Ltmp82 .Lfunc_end0, reg, 332
	.short	.Ltmp263-.Ltmp262
.Ltmp262:
	.short	4414
	.long	4121
	.short	0
	.asciz	"stop"
	.p2align	2, 0x0
.Ltmp263:
	.cv_def_range	 .Ltmp20 .Ltmp21 .Ltmp63 .Ltmp64 .Ltmp85 .Lfunc_end0, reg, 333
	.short	.Ltmp265-.Ltmp264
.Ltmp264:
	.short	4414
	.long	5094
	.short	256
	.asciz	"a"
	.p2align	2, 0x0
.Ltmp265:
	.short	.Ltmp267-.Ltmp266
.Ltmp266:
	.short	4414
	.long	4187
	.short	0
	.asciz	"res"
	.p2align	2, 0x0
.Ltmp267:
	.cv_def_range	 .Ltmp34 .Ltmp41, reg, 333
	.short	.Ltmp269-.Ltmp268
.Ltmp268:
	.short	4414
	.long	18
	.short	0
	.asciz	"cbp"
	.p2align	2, 0x0
.Ltmp269:
	.cv_def_range	 .Ltmp35 .Ltmp43, reg, 365
	.short	.Ltmp271-.Ltmp270
.Ltmp270:
	.short	4429
	.long	0
	.long	0
	.long	4147
	.cv_inline_linetable	1 2 678 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp271:
	.short	.Ltmp273-.Ltmp272
.Ltmp272:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Freq"
	.p2align	2, 0x0
.Ltmp273:
	.cv_def_range	 .Ltmp8 .Ltmp11 .Ltmp44 .Ltmp50 .Ltmp64 .Ltmp67 .Ltmp70 .Ltmp74 .Ltmp80 .Ltmp81, reg, 332
	.short	.Ltmp275-.Ltmp274
.Ltmp274:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Ctr"
	.p2align	2, 0x0
.Ltmp275:
	.cv_def_range	 .Ltmp9 .Ltmp11 .Ltmp44 .Ltmp47 .Ltmp64 .Ltmp66 .Ltmp70 .Ltmp71, reg, 328
	.cv_def_range	 .Ltmp47 .Ltmp49, reg, 330
	.short	.Ltmp277-.Ltmp276
.Ltmp276:
	.short	4359
	.long	4123
	.byte	0x03, 0x80, 0x80, 0x96
	.byte	0x98, 0x00
	.asciz	"_TenMHz"
	.p2align	2, 0x0
.Ltmp277:
	.short	.Ltmp279-.Ltmp278
.Ltmp278:
	.short	4359
	.long	4123
	.byte	0x03, 0x80, 0x00, 0x36
	.byte	0x6e, 0x01
	.asciz	"_TwentyFourMHz"
	.p2align	2, 0x0
.Ltmp279:
	.short	.Ltmp281-.Ltmp280
.Ltmp280:
	.short	4359
	.long	4123
	.byte	0x64, 0x00
	.asciz	"_Multiplier"
	.p2align	2, 0x0
.Ltmp281:
	.short	.Ltmp283-.Ltmp282
.Ltmp282:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Whole"
	.p2align	2, 0x0
.Ltmp283:
	.cv_def_range	 .Ltmp51 .Ltmp54, reg, 328
	.short	.Ltmp285-.Ltmp284
.Ltmp284:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Part"
	.p2align	2, 0x0
.Ltmp285:
	.cv_def_range	 .Ltmp52 .Ltmp53, reg, 332
	.short	.Ltmp287-.Ltmp286
.Ltmp286:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Whole"
	.p2align	2, 0x0
.Ltmp287:
	.cv_def_range	 .Ltmp72 .Ltmp75 .Ltmp80 .Ltmp83, reg, 330
	.short	.Ltmp289-.Ltmp288
.Ltmp288:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Part"
	.p2align	2, 0x0
.Ltmp289:
	.cv_def_range	 .Ltmp81 .Ltmp82, reg, 332
	.short	2
	.short	4430
	.short	.Ltmp291-.Ltmp290
.Ltmp290:
	.short	4429
	.long	0
	.long	0
	.long	4147
	.cv_inline_linetable	2 2 678 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp291:
	.short	.Ltmp293-.Ltmp292
.Ltmp292:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Freq"
	.p2align	2, 0x0
.Ltmp293:
	.cv_def_range	 .Ltmp17 .Ltmp20 .Ltmp54 .Ltmp60 .Ltmp67 .Ltmp70 .Ltmp75 .Ltmp79 .Ltmp83 .Ltmp84, reg, 333
	.short	.Ltmp295-.Ltmp294
.Ltmp294:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Ctr"
	.p2align	2, 0x0
.Ltmp295:
	.cv_def_range	 .Ltmp18 .Ltmp20 .Ltmp54 .Ltmp57 .Ltmp67 .Ltmp69 .Ltmp75 .Ltmp76, reg, 328
	.cv_def_range	 .Ltmp57 .Ltmp59, reg, 330
	.short	.Ltmp297-.Ltmp296
.Ltmp296:
	.short	4359
	.long	4123
	.byte	0x03, 0x80, 0x80, 0x96
	.byte	0x98, 0x00
	.asciz	"_TenMHz"
	.p2align	2, 0x0
.Ltmp297:
	.short	.Ltmp299-.Ltmp298
.Ltmp298:
	.short	4359
	.long	4123
	.byte	0x03, 0x80, 0x00, 0x36
	.byte	0x6e, 0x01
	.asciz	"_TwentyFourMHz"
	.p2align	2, 0x0
.Ltmp299:
	.short	.Ltmp301-.Ltmp300
.Ltmp300:
	.short	4359
	.long	4123
	.byte	0x64, 0x00
	.asciz	"_Multiplier"
	.p2align	2, 0x0
.Ltmp301:
	.short	.Ltmp303-.Ltmp302
.Ltmp302:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Whole"
	.p2align	2, 0x0
.Ltmp303:
	.cv_def_range	 .Ltmp61 .Ltmp64, reg, 328
	.short	.Ltmp305-.Ltmp304
.Ltmp304:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Part"
	.p2align	2, 0x0
.Ltmp305:
	.cv_def_range	 .Ltmp62 .Ltmp63, reg, 333
	.short	.Ltmp307-.Ltmp306
.Ltmp306:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Whole"
	.p2align	2, 0x0
.Ltmp307:
	.cv_def_range	 .Ltmp77 .Ltmp80 .Ltmp83 .Lfunc_end0, reg, 330
	.short	.Ltmp309-.Ltmp308
.Ltmp308:
	.short	4414
	.long	4123
	.short	0
	.asciz	"_Part"
	.p2align	2, 0x0
.Ltmp309:
	.cv_def_range	 .Ltmp84 .Ltmp85, reg, 333
	.short	2
	.short	4430
	.short	.Ltmp311-.Ltmp310
.Ltmp310:
	.short	4429
	.long	0
	.long	0
	.long	4152
	.cv_inline_linetable	3 2 547 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp311:
	.short	.Ltmp313-.Ltmp312
.Ltmp312:
	.short	4429
	.long	0
	.long	0
	.long	4155
	.cv_inline_linetable	4 2 288 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp313:
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp315-.Ltmp314
.Ltmp314:
	.short	4429
	.long	0
	.long	0
	.long	4164
	.cv_inline_linetable	5 3 189 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp315:
	.short	.Ltmp317-.Ltmp316
.Ltmp316:
	.short	4414
	.long	5075
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp317:
	.cv_def_range	 .Ltmp24 .Ltmp36, reg, 329
	.short	.Ltmp319-.Ltmp318
.Ltmp318:
	.short	4429
	.long	0
	.long	0
	.long	4166
	.cv_inline_linetable	6 3 1009 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp319:
	.short	.Ltmp321-.Ltmp320
.Ltmp320:
	.short	4414
	.long	4157
	.short	1
	.asciz	"_Ostr"
	.p2align	2, 0x0
.Ltmp321:
	.cv_def_range	 .Ltmp24 .Ltmp36, reg, 329
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp323-.Ltmp322
.Ltmp322:
	.short	4429
	.long	0
	.long	0
	.long	4192
	.cv_inline_linetable	7 2 420 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp323:
	.short	2
	.short	4430
	.short	.Ltmp325-.Ltmp324
.Ltmp324:
	.short	4429
	.long	0
	.long	0
	.long	4164
	.cv_inline_linetable	8 3 189 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp325:
	.short	.Ltmp327-.Ltmp326
.Ltmp326:
	.short	4414
	.long	5075
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp327:
	.cv_def_range	 .Ltmp36 .Ltmp40, reg, 329
	.short	.Ltmp329-.Ltmp328
.Ltmp328:
	.short	4414
	.long	4161
	.short	257
	.asciz	"_Pfn"
	.p2align	2, 0x0
.Ltmp329:
	.short	.Ltmp331-.Ltmp330
.Ltmp330:
	.short	4429
	.long	0
	.long	0
	.long	4166
	.cv_inline_linetable	9 3 1009 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp331:
	.short	.Ltmp333-.Ltmp332
.Ltmp332:
	.short	4414
	.long	4157
	.short	1
	.asciz	"_Ostr"
	.p2align	2, 0x0
.Ltmp333:
	.cv_def_range	 .Ltmp36 .Ltmp40, reg, 329
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp335-.Ltmp334
.Ltmp334:
	.short	4429
	.long	0
	.long	0
	.long	4164
	.cv_inline_linetable	10 3 189 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp335:
	.short	.Ltmp337-.Ltmp336
.Ltmp336:
	.short	4414
	.long	5075
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp337:
	.cv_def_range	 .Ltmp38 .Ltmp42, reg, 332
	.short	.Ltmp339-.Ltmp338
.Ltmp338:
	.short	4414
	.long	4161
	.short	257
	.asciz	"_Pfn"
	.p2align	2, 0x0
.Ltmp339:
	.short	.Ltmp341-.Ltmp340
.Ltmp340:
	.short	4429
	.long	0
	.long	0
	.long	4166
	.cv_inline_linetable	11 3 1009 .Lfunc_begin0 .Lfunc_end0
	.p2align	2, 0x0
.Ltmp341:
	.short	.Ltmp343-.Ltmp342
.Ltmp342:
	.short	4414
	.long	4157
	.short	1
	.asciz	"_Ostr"
	.p2align	2, 0x0
.Ltmp343:
	.cv_def_range	 .Ltmp38 .Ltmp42, reg, 332
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp243:
	.p2align	2, 0x0
	.cv_linetable	0, main, .Lfunc_end0
	.section	.debug$S,"dr",associative,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp345-.Ltmp344
.Ltmp344:
	.short	.Ltmp347-.Ltmp346
.Ltmp346:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.long	0
	.long	0
	.long	5097
	.secrel32	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.secidx	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.byte	129
	.asciz	"std::operator<<<std::char_traits<char> >"
	.p2align	2, 0x0
.Ltmp347:
	.short	.Ltmp349-.Ltmp348
.Ltmp348:
	.short	4114
	.long	80
	.long	0
	.long	0
	.long	40
	.long	0
	.short	0
	.long	1212432
	.p2align	2, 0x0
.Ltmp349:
	.short	.Ltmp351-.Ltmp350
.Ltmp350:
	.short	4456
	.long	10
	.long	4256
	.long	5036
	.long	5066
	.long	5074
	.long	5079
	.long	5080
	.long	5084
	.long	5085
	.long	5088
	.long	5089
	.p2align	2, 0x0
.Ltmp351:
	.short	.Ltmp353-.Ltmp352
.Ltmp352:
	.short	4414
	.long	4157
	.short	1
	.asciz	"_Ostr"
	.p2align	2, 0x0
.Ltmp353:
	.cv_def_range	 .Lfunc_begin1 .Ltmp102, reg, 330
	.cv_def_range	 .Ltmp102 .Ltmp113, reg, 343
	.cv_def_range	 .Ltmp113 .Ltmp171 .Ltmp176 .Ltmp177 .Ltmp181 .Ltmp185 .Ltmp186 .Ltmp187, frame_ptr_rel, -8
	.short	.Ltmp355-.Ltmp354
.Ltmp354:
	.short	4414
	.long	4202
	.short	1
	.asciz	"_Val"
	.p2align	2, 0x0
.Ltmp355:
	.cv_def_range	 .Lfunc_begin1 .Ltmp103, reg, 331
	.cv_def_range	 .Ltmp103 .Ltmp157 .Ltmp170 .Ltmp174 .Ltmp176 .Ltmp182, reg, 333
	.short	.Ltmp357-.Ltmp356
.Ltmp356:
	.short	4414
	.long	5041
	.short	0
	.asciz	"_Ok"
	.p2align	2, 0x0
.Ltmp357:
	.cv_def_range	 .Ltmp101 .Ltmp188, frame_ptr_rel, -32
	.short	.Ltmp359-.Ltmp358
.Ltmp358:
	.short	4359
	.long	116
	.byte	0x00, 0x00
	.asciz	"_State"
	.p2align	2, 0x0
.Ltmp359:
	.short	.Ltmp361-.Ltmp360
.Ltmp360:
	.short	4414
	.long	19
	.short	0
	.asciz	"_Count"
	.p2align	2, 0x0
.Ltmp361:
	.cv_def_range	 .Ltmp104 .Ltmp144 .Ltmp170 .Ltmp175, reg, 332
	.short	.Ltmp363-.Ltmp362
.Ltmp362:
	.short	4414
	.long	19
	.short	0
	.asciz	"_Pad"
	.p2align	2, 0x0
.Ltmp363:
	.cv_def_range	 .Ltmp107 .Ltmp128 .Ltmp138 .Ltmp150 .Ltmp151 .Ltmp153 .Ltmp170 .Ltmp173, reg, 329
	.cv_def_range	 .Ltmp128 .Ltmp135 .Ltmp136 .Ltmp138, reg, 342
	.cv_def_range	 .Ltmp135 .Ltmp136 .Ltmp150 .Ltmp151, reg, 328
	.short	.Ltmp365-.Ltmp364
.Ltmp364:
	.short	4429
	.long	0
	.long	0
	.long	4256
	.cv_inline_linetable	13 4 385 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp365:
	.short	.Ltmp367-.Ltmp366
.Ltmp366:
	.short	4414
	.long	4196
	.short	1
	.asciz	"_First"
	.p2align	2, 0x0
.Ltmp367:
	.cv_def_range	 .Ltmp101 .Ltmp110, reg, 333
	.short	2
	.short	4430
	.short	.Ltmp369-.Ltmp368
.Ltmp368:
	.short	4429
	.long	0
	.long	0
	.long	5036
	.cv_inline_linetable	14 5 279 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp369:
	.short	.Ltmp371-.Ltmp370
.Ltmp370:
	.short	4414
	.long	5098
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp371:
	.short	2
	.short	4430
	.short	.Ltmp373-.Ltmp372
.Ltmp372:
	.short	4429
	.long	0
	.long	0
	.long	5066
	.cv_inline_linetable	15 3 96 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp373:
	.short	.Ltmp375-.Ltmp374
.Ltmp374:
	.short	4414
	.long	5099
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp375:
	.short	.Ltmp377-.Ltmp376
.Ltmp376:
	.short	4414
	.long	4157
	.short	1
	.asciz	"_Ostr"
	.p2align	2, 0x0
.Ltmp377:
	.cv_def_range	 .Ltmp107 .Ltmp113, reg, 343
	.cv_def_range	 .Ltmp113 .Ltmp121 .Ltmp123 .Ltmp125, frame_ptr_rel, -8
	.short	.Ltmp379-.Ltmp378
.Ltmp378:
	.short	4414
	.long	4158
	.short	0
	.asciz	"_Tied"
	.p2align	2, 0x0
.Ltmp379:
	.cv_def_range	 .Ltmp116 .Ltmp119 .Ltmp124 .Ltmp125, reg, 330
	.short	.Ltmp381-.Ltmp380
.Ltmp380:
	.short	4429
	.long	0
	.long	0
	.long	5067
	.cv_inline_linetable	16 3 75 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp381:
	.short	.Ltmp383-.Ltmp382
.Ltmp382:
	.short	4414
	.long	5100
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp383:
	.short	.Ltmp385-.Ltmp384
.Ltmp384:
	.short	4414
	.long	4157
	.short	1
	.asciz	"_Ostr"
	.p2align	2, 0x0
.Ltmp385:
	.cv_def_range	 .Ltmp107 .Ltmp112, reg, 343
	.short	.Ltmp387-.Ltmp386
.Ltmp386:
	.short	4414
	.long	5081
	.short	0
	.asciz	"_Rdbuf"
	.p2align	2, 0x0
.Ltmp387:
	.cv_def_range	 .Ltmp109 .Ltmp111, reg, 328
	.short	.Ltmp389-.Ltmp388
.Ltmp388:
	.short	4429
	.long	0
	.long	0
	.long	5074
	.cv_inline_linetable	17 6 77 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp389:
	.short	.Ltmp391-.Ltmp390
.Ltmp390:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp391:
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp393-.Ltmp392
.Ltmp392:
	.short	4429
	.long	0
	.long	0
	.long	5077
	.cv_inline_linetable	18 6 67 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp393:
	.short	.Ltmp395-.Ltmp394
.Ltmp394:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp395:
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp397-.Ltmp396
.Ltmp396:
	.short	4429
	.long	0
	.long	0
	.long	5074
	.cv_inline_linetable	19 6 77 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp397:
	.short	.Ltmp399-.Ltmp398
.Ltmp398:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp399:
	.short	2
	.short	4430
	.short	.Ltmp401-.Ltmp400
.Ltmp400:
	.short	4429
	.long	0
	.long	0
	.long	5079
	.cv_inline_linetable	20 6 98 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp401:
	.short	.Ltmp403-.Ltmp402
.Ltmp402:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp403:
	.short	2
	.short	4430
	.short	.Ltmp405-.Ltmp404
.Ltmp404:
	.short	4429
	.long	0
	.long	0
	.long	5080
	.cv_inline_linetable	21 4 463 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp405:
	.short	.Ltmp407-.Ltmp406
.Ltmp406:
	.short	4414
	.long	4215
	.short	257
	.asciz	"_Left"
	.p2align	2, 0x0
.Ltmp407:
	.short	.Ltmp409-.Ltmp408
.Ltmp408:
	.short	4414
	.long	4215
	.short	257
	.asciz	"_Right"
	.p2align	2, 0x0
.Ltmp409:
	.short	2
	.short	4430
	.short	.Ltmp411-.Ltmp410
.Ltmp410:
	.short	4429
	.long	0
	.long	0
	.long	5074
	.cv_inline_linetable	22 6 77 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp411:
	.short	.Ltmp413-.Ltmp412
.Ltmp412:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp413:
	.short	2
	.short	4430
	.short	.Ltmp415-.Ltmp414
.Ltmp414:
	.short	4429
	.long	0
	.long	0
	.long	5084
	.cv_inline_linetable	23 7 169 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp415:
	.short	.Ltmp417-.Ltmp416
.Ltmp416:
	.short	4414
	.long	5070
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp417:
	.cv_def_range	 .Ltmp139 .Ltmp141, reg, 330
	.short	.Ltmp419-.Ltmp418
.Ltmp418:
	.short	4414
	.long	4202
	.short	1
	.asciz	"_Ptr"
	.p2align	2, 0x0
.Ltmp419:
	.cv_def_range	 .Ltmp139 .Ltmp141, reg, 333
	.short	.Ltmp421-.Ltmp420
.Ltmp420:
	.short	4414
	.long	19
	.short	1
	.asciz	"_Count"
	.p2align	2, 0x0
.Ltmp421:
	.cv_def_range	 .Ltmp139 .Ltmp141, reg, 332
	.short	2
	.short	4430
	.short	.Ltmp423-.Ltmp422
.Ltmp422:
	.short	4429
	.long	0
	.long	0
	.long	5074
	.cv_inline_linetable	24 6 77 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp423:
	.short	.Ltmp425-.Ltmp424
.Ltmp424:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp425:
	.short	2
	.short	4430
	.short	.Ltmp427-.Ltmp426
.Ltmp426:
	.short	4429
	.long	0
	.long	0
	.long	5079
	.cv_inline_linetable	25 6 98 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp427:
	.short	.Ltmp429-.Ltmp428
.Ltmp428:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp429:
	.short	2
	.short	4430
	.short	.Ltmp431-.Ltmp430
.Ltmp430:
	.short	4429
	.long	0
	.long	0
	.long	5080
	.cv_inline_linetable	26 4 463 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp431:
	.short	.Ltmp433-.Ltmp432
.Ltmp432:
	.short	4414
	.long	4215
	.short	257
	.asciz	"_Left"
	.p2align	2, 0x0
.Ltmp433:
	.short	.Ltmp435-.Ltmp434
.Ltmp434:
	.short	4414
	.long	4215
	.short	257
	.asciz	"_Right"
	.p2align	2, 0x0
.Ltmp435:
	.short	2
	.short	4430
	.short	.Ltmp437-.Ltmp436
.Ltmp436:
	.short	4429
	.long	0
	.long	0
	.long	5085
	.cv_inline_linetable	27 5 283 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp437:
	.short	.Ltmp439-.Ltmp438
.Ltmp438:
	.short	4414
	.long	4314
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp439:
	.short	.Ltmp441-.Ltmp440
.Ltmp440:
	.short	4414
	.long	19
	.short	257
	.asciz	"_Newwidth"
	.p2align	2, 0x0
.Ltmp441:
	.short	.Ltmp443-.Ltmp442
.Ltmp442:
	.short	4414
	.long	4123
	.short	256
	.asciz	"_Oldwidth"
	.p2align	2, 0x0
.Ltmp443:
	.short	2
	.short	4430
	.short	.Ltmp445-.Ltmp444
.Ltmp444:
	.short	4429
	.long	0
	.long	0
	.long	5088
	.cv_inline_linetable	28 6 49 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp445:
	.short	.Ltmp447-.Ltmp446
.Ltmp446:
	.short	4414
	.long	5102
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp447:
	.cv_def_range	 .Ltmp158 .Ltmp160, reg, 330
	.short	.Ltmp449-.Ltmp448
.Ltmp448:
	.short	4414
	.long	116
	.short	1
	.asciz	"_State"
	.p2align	2, 0x0
.Ltmp449:
	.cv_def_range	 .Ltmp158 .Ltmp160, frame_ptr_rel, -12
	.short	.Ltmp451-.Ltmp450
.Ltmp450:
	.short	4414
	.long	48
	.short	257
	.asciz	"_Reraise"
	.p2align	2, 0x0
.Ltmp451:
	.short	2
	.short	4430
	.short	.Ltmp453-.Ltmp452
.Ltmp452:
	.short	4429
	.long	0
	.long	0
	.long	5089
	.cv_inline_linetable	29 3 113 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp453:
	.short	.Ltmp455-.Ltmp454
.Ltmp454:
	.short	4414
	.long	5099
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp455:
	.short	.Ltmp457-.Ltmp456
.Ltmp456:
	.short	4414
	.long	4097
	.short	256
	.asciz	"_Zero_uncaught_exceptions"
	.p2align	2, 0x0
.Ltmp457:
	.short	.Ltmp459-.Ltmp458
.Ltmp458:
	.short	4429
	.long	0
	.long	0
	.long	5090
	.cv_inline_linetable	30 3 82 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp459:
	.short	.Ltmp461-.Ltmp460
.Ltmp460:
	.short	4414
	.long	5100
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp461:
	.short	.Ltmp463-.Ltmp462
.Ltmp462:
	.short	4414
	.long	5081
	.short	0
	.asciz	"_Rdbuf"
	.p2align	2, 0x0
.Ltmp463:
	.cv_def_range	 .Ltmp166 .Ltmp169, reg, 330
	.short	.Ltmp465-.Ltmp464
.Ltmp464:
	.short	4429
	.long	0
	.long	0
	.long	5074
	.cv_inline_linetable	31 6 77 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp465:
	.short	.Ltmp467-.Ltmp466
.Ltmp466:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp467:
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp469-.Ltmp468
.Ltmp468:
	.short	4429
	.long	0
	.long	0
	.long	5088
	.cv_inline_linetable	32 6 49 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp469:
	.short	.Ltmp471-.Ltmp470
.Ltmp470:
	.short	4414
	.long	5102
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp471:
	.cv_def_range	 .Ltmp179 .Ltmp181, reg, 330
	.short	.Ltmp473-.Ltmp472
.Ltmp472:
	.short	4414
	.long	116
	.short	257
	.asciz	"_State"
	.p2align	2, 0x0
.Ltmp473:
	.short	.Ltmp475-.Ltmp474
.Ltmp474:
	.short	4414
	.long	48
	.short	257
	.asciz	"_Reraise"
	.p2align	2, 0x0
.Ltmp475:
	.short	.Ltmp477-.Ltmp476
.Ltmp476:
	.short	4429
	.long	0
	.long	0
	.long	5091
	.cv_inline_linetable	33 5 188 .Lfunc_begin1 .Lfunc_end1
	.p2align	2, 0x0
.Ltmp477:
	.short	.Ltmp479-.Ltmp478
.Ltmp478:
	.short	4414
	.long	5098
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp479:
	.cv_def_range	 .Ltmp179 .Ltmp181, reg, 330
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp345:
	.p2align	2, 0x0
	.cv_linetable	12, "??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z", .Lfunc_end1
	.section	.debug$S,"dr",associative,"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp481-.Ltmp480
.Ltmp480:
	.short	.Ltmp483-.Ltmp482
.Ltmp482:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.long	0
	.long	0
	.long	5089
	.secrel32	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.secidx	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.byte	129
	.asciz	"basic_ostream<char,std::char_traits<char> >::sentry::~sentry"
	.p2align	2, 0x0
.Ltmp483:
	.short	.Ltmp485-.Ltmp484
.Ltmp484:
	.short	4114
	.long	48
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1212432
	.p2align	2, 0x0
.Ltmp485:
	.short	.Ltmp487-.Ltmp486
.Ltmp486:
	.short	4456
	.long	1
	.long	5090
	.p2align	2, 0x0
.Ltmp487:
	.short	.Ltmp489-.Ltmp488
.Ltmp488:
	.short	4414
	.long	5099
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp489:
	.cv_def_range	 .Lfunc_begin2 .Ltmp192, reg, 330
	.cv_def_range	 .Ltmp192 .Ltmp199 .Ltmp200 .Lfunc_end2, reg, 332
	.short	.Ltmp491-.Ltmp490
.Ltmp490:
	.short	4414
	.long	4097
	.short	256
	.asciz	"_Zero_uncaught_exceptions"
	.p2align	2, 0x0
.Ltmp491:
	.short	.Ltmp493-.Ltmp492
.Ltmp492:
	.short	4429
	.long	0
	.long	0
	.long	5090
	.cv_inline_linetable	35 3 82 .Lfunc_begin2 .Lfunc_end2
	.p2align	2, 0x0
.Ltmp493:
	.short	.Ltmp495-.Ltmp494
.Ltmp494:
	.short	4414
	.long	5100
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp495:
	.cv_def_range	 .Ltmp194 .Ltmp198 .Ltmp200 .Lfunc_end2, reg, 332
	.short	.Ltmp497-.Ltmp496
.Ltmp496:
	.short	4414
	.long	5081
	.short	0
	.asciz	"_Rdbuf"
	.p2align	2, 0x0
.Ltmp497:
	.cv_def_range	 .Ltmp196 .Ltmp198, reg, 330
	.short	.Ltmp499-.Ltmp498
.Ltmp498:
	.short	4429
	.long	0
	.long	0
	.long	5074
	.cv_inline_linetable	36 6 77 .Lfunc_begin2 .Lfunc_end2
	.p2align	2, 0x0
.Ltmp499:
	.short	.Ltmp501-.Ltmp500
.Ltmp500:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp501:
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp481:
	.p2align	2, 0x0
	.cv_linetable	34, "??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ", .Lfunc_end2
	.section	.debug$S,"dr",associative,"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp503-.Ltmp502
.Ltmp502:
	.short	.Ltmp505-.Ltmp504
.Ltmp504:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.long	0
	.long	0
	.long	5090
	.secrel32	"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.secidx	"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.byte	129
	.asciz	"basic_ostream<char,std::char_traits<char> >::_Sentry_base::~_Sentry_base"
	.p2align	2, 0x0
.Ltmp505:
	.short	.Ltmp507-.Ltmp506
.Ltmp506:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1212432
	.p2align	2, 0x0
.Ltmp507:
	.short	.Ltmp509-.Ltmp508
.Ltmp508:
	.short	4456
	.long	1
	.long	5074
	.p2align	2, 0x0
.Ltmp509:
	.short	.Ltmp511-.Ltmp510
.Ltmp510:
	.short	4414
	.long	5100
	.short	1
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp511:
	.cv_def_range	 .Lfunc_begin3 .Ltmp206, reg, 330
	.short	.Ltmp513-.Ltmp512
.Ltmp512:
	.short	4414
	.long	5081
	.short	0
	.asciz	"_Rdbuf"
	.p2align	2, 0x0
.Ltmp513:
	.cv_def_range	 .Ltmp208 .Ltmp210, reg, 330
	.short	.Ltmp515-.Ltmp514
.Ltmp514:
	.short	4429
	.long	0
	.long	0
	.long	5074
	.cv_inline_linetable	38 6 77 .Lfunc_begin3 .Lfunc_end3
	.p2align	2, 0x0
.Ltmp515:
	.short	.Ltmp517-.Ltmp516
.Ltmp516:
	.short	4414
	.long	5101
	.short	257
	.asciz	"this"
	.p2align	2, 0x0
.Ltmp517:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp503:
	.p2align	2, 0x0
	.cv_linetable	37, "??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ", .Lfunc_end3
	.section	.debug$S,"dr",associative,main.extracted
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp519-.Ltmp518
.Ltmp518:
	.short	.Ltmp521-.Ltmp520
.Ltmp520:
	.short	4422
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-main.extracted
	.long	0
	.long	0
	.long	5104
	.secrel32	main.extracted
	.secidx	main.extracted
	.byte	128
	.asciz	"main.extracted"
	.p2align	2, 0x0
.Ltmp521:
	.short	.Ltmp523-.Ltmp522
.Ltmp522:
	.short	4114
	.long	208
	.long	0
	.long	0
	.long	24
	.long	0
	.short	0
	.long	1134848
	.p2align	2, 0x0
.Ltmp523:
	.short	.Ltmp525-.Ltmp524
.Ltmp524:
	.short	4414
	.long	5094
	.short	256
	.asciz	"x1"
	.p2align	2, 0x0
.Ltmp525:
	.short	.Ltmp527-.Ltmp526
.Ltmp526:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x4"
	.p2align	2, 0x0
.Ltmp527:
	.cv_def_range	 .Ltmp214 .Ltmp232, reg_rel, 329, 0, 0
	.short	.Ltmp529-.Ltmp528
.Ltmp528:
	.short	4414
	.long	18
	.short	0
	.asciz	".omp.ub"
	.p2align	2, 0x0
.Ltmp529:
	.cv_def_range	 .Ltmp214 .Ltmp219, reg, 17
	.short	.Ltmp531-.Ltmp530
.Ltmp530:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x5"
	.p2align	2, 0x0
.Ltmp531:
	.cv_def_range	 .Ltmp215 .Ltmp221, reg_rel, 331, 0, 0
	.short	.Ltmp533-.Ltmp532
.Ltmp532:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x3"
	.p2align	2, 0x0
.Ltmp533:
	.cv_def_range	 .Ltmp216 .Ltmp222, reg_rel, 336, 0, 0
	.short	.Ltmp535-.Ltmp534
.Ltmp534:
	.short	4414
	.long	5094
	.short	0
	.asciz	"x2"
	.p2align	2, 0x0
.Ltmp535:
	.cv_def_range	 .Ltmp216 .Ltmp220, reg_rel, 337, 0, 0
	.short	.Ltmp537-.Ltmp536
.Ltmp536:
	.short	4359
	.long	18
	.byte	0x00, 0x00
	.asciz	".omp.iv"
	.p2align	2, 0x0
.Ltmp537:
	.short	.Ltmp539-.Ltmp538
.Ltmp538:
	.short	4355
	.long	0
	.long	0
	.long	.Ltmp231-.Ltmp218
	.secrel32	.Ltmp218
	.secidx	.Lfunc_begin4
	.byte	0
	.p2align	2, 0x0
.Ltmp539:
	.short	.Ltmp541-.Ltmp540
.Ltmp540:
	.short	4414
	.long	18
	.short	256
	.asciz	".omp.ub"
	.p2align	2, 0x0
.Ltmp541:
	.short	2
	.short	6
	.short	2
	.short	4431
.Ltmp519:
	.p2align	2, 0x0
	.cv_linetable	39, main.extracted, .Lfunc_end4
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp543-.Ltmp542
.Ltmp542:
	.short	.Ltmp545-.Ltmp544
.Ltmp544:
	.short	4365
	.long	18
	.secrel32	"?ITERATIONS@@3JA"
	.secidx	"?ITERATIONS@@3JA"
	.asciz	"ITERATIONS"
	.p2align	2, 0x0
.Ltmp545:
	.short	.Ltmp547-.Ltmp546
.Ltmp546:
	.short	4359
	.long	4097
	.byte	0x01, 0x00
	.asciz	"std::chrono::steady_clock::is_steady"
	.p2align	2, 0x0
.Ltmp547:
	.short	.Ltmp549-.Ltmp548
.Ltmp548:
	.short	4359
	.long	4123
	.byte	0x01, 0x00
	.asciz	"std::ratio<1,1000000000>::num"
	.p2align	2, 0x0
.Ltmp549:
	.short	.Ltmp551-.Ltmp550
.Ltmp550:
	.short	4359
	.long	4123
	.byte	0x03, 0x80, 0x00, 0xca
	.byte	0x9a, 0x3b
	.asciz	"std::ratio<1,1000000000>::den"
	.p2align	2, 0x0
.Ltmp551:
	.short	.Ltmp553-.Ltmp552
.Ltmp552:
	.short	4359
	.long	4123
	.byte	0x01, 0x00
	.asciz	"std::ratio<1,1000>::num"
	.p2align	2, 0x0
.Ltmp553:
	.short	.Ltmp555-.Ltmp554
.Ltmp554:
	.short	4359
	.long	4123
	.byte	0xe8, 0x03
	.asciz	"std::ratio<1,1000>::den"
	.p2align	2, 0x0
.Ltmp555:
	.short	.Ltmp557-.Ltmp556
.Ltmp556:
	.short	4359
	.long	4215
	.byte	0x01, 0x00
	.asciz	"std::_Iosb<int>::skipws"
	.p2align	2, 0x0
.Ltmp557:
	.short	.Ltmp559-.Ltmp558
.Ltmp558:
	.short	4359
	.long	4215
	.byte	0x02, 0x00
	.asciz	"std::_Iosb<int>::unitbuf"
	.p2align	2, 0x0
.Ltmp559:
	.short	.Ltmp561-.Ltmp560
.Ltmp560:
	.short	4359
	.long	4215
	.byte	0x04, 0x00
	.asciz	"std::_Iosb<int>::uppercase"
	.p2align	2, 0x0
.Ltmp561:
	.short	.Ltmp563-.Ltmp562
.Ltmp562:
	.short	4359
	.long	4215
	.byte	0x08, 0x00
	.asciz	"std::_Iosb<int>::showbase"
	.p2align	2, 0x0
.Ltmp563:
	.short	.Ltmp565-.Ltmp564
.Ltmp564:
	.short	4359
	.long	4215
	.byte	0x10, 0x00
	.asciz	"std::_Iosb<int>::showpoint"
	.p2align	2, 0x0
.Ltmp565:
	.short	.Ltmp567-.Ltmp566
.Ltmp566:
	.short	4359
	.long	4215
	.byte	0x20, 0x00
	.asciz	"std::_Iosb<int>::showpos"
	.p2align	2, 0x0
.Ltmp567:
	.short	.Ltmp569-.Ltmp568
.Ltmp568:
	.short	4359
	.long	4215
	.byte	0x40, 0x00
	.asciz	"std::_Iosb<int>::left"
	.p2align	2, 0x0
.Ltmp569:
	.short	.Ltmp571-.Ltmp570
.Ltmp570:
	.short	4359
	.long	4215
	.byte	0x80, 0x00
	.asciz	"std::_Iosb<int>::right"
	.p2align	2, 0x0
.Ltmp571:
	.short	.Ltmp573-.Ltmp572
.Ltmp572:
	.short	4359
	.long	4215
	.byte	0x00, 0x01
	.asciz	"std::_Iosb<int>::internal"
	.p2align	2, 0x0
.Ltmp573:
	.short	.Ltmp575-.Ltmp574
.Ltmp574:
	.short	4359
	.long	4215
	.byte	0x00, 0x02
	.asciz	"std::_Iosb<int>::dec"
	.p2align	2, 0x0
.Ltmp575:
	.short	.Ltmp577-.Ltmp576
.Ltmp576:
	.short	4359
	.long	4215
	.byte	0x00, 0x04
	.asciz	"std::_Iosb<int>::oct"
	.p2align	2, 0x0
.Ltmp577:
	.short	.Ltmp579-.Ltmp578
.Ltmp578:
	.short	4359
	.long	4215
	.byte	0x00, 0x08
	.asciz	"std::_Iosb<int>::hex"
	.p2align	2, 0x0
.Ltmp579:
	.short	.Ltmp581-.Ltmp580
.Ltmp580:
	.short	4359
	.long	4215
	.byte	0x00, 0x10
	.asciz	"std::_Iosb<int>::scientific"
	.p2align	2, 0x0
.Ltmp581:
	.short	.Ltmp583-.Ltmp582
.Ltmp582:
	.short	4359
	.long	4215
	.byte	0x00, 0x20
	.asciz	"std::_Iosb<int>::fixed"
	.p2align	2, 0x0
.Ltmp583:
	.short	.Ltmp585-.Ltmp584
.Ltmp584:
	.short	4359
	.long	4215
	.byte	0x00, 0x30
	.asciz	"std::_Iosb<int>::hexfloat"
	.p2align	2, 0x0
.Ltmp585:
	.short	.Ltmp587-.Ltmp586
.Ltmp586:
	.short	4359
	.long	4215
	.byte	0x00, 0x40
	.asciz	"std::_Iosb<int>::boolalpha"
	.p2align	2, 0x0
.Ltmp587:
	.short	.Ltmp589-.Ltmp588
.Ltmp588:
	.short	4359
	.long	4215
	.byte	0xc0, 0x01
	.asciz	"std::_Iosb<int>::adjustfield"
	.p2align	2, 0x0
.Ltmp589:
	.short	.Ltmp591-.Ltmp590
.Ltmp590:
	.short	4359
	.long	4215
	.byte	0x00, 0x0e
	.asciz	"std::_Iosb<int>::basefield"
	.p2align	2, 0x0
.Ltmp591:
	.short	.Ltmp593-.Ltmp592
.Ltmp592:
	.short	4359
	.long	4215
	.byte	0x00, 0x30
	.asciz	"std::_Iosb<int>::floatfield"
	.p2align	2, 0x0
.Ltmp593:
	.short	.Ltmp595-.Ltmp594
.Ltmp594:
	.short	4359
	.long	4215
	.byte	0x00, 0x00
	.asciz	"std::_Iosb<int>::goodbit"
	.p2align	2, 0x0
.Ltmp595:
	.short	.Ltmp597-.Ltmp596
.Ltmp596:
	.short	4359
	.long	4215
	.byte	0x01, 0x00
	.asciz	"std::_Iosb<int>::eofbit"
	.p2align	2, 0x0
.Ltmp597:
	.short	.Ltmp599-.Ltmp598
.Ltmp598:
	.short	4359
	.long	4215
	.byte	0x02, 0x00
	.asciz	"std::_Iosb<int>::failbit"
	.p2align	2, 0x0
.Ltmp599:
	.short	.Ltmp601-.Ltmp600
.Ltmp600:
	.short	4359
	.long	4215
	.byte	0x04, 0x00
	.asciz	"std::_Iosb<int>::badbit"
	.p2align	2, 0x0
.Ltmp601:
	.short	.Ltmp603-.Ltmp602
.Ltmp602:
	.short	4359
	.long	4215
	.byte	0x01, 0x00
	.asciz	"std::_Iosb<int>::in"
	.p2align	2, 0x0
.Ltmp603:
	.short	.Ltmp605-.Ltmp604
.Ltmp604:
	.short	4359
	.long	4215
	.byte	0x02, 0x00
	.asciz	"std::_Iosb<int>::out"
	.p2align	2, 0x0
.Ltmp605:
	.short	.Ltmp607-.Ltmp606
.Ltmp606:
	.short	4359
	.long	4215
	.byte	0x01, 0x00
	.asciz	"locale::collate"
	.p2align	2, 0x0
.Ltmp607:
	.short	.Ltmp609-.Ltmp608
.Ltmp608:
	.short	4359
	.long	4215
	.byte	0x02, 0x00
	.asciz	"locale::ctype"
	.p2align	2, 0x0
.Ltmp609:
	.short	.Ltmp611-.Ltmp610
.Ltmp610:
	.short	4359
	.long	4215
	.byte	0x04, 0x00
	.asciz	"locale::monetary"
	.p2align	2, 0x0
.Ltmp611:
	.short	.Ltmp613-.Ltmp612
.Ltmp612:
	.short	4359
	.long	4215
	.byte	0x08, 0x00
	.asciz	"locale::numeric"
	.p2align	2, 0x0
.Ltmp613:
	.short	.Ltmp615-.Ltmp614
.Ltmp614:
	.short	4359
	.long	4215
	.byte	0x10, 0x00
	.asciz	"locale::time"
	.p2align	2, 0x0
.Ltmp615:
	.short	.Ltmp617-.Ltmp616
.Ltmp616:
	.short	4359
	.long	4215
	.byte	0x20, 0x00
	.asciz	"locale::messages"
	.p2align	2, 0x0
.Ltmp617:
	.short	.Ltmp619-.Ltmp618
.Ltmp618:
	.short	4359
	.long	4215
	.byte	0x3f, 0x00
	.asciz	"locale::all"
	.p2align	2, 0x0
.Ltmp619:
	.short	.Ltmp621-.Ltmp620
.Ltmp620:
	.short	4359
	.long	4215
	.byte	0x00, 0x00
	.asciz	"locale::none"
	.p2align	2, 0x0
.Ltmp621:
	.short	.Ltmp623-.Ltmp622
.Ltmp622:
	.short	4359
	.long	4197
	.byte	0x10, 0x00
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_BUF_SIZE"
	.p2align	2, 0x0
.Ltmp623:
	.short	.Ltmp625-.Ltmp624
.Ltmp624:
	.short	4359
	.long	4197
	.byte	0x0f, 0x00
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Alloc_mask"
	.p2align	2, 0x0
.Ltmp625:
	.short	.Ltmp627-.Ltmp626
.Ltmp626:
	.short	4359
	.long	4197
	.byte	0x0f, 0x00
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Small_string_capacity"
	.p2align	2, 0x0
.Ltmp627:
	.short	.Ltmp629-.Ltmp628
.Ltmp628:
	.short	4359
	.long	4097
	.byte	0x01, 0x00
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Can_memcpy_val"
	.p2align	2, 0x0
.Ltmp629:
	.short	.Ltmp631-.Ltmp630
.Ltmp630:
	.short	4359
	.long	4197
	.byte	0x08, 0x00
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Memcpy_val_offset"
	.p2align	2, 0x0
.Ltmp631:
	.short	.Ltmp633-.Ltmp632
.Ltmp632:
	.short	4359
	.long	4197
	.byte	0x20, 0x00
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Memcpy_val_size"
	.p2align	2, 0x0
.Ltmp633:
	.short	.Ltmp635-.Ltmp634
.Ltmp634:
	.short	4359
	.long	4197
	.byte	0x0a, 0x80, 0xff, 0xff
	.byte	0xff, 0xff, 0xff, 0xff
	.byte	0xff, 0xff
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::npos"
	.p2align	2, 0x0
.Ltmp635:
	.short	.Ltmp637-.Ltmp636
.Ltmp636:
	.short	4359
	.long	4197
	.byte	0x0a, 0x80, 0xff, 0xff
	.byte	0xff, 0xff, 0xff, 0xff
	.byte	0xff, 0xff
	.asciz	"std::basic_string_view<char,std::char_traits<char> >::npos"
	.p2align	2, 0x0
.Ltmp637:
	.short	.Ltmp639-.Ltmp638
.Ltmp638:
	.short	4359
	.long	4197
	.byte	0x10, 0x00
	.asciz	"std::_String_val<std::_Simple_types<char> >::_BUF_SIZE"
	.p2align	2, 0x0
.Ltmp639:
	.short	.Ltmp641-.Ltmp640
.Ltmp640:
	.short	4359
	.long	4197
	.byte	0x0f, 0x00
	.asciz	"std::_String_val<std::_Simple_types<char> >::_Alloc_mask"
	.p2align	2, 0x0
.Ltmp641:
	.short	.Ltmp643-.Ltmp642
.Ltmp642:
	.short	4359
	.long	4197
	.byte	0x0f, 0x00
	.asciz	"std::_String_val<std::_Simple_types<char> >::_Small_string_capacity"
	.p2align	2, 0x0
.Ltmp643:
	.short	.Ltmp645-.Ltmp644
.Ltmp644:
	.short	4359
	.long	4097
	.byte	0x01, 0x00
	.asciz	"std::integral_constant<bool,1>::value"
	.p2align	2, 0x0
.Ltmp645:
	.short	.Ltmp647-.Ltmp646
.Ltmp646:
	.short	4359
	.long	4097
	.byte	0x00, 0x00
	.asciz	"std::integral_constant<bool,0>::value"
	.p2align	2, 0x0
.Ltmp647:
	.short	.Ltmp649-.Ltmp648
.Ltmp648:
	.short	4359
	.long	4097
	.byte	0x00, 0x00
	.asciz	"std::_Iterator_base12::_Unwrap_when_unverified"
	.p2align	2, 0x0
.Ltmp649:
	.short	.Ltmp651-.Ltmp650
.Ltmp650:
	.short	4359
	.long	4123
	.byte	0x01, 0x00
	.asciz	"std::ratio<1,1000000>::num"
	.p2align	2, 0x0
.Ltmp651:
	.short	.Ltmp653-.Ltmp652
.Ltmp652:
	.short	4359
	.long	4123
	.byte	0x03, 0x80, 0x40, 0x42
	.byte	0x0f, 0x00
	.asciz	"std::ratio<1,1000000>::den"
	.p2align	2, 0x0
.Ltmp653:
.Ltmp543:
	.p2align	2, 0x0
	.long	241
	.long	.Ltmp655-.Ltmp654
.Ltmp654:
	.short	.Ltmp657-.Ltmp656
.Ltmp656:
	.short	4360
	.long	4125
	.asciz	"std::nano"
	.p2align	2, 0x0
.Ltmp657:
	.short	.Ltmp659-.Ltmp658
.Ltmp658:
	.short	4360
	.long	4145
	.asciz	"std::chrono::nanoseconds"
	.p2align	2, 0x0
.Ltmp659:
	.short	.Ltmp661-.Ltmp660
.Ltmp660:
	.short	4360
	.long	4104
	.asciz	"std::chrono::steady_clock"
	.p2align	2, 0x0
.Ltmp661:
	.short	.Ltmp663-.Ltmp662
.Ltmp662:
	.short	4360
	.long	4121
	.asciz	"std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1,1000000000> > >"
	.p2align	2, 0x0
.Ltmp663:
	.short	.Ltmp665-.Ltmp664
.Ltmp664:
	.short	4360
	.long	19
	.asciz	"intmax_t"
	.p2align	2, 0x0
.Ltmp665:
	.short	.Ltmp667-.Ltmp666
.Ltmp666:
	.short	4360
	.long	4125
	.asciz	"std::ratio<1,1000000000>"
	.p2align	2, 0x0
.Ltmp667:
	.short	.Ltmp669-.Ltmp668
.Ltmp668:
	.short	4360
	.long	4145
	.asciz	"std::common_type_t<duration<long long,ratio<1,1000000000> > >"
	.p2align	2, 0x0
.Ltmp669:
	.short	.Ltmp671-.Ltmp670
.Ltmp670:
	.short	4360
	.long	4145
	.asciz	"std::chrono::duration<long long,std::ratio<1,1000000000> >"
	.p2align	2, 0x0
.Ltmp671:
	.short	.Ltmp673-.Ltmp672
.Ltmp672:
	.short	4360
	.long	4145
	.asciz	"std::common_type_t<std::chrono::duration<long long,std::ratio<1,1000000000> >,std::chrono::duration<long long,std::ratio<1,1000000000> > >"
	.p2align	2, 0x0
.Ltmp673:
	.short	.Ltmp675-.Ltmp674
.Ltmp674:
	.short	4360
	.long	4145
	.asciz	"std::common_type_t<duration<long long,ratio<1,1000000000> >,duration<long long,ratio<1,1000000000> > >"
	.p2align	2, 0x0
.Ltmp675:
	.short	.Ltmp677-.Ltmp676
.Ltmp676:
	.short	4360
	.long	4187
	.asciz	"std::common_type_t<duration<long long,ratio<1,1000> > >"
	.p2align	2, 0x0
.Ltmp677:
	.short	.Ltmp679-.Ltmp678
.Ltmp678:
	.short	4360
	.long	4187
	.asciz	"std::chrono::duration<long long,std::ratio<1,1000> >"
	.p2align	2, 0x0
.Ltmp679:
	.short	.Ltmp681-.Ltmp680
.Ltmp680:
	.short	4360
	.long	4190
	.asciz	"std::ratio<1,1000>"
	.p2align	2, 0x0
.Ltmp681:
	.short	.Ltmp683-.Ltmp682
.Ltmp682:
	.short	4360
	.long	35
	.asciz	"size_t"
	.p2align	2, 0x0
.Ltmp683:
	.short	.Ltmp685-.Ltmp684
.Ltmp684:
	.short	4360
	.long	19
	.asciz	"std::streamoff"
	.p2align	2, 0x0
.Ltmp685:
	.short	.Ltmp687-.Ltmp686
.Ltmp686:
	.short	4360
	.long	4253
	.asciz	"_Mbstatet"
	.p2align	2, 0x0
.Ltmp687:
	.short	.Ltmp689-.Ltmp688
.Ltmp688:
	.short	4360
	.long	4253
	.asciz	"mbstate_t"
	.p2align	2, 0x0
.Ltmp689:
	.short	.Ltmp691-.Ltmp690
.Ltmp690:
	.short	4360
	.long	4227
	.asciz	"std::_Narrow_char_traits<char,int>"
	.p2align	2, 0x0
.Ltmp691:
	.short	.Ltmp693-.Ltmp692
.Ltmp692:
	.short	4360
	.long	4250
	.asciz	"std::_Char_traits<char,int>"
	.p2align	2, 0x0
.Ltmp693:
	.short	.Ltmp695-.Ltmp694
.Ltmp694:
	.short	4360
	.long	4253
	.asciz	"_Mbstatet"
	.p2align	2, 0x0
.Ltmp695:
	.short	.Ltmp697-.Ltmp696
.Ltmp696:
	.short	4360
	.long	19
	.asciz	"std::streamsize"
	.p2align	2, 0x0
.Ltmp697:
	.short	.Ltmp699-.Ltmp698
.Ltmp698:
	.short	4360
	.long	4327
	.asciz	"ios_base"
	.p2align	2, 0x0
.Ltmp699:
	.short	.Ltmp701-.Ltmp700
.Ltmp700:
	.short	4360
	.long	4348
	.asciz	"std::_Iosb<int>"
	.p2align	2, 0x0
.Ltmp701:
	.short	.Ltmp703-.Ltmp702
.Ltmp702:
	.short	4360
	.long	4355
	.asciz	"ios_base::_Iosarray"
	.p2align	2, 0x0
.Ltmp703:
	.short	.Ltmp705-.Ltmp704
.Ltmp704:
	.short	4360
	.long	4361
	.asciz	"ios_base::_Fnarray"
	.p2align	2, 0x0
.Ltmp705:
	.short	.Ltmp707-.Ltmp706
.Ltmp706:
	.short	4360
	.long	4667
	.asciz	"std::string"
	.p2align	2, 0x0
.Ltmp707:
	.short	.Ltmp709-.Ltmp708
.Ltmp708:
	.short	4360
	.long	4418
	.asciz	"locale"
	.p2align	2, 0x0
.Ltmp709:
	.short	.Ltmp711-.Ltmp710
.Ltmp710:
	.short	4360
	.long	4437
	.asciz	"_Crt_new_delete"
	.p2align	2, 0x0
.Ltmp711:
	.short	.Ltmp713-.Ltmp712
.Ltmp712:
	.short	4360
	.long	4440
	.asciz	"std::_Locbase<int>"
	.p2align	2, 0x0
.Ltmp713:
	.short	.Ltmp715-.Ltmp714
.Ltmp714:
	.short	4360
	.long	4471
	.asciz	"locale::_Locimp"
	.p2align	2, 0x0
.Ltmp715:
	.short	.Ltmp717-.Ltmp716
.Ltmp716:
	.short	4360
	.long	4798
	.asciz	"std::_Rebind_alloc_t<std::allocator<char>,char>"
	.p2align	2, 0x0
.Ltmp717:
	.short	.Ltmp719-.Ltmp718
.Ltmp718:
	.short	4360
	.long	19
	.asciz	"ptrdiff_t"
	.p2align	2, 0x0
.Ltmp719:
	.short	.Ltmp721-.Ltmp720
.Ltmp720:
	.short	4360
	.long	32
	.asciz	"uint8_t"
	.p2align	2, 0x0
.Ltmp721:
	.short	.Ltmp723-.Ltmp722
.Ltmp722:
	.short	4360
	.long	4667
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >"
	.p2align	2, 0x0
.Ltmp723:
	.short	.Ltmp725-.Ltmp724
.Ltmp724:
	.short	4360
	.long	34
	.asciz	"std::_Atomic_counter_t"
	.p2align	2, 0x0
.Ltmp725:
	.short	.Ltmp727-.Ltmp726
.Ltmp726:
	.short	4360
	.long	4685
	.asciz	"locale::facet"
	.p2align	2, 0x0
.Ltmp727:
	.short	.Ltmp729-.Ltmp728
.Ltmp728:
	.short	4360
	.long	4727
	.asciz	"_Locinfo"
	.p2align	2, 0x0
.Ltmp729:
	.short	.Ltmp731-.Ltmp730
.Ltmp730:
	.short	4360
	.long	4741
	.asciz	"locale::id"
	.p2align	2, 0x0
.Ltmp731:
	.short	.Ltmp733-.Ltmp732
.Ltmp732:
	.short	4360
	.long	4746
	.asciz	"locale::_Facet_guard"
	.p2align	2, 0x0
.Ltmp733:
	.short	.Ltmp735-.Ltmp734
.Ltmp734:
	.short	4360
	.long	4764
	.asciz	"_Yarn<char>"
	.p2align	2, 0x0
.Ltmp735:
	.short	.Ltmp737-.Ltmp736
.Ltmp736:
	.short	4360
	.long	4773
	.asciz	"std::_Compressed_pair<std::allocator<char>,std::_String_val<std::_Simple_types<char> >,1>"
	.p2align	2, 0x0
.Ltmp737:
	.short	.Ltmp739-.Ltmp738
.Ltmp738:
	.short	4360
	.long	4961
	.asciz	"std::bool_constant<true>"
	.p2align	2, 0x0
.Ltmp739:
	.short	.Ltmp741-.Ltmp740
.Ltmp740:
	.short	4360
	.long	4961
	.asciz	"std::true_type"
	.p2align	2, 0x0
.Ltmp741:
	.short	.Ltmp743-.Ltmp742
.Ltmp742:
	.short	4360
	.long	4798
	.asciz	"std::allocator<char>"
	.p2align	2, 0x0
.Ltmp743:
	.short	.Ltmp745-.Ltmp744
.Ltmp744:
	.short	4360
	.long	35
	.asciz	"size_type"
	.p2align	2, 0x0
.Ltmp745:
	.short	.Ltmp747-.Ltmp746
.Ltmp746:
	.short	4360
	.long	4849
	.asciz	"std::basic_string_view<char,std::char_traits<char> >"
	.p2align	2, 0x0
.Ltmp747:
	.short	.Ltmp749-.Ltmp748
.Ltmp748:
	.short	4360
	.long	4979
	.asciz	"std::_Container_base"
	.p2align	2, 0x0
.Ltmp749:
	.short	.Ltmp751-.Ltmp750
.Ltmp750:
	.short	4360
	.long	4865
	.asciz	"std::_String_val<std::_Simple_types<char> >"
	.p2align	2, 0x0
.Ltmp751:
	.short	.Ltmp753-.Ltmp752
.Ltmp752:
	.short	4360
	.long	4998
	.asciz	"std::conditional_t<_Is_default_allocator<allocator<char> >::value,_Default_allocator_traits<allocator<char> >,_Normal_allocator_traits<allocator<char> > >"
	.p2align	2, 0x0
.Ltmp753:
	.short	.Ltmp755-.Ltmp754
.Ltmp754:
	.short	4360
	.long	4869
	.asciz	"std::allocator_traits<std::allocator<char> >"
	.p2align	2, 0x0
.Ltmp755:
	.short	.Ltmp757-.Ltmp756
.Ltmp756:
	.short	4360
	.long	4872
	.asciz	"std::char_traits<char>"
	.p2align	2, 0x0
.Ltmp757:
	.short	.Ltmp759-.Ltmp758
.Ltmp758:
	.short	4360
	.long	4879
	.asciz	"_Facet_base"
	.p2align	2, 0x0
.Ltmp759:
	.short	.Ltmp761-.Ltmp760
.Ltmp760:
	.short	4360
	.long	4902
	.asciz	"_Lockit"
	.p2align	2, 0x0
.Ltmp761:
	.short	.Ltmp763-.Ltmp762
.Ltmp762:
	.short	4360
	.long	4923
	.asciz	"_Yarn<wchar_t>"
	.p2align	2, 0x0
.Ltmp763:
	.short	.Ltmp765-.Ltmp764
.Ltmp764:
	.short	4360
	.long	4926
	.asciz	"_Collvec"
	.p2align	2, 0x0
.Ltmp765:
	.short	.Ltmp767-.Ltmp766
.Ltmp766:
	.short	4360
	.long	4932
	.asciz	"_Ctypevec"
	.p2align	2, 0x0
.Ltmp767:
	.short	.Ltmp769-.Ltmp768
.Ltmp768:
	.short	4360
	.long	4936
	.asciz	"_Cvtvec"
	.p2align	2, 0x0
.Ltmp769:
	.short	.Ltmp771-.Ltmp770
.Ltmp770:
	.short	4360
	.long	4939
	.asciz	"lconv"
	.p2align	2, 0x0
.Ltmp771:
	.short	.Ltmp773-.Ltmp772
.Ltmp772:
	.short	4360
	.long	4955
	.asciz	"_Timevec"
	.p2align	2, 0x0
.Ltmp773:
	.short	.Ltmp775-.Ltmp774
.Ltmp774:
	.short	4360
	.long	4961
	.asciz	"std::integral_constant<bool,1>"
	.p2align	2, 0x0
.Ltmp775:
	.short	.Ltmp777-.Ltmp776
.Ltmp776:
	.short	4360
	.long	4979
	.asciz	"std::_Container_base12"
	.p2align	2, 0x0
.Ltmp777:
	.short	.Ltmp779-.Ltmp778
.Ltmp778:
	.short	4360
	.long	4986
	.asciz	"std::_String_val<std::_Simple_types<char> >::_Bxty"
	.p2align	2, 0x0
.Ltmp779:
	.short	.Ltmp781-.Ltmp780
.Ltmp780:
	.short	4360
	.long	35
	.asciz	"size_type"
	.p2align	2, 0x0
.Ltmp781:
	.short	.Ltmp783-.Ltmp782
.Ltmp782:
	.short	4360
	.long	5016
	.asciz	"std::bool_constant<false>"
	.p2align	2, 0x0
.Ltmp783:
	.short	.Ltmp785-.Ltmp784
.Ltmp784:
	.short	4360
	.long	5016
	.asciz	"std::false_type"
	.p2align	2, 0x0
.Ltmp785:
	.short	.Ltmp787-.Ltmp786
.Ltmp786:
	.short	4360
	.long	4998
	.asciz	"std::_Default_allocator_traits<std::allocator<char> >"
	.p2align	2, 0x0
.Ltmp787:
	.short	.Ltmp789-.Ltmp788
.Ltmp788:
	.short	4360
	.long	5010
	.asciz	"std::_Container_proxy"
	.p2align	2, 0x0
.Ltmp789:
	.short	.Ltmp791-.Ltmp790
.Ltmp790:
	.short	4360
	.long	5016
	.asciz	"std::integral_constant<bool,0>"
	.p2align	2, 0x0
.Ltmp791:
	.short	.Ltmp793-.Ltmp792
.Ltmp792:
	.short	4360
	.long	5034
	.asciz	"std::_Iterator_base12"
	.p2align	2, 0x0
.Ltmp793:
	.short	.Ltmp795-.Ltmp794
.Ltmp794:
	.short	4360
	.long	5052
	.asciz	"basic_ostream<char,std::char_traits<char> >::sentry"
	.p2align	2, 0x0
.Ltmp795:
	.short	.Ltmp797-.Ltmp796
.Ltmp796:
	.short	4360
	.long	5064
	.asciz	"basic_ostream<char,std::char_traits<char> >::_Sentry_base"
	.p2align	2, 0x0
.Ltmp797:
	.short	.Ltmp799-.Ltmp798
.Ltmp798:
	.short	4360
	.long	5094
	.asciz	"__m256d"
	.p2align	2, 0x0
.Ltmp799:
	.short	.Ltmp801-.Ltmp800
.Ltmp800:
	.short	4360
	.long	5094
	.asciz	"__v4df"
	.p2align	2, 0x0
.Ltmp801:
	.short	.Ltmp803-.Ltmp802
.Ltmp802:
	.short	4360
	.long	5094
	.asciz	"__m256d_u"
	.p2align	2, 0x0
.Ltmp803:
	.short	.Ltmp805-.Ltmp804
.Ltmp804:
	.short	4360
	.long	5108
	.asciz	"__storeu_pd"
	.p2align	2, 0x0
.Ltmp805:
	.short	.Ltmp807-.Ltmp806
.Ltmp806:
	.short	4360
	.long	19
	.asciz	"std::decay_t<_Conditional_type<long long,long long> >"
	.p2align	2, 0x0
.Ltmp807:
	.short	.Ltmp809-.Ltmp808
.Ltmp808:
	.short	4360
	.long	19
	.asciz	"std::common_type_t<_ToRep,long long,intmax_t>"
	.p2align	2, 0x0
.Ltmp809:
	.short	.Ltmp811-.Ltmp810
.Ltmp810:
	.short	4360
	.long	5113
	.asciz	"std::ratio<1,1000000>"
	.p2align	2, 0x0
.Ltmp811:
.Ltmp655:
	.p2align	2, 0x0
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp813-.Ltmp812
.Ltmp812:
	.short	.Ltmp815-.Ltmp814
.Ltmp814:
	.short	4428
	.long	5120
	.p2align	2, 0x0
.Ltmp815:
.Ltmp813:
	.p2align	2, 0x0
	.section	.debug$T,"dr"
	.p2align	2, 0x0
	.long	4
	.short	0x4e
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::chrono::steady_clock"
	.asciz	".?AUsteady_clock@chrono@std@@"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x30
	.short	0x1
	.byte	242
	.byte	241
	.short	0xee
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1,1000000000> > >"
	.asciz	".?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x6
	.short	0x1201
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1002
	.long	0x1000
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x4e
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::ratio<1,1000000000>"
	.asciz	".?AU?$ratio@$00$0DLJKMKAA@@std@@"
	.short	0x8e
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::chrono::duration<long long,std::ratio<1,1000000000> >"
	.asciz	".?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x66
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x1001
	.asciz	"is_steady"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1004
	.asciz	"now"
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"rep"
	.short	0x1510
	.short	0x0
	.long	0x1005
	.asciz	"period"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1006
	.asciz	"duration"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1002
	.asciz	"time_point"
	.byte	241
	.short	0x4e
	.short	0x1505
	.short	0x6
	.short	0x210
	.long	0x1007
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::chrono::steady_clock"
	.asciz	".?AUsteady_clock@chrono@std@@"
	.byte	242
	.byte	241
	.short	0x76
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\__msvc_chrono.hpp"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1008
	.long	0x1009
	.long	0x295
	.short	0xa
	.short	0x1002
	.long	0x1002
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1002
	.long	0x100b
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x1006
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x100d
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x100e
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1002
	.long	0x100b
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x100f
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x100c
	.short	0x3
	.short	0x0
	.long	0x1010
	.short	0xa
	.short	0x1001
	.long	0x1002
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1012
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x1006
	.long	0x1002
	.long	0x1013
	.byte	0x0
	.byte	0x1
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x1002
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1015
	.long	0x1002
	.long	0x100b
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x100f
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1002
	.long	0x1002
	.long	0x0
	.byte	0x0
	.byte	0x1
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xc6
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x1006
	.short	0x0
	.asciz	"_MyDur"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1011
	.asciz	"time_point"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1014
	.asciz	"time_since_epoch"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1016
	.asciz	"operator+="
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1016
	.asciz	"operator-="
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1017
	.asciz	"min"
	.short	0x1511
	.short	0xb
	.long	0x1017
	.asciz	"max"
	.short	0x1510
	.short	0x0
	.long	0x1000
	.asciz	"clock"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1006
	.asciz	"duration"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"rep"
	.short	0x1510
	.short	0x0
	.long	0x1005
	.asciz	"period"
	.byte	241
	.short	0xee
	.short	0x1504
	.short	0xc
	.short	0x212
	.long	0x1018
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1,1000000000> > >"
	.asciz	".?AV?$time_point@Usteady_clock@chrono@std@@V?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@23@@chrono@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1019
	.long	0x1009
	.long	0xbe
	.short	0xa
	.short	0x1001
	.long	0x13
	.short	0x1
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x101b
	.asciz	"num"
	.short	0x150e
	.short	0x3
	.long	0x101b
	.asciz	"den"
	.short	0x1510
	.short	0x0
	.long	0x1005
	.asciz	"type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x4e
	.short	0x1505
	.short	0x3
	.short	0x210
	.long	0x101c
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::ratio<1,1000000000>"
	.asciz	".?AU?$ratio@$00$0DLJKMKAA@@std@@"
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\ratio"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x101d
	.long	0x101e
	.long	0x43
	.short	0xa
	.short	0x1002
	.long	0x1006
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1006
	.long	0x1020
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x100d
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x13
	.long	0x1006
	.long	0x1022
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1006
	.long	0x1006
	.long	0x1022
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x1006
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1025
	.long	0x1006
	.long	0x1020
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x1006
	.long	0x1006
	.long	0x1020
	.byte	0x0
	.byte	0x1
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1026
	.short	0x3
	.short	0x0
	.long	0x1028
	.short	0x1a
	.short	0x1009
	.long	0x1025
	.long	0x1006
	.long	0x1020
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x100f
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x101b
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x102b
	.short	0x1a
	.short	0x1009
	.long	0x1025
	.long	0x1006
	.long	0x1020
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x102c
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x102d
	.short	0x3
	.short	0x0
	.long	0x102a
	.short	0x1a
	.short	0x1009
	.long	0x1006
	.long	0x1006
	.long	0x0
	.byte	0x0
	.byte	0x1
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x132
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x13
	.short	0x0
	.asciz	"_MyRep"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1021
	.asciz	"duration"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1023
	.asciz	"count"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1024
	.asciz	"operator+"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1024
	.asciz	"operator-"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1029
	.asciz	"operator++"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1029
	.asciz	"operator--"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x102a
	.asciz	"operator+="
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x102a
	.asciz	"operator-="
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x102d
	.asciz	"operator*="
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x102d
	.asciz	"operator/="
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x102e
	.asciz	"operator%="
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x102f
	.asciz	"zero"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x102f
	.asciz	"min"
	.short	0x1511
	.short	0xb
	.long	0x102f
	.asciz	"max"
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"rep"
	.short	0x1510
	.short	0x0
	.long	0x1005
	.asciz	"period"
	.byte	241
	.short	0x8e
	.short	0x1504
	.short	0x14
	.short	0x210
	.long	0x1030
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"std::chrono::duration<long long,std::ratio<1,1000000000> >"
	.asciz	".?AV?$duration@_JU?$ratio@$00$0DLJKMKAA@@std@@@chrono@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1031
	.long	0x1009
	.long	0x51
	.short	0xe
	.short	0x1602
	.long	0x1000
	.long	0x1004
	.asciz	"now"
	.short	0x12
	.short	0x1605
	.long	0x0
	.asciz	"std::chrono"
	.short	0xa
	.short	0x1002
	.long	0x1012
	.long	0x1002c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1035
	.long	0x1035
	.short	0xe
	.short	0x1008
	.long	0x1006
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1036
	.short	0x16
	.short	0x1601
	.long	0x1034
	.long	0x1037
	.asciz	"operator-"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x100e
	.long	0x100e
	.short	0xe
	.short	0x1008
	.long	0x1006
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1039
	.short	0x16
	.short	0x1601
	.long	0x1034
	.long	0x103a
	.asciz	"operator-"
	.byte	242
	.byte	241
	.short	0x72
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"basic_ostream<char,std::char_traits<char> >"
	.asciz	".?AV?$basic_ostream@DU?$char_traits@D@std@@@std@@"
	.short	0xa
	.short	0x1002
	.long	0x103c
	.long	0x1002c
	.short	0xa
	.short	0x1002
	.long	0x103c
	.long	0x1040c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x103d
	.short	0xe
	.short	0x1008
	.long	0x103d
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x103f
	.short	0xa
	.short	0x1002
	.long	0x1040
	.long	0x1000c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1041
	.short	0x1a
	.short	0x1009
	.long	0x103d
	.long	0x103c
	.long	0x103e
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1042
	.long	0x0
	.short	0x16
	.short	0x1602
	.long	0x103c
	.long	0x1043
	.asciz	"operator<<"
	.byte	241
	.short	0xa
	.short	0x1605
	.long	0x0
	.asciz	"std"
	.short	0x12
	.short	0x1601
	.long	0x1045
	.long	0x1040
	.asciz	"endl"
	.byte	243
	.byte	242
	.byte	241
	.short	0x82
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::chrono::duration<long long,std::ratio<1,1000> >"
	.asciz	".?AV?$duration@_JU?$ratio@$00$0DOI@@std@@@chrono@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x1047
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x100f
	.short	0xa
	.short	0x1002
	.long	0x1047
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1047
	.long	0x1049
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x1047
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x104b
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x13
	.long	0x1047
	.long	0x104c
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1047
	.long	0x1047
	.long	0x104c
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x1047
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x104f
	.long	0x1047
	.long	0x1049
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1047
	.long	0x1047
	.long	0x1049
	.byte	0x0
	.byte	0x1
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1050
	.short	0x3
	.short	0x0
	.long	0x1051
	.short	0xa
	.short	0x1002
	.long	0x104b
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1053
	.short	0x1a
	.short	0x1009
	.long	0x104f
	.long	0x1047
	.long	0x1049
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1054
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x104f
	.long	0x1047
	.long	0x1049
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x102c
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1056
	.short	0x3
	.short	0x0
	.long	0x1055
	.short	0x1a
	.short	0x1009
	.long	0x1047
	.long	0x1047
	.long	0x0
	.byte	0x0
	.byte	0x1
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x46
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::ratio<1,1000>"
	.asciz	".?AU?$ratio@$00$0DOI@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x132
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x13
	.short	0x0
	.asciz	"_MyRep"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x104a
	.asciz	"duration"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x104d
	.asciz	"count"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x104e
	.asciz	"operator+"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x104e
	.asciz	"operator-"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1052
	.asciz	"operator++"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1052
	.asciz	"operator--"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1055
	.asciz	"operator+="
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1055
	.asciz	"operator-="
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1056
	.asciz	"operator*="
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1056
	.asciz	"operator/="
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1057
	.asciz	"operator%="
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1058
	.asciz	"zero"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1058
	.asciz	"min"
	.short	0x1511
	.short	0xb
	.long	0x1058
	.asciz	"max"
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"rep"
	.short	0x1510
	.short	0x0
	.long	0x1059
	.asciz	"period"
	.byte	241
	.short	0x82
	.short	0x1504
	.short	0x14
	.short	0x210
	.long	0x105a
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"std::chrono::duration<long long,std::ratio<1,1000> >"
	.asciz	".?AV?$duration@_JU?$ratio@$00$0DOI@@std@@@chrono@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x105b
	.long	0x1009
	.long	0x51
	.short	0x2a
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x101b
	.asciz	"num"
	.short	0x150e
	.short	0x3
	.long	0x101b
	.asciz	"den"
	.short	0x1510
	.short	0x0
	.long	0x1059
	.asciz	"type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x46
	.short	0x1505
	.short	0x3
	.short	0x210
	.long	0x105d
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::ratio<1,1000>"
	.asciz	".?AU?$ratio@$00$0DOI@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x105e
	.long	0x101e
	.long	0x43
	.short	0x1a
	.short	0x1601
	.long	0x1034
	.long	0x1048
	.asciz	"duration_cast"
	.byte	242
	.byte	241
	.short	0x5a
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Narrow_char_traits<char,int>"
	.asciz	".?AU?$_Narrow_char_traits@DH@std@@"
	.short	0x4e
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Char_traits<char,int>"
	.asciz	".?AU?$_Char_traits@DH@std@@"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x70
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1063
	.long	0x1040c
	.short	0xa
	.short	0x1001
	.long	0x23
	.short	0x1
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1064
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1066
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1064
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1068
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x1063
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x1063
	.long	0x1002c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1064
	.long	0x1065
	.long	0x106b
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x106c
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x70
	.long	0x1040c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x106e
	.long	0x23
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x106f
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x70
	.long	0x1002c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1071
	.long	0x106b
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1072
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0xb
	.short	0x0
	.long	0x1070
	.short	0xb
	.short	0x0
	.long	0x1073
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1063
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1075
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x74
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1077
	.short	0x1a
	.short	0x1009
	.long	0x70
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1078
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x107a
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1077
	.long	0x1077
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x107c
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1078
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x1061
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x4a
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::fpos<_Mbstatet>"
	.asciz	".?AV?$fpos@U_Mbstatet@@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x2e
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Mbstatet"
	.asciz	".?AU_Mbstatet@@"
	.short	0x146
	.short	0x1203
	.short	0x1400
	.short	0x1
	.long	0x1062
	.short	0x0
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1067
	.asciz	"compare"
	.short	0x1511
	.short	0xb
	.long	0x1069
	.asciz	"length"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x106d
	.asciz	"find"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1074
	.asciz	"assign"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1076
	.asciz	"eq"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1076
	.asciz	"lt"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1079
	.asciz	"to_char_type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x107b
	.asciz	"to_int_type"
	.short	0x1511
	.short	0xb
	.long	0x107d
	.asciz	"eq_int_type"
	.short	0x1511
	.short	0xb
	.long	0x107e
	.asciz	"not_eof"
	.short	0x1511
	.short	0xb
	.long	0x107f
	.asciz	"eof"
	.short	0x1510
	.short	0x0
	.long	0x1062
	.asciz	"_Primary_char_traits"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x70
	.asciz	"char_type"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x74
	.asciz	"int_type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1080
	.asciz	"pos_type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"off_type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1081
	.asciz	"state_type"
	.byte	241
	.short	0x5a
	.short	0x1505
	.short	0x13
	.short	0x210
	.long	0x1082
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::_Narrow_char_traits<char,int>"
	.asciz	".?AU?$_Narrow_char_traits@DH@std@@"
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xstring"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1083
	.long	0x1084
	.long	0x164
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x106e
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1086
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x106e
	.long	0x1065
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1088
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x106a
	.long	0x106a
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x108a
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x106a
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x108c
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x106a
	.long	0x23
	.long	0x106b
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x108e
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x106f
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1072
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0xb
	.short	0x0
	.long	0x1090
	.short	0xb
	.short	0x0
	.long	0x1091
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1075
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x70
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1078
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x107a
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x107c
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1078
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x1062
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x14a
	.short	0x1203
	.short	0x1511
	.short	0xb
	.long	0x1087
	.asciz	"copy"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1089
	.asciz	"_Copy_s"
	.short	0x1511
	.short	0xb
	.long	0x1087
	.asciz	"move"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x108b
	.asciz	"compare"
	.short	0x1511
	.short	0xb
	.long	0x108d
	.asciz	"length"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x108f
	.asciz	"find"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1092
	.asciz	"assign"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1093
	.asciz	"eq"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1093
	.asciz	"lt"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1094
	.asciz	"to_char_type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1095
	.asciz	"to_int_type"
	.short	0x1511
	.short	0xb
	.long	0x1096
	.asciz	"eq_int_type"
	.short	0x1511
	.short	0xb
	.long	0x1097
	.asciz	"not_eof"
	.short	0x1511
	.short	0xb
	.long	0x1098
	.asciz	"eof"
	.short	0x1510
	.short	0x0
	.long	0x70
	.asciz	"char_type"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x74
	.asciz	"int_type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1080
	.asciz	"pos_type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"off_type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1081
	.asciz	"state_type"
	.byte	241
	.short	0x4e
	.short	0x1505
	.short	0x14
	.short	0x210
	.long	0x1099
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::_Char_traits<char,int>"
	.asciz	".?AU?$_Char_traits@DH@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x109a
	.long	0x1084
	.long	0x23
	.short	0x3a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x22
	.short	0x0
	.asciz	"_Wchar"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x21
	.short	0x4
	.asciz	"_Byte"
	.short	0x150d
	.short	0x3
	.long	0x21
	.short	0x6
	.asciz	"_State"
	.byte	243
	.byte	242
	.byte	241
	.short	0x2e
	.short	0x1505
	.short	0x3
	.short	0x200
	.long	0x109c
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"_Mbstatet"
	.asciz	".?AU_Mbstatet@@"
	.short	0x52
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.22621.0\\ucrt\\corecrt.h"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x109d
	.long	0x109e
	.long	0x271
	.short	0x12
	.short	0x1602
	.long	0x1061
	.long	0x1069
	.asciz	"length"
	.byte	241
	.short	0x32
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"ios_base"
	.asciz	".?AVios_base@std@@"
	.byte	242
	.byte	241
	.short	0x6
	.short	0xa
	.short	0x1
	.byte	0x0
	.byte	241
	.short	0x3a
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Iosb<int>"
	.asciz	".?AV?$_Iosb@H@std@@"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x10a2
	.long	0x1000c
	.short	0x46
	.short	0x1505
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"ios_base::_Iosarray"
	.asciz	".?AU_Iosarray@ios_base@std@@"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x10a5
	.long	0x1000c
	.short	0x46
	.short	0x1505
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"ios_base::_Fnarray"
	.asciz	".?AU_Fnarray@ios_base@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x10a7
	.long	0x1000c
	.short	0x2e
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"locale"
	.asciz	".?AVlocale@std@@"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x10a9
	.long	0x1000c
	.short	0xa
	.short	0x1001
	.long	0x10a1
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x10ab
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x10a1
	.long	0x10ac
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x10a1
	.long	0x1040c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x74
	.long	0x30
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x10af
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x10b0
	.short	0x3
	.short	0x0
	.long	0x10b1
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x10a1
	.long	0x10ac
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x10b3
	.short	0x3
	.short	0x0
	.long	0x10b1
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x10b3
	.short	0x3
	.short	0x0
	.long	0x10b5
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x74
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x10b7
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x10b5
	.short	0x3
	.short	0x0
	.long	0x10b8
	.short	0x1a
	.short	0x1009
	.long	0x13
	.long	0x10a1
	.long	0x10ac
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x13
	.short	0x1a
	.short	0x1009
	.long	0x13
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10bb
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x10ba
	.short	0x3
	.short	0x0
	.long	0x10bc
	.short	0x1a
	.short	0x1009
	.long	0x10a9
	.long	0x10a1
	.long	0x10ac
	.byte	0x0
	.byte	0x1
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x10a9
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x10bf
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x10c0
	.short	0x1a
	.short	0x1009
	.long	0x10a9
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x1
	.short	0x1
	.long	0x10c1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x10a1
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x12
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x10c4
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x603
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x10c6
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0x3e
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x0
	.asciz	"erase_event"
	.byte	242
	.byte	241
	.short	0x1502
	.short	0x3
	.short	0x1
	.asciz	"imbue_event"
	.byte	242
	.byte	241
	.short	0x1502
	.short	0x3
	.short	0x2
	.asciz	"copyfmt_event"
	.short	0x3a
	.short	0x1507
	.short	0x3
	.short	0x208
	.long	0x74
	.long	0x10c8
	.asciz	"ios_base::event"
	.asciz	".?AW4event@ios_base@std@@"
	.byte	242
	.byte	241
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xiosbase"
	.short	0xe
	.short	0x1606
	.long	0x10c9
	.long	0x10ca
	.long	0x63
	.short	0xa
	.short	0x1002
	.long	0x10a1
	.long	0x1002c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x10c9
	.long	0x10cc
	.long	0x74
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x10cd
	.short	0xa
	.short	0x1002
	.long	0x10ce
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x10cf
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x10d0
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x10ab
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x10d2
	.short	0x1a
	.short	0x1009
	.long	0x10cc
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10d3
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x30
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x10a1
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10d5
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x10cc
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10d7
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x10a1
	.long	0x1000c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x10da
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10db
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x2
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x10d3
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x2
	.short	0x0
	.long	0x10dd
	.short	0x3
	.short	0x0
	.long	0x10de
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x10c9
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10e0
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x10a5
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x10e2
	.long	0x10a1
	.long	0x10ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0x42
	.short	0x1504
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"ios_base::failure"
	.asciz	".?AVfailure@ios_base@std@@"
	.byte	241
	.short	0x3e
	.short	0x1504
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"ios_base::Init"
	.asciz	".?AVInit@ios_base@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x3e6
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x10a3
	.short	0x8
	.byte	242
	.byte	241
	.short	0x1409
	.short	0x0
	.long	0x10a4
	.short	0x150d
	.short	0x3
	.long	0x23
	.short	0x8
	.asciz	"_Stdstr"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x74
	.short	0x10
	.asciz	"_Mystate"
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x74
	.short	0x14
	.asciz	"_Except"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x74
	.short	0x18
	.asciz	"_Fmtfl"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x13
	.short	0x20
	.asciz	"_Prec"
	.short	0x150d
	.short	0x1
	.long	0x13
	.short	0x28
	.asciz	"_Wide"
	.short	0x150d
	.short	0x1
	.long	0x10a6
	.short	0x30
	.asciz	"_Arr"
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x10a8
	.short	0x38
	.asciz	"_Calls"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x10aa
	.short	0x40
	.asciz	"_Ploc"
	.short	0x150e
	.short	0x1
	.long	0x74
	.asciz	"_Index"
	.byte	241
	.short	0x150e
	.short	0x1
	.long	0x30
	.asciz	"_Sync"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10ad
	.asciz	"operator bool"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10ad
	.asciz	"operator!"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x10b2
	.asciz	"clear"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10b3
	.asciz	"rdstate"
	.short	0x150f
	.short	0x2
	.long	0x10b2
	.asciz	"setstate"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10ad
	.asciz	"good"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10ad
	.asciz	"eof"
	.short	0x1511
	.short	0x3
	.long	0x10ad
	.asciz	"fail"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10ad
	.asciz	"bad"
	.short	0x150f
	.short	0x2
	.long	0x10b4
	.asciz	"exceptions"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x10b6
	.asciz	"flags"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x10b9
	.asciz	"setf"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10b1
	.asciz	"unsetf"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x10bd
	.asciz	"precision"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x10bd
	.asciz	"width"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10be
	.asciz	"getloc"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10c2
	.asciz	"imbue"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x10c3
	.asciz	"xalloc"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10c5
	.asciz	"iword"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10c7
	.asciz	"pword"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10d1
	.asciz	"register_callback"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10d4
	.asciz	"copyfmt"
	.short	0x1511
	.short	0xb
	.long	0x10d6
	.asciz	"sync_with_stdio"
	.short	0x1511
	.short	0x3
	.long	0x10d8
	.asciz	"swap"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x13
	.long	0x10d9
	.long	0x0
	.asciz	"~ios_base"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x10dc
	.asciz	"_Addstd"
	.short	0x150f
	.short	0x2
	.long	0x10df
	.asciz	"ios_base"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x2
	.long	0x10d9
	.asciz	"_Init"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x10e1
	.asciz	"_Callfns"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x10e3
	.asciz	"_Findarr"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x10d9
	.asciz	"_Tidy"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x10dc
	.asciz	"_Ios_base_dtor"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x10d4
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x74
	.asciz	"fmtflags"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x74
	.asciz	"iostate"
	.short	0x1510
	.short	0x0
	.long	0x74
	.asciz	"openmode"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x74
	.asciz	"seekdir"
	.short	0x1510
	.short	0x0
	.long	0x10c9
	.asciz	"event"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10cf
	.asciz	"event_callback"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10e4
	.asciz	"failure"
	.short	0x1510
	.short	0x0
	.long	0x10e5
	.asciz	"Init"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10a5
	.asciz	"_Iosarray"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10a7
	.asciz	"_Fnarray"
	.byte	243
	.byte	242
	.byte	241
	.short	0x32
	.short	0x1504
	.short	0x40
	.short	0x212
	.long	0x10e6
	.long	0x0
	.long	0x10a2
	.short	0x48
	.asciz	"ios_base"
	.asciz	".?AVios_base@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x10e7
	.long	0x10ca
	.long	0x57
	.short	0x26
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x8002
	.short	0xffff
	.asciz	"_Fmtmask"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1502
	.short	0x3
	.short	0x0
	.asciz	"_Fmtzero"
	.byte	241
	.short	0x4a
	.short	0x1507
	.short	0x2
	.short	0x208
	.long	0x75
	.long	0x10e9
	.asciz	"std::_Iosb<int>::_Fmtflags"
	.asciz	".?AW4_Fmtflags@?$_Iosb@H@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x10ea
	.long	0x10ca
	.long	0x19
	.short	0x12
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x17
	.asciz	"_Statmask"
	.short	0x46
	.short	0x1507
	.short	0x1
	.short	0x208
	.long	0x75
	.long	0x10ec
	.asciz	"std::_Iosb<int>::_Iostate"
	.asciz	".?AW4_Iostate@?$_Iosb@H@std@@"
	.short	0xe
	.short	0x1606
	.long	0x10ed
	.long	0x10ca
	.long	0x34
	.short	0x1a
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x1
	.asciz	"_Dummy_enum_val"
	.byte	242
	.byte	241
	.short	0x4e
	.short	0x1507
	.short	0x1
	.short	0x208
	.long	0x75
	.long	0x10ef
	.asciz	"std::_Iosb<int>::_Dummy_enum"
	.asciz	".?AW4_Dummy_enum@?$_Iosb@H@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x10f0
	.long	0x10ca
	.long	0x51
	.short	0x12
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0xff
	.asciz	"_Openmask"
	.short	0x4a
	.short	0x1507
	.short	0x1
	.short	0x208
	.long	0x75
	.long	0x10f2
	.asciz	"std::_Iosb<int>::_Openmode"
	.asciz	".?AW4_Openmode@?$_Iosb@H@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x10f3
	.long	0x10ca
	.long	0x52
	.short	0x32
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x0
	.asciz	"_Seekbeg"
	.byte	241
	.short	0x1502
	.short	0x3
	.short	0x1
	.asciz	"_Seekcur"
	.byte	241
	.short	0x1502
	.short	0x3
	.short	0x2
	.asciz	"_Seekend"
	.byte	241
	.short	0x46
	.short	0x1507
	.short	0x3
	.short	0x208
	.long	0x75
	.long	0x10f5
	.asciz	"std::_Iosb<int>::_Seekdir"
	.asciz	".?AW4_Seekdir@?$_Iosb@H@std@@"
	.short	0xe
	.short	0x1606
	.long	0x10f6
	.long	0x10ca
	.long	0x53
	.short	0x12
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x40
	.asciz	"_Openprot"
	.short	0x5e
	.short	0x1507
	.short	0x1
	.short	0x208
	.long	0x75
	.long	0x10f8
	.asciz	"std::_Iosb<int>::<unnamed-tag>"
	.asciz	".?AW4<unnamed-enum-_Openprot>@?$_Iosb@H@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x10f9
	.long	0x10ca
	.long	0x54
	.short	0x2b6
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"skipws"
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"unitbuf"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"uppercase"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"showbase"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"showpoint"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"showpos"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"left"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"right"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"internal"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"dec"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"oct"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"hex"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"scientific"
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"fixed"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"hexfloat"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"boolalpha"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"adjustfield"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"basefield"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"floatfield"
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"goodbit"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"eofbit"
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"failbit"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"badbit"
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"in"
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"out"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"ate"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"app"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"trunc"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"_Nocreate"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"_Noreplace"
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"binary"
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"beg"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"cur"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"end"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"_Default_open_prot"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10ea
	.asciz	"_Fmtflags"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10ed
	.asciz	"_Iostate"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10f0
	.asciz	"_Dummy_enum"
	.short	0x1510
	.short	0x0
	.long	0x10f3
	.asciz	"_Openmode"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10f6
	.asciz	"_Seekdir"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x10f9
	.byte	0
	.byte	243
	.byte	242
	.byte	241
	.short	0x3a
	.short	0x1504
	.short	0x29
	.short	0x210
	.long	0x10fb
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::_Iosb<int>"
	.asciz	".?AV?$_Iosb@H@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x10fc
	.long	0x10ca
	.long	0x17
	.short	0x3e
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Crt_new_delete"
	.asciz	".?AU_Crt_new_delete@std@@"
	.short	0xa
	.short	0x1002
	.long	0x10a5
	.long	0x1040c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x74
	.long	0x10a6
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a5
	.long	0x10ff
	.byte	0x0
	.byte	0x2
	.short	0x2
	.long	0x1100
	.long	0x0
	.short	0x66
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x10fe
	.short	0x0
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x10a6
	.short	0x0
	.asciz	"_Next"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"_Index"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x12
	.short	0xc
	.asciz	"_Lo"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x603
	.short	0x10
	.asciz	"_Vp"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1101
	.asciz	"_Iosarray"
	.byte	242
	.byte	241
	.short	0x46
	.short	0x1505
	.short	0x6
	.short	0x20a
	.long	0x1102
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"ios_base::_Iosarray"
	.asciz	".?AU_Iosarray@ios_base@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1103
	.long	0x10ca
	.long	0x18a
	.short	0xa
	.short	0x1002
	.long	0x10a7
	.long	0x1040c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x74
	.long	0x10cf
	.long	0x10a8
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a7
	.long	0x1105
	.byte	0x0
	.byte	0x2
	.short	0x3
	.long	0x1106
	.long	0x0
	.short	0x56
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x10fe
	.short	0x0
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x10a8
	.short	0x0
	.asciz	"_Next"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"_Index"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x10cf
	.short	0x10
	.asciz	"_Pfn"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1107
	.asciz	"_Fnarray"
	.byte	243
	.byte	242
	.byte	241
	.short	0x46
	.short	0x1505
	.short	0x5
	.short	0x20a
	.long	0x1108
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"ios_base::_Fnarray"
	.asciz	".?AU_Fnarray@ios_base@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1109
	.long	0x10ca
	.long	0x195
	.short	0x3e
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Locbase<int>"
	.asciz	".?AV?$_Locbase@H@std@@"
	.short	0x3e
	.short	0x1504
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"locale::_Locimp"
	.asciz	".?AV_Locimp@locale@std@@"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x110c
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x10a9
	.long	0x1040c
	.short	0x12
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x0
	.asciz	"_Noinit"
	.byte	242
	.byte	241
	.short	0x3e
	.short	0x1507
	.short	0x1
	.short	0x200
	.long	0x74
	.long	0x110f
	.asciz	"std::_Uninitialized"
	.asciz	".?AW4_Uninitialized@std@@"
	.byte	242
	.byte	241
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\yvals.h"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1110
	.long	0x1111
	.long	0x14f
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1110
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1113
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x10c1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x10c0
	.long	0x10c0
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x3
	.long	0x1117
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x106a
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x2
	.long	0x1119
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x10c0
	.long	0x106a
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x3
	.long	0x111b
	.long	0x0
	.short	0x9e
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >"
	.asciz	".?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x111d
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x111e
	.long	0x1002c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x111f
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x2
	.long	0x1120
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x10c0
	.long	0x111f
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x3
	.long	0x1122
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x110d
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1124
	.long	0x0
	.short	0x4a
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1114
	.short	0x3
	.short	0x0
	.long	0x1115
	.short	0x3
	.short	0x0
	.long	0x1116
	.short	0x3
	.short	0x0
	.long	0x1118
	.short	0x3
	.short	0x0
	.long	0x111a
	.short	0x3
	.short	0x0
	.long	0x111c
	.short	0x3
	.short	0x0
	.long	0x1121
	.short	0x3
	.short	0x0
	.long	0x1123
	.short	0x1
	.short	0x0
	.long	0x1125
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1120
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x10c0
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10c1
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x10bf
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x111d
	.long	0x10a9
	.long	0x112a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x10a9
	.long	0x112a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x3a
	.short	0x1504
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"locale::facet"
	.asciz	".?AVfacet@locale@std@@"
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x112d
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x112e
	.long	0x1000c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x112f
	.long	0x10a9
	.long	0x112a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1130
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x10a9
	.long	0x112a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10c1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x10c0
	.long	0x10a9
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x10a9
	.long	0x10a9
	.long	0x0
	.byte	0x0
	.byte	0x1
	.short	0x1
	.long	0x10c1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x10a9
	.long	0x10a9
	.long	0x0
	.byte	0x0
	.byte	0x1
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x110d
	.long	0x10a9
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10d5
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x110d
	.long	0x10a9
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x603
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10a9
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1138
	.long	0x0
	.short	0x32
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Locinfo"
	.asciz	".?AV_Locinfo@std@@"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x113a
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x113b
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x113c
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x10a9
	.long	0x110e
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x113d
	.long	0x0
	.short	0x36
	.short	0x1504
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"locale::id"
	.asciz	".?AVid@locale@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x4a
	.short	0x1505
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"locale::_Facet_guard"
	.asciz	".?AU_Facet_guard@locale@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x24e
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x110b
	.short	0x0
	.byte	242
	.byte	241
	.short	0x1400
	.short	0x3
	.long	0x10fe
	.short	0x1
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"collate"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"ctype"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"monetary"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"numeric"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"time"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"messages"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"all"
	.short	0x150e
	.short	0x3
	.long	0x1077
	.asciz	"none"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x110d
	.short	0x8
	.asciz	"_Ptr"
	.byte	241
	.short	0x150f
	.short	0x9
	.long	0x1126
	.asciz	"locale"
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x1127
	.asciz	"_Construct"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1128
	.asciz	"~locale"
	.short	0x1511
	.short	0x3
	.long	0x1129
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x112b
	.asciz	"name"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x112c
	.asciz	"_C_str"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1131
	.asciz	"_Getfacet"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1132
	.asciz	"operator=="
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1132
	.asciz	"operator!="
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1133
	.asciz	"classic"
	.short	0x1511
	.short	0xb
	.long	0x1134
	.asciz	"global"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1135
	.asciz	"empty"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x1136
	.asciz	"_Init"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x1137
	.asciz	"_Getgloballocale"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x1139
	.asciz	"_Setgloballocale"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x113e
	.asciz	"_Badname"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x74
	.asciz	"category"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x113f
	.asciz	"id"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1140
	.asciz	"_Facet_guard"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x112d
	.asciz	"facet"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1140
	.asciz	"_Facet_guard"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x110c
	.asciz	"_Locimp"
	.short	0x2e
	.short	0x1504
	.short	0x29
	.short	0x212
	.long	0x1141
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"locale"
	.asciz	".?AVlocale@std@@"
	.byte	242
	.byte	241
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xlocale"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1142
	.long	0x1143
	.long	0x3e
	.short	0x1a
	.short	0x1009
	.long	0x603
	.long	0x10fe
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1130
	.long	0x0
	.short	0x3a
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::nothrow_t"
	.asciz	".?AUnothrow_t@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x1146
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1147
	.long	0x1002c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x23
	.long	0x1148
	.short	0x1a
	.short	0x1009
	.long	0x603
	.long	0x10fe
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1149
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x23
	.long	0x603
	.short	0x1a
	.short	0x1009
	.long	0x603
	.long	0x10fe
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x114b
	.long	0x0
	.short	0x1a
	.short	0x1206
	.short	0xb
	.short	0x0
	.long	0x1145
	.short	0xb
	.short	0x0
	.long	0x114a
	.short	0xb
	.short	0x0
	.long	0x114c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10fe
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1138
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x603
	.long	0x1148
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10fe
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x114f
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x603
	.long	0x603
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x10fe
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1151
	.long	0x0
	.short	0x1a
	.short	0x1206
	.short	0xb
	.short	0x0
	.long	0x114e
	.short	0xb
	.short	0x0
	.long	0x1150
	.short	0xb
	.short	0x0
	.long	0x1152
	.short	0x32
	.short	0x1203
	.short	0x150f
	.short	0x3
	.long	0x114d
	.asciz	"operator new"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x3
	.long	0x1153
	.asciz	"operator delete"
	.short	0x3e
	.short	0x1505
	.short	0x6
	.short	0x200
	.long	0x1154
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"_Crt_new_delete"
	.asciz	".?AU_Crt_new_delete@std@@"
	.short	0xe
	.short	0x1606
	.long	0x1155
	.long	0x1143
	.long	0x1f
	.short	0x2
	.short	0x1203
	.short	0x3e
	.short	0x1504
	.short	0x0
	.short	0x200
	.long	0x1157
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::_Locbase<int>"
	.asciz	".?AV?$_Locbase@H@std@@"
	.short	0xe
	.short	0x1606
	.long	0x1158
	.long	0x1143
	.long	0x1a
	.short	0x6
	.short	0xa
	.short	0x3
	.byte	0x55
	.byte	0x0
	.short	0xa
	.short	0x1002
	.long	0x112d
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x115b
	.long	0x1000c
	.short	0x36
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Yarn<char>"
	.asciz	".?AV?$_Yarn@D@std@@"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x110c
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x110c
	.long	0x115e
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x110d
	.long	0x110c
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x10d5
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x110c
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1161
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1162
	.short	0x1a
	.short	0x1009
	.long	0x110d
	.long	0x110c
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1163
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x9
	.short	0x0
	.long	0x1160
	.short	0x9
	.short	0x0
	.long	0x1164
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x110c
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1124
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x110d
	.long	0x115b
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x110c
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1167
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x110d
	.long	0x1162
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x110c
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1169
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x110c
	.long	0x115e
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x10d5
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x110c
	.long	0x115e
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1163
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x1
	.short	0x0
	.long	0x116b
	.short	0x1
	.short	0x0
	.long	0x116c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x115b
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x110c
	.long	0x115e
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x116e
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x10bf
	.long	0x1000c
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x113c
	.long	0x74
	.long	0x110d
	.long	0x1170
	.short	0x1a
	.short	0x1009
	.long	0x110d
	.long	0x110c
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1171
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x110c
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1171
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x110c
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1174
	.long	0x110c
	.long	0x115e
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1163
	.long	0x0
	.short	0x17a
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x112d
	.short	0x0
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x115c
	.short	0x10
	.asciz	"_Facetvec"
	.short	0x150d
	.short	0x1
	.long	0x23
	.short	0x18
	.asciz	"_Facetcount"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x74
	.short	0x20
	.asciz	"_Catmask"
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x30
	.short	0x24
	.asciz	"_Xparent"
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x115d
	.short	0x28
	.asciz	"_Name"
	.short	0x150e
	.short	0x1
	.long	0x110d
	.asciz	"_Clocptr"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x6
	.long	0x115f
	.asciz	"~_Locimp"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1165
	.asciz	"_New_Locimp"
	.short	0x1511
	.short	0x9
	.long	0x1166
	.asciz	"_Locimp_dtor"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x1168
	.asciz	"_Locimp_Addfac"
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x116a
	.asciz	"_Locimp_ctor"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x116d
	.asciz	"_Locimp"
	.short	0x1511
	.short	0x1
	.long	0x116f
	.asciz	"_Addfac"
	.short	0x1511
	.short	0x9
	.long	0x1172
	.asciz	"_Makeloc"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x1173
	.asciz	"_Makewloc"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x1173
	.asciz	"_Makeushloc"
	.short	0x1511
	.short	0x9
	.long	0x1173
	.asciz	"_Makexloc"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1175
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x3e
	.short	0x1504
	.short	0x15
	.short	0x20a
	.long	0x1176
	.long	0x0
	.long	0x115a
	.short	0x38
	.asciz	"locale::_Locimp"
	.asciz	".?AV_Locimp@locale@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1177
	.long	0x1143
	.long	0x94
	.short	0xce
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Compressed_pair<std::allocator<char>,std::_String_val<std::_Simple_types<char> >,1>"
	.asciz	".?AV?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x111d
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x42
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::allocator<char>"
	.asciz	".?AV?$allocator@D@std@@"
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x117c
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x117d
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x117e
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x117f
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x111f
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1181
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x111f
	.long	0x117e
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1183
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x111f
	.long	0x1065
	.long	0x117e
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1185
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x111f
	.long	0x1065
	.long	0x1065
	.long	0x117e
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1187
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1189
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1064
	.long	0x1065
	.long	0x117e
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x118b
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1068
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1065
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x118e
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x111d
	.long	0x1008c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1190
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1191
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1190
	.long	0x117e
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1193
	.long	0x0
	.short	0x62
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_String_constructor_concat_tag"
	.asciz	".?AU_String_constructor_concat_tag@std@@"
	.byte	241
	.short	0x1e
	.short	0x1201
	.long	0x6
	.long	0x1195
	.long	0x111f
	.long	0x1064
	.long	0x1065
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x6
	.long	0x1196
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x111d
	.long	0x1002c
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1195
	.long	0x1198
	.long	0x1198
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1199
	.long	0x0
	.short	0x52
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::initializer_list<char>"
	.asciz	".?AV?$initializer_list@D@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x119b
	.long	0x117e
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x119c
	.long	0x0
	.short	0x7a
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x117b
	.short	0x3
	.short	0x0
	.long	0x1180
	.short	0x3
	.short	0x0
	.long	0x1182
	.short	0x3
	.short	0x0
	.long	0x1184
	.short	0x3
	.short	0x0
	.long	0x1186
	.short	0x3
	.short	0x0
	.long	0x1188
	.short	0x3
	.short	0x0
	.long	0x118a
	.short	0x3
	.short	0x0
	.long	0x118c
	.short	0x3
	.short	0x0
	.long	0x118d
	.short	0x3
	.short	0x0
	.long	0x118f
	.short	0x3
	.short	0x0
	.long	0x1192
	.short	0x3
	.short	0x0
	.long	0x1194
	.short	0x3
	.short	0x0
	.long	0x1197
	.short	0x3
	.short	0x0
	.long	0x119a
	.short	0x3
	.short	0x0
	.long	0x119d
	.short	0xa
	.short	0x1002
	.long	0x117c
	.long	0x1002c
	.short	0xa
	.short	0x1001
	.long	0x670
	.short	0x1
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x119f
	.long	0x11a0
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11a1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1191
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x119b
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11a4
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1181
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1068
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x107a
	.long	0x0
	.short	0x2a
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11a3
	.short	0x3
	.short	0x0
	.long	0x11a5
	.short	0x3
	.short	0x0
	.long	0x11a6
	.short	0x3
	.short	0x0
	.long	0x11a7
	.short	0x3
	.short	0x0
	.long	0x11a8
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x111f
	.long	0x1065
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11aa
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1189
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x118e
	.long	0x0
	.short	0x3a
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11a3
	.short	0x3
	.short	0x0
	.long	0x11a5
	.short	0x3
	.short	0x0
	.long	0x11a6
	.short	0x3
	.short	0x0
	.long	0x11ab
	.short	0x3
	.short	0x0
	.long	0x11ac
	.short	0x3
	.short	0x0
	.long	0x11a7
	.short	0x3
	.short	0x0
	.long	0x11ad
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1198
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11af
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x70
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11b1
	.long	0x0
	.short	0x22
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11a5
	.short	0x3
	.short	0x0
	.long	0x11a6
	.short	0x3
	.short	0x0
	.long	0x11a7
	.short	0x3
	.short	0x0
	.long	0x11b2
	.short	0x32
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11a5
	.short	0x3
	.short	0x0
	.long	0x11a6
	.short	0x3
	.short	0x0
	.long	0x11ab
	.short	0x3
	.short	0x0
	.long	0x11ac
	.short	0x3
	.short	0x0
	.long	0x11a7
	.short	0x3
	.short	0x0
	.long	0x11ad
	.short	0xa6
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_String_iterator<std::_String_val<std::_Simple_types<char> > >"
	.asciz	".?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xb2
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_String_const_iterator<std::_String_val<std::_Simple_types<char> > >"
	.asciz	".?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x11b6
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1001
	.long	0x119b
	.short	0x1
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x11b7
	.long	0x11b8
	.short	0x1a
	.short	0x1009
	.long	0x11b5
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11b9
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1065
	.long	0x111f
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11bb
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1065
	.long	0x111f
	.long	0x1065
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x11bd
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1065
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11bf
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1065
	.long	0x1064
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11c1
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1065
	.long	0x1065
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11c3
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x11b7
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x11b5
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11c5
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x11b7
	.long	0x1065
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x11b5
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11c7
	.long	0x0
	.short	0x42
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11ba
	.short	0x3
	.short	0x0
	.long	0x11bc
	.short	0x3
	.short	0x0
	.long	0x11be
	.short	0x3
	.short	0x0
	.long	0x11c0
	.short	0x3
	.short	0x0
	.long	0x11c2
	.short	0x3
	.short	0x0
	.long	0x11c4
	.short	0x3
	.short	0x0
	.long	0x11c6
	.short	0x3
	.short	0x0
	.long	0x11c8
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x11b7
	.long	0x11b7
	.long	0x11b8
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11ca
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1065
	.long	0x1065
	.long	0x111f
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11cc
	.long	0x0
	.short	0x1a
	.short	0x1201
	.long	0x5
	.long	0x1065
	.long	0x23
	.long	0x111f
	.long	0x1065
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x5
	.long	0x11ce
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1065
	.long	0x23
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x11d0
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1065
	.long	0x1065
	.long	0x1064
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11d2
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1065
	.long	0x23
	.long	0x1065
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x11d4
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x11b7
	.long	0x11b7
	.long	0x111f
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11d6
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x11b7
	.long	0x11b7
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x11d8
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x11b7
	.long	0x11b7
	.long	0x1064
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11da
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x11b7
	.long	0x11b7
	.long	0x1065
	.long	0x1063
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x11dc
	.long	0x0
	.short	0x52
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11cb
	.short	0x3
	.short	0x0
	.long	0x11cd
	.short	0x3
	.short	0x0
	.long	0x11cf
	.short	0x3
	.short	0x0
	.long	0x11d1
	.short	0x3
	.short	0x0
	.long	0x11d3
	.short	0x3
	.short	0x0
	.long	0x11d5
	.short	0x3
	.short	0x0
	.long	0x11d7
	.short	0x3
	.short	0x0
	.long	0x11d9
	.short	0x3
	.short	0x0
	.long	0x11db
	.short	0x3
	.short	0x0
	.long	0x11dd
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1065
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11e1
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x11b7
	.short	0x1a
	.short	0x1009
	.long	0x11b5
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11e3
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x11b7
	.long	0x11b7
	.short	0x1a
	.short	0x1009
	.long	0x11b5
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11e5
	.long	0x0
	.short	0x22
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11e0
	.short	0x3
	.short	0x0
	.long	0x11e2
	.short	0x3
	.short	0x0
	.long	0x11e4
	.short	0x3
	.short	0x0
	.long	0x11e6
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1065
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x1198
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11e8
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x11b5
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x111e
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x11b6
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11ea
	.short	0x3
	.short	0x0
	.long	0x11ec
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11ee
	.short	0x3
	.short	0x0
	.long	0x11ef
	.short	0xd6
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::reverse_iterator<std::_String_iterator<std::_String_val<std::_Simple_types<char> > > >"
	.asciz	".?AV?$reverse_iterator@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@"
	.byte	241
	.short	0x1a
	.short	0x1009
	.long	0x11f1
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xe2
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::reverse_iterator<std::_String_const_iterator<std::_String_val<std::_Simple_types<char> > > >"
	.asciz	".?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@"
	.byte	241
	.short	0x1a
	.short	0x1009
	.long	0x11f3
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11f2
	.short	0x3
	.short	0x0
	.long	0x11f4
	.short	0x1a
	.short	0x1009
	.long	0x1071
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x106b
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11f6
	.short	0x3
	.short	0x0
	.long	0x11f7
	.short	0x82
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::basic_string_view<char,std::char_traits<char> >"
	.asciz	".?AV?$basic_string_view@DU?$char_traits@D@std@@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1009
	.long	0x11f9
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x1
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x107a
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1071
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x106b
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11fc
	.short	0x3
	.short	0x0
	.long	0x11fd
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x11ef
	.short	0x3
	.short	0x0
	.long	0x11ee
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x106e
	.long	0x23
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1203
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x106e
	.long	0x1065
	.long	0x23
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1205
	.long	0x0
	.short	0x72
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_String_val<std::_Simple_types<char> >"
	.asciz	".?AV?$_String_val@U?$_Simple_types@D@std@@@std@@"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1207
	.long	0x1002c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1208
	.long	0x1208
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x111d
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1209
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x111f
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x120b
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1064
	.long	0x1065
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x120d
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1189
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1063
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1210
	.long	0x0
	.short	0x22
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x120c
	.short	0x3
	.short	0x0
	.long	0x120e
	.short	0x3
	.short	0x0
	.long	0x120f
	.short	0x3
	.short	0x0
	.long	0x1211
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x111f
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1213
	.long	0x0
	.short	0x22
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1214
	.short	0x3
	.short	0x0
	.long	0x120e
	.short	0x3
	.short	0x0
	.long	0x120f
	.short	0x3
	.short	0x0
	.long	0x1211
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1064
	.long	0x23
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1216
	.long	0x0
	.short	0x22
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x120c
	.short	0x3
	.short	0x0
	.long	0x120e
	.short	0x3
	.short	0x0
	.long	0x1217
	.short	0x3
	.short	0x0
	.long	0x1211
	.short	0xa
	.short	0x1001
	.long	0x11f9
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1219
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x121a
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x111d
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x1
	.short	0x2
	.long	0x11e1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1181
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1068
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x121d
	.short	0x3
	.short	0x0
	.long	0x121e
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1181
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x23
	.long	0x23
	.long	0x111f
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1221
	.long	0x0
	.short	0x1a
	.short	0x1201
	.long	0x5
	.long	0x1065
	.long	0x1065
	.long	0x111f
	.long	0x1065
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x5
	.long	0x1223
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1068
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11d2
	.long	0x0
	.short	0x16
	.short	0x1201
	.long	0x4
	.long	0x1065
	.long	0x1065
	.long	0x1064
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1227
	.long	0x0
	.short	0x32
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1220
	.short	0x3
	.short	0x0
	.long	0x1222
	.short	0x3
	.short	0x0
	.long	0x1224
	.short	0x3
	.short	0x0
	.long	0x1225
	.short	0x3
	.short	0x0
	.long	0x1226
	.short	0x3
	.short	0x0
	.long	0x1228
	.short	0x1a
	.short	0x1009
	.long	0x117c
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1065
	.long	0x1065
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x122b
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x9
	.short	0x0
	.long	0x122c
	.short	0x1
	.short	0x0
	.long	0x122d
	.short	0x1a
	.short	0x1009
	.long	0x119f
	.long	0x111d
	.long	0x117a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x117e
	.long	0x111d
	.long	0x11eb
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x1
	.short	0x0
	.long	0x122f
	.short	0x1
	.short	0x0
	.long	0x1230
	.short	0x76
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::allocator_traits<std::allocator<char> >"
	.asciz	".?AU?$allocator_traits@V?$allocator@D@std@@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x46
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::char_traits<char>"
	.asciz	".?AU?$char_traits@D@std@@"
	.byte	241
	.short	0x22
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x0
	.asciz	"_At_least"
	.short	0x1502
	.short	0x3
	.short	0x1
	.asciz	"_Exactly"
	.byte	241
	.short	0xbe
	.short	0x1507
	.short	0x2
	.short	0x208
	.long	0x74
	.long	0x1234
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Allocation_policy"
	.asciz	".?AW4_Allocation_policy@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1235
	.long	0x1084
	.long	0xa30
	.short	0x3a
	.short	0x1203
	.short	0x1502
	.short	0x3
	.short	0x0
	.asciz	"_From_char"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1502
	.short	0x3
	.short	0x1
	.asciz	"_From_ptr"
	.short	0x1502
	.short	0x3
	.short	0x2
	.asciz	"_From_string"
	.byte	241
	.short	0xc2
	.short	0x1507
	.short	0x3
	.short	0x208
	.long	0x20
	.long	0x1237
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Construct_strategy"
	.asciz	".?AW4_Construct_strategy@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1238
	.long	0x1084
	.long	0xa60
	.short	0x786
	.short	0x1203
	.short	0x150e
	.short	0x1
	.long	0x1065
	.asciz	"_BUF_SIZE"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x1
	.long	0x1065
	.asciz	"_Alloc_mask"
	.short	0x150e
	.short	0x1
	.long	0x1065
	.asciz	"_Small_string_capacity"
	.byte	241
	.short	0x150e
	.short	0x1
	.long	0x1065
	.asciz	"_Least_allocation_size"
	.byte	241
	.short	0x150e
	.short	0x1
	.long	0x1001
	.asciz	"_Can_memcpy_val"
	.short	0x150e
	.short	0x1
	.long	0x1065
	.asciz	"_Memcpy_val_offset"
	.byte	241
	.short	0x150e
	.short	0x1
	.long	0x1065
	.asciz	"_Memcpy_val_size"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1065
	.asciz	"npos"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x1179
	.short	0x0
	.asciz	"_Mypair"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0xf
	.long	0x119e
	.asciz	"basic_string"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x11a2
	.asciz	"_Deallocate_for_capacity"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x117b
	.asciz	"_Construct_empty"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x5
	.long	0x11a9
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x7
	.long	0x11ae
	.asciz	"assign"
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x11b0
	.asciz	"_Take_contents"
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x11b3
	.asciz	"operator+="
	.byte	241
	.short	0x150f
	.short	0x6
	.long	0x11b4
	.asciz	"append"
	.byte	241
	.short	0x150f
	.short	0x8
	.long	0x11c9
	.asciz	"insert"
	.byte	241
	.short	0x150f
	.short	0xa
	.long	0x11de
	.asciz	"replace"
	.short	0x1511
	.short	0x3
	.long	0x117b
	.asciz	"~basic_string"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x11e7
	.asciz	"erase"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x11e9
	.asciz	"_Erase_noexcept"
	.short	0x1511
	.short	0x3
	.long	0x117b
	.asciz	"clear"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11ed
	.asciz	"begin"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11ed
	.asciz	"end"
	.short	0x150f
	.short	0x2
	.long	0x11f0
	.asciz	"_Unchecked_begin"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11f0
	.asciz	"_Unchecked_end"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11f5
	.asciz	"rbegin"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11f5
	.asciz	"rend"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x11ec
	.asciz	"cbegin"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x11ec
	.asciz	"cend"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x11f4
	.asciz	"crbegin"
	.short	0x1511
	.short	0x3
	.long	0x11f4
	.asciz	"crend"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x117b
	.asciz	"shrink_to_fit"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11f8
	.asciz	"at"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11f8
	.asciz	"operator[]"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x11fa
	.asciz	"operator basic_string_view"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x11fb
	.asciz	"push_back"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x117b
	.asciz	"pop_back"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11fe
	.asciz	"front"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11fe
	.asciz	"back"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x11ef
	.asciz	"c_str"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x11ff
	.asciz	"data"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1200
	.asciz	"length"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1200
	.asciz	"size"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1200
	.asciz	"max_size"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x118f
	.asciz	"resize"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1200
	.asciz	"capacity"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1201
	.asciz	"reserve"
	.short	0x1511
	.short	0x3
	.long	0x1202
	.asciz	"empty"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1204
	.asciz	"copy"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1206
	.asciz	"_Copy_s"
	.short	0x1511
	.short	0xb
	.long	0x120a
	.asciz	"_Swap_bx_large_with_small"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x11b0
	.asciz	"_Swap_data"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x11b0
	.asciz	"swap"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x1212
	.asciz	"find"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x1212
	.asciz	"rfind"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x1212
	.asciz	"find_first_of"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x1215
	.asciz	"find_last_of"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x1218
	.asciz	"find_first_not_of"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x1212
	.asciz	"find_last_not_of"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x121b
	.asciz	"_Starts_with"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x121c
	.asciz	"substr"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x121f
	.asciz	"_Equal"
	.byte	241
	.short	0x150f
	.short	0x6
	.long	0x1229
	.asciz	"compare"
	.short	0x1511
	.short	0x3
	.long	0x122a
	.asciz	"get_allocator"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x122e
	.asciz	"_Calculate_growth"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x117b
	.asciz	"_Become_small"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x1201
	.asciz	"_Eos"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x117b
	.asciz	"_Tidy_deallocate"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x117b
	.asciz	"_Orphan_all"
	.short	0x1511
	.short	0x1
	.long	0x11b0
	.asciz	"_Swap_proxy_and_iterators"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1231
	.asciz	"_Getal"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x117c
	.asciz	"_Alty"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1232
	.asciz	"_Alty_traits"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1207
	.asciz	"_Scary_val"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1233
	.asciz	"traits_type"
	.short	0x1510
	.short	0x0
	.long	0x117c
	.asciz	"allocator_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x70
	.asciz	"value_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x23
	.asciz	"size_type"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"difference_type"
	.short	0x1510
	.short	0x0
	.long	0x670
	.asciz	"pointer"
	.short	0x1510
	.short	0x0
	.long	0x106a
	.asciz	"const_pointer"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1071
	.asciz	"reference"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x106b
	.asciz	"const_reference"
	.short	0x1510
	.short	0x0
	.long	0x11b5
	.asciz	"iterator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x11b6
	.asciz	"const_iterator"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x11f1
	.asciz	"reverse_iterator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x11f3
	.asciz	"const_reverse_iterator"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1235
	.asciz	"_Allocation_policy"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1238
	.asciz	"_Construct_strategy"
	.short	0x9e
	.short	0x1504
	.short	0xb3
	.short	0x212
	.long	0x123a
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"std::basic_string<char,std::char_traits<char>,std::allocator<char> >"
	.asciz	".?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x123b
	.long	0x1084
	.long	0x921
	.short	0x36
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Facet_base"
	.asciz	".?AV_Facet_base@std@@"
	.short	0xa
	.short	0x1002
	.long	0x112f
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x123e
	.long	0x1170
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x112d
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x123f
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x112d
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x112d
	.long	0x1241
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x123d
	.long	0x1000c
	.short	0x1a
	.short	0x1009
	.long	0x1243
	.long	0x112d
	.long	0x1241
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x112d
	.long	0x1241
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1130
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x112e
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1246
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x112d
	.long	0x1241
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1247
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x2
	.short	0x0
	.long	0x1245
	.short	0x3
	.short	0x0
	.long	0x1248
	.short	0xa
	.short	0x1002
	.long	0x112d
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x124a
	.long	0x112d
	.long	0x1241
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1247
	.long	0x0
	.short	0x92
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x123d
	.short	0x0
	.byte	242
	.byte	241
	.short	0x1400
	.short	0x3
	.long	0x10fe
	.short	0x8
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x22
	.short	0x8
	.asciz	"_Myrefs"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1240
	.asciz	"_Getcat"
	.short	0x1511
	.short	0x7
	.long	0x1242
	.asciz	"_Incref"
	.short	0x1511
	.short	0x7
	.long	0x1244
	.asciz	"_Decref"
	.short	0x150f
	.short	0x2
	.long	0x1249
	.asciz	"facet"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x6
	.long	0x1242
	.asciz	"~facet"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x124b
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x3a
	.short	0x1504
	.short	0xa
	.short	0x20a
	.long	0x124c
	.long	0x0
	.long	0x115a
	.short	0x10
	.asciz	"locale::facet"
	.asciz	".?AVfacet@locale@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x124d
	.long	0x1143
	.long	0x65
	.short	0x2e
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Lockit"
	.asciz	".?AV_Lockit@std@@"
	.short	0x3a
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Yarn<wchar_t>"
	.asciz	".?AV?$_Yarn@_W@std@@"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x113a
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1251
	.long	0x106a
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113a
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1252
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1251
	.long	0x74
	.long	0x106a
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113a
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1254
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0xb
	.short	0x0
	.long	0x1253
	.short	0xb
	.short	0x0
	.long	0x1255
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1251
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113a
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1257
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x113a
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1259
	.long	0x113a
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1254
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x113a
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113a
	.long	0x125b
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x108c
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x74
	.long	0x106a
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113a
	.long	0x125b
	.byte	0x0
	.byte	0x2
	.short	0x2
	.long	0x125d
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113a
	.long	0x125b
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x113d
	.long	0x0
	.short	0x1a
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x125c
	.short	0x3
	.short	0x0
	.long	0x125e
	.short	0x3
	.short	0x0
	.long	0x125f
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113a
	.long	0x125b
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1259
	.long	0x113a
	.long	0x125b
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x125d
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x113b
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x113a
	.long	0x1263
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x2e
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Collvec"
	.asciz	".?AU_Collvec@@"
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1009
	.long	0x1265
	.long	0x113a
	.long	0x1263
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x2e
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Ctypevec"
	.asciz	".?AU_Ctypevec@@"
	.short	0x1a
	.short	0x1009
	.long	0x1267
	.long	0x113a
	.long	0x1263
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Cvtvec"
	.asciz	".?AU_Cvtvec@@"
	.short	0x1a
	.short	0x1009
	.long	0x1269
	.long	0x113a
	.long	0x1263
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"lconv"
	.asciz	".?AUlconv@@"
	.short	0xa
	.short	0x1001
	.long	0x126b
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x126c
	.long	0x1000c
	.short	0x1a
	.short	0x1009
	.long	0x126d
	.long	0x113a
	.long	0x1263
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x32
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"_Timevec"
	.asciz	".?AV_Timevec@std@@"
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1009
	.long	0x126f
	.long	0x113a
	.long	0x1263
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x113a
	.long	0x1263
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x21
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1272
	.long	0x1000c
	.short	0x1a
	.short	0x1009
	.long	0x1273
	.long	0x113a
	.long	0x1263
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1259
	.long	0x113a
	.long	0x125b
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x113d
	.long	0x0
	.short	0x296
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x124f
	.short	0x0
	.asciz	"_Lock"
	.short	0x150d
	.short	0x1
	.long	0x115d
	.short	0x8
	.asciz	"_Days"
	.short	0x150d
	.short	0x1
	.long	0x115d
	.short	0x18
	.asciz	"_Months"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x1250
	.short	0x28
	.asciz	"_W_Days"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x1250
	.short	0x38
	.asciz	"_W_Months"
	.short	0x150d
	.short	0x1
	.long	0x115d
	.short	0x48
	.asciz	"_Oldlocname"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x115d
	.short	0x58
	.asciz	"_Newlocname"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1256
	.asciz	"_Locinfo_ctor"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1258
	.asciz	"_Locinfo_dtor"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x125a
	.asciz	"_Locinfo_Addcats"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x3
	.long	0x1260
	.asciz	"_Locinfo"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1261
	.asciz	"~_Locinfo"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1262
	.asciz	"_Addcats"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1264
	.asciz	"_Getname"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1266
	.asciz	"_Getcoll"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1268
	.asciz	"_Getctype"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x126a
	.asciz	"_Getcvt"
	.short	0x1511
	.short	0x3
	.long	0x126e
	.asciz	"_Getlconv"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1270
	.asciz	"_Gettnames"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1264
	.asciz	"_Getdays"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1264
	.asciz	"_Getmonths"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1264
	.asciz	"_Getfalse"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1264
	.asciz	"_Gettrue"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1271
	.asciz	"_Getdateorder"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1270
	.asciz	"_W_Gettnames"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1274
	.asciz	"_W_Getdays"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1274
	.asciz	"_W_Getmonths"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1275
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1265
	.asciz	"_Collvec"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1267
	.asciz	"_Ctypevec"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1269
	.asciz	"_Cvtvec"
	.short	0x1510
	.short	0x0
	.long	0x126f
	.asciz	"_Timevec"
	.byte	243
	.byte	242
	.byte	241
	.short	0x32
	.short	0x1504
	.short	0x23
	.short	0x212
	.long	0x1276
	.long	0x0
	.long	0x0
	.short	0x68
	.asciz	"_Locinfo"
	.asciz	".?AV_Locinfo@std@@"
	.byte	242
	.byte	241
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xlocinfo"
	.short	0xe
	.short	0x1606
	.long	0x1277
	.long	0x1278
	.long	0xdb
	.short	0xa
	.short	0x1002
	.long	0x113f
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113f
	.long	0x127a
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1130
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x113f
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x127c
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x127d
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x113f
	.long	0x127a
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x127e
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x127b
	.short	0x3
	.short	0x0
	.long	0x127f
	.short	0xa
	.short	0x1002
	.long	0x113f
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1281
	.long	0x113f
	.long	0x127a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x127e
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x113f
	.long	0x127a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x66
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x23
	.short	0x0
	.asciz	"_Id"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x1
	.long	0x74
	.asciz	"_Id_cnt"
	.short	0x150f
	.short	0x2
	.long	0x1280
	.asciz	"id"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1282
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1283
	.asciz	"operator unsigned long long"
	.short	0x36
	.short	0x1504
	.short	0x6
	.short	0x20a
	.long	0x1284
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"locale::id"
	.asciz	".?AVid@locale@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1285
	.long	0x1143
	.long	0x4b
	.short	0xa
	.short	0x1002
	.long	0x1140
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1140
	.long	0x1287
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x2e
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x115b
	.short	0x0
	.asciz	"_Target"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1288
	.asciz	"~_Facet_guard"
	.byte	242
	.byte	241
	.short	0x4a
	.short	0x1505
	.short	0x2
	.short	0x20a
	.long	0x1289
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"locale::_Facet_guard"
	.asciz	".?AU_Facet_guard@locale@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x128a
	.long	0x1143
	.long	0x8b
	.short	0xa
	.short	0x1002
	.long	0x115d
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x115d
	.long	0x128c
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x115d
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x128e
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x128f
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x115d
	.long	0x128c
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1290
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x115d
	.long	0x128c
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x108c
	.long	0x0
	.short	0x1a
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x128d
	.short	0x3
	.short	0x0
	.long	0x1291
	.short	0x3
	.short	0x0
	.long	0x1292
	.short	0xa
	.short	0x1002
	.long	0x115d
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1294
	.long	0x115d
	.long	0x128c
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1290
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1294
	.long	0x115d
	.long	0x128c
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x108c
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1295
	.short	0x3
	.short	0x0
	.long	0x1296
	.short	0xa
	.short	0x1002
	.long	0x128e
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x115d
	.long	0x1298
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x115d
	.long	0x1298
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xaa
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x670
	.short	0x0
	.asciz	"_Myptr"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x70
	.short	0x8
	.asciz	"_Nul"
	.byte	241
	.short	0x150f
	.short	0x3
	.long	0x1293
	.asciz	"_Yarn"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1297
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x128d
	.asciz	"~_Yarn"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1299
	.asciz	"empty"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x129a
	.asciz	"c_str"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1299
	.asciz	"_Empty"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x129a
	.asciz	"_C_str"
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x128d
	.asciz	"_Tidy"
	.byte	242
	.byte	241
	.short	0x36
	.short	0x1504
	.short	0xd
	.short	0x202
	.long	0x129b
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"_Yarn<char>"
	.asciz	".?AV?$_Yarn@D@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x129c
	.long	0x1278
	.long	0x8b
	.short	0xa
	.short	0x1002
	.long	0x1179
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x119f
	.long	0x1179
	.long	0x129e
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x1179
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x12a0
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x117e
	.long	0x1179
	.long	0x12a1
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x129f
	.short	0x3
	.short	0x0
	.long	0x12a2
	.short	0x46
	.short	0x1203
	.short	0x1400
	.short	0x1
	.long	0x117c
	.short	0x0
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1207
	.short	0x0
	.asciz	"_Myval2"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x12a3
	.asciz	"_Get_first"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x117c
	.asciz	"_Mybase"
	.short	0xce
	.short	0x1504
	.short	0x5
	.short	0x212
	.long	0x12a4
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"std::_Compressed_pair<std::allocator<char>,std::_String_val<std::_Simple_types<char> >,1>"
	.asciz	".?AV?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@"
	.byte	241
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xmemory"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x12a5
	.long	0x12a6
	.long	0x5ea
	.short	0xa
	.short	0x1002
	.long	0x117d
	.long	0x1040c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1071
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x117c
	.long	0x12a8
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x12a9
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x106b
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x117c
	.long	0x12a8
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x12ab
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x12aa
	.short	0x3
	.short	0x0
	.long	0x12ac
	.short	0xa
	.short	0x1002
	.long	0x117c
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x117c
	.long	0x12ae
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x117c
	.long	0x12ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x117f
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x12af
	.short	0x3
	.short	0x0
	.long	0x12b0
	.short	0x1a
	.short	0x1009
	.long	0x119f
	.long	0x117c
	.long	0x12ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x117f
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x106e
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x117c
	.long	0x12ae
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x12b3
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x117c
	.long	0x12ae
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x3
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x12b6
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1065
	.long	0x12b7
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x117c
	.long	0x12ae
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x12b8
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x12b5
	.short	0x3
	.short	0x0
	.long	0x12b9
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x117c
	.long	0x12a8
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x5a
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::integral_constant<bool,1>"
	.asciz	".?AU?$integral_constant@_N$00@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1aa
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x1065
	.asciz	"_Minimum_asan_allocation_alignment"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x12ad
	.asciz	"address"
	.short	0x150f
	.short	0x2
	.long	0x12b1
	.asciz	"allocator"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12af
	.asciz	"~allocator"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12b2
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12b4
	.asciz	"deallocate"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x12ba
	.asciz	"allocate"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12bb
	.asciz	"max_size"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x117c
	.asciz	"_From_primary"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x70
	.asciz	"value_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x670
	.asciz	"pointer"
	.short	0x1510
	.short	0x0
	.long	0x106a
	.asciz	"const_pointer"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1071
	.asciz	"reference"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x106b
	.asciz	"const_reference"
	.short	0x1510
	.short	0x0
	.long	0x23
	.asciz	"size_type"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"difference_type"
	.short	0x1510
	.short	0x0
	.long	0x12bc
	.asciz	"propagate_on_container_move_assignment"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x12bc
	.asciz	"is_always_equal"
	.short	0x42
	.short	0x1504
	.short	0x15
	.short	0x212
	.long	0x12bd
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::allocator<char>"
	.asciz	".?AV?$allocator@D@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x12be
	.long	0x12a6
	.long	0x39c
	.short	0xa
	.short	0x1002
	.long	0x11f9
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x11f9
	.long	0x12c0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x1219
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x12c2
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x11f9
	.long	0x12c0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x12c3
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x106a
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x12c5
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x11f9
	.long	0x12c0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x12c6
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x12c5
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x11f9
	.long	0x12c0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x12c8
	.long	0x0
	.short	0x22
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x12c1
	.short	0x3
	.short	0x0
	.long	0x12c4
	.short	0x3
	.short	0x0
	.long	0x12c7
	.short	0x3
	.short	0x0
	.long	0x12c9
	.short	0xa
	.short	0x1002
	.long	0x11f9
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x12cb
	.long	0x11f9
	.long	0x12c0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x12c3
	.long	0x0
	.short	0x82
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_String_view_iterator<std::char_traits<char> >"
	.asciz	".?AV?$_String_view_iterator@U?$char_traits@D@std@@@std@@"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1219
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x12cd
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xb6
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::reverse_iterator<std::_String_view_iterator<std::char_traits<char> > >"
	.asciz	".?AV?$reverse_iterator@V?$_String_view_iterator@U?$char_traits@D@std@@@std@@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1009
	.long	0x12d0
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x106b
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x106b
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x11f9
	.long	0x12c0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x12cb
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x11f9
	.long	0x12c0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x12d8
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1203
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1205
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x11f9
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x1
	.short	0x2
	.long	0x11e8
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x121a
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x121a
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x1065
	.long	0x1065
	.long	0x1219
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x12df
	.long	0x0
	.short	0x1a
	.short	0x1201
	.long	0x5
	.long	0x1065
	.long	0x1065
	.long	0x1219
	.long	0x1065
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x5
	.long	0x12e1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1068
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11d2
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x74
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x4
	.long	0x1227
	.long	0x0
	.short	0x32
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x12de
	.short	0x3
	.short	0x0
	.long	0x12e0
	.short	0x3
	.short	0x0
	.long	0x12e2
	.short	0x3
	.short	0x0
	.long	0x12e3
	.short	0x3
	.short	0x0
	.long	0x12e4
	.short	0x3
	.short	0x0
	.long	0x12e5
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1219
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x12e7
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1210
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x120d
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1189
	.long	0x0
	.short	0x22
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x12e8
	.short	0x3
	.short	0x0
	.long	0x12e9
	.short	0x3
	.short	0x0
	.long	0x12ea
	.short	0x3
	.short	0x0
	.long	0x12eb
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x11f9
	.long	0x12ce
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11e1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x11f9
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x452
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x1065
	.asciz	"npos"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x106a
	.short	0x0
	.asciz	"_Mydata"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x23
	.short	0x8
	.asciz	"_Mysize"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x12ca
	.asciz	"basic_string_view"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12cc
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12cf
	.asciz	"begin"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12cf
	.asciz	"end"
	.short	0x1511
	.short	0x3
	.long	0x12cf
	.asciz	"cbegin"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12cf
	.asciz	"cend"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d1
	.asciz	"rbegin"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d1
	.asciz	"rend"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d1
	.asciz	"crbegin"
	.short	0x1511
	.short	0x3
	.long	0x12d1
	.asciz	"crend"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d2
	.asciz	"_Unchecked_begin"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d2
	.asciz	"_Unchecked_end"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d3
	.asciz	"size"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d3
	.asciz	"length"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d4
	.asciz	"empty"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d2
	.asciz	"data"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d3
	.asciz	"max_size"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d5
	.asciz	"operator[]"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d5
	.asciz	"at"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d6
	.asciz	"front"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d6
	.asciz	"back"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d7
	.asciz	"remove_prefix"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d7
	.asciz	"remove_suffix"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12d9
	.asciz	"swap"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12da
	.asciz	"copy"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12db
	.asciz	"_Copy_s"
	.short	0x1511
	.short	0x3
	.long	0x12dc
	.asciz	"substr"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12dd
	.asciz	"_Equal"
	.byte	241
	.short	0x150f
	.short	0x6
	.long	0x12e6
	.asciz	"compare"
	.short	0x150f
	.short	0x4
	.long	0x12ec
	.asciz	"find"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x12ec
	.asciz	"rfind"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x12ec
	.asciz	"find_first_of"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x12ec
	.asciz	"find_last_of"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x12ec
	.asciz	"find_first_not_of"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x4
	.long	0x12ec
	.asciz	"find_last_not_of"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12dd
	.asciz	"_Starts_with"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x12ed
	.asciz	"_Check_offset"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x12ed
	.asciz	"_Check_offset_exclusive"
	.short	0x1511
	.short	0x1
	.long	0x12ee
	.asciz	"_Clamp_suffix_size"
	.byte	241
	.short	0x1511
	.short	0x9
	.long	0x12ef
	.asciz	"_Xran"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1233
	.asciz	"traits_type"
	.short	0x1510
	.short	0x0
	.long	0x70
	.asciz	"value_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x670
	.asciz	"pointer"
	.short	0x1510
	.short	0x0
	.long	0x106a
	.asciz	"const_pointer"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1071
	.asciz	"reference"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x106b
	.asciz	"const_reference"
	.short	0x1510
	.short	0x0
	.long	0x12cd
	.asciz	"const_iterator"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x12cd
	.asciz	"iterator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x12d0
	.asciz	"const_reverse_iterator"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x12d0
	.asciz	"reverse_iterator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x23
	.asciz	"size_type"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"difference_type"
	.short	0x82
	.short	0x1504
	.short	0x51
	.short	0x212
	.long	0x12f0
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"std::basic_string_view<char,std::char_traits<char> >"
	.asciz	".?AV?$basic_string_view@DU?$char_traits@D@std@@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x12f1
	.long	0x1084
	.long	0x490
	.short	0x4a
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Container_base12"
	.asciz	".?AU_Container_base12@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x76
	.short	0x1506
	.short	0x0
	.short	0x288
	.long	0x0
	.short	0x0
	.asciz	"std::_String_val<std::_Simple_types<char> >::_Bxty"
	.asciz	".?AT_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@"
	.short	0xa
	.short	0x1002
	.long	0x1207
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1207
	.long	0x12f5
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x1207
	.long	0x12f5
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x1207
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x12f8
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x106a
	.long	0x1207
	.long	0x12f9
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x12f7
	.short	0x3
	.short	0x0
	.long	0x12fa
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x1207
	.long	0x12f9
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1207
	.long	0x12f9
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x11df
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1207
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x1207
	.long	0x12f9
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x11e1
	.long	0x0
	.short	0x1f6
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x12f3
	.short	0x0
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1065
	.asciz	"_BUF_SIZE"
	.byte	242
	.byte	241
	.short	0x150e
	.short	0x3
	.long	0x1065
	.asciz	"_Alloc_mask"
	.short	0x150e
	.short	0x3
	.long	0x1065
	.asciz	"_Small_string_capacity"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x12f4
	.short	0x8
	.asciz	"_Bx"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x23
	.short	0x18
	.asciz	"_Mysize"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x23
	.short	0x20
	.asciz	"_Myres"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12f6
	.asciz	"_String_val"
	.short	0x150f
	.short	0x2
	.long	0x12fb
	.asciz	"_Myptr"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12fc
	.asciz	"_Large_mode_engaged"
	.short	0x1511
	.short	0x3
	.long	0x12f6
	.asciz	"_Activate_SSO_buffer"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12fd
	.asciz	"_Check_offset"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12fd
	.asciz	"_Check_offset_exclusive"
	.short	0x1511
	.short	0xb
	.long	0x12fe
	.asciz	"_Xran"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x12ff
	.asciz	"_Clamp_suffix_size"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x70
	.asciz	"value_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x23
	.asciz	"size_type"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"difference_type"
	.short	0x1510
	.short	0x0
	.long	0x670
	.asciz	"pointer"
	.short	0x1510
	.short	0x0
	.long	0x106a
	.asciz	"const_pointer"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1071
	.asciz	"reference"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x106b
	.asciz	"const_reference"
	.short	0x1510
	.short	0x0
	.long	0x12f4
	.asciz	"_Bxty"
	.byte	242
	.byte	241
	.short	0x72
	.short	0x1504
	.short	0x18
	.short	0x212
	.long	0x1300
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"std::_String_val<std::_Simple_types<char> >"
	.asciz	".?AV?$_String_val@U?$_Simple_types@D@std@@@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1301
	.long	0x1084
	.long	0x89a
	.short	0x86
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Default_allocator_traits<std::allocator<char> >"
	.asciz	".?AU?$_Default_allocator_traits@V?$allocator@D@std@@@std@@"
	.byte	241
	.short	0xe
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x1303
	.short	0x0
	.byte	242
	.byte	241
	.short	0x76
	.short	0x1505
	.short	0x1
	.short	0x200
	.long	0x1304
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::allocator_traits<std::allocator<char> >"
	.asciz	".?AU?$allocator_traits@V?$allocator@D@std@@@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1305
	.long	0x12a6
	.long	0x2ee
	.short	0xe
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x1061
	.short	0x0
	.byte	242
	.byte	241
	.short	0x46
	.short	0x1505
	.short	0x1
	.short	0x200
	.long	0x1307
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::char_traits<char>"
	.asciz	".?AU?$char_traits@D@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1308
	.long	0x1084
	.long	0x1e0
	.short	0xa
	.short	0x1002
	.long	0x115a
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x123d
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x123d
	.long	0x130b
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1243
	.long	0x123d
	.long	0x130b
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x4e
	.short	0x1203
	.short	0x1409
	.short	0x0
	.long	0x130a
	.short	0x1511
	.short	0x13
	.long	0x130c
	.long	0x0
	.asciz	"~_Facet_base"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1b
	.long	0x130c
	.long	0x8
	.asciz	"_Incref"
	.short	0x1511
	.short	0x1b
	.long	0x130d
	.long	0x10
	.asciz	"_Decref"
	.short	0x36
	.short	0x1504
	.short	0x4
	.short	0x202
	.long	0x130e
	.long	0x0
	.long	0x115a
	.short	0x8
	.asciz	"_Facet_base"
	.asciz	".?AV_Facet_base@std@@"
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xfacet"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x130f
	.long	0x1310
	.long	0x17
	.short	0xa
	.short	0x1002
	.long	0x124f
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x124f
	.long	0x1312
	.byte	0x0
	.byte	0x2
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x124f
	.long	0x1312
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x124f
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1315
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1316
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x124f
	.long	0x1312
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1317
	.long	0x0
	.short	0x1a
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1313
	.short	0x3
	.short	0x0
	.long	0x1314
	.short	0x3
	.short	0x0
	.long	0x1318
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x124f
	.long	0x1312
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x124f
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1027
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x124f
	.long	0x1000c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x131c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x124f
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x131d
	.long	0x0
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x131c
	.long	0x74
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x124f
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x131f
	.long	0x0
	.short	0x1a
	.short	0x1206
	.short	0xb
	.short	0x0
	.long	0x131b
	.short	0x9
	.short	0x0
	.long	0x131e
	.short	0x9
	.short	0x0
	.long	0x1320
	.short	0x12
	.short	0x1206
	.short	0xb
	.short	0x0
	.long	0x131b
	.short	0x9
	.short	0x0
	.long	0x131e
	.short	0xa
	.short	0x1002
	.long	0x124f
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1323
	.long	0x124f
	.long	0x1312
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1317
	.long	0x0
	.short	0x7e
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x74
	.short	0x0
	.asciz	"_Locktype"
	.short	0x150f
	.short	0x3
	.long	0x1319
	.asciz	"_Lockit"
	.short	0x1511
	.short	0x3
	.long	0x131a
	.asciz	"~_Lockit"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x3
	.long	0x1321
	.asciz	"_Lockit_ctor"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1322
	.asciz	"_Lockit_dtor"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1324
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x2e
	.short	0x1504
	.short	0xb
	.short	0x202
	.long	0x1325
	.long	0x0
	.long	0x0
	.short	0x4
	.asciz	"_Lockit"
	.asciz	".?AV_Lockit@std@@"
	.short	0xe
	.short	0x1606
	.long	0x1326
	.long	0x1111
	.long	0x153
	.short	0xa
	.short	0x1002
	.long	0x1250
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1250
	.long	0x1328
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x1250
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x132a
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x132b
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1250
	.long	0x1328
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x132c
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x71
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x132e
	.long	0x1000c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x132f
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1250
	.long	0x1328
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1330
	.long	0x0
	.short	0x1a
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1329
	.short	0x3
	.short	0x0
	.long	0x132d
	.short	0x3
	.short	0x0
	.long	0x1331
	.short	0xa
	.short	0x1002
	.long	0x1250
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1333
	.long	0x1250
	.long	0x1328
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x132c
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x1333
	.long	0x1250
	.long	0x1328
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1330
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1334
	.short	0x3
	.short	0x0
	.long	0x1335
	.short	0xa
	.short	0x1002
	.long	0x132a
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x1250
	.long	0x1337
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x132f
	.long	0x1250
	.long	0x1337
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xaa
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x671
	.short	0x0
	.asciz	"_Myptr"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x71
	.short	0x8
	.asciz	"_Nul"
	.byte	241
	.short	0x150f
	.short	0x3
	.long	0x1332
	.asciz	"_Yarn"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1336
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1329
	.asciz	"~_Yarn"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1338
	.asciz	"empty"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1339
	.asciz	"c_str"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1338
	.asciz	"_Empty"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1339
	.asciz	"_C_str"
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x1329
	.asciz	"_Tidy"
	.byte	242
	.byte	241
	.short	0x3a
	.short	0x1504
	.short	0xd
	.short	0x202
	.long	0x133a
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"_Yarn<wchar_t>"
	.asciz	".?AV?$_Yarn@_W@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x133b
	.long	0x1278
	.long	0x8b
	.short	0x2a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x75
	.short	0x0
	.asciz	"_Page"
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x8
	.asciz	"_LocaleName"
	.byte	242
	.byte	241
	.short	0x2e
	.short	0x1505
	.short	0x2
	.short	0x200
	.long	0x133d
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"_Collvec"
	.asciz	".?AU_Collvec@@"
	.byte	242
	.byte	241
	.short	0x7e
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\__msvc_xlocinfo_types.hpp"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x133e
	.long	0x133f
	.long	0x14
	.short	0xa
	.short	0x1001
	.long	0x11
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1341
	.long	0x1000c
	.short	0x52
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x75
	.short	0x0
	.asciz	"_Page"
	.short	0x150d
	.short	0x3
	.long	0x1342
	.short	0x8
	.asciz	"_Table"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x10
	.asciz	"_Delfl"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x18
	.asciz	"_LocaleName"
	.byte	242
	.byte	241
	.short	0x2e
	.short	0x1505
	.short	0x4
	.short	0x200
	.long	0x1343
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"_Ctypevec"
	.asciz	".?AU_Ctypevec@@"
	.short	0xe
	.short	0x1606
	.long	0x1344
	.long	0x133f
	.long	0x19
	.short	0xe
	.short	0x1503
	.long	0x20
	.long	0x23
	.short	0x20
	.byte	0
	.byte	241
	.short	0x56
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x75
	.short	0x0
	.asciz	"_Page"
	.short	0x150d
	.short	0x3
	.long	0x75
	.short	0x4
	.asciz	"_Mbcurmax"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"_Isclocale"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1346
	.short	0xc
	.asciz	"_Isleadbyte"
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x4
	.short	0x200
	.long	0x1347
	.long	0x0
	.long	0x0
	.short	0x2c
	.asciz	"_Cvtvec"
	.asciz	".?AU_Cvtvec@@"
	.short	0xe
	.short	0x1606
	.long	0x1348
	.long	0x133f
	.long	0x20
	.short	0x2ba
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x0
	.asciz	"decimal_point"
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x8
	.asciz	"thousands_sep"
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x10
	.asciz	"grouping"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x18
	.asciz	"int_curr_symbol"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x20
	.asciz	"currency_symbol"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x28
	.asciz	"mon_decimal_point"
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x30
	.asciz	"mon_thousands_sep"
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x38
	.asciz	"mon_grouping"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x40
	.asciz	"positive_sign"
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x48
	.asciz	"negative_sign"
	.short	0x150d
	.short	0x3
	.long	0x70
	.short	0x50
	.asciz	"int_frac_digits"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x70
	.short	0x51
	.asciz	"frac_digits"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x70
	.short	0x52
	.asciz	"p_cs_precedes"
	.short	0x150d
	.short	0x3
	.long	0x70
	.short	0x53
	.asciz	"p_sep_by_space"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x70
	.short	0x54
	.asciz	"n_cs_precedes"
	.short	0x150d
	.short	0x3
	.long	0x70
	.short	0x55
	.asciz	"n_sep_by_space"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x70
	.short	0x56
	.asciz	"p_sign_posn"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x70
	.short	0x57
	.asciz	"n_sign_posn"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x58
	.asciz	"_W_decimal_point"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x60
	.asciz	"_W_thousands_sep"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x68
	.asciz	"_W_int_curr_symbol"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x70
	.asciz	"_W_currency_symbol"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x78
	.asciz	"_W_mon_decimal_point"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x80
	.asciz	"_W_mon_thousands_sep"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x88
	.asciz	"_W_positive_sign"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x671
	.short	0x90
	.asciz	"_W_negative_sign"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x1a
	.short	0x200
	.long	0x134a
	.long	0x0
	.long	0x0
	.short	0x98
	.asciz	"lconv"
	.asciz	".?AUlconv@@"
	.short	0x52
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.22621.0\\ucrt\\locale.h"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x134b
	.long	0x134c
	.long	0x22
	.short	0xa
	.short	0x1002
	.long	0x126f
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x126f
	.long	0x134e
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1138
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x126f
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1350
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1351
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x126f
	.long	0x134e
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x1352
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x134f
	.short	0x3
	.short	0x0
	.long	0x1353
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x126f
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x126f
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x1356
	.long	0x126f
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1352
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x1350
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x603
	.long	0x126f
	.long	0x1358
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x62
	.short	0x1203
	.short	0x150d
	.short	0x1
	.long	0x603
	.short	0x0
	.asciz	"_Timeptr"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1354
	.asciz	"_Timevec"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1355
	.asciz	"~_Timevec"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1357
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1359
	.asciz	"_Getptr"
	.short	0x32
	.short	0x1504
	.short	0x6
	.short	0x202
	.long	0x135a
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"_Timevec"
	.asciz	".?AV_Timevec@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x135b
	.long	0x1278
	.long	0x6c
	.short	0xa
	.short	0x1001
	.long	0x12bc
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x135d
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x12bc
	.long	0x135e
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x62
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x1001
	.asciz	"value"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x135f
	.asciz	"operator bool"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x135f
	.asciz	"operator()"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x30
	.asciz	"value_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x12bc
	.asciz	"type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x5a
	.short	0x1505
	.short	0x5
	.short	0x210
	.long	0x1360
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::integral_constant<bool,1>"
	.asciz	".?AU?$integral_constant@_N$00@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x6e
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\xtr1common"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1361
	.long	0x1362
	.long	0x1a
	.short	0x46
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Container_proxy"
	.asciz	".?AU_Container_proxy@std@@"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1364
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x12f3
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x12f3
	.long	0x1366
	.byte	0x0
	.byte	0x2
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x12f3
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1368
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1369
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x12f3
	.long	0x1366
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x136a
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x1367
	.short	0x3
	.short	0x0
	.long	0x136b
	.short	0xa
	.short	0x1002
	.long	0x12f3
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x136d
	.long	0x12f3
	.long	0x1366
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x136a
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x12f3
	.long	0x1366
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x136d
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x12f3
	.long	0x1366
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1370
	.long	0x0
	.short	0x116
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1365
	.short	0x0
	.asciz	"_Myproxy"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x136c
	.asciz	"_Container_base12"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x136e
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x136f
	.asciz	"_Orphan_all"
	.short	0x1511
	.short	0x3
	.long	0x1371
	.asciz	"_Swap_proxy_and_iterators"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x136f
	.asciz	"_Orphan_all_unlocked_v3"
	.short	0x1511
	.short	0x1
	.long	0x1371
	.asciz	"_Swap_proxy_and_iterators_unlocked"
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x136f
	.asciz	"_Orphan_all_locked_v3"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x1371
	.asciz	"_Swap_proxy_and_iterators_locked"
	.byte	243
	.byte	242
	.byte	241
	.short	0x4a
	.short	0x1505
	.short	0xa
	.short	0x202
	.long	0x1372
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"std::_Container_base12"
	.asciz	".?AU_Container_base12@std@@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1373
	.long	0x12a6
	.long	0x4b0
	.short	0xe
	.short	0x1503
	.long	0x70
	.long	0x23
	.short	0x10
	.byte	0
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x12f4
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x12f4
	.long	0x1376
	.byte	0x0
	.byte	0x2
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x12f4
	.long	0x1376
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x6e
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1375
	.short	0x0
	.asciz	"_Buf"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x670
	.short	0x0
	.asciz	"_Ptr"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1375
	.short	0x0
	.asciz	"_Alias"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1377
	.asciz	"_Bxty"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1378
	.asciz	"~_Bxty"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1378
	.asciz	"_Switch_to_buf"
	.byte	241
	.short	0x76
	.short	0x1506
	.short	0x6
	.short	0x608
	.long	0x1379
	.short	0x10
	.asciz	"std::_String_val<std::_Simple_types<char> >::_Bxty"
	.asciz	".?AT_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@"
	.short	0xe
	.short	0x1606
	.long	0x137a
	.long	0x1084
	.long	0x8e9
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x119f
	.long	0x1065
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x1303
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x137c
	.long	0x0
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x119f
	.long	0x1065
	.long	0x12b7
	.short	0x1a
	.short	0x1009
	.long	0x670
	.long	0x1303
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x137e
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0xb
	.short	0x0
	.long	0x137d
	.short	0xb
	.short	0x0
	.long	0x137f
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1303
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x11a1
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x23
	.long	0x1303
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x117f
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x117c
	.long	0x1303
	.long	0x0
	.byte	0x0
	.byte	0x1
	.short	0x1
	.long	0x117f
	.long	0x0
	.short	0x5a
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::integral_constant<bool,0>"
	.asciz	".?AU?$integral_constant@_N$0A@@std@@"
	.byte	242
	.byte	241
	.short	0x1be
	.short	0x1203
	.short	0x150f
	.short	0x2
	.long	0x1380
	.asciz	"allocate"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1381
	.asciz	"deallocate"
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1382
	.asciz	"max_size"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0xb
	.long	0x1383
	.asciz	"select_on_container_copy_construction"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x117c
	.asciz	"allocator_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x70
	.asciz	"value_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x670
	.asciz	"pointer"
	.short	0x1510
	.short	0x0
	.long	0x106a
	.asciz	"const_pointer"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x603
	.asciz	"void_pointer"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x12b7
	.asciz	"const_void_pointer"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x23
	.asciz	"size_type"
	.byte	242
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x13
	.asciz	"difference_type"
	.short	0x1510
	.short	0x0
	.long	0x1384
	.asciz	"propagate_on_container_copy_assignment"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x12bc
	.asciz	"propagate_on_container_move_assignment"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1384
	.asciz	"propagate_on_container_swap"
	.short	0x1510
	.short	0x0
	.long	0x12bc
	.asciz	"is_always_equal"
	.short	0x86
	.short	0x1505
	.short	0x11
	.short	0x210
	.long	0x1385
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::_Default_allocator_traits<std::allocator<char> >"
	.asciz	".?AU?$_Default_allocator_traits@V?$allocator@D@std@@@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1386
	.long	0x12a6
	.long	0x28b
	.short	0xa
	.short	0x1002
	.long	0x1368
	.long	0x1000c
	.short	0x46
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::_Iterator_base12"
	.asciz	".?AU_Iterator_base12@std@@"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1389
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x1364
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1364
	.long	0x138b
	.byte	0x0
	.byte	0x2
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x12f3
	.long	0x1000c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x138d
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1364
	.long	0x138b
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x138e
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x138c
	.short	0x3
	.short	0x0
	.long	0x138f
	.short	0x4a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1388
	.short	0x0
	.asciz	"_Mycont"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x138a
	.short	0x8
	.asciz	"_Myfirstiter"
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x1390
	.asciz	"_Container_proxy"
	.byte	243
	.byte	242
	.byte	241
	.short	0x46
	.short	0x1505
	.short	0x4
	.short	0x202
	.long	0x1391
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"std::_Container_proxy"
	.asciz	".?AU_Container_proxy@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1392
	.long	0x12a6
	.long	0x4a8
	.short	0xa
	.short	0x1001
	.long	0x1384
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1394
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x1384
	.long	0x1395
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x62
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x1001
	.asciz	"value"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1396
	.asciz	"operator bool"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x1396
	.asciz	"operator()"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x30
	.asciz	"value_type"
	.byte	241
	.short	0x1510
	.short	0x0
	.long	0x1384
	.asciz	"type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x5a
	.short	0x1505
	.short	0x5
	.short	0x210
	.long	0x1397
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::integral_constant<bool,0>"
	.asciz	".?AU?$integral_constant@_N$0A@@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1398
	.long	0x1362
	.long	0x1a
	.short	0xa
	.short	0x1002
	.long	0x1389
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1389
	.long	0x139a
	.byte	0x0
	.byte	0x2
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x1389
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x139c
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x139d
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1389
	.long	0x139a
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x139e
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x139b
	.short	0x3
	.short	0x0
	.long	0x139f
	.short	0xa
	.short	0x1002
	.long	0x1389
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x13a1
	.long	0x1389
	.long	0x139a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x139e
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1389
	.long	0x139a
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1388
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1389
	.long	0x139a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x13a4
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x139c
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x1388
	.long	0x1389
	.long	0x13a6
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x1389
	.long	0x139a
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x139e
	.long	0x0
	.short	0x162
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x1001
	.asciz	"_Unwrap_when_unverified"
	.short	0x150d
	.short	0x3
	.long	0x1365
	.short	0x0
	.asciz	"_Myproxy"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x138a
	.short	0x8
	.asciz	"_Mynextiter"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x13a0
	.asciz	"_Iterator_base12"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13a2
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13a3
	.asciz	"~_Iterator_base12"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13a5
	.asciz	"_Adopt"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13a7
	.asciz	"_Getcont"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x13a8
	.asciz	"_Assign_unlocked"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x13a8
	.asciz	"_Assign_locked"
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x13a5
	.asciz	"_Adopt_unlocked"
	.short	0x1511
	.short	0x1
	.long	0x13a5
	.asciz	"_Adopt_locked"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x13a3
	.asciz	"_Orphan_me_unlocked_v3"
	.byte	241
	.short	0x1511
	.short	0x1
	.long	0x13a3
	.asciz	"_Orphan_me_locked_v3"
	.byte	243
	.byte	242
	.byte	241
	.short	0x46
	.short	0x1505
	.short	0xf
	.short	0x202
	.long	0x13a9
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"std::_Iterator_base12"
	.asciz	".?AU_Iterator_base12@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x13aa
	.long	0x12a6
	.long	0x4dc
	.short	0x12
	.short	0x1602
	.long	0x10a1
	.long	0x10ba
	.asciz	"width"
	.byte	242
	.byte	241
	.short	0x82
	.short	0x1504
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"basic_ostream<char,std::char_traits<char> >::sentry"
	.asciz	".?AVsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@"
	.byte	241
	.short	0x8e
	.short	0x1504
	.short	0x0
	.short	0x288
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"basic_ostream<char,std::char_traits<char> >::_Sentry_base"
	.asciz	".?AV_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x13ad
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x13ad
	.long	0x13af
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x103f
	.long	0x0
	.short	0xa
	.short	0x1001
	.long	0x13ad
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x13b1
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x13b2
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x13ad
	.long	0x13af
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x13b3
	.long	0x0
	.short	0x12
	.short	0x1206
	.short	0x3
	.short	0x0
	.long	0x13b0
	.short	0x3
	.short	0x0
	.long	0x13b4
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x13ad
	.long	0x13af
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x13b1
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x30
	.long	0x13ad
	.long	0x13b7
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x13ad
	.long	0x1002c
	.short	0x1a
	.short	0x1009
	.long	0x13b9
	.long	0x13ad
	.long	0x13af
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x13b3
	.long	0x0
	.short	0x6a
	.short	0x1203
	.short	0x1400
	.short	0x3
	.long	0x13ae
	.short	0x0
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x1
	.long	0x30
	.short	0x8
	.asciz	"_Ok"
	.byte	242
	.byte	241
	.short	0x150f
	.short	0x2
	.long	0x13b5
	.asciz	"sentry"
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13b6
	.asciz	"~sentry"
	.short	0x1511
	.short	0x3
	.long	0x13b8
	.asciz	"operator bool"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13ba
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x82
	.short	0x1504
	.short	0x7
	.short	0x20a
	.long	0x13bb
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"basic_ostream<char,std::char_traits<char> >::sentry"
	.asciz	".?AVsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@"
	.byte	241
	.short	0x6a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.39.33519\\include\\ostream"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x13bc
	.long	0x13bd
	.long	0x5e
	.short	0xa
	.short	0x1002
	.long	0x13ae
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x13ae
	.long	0x13bf
	.byte	0x0
	.byte	0x2
	.short	0x1
	.long	0x103f
	.long	0x0
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x13ae
	.long	0x13bf
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xa
	.short	0x1002
	.long	0x13ae
	.long	0x1002c
	.short	0xa
	.short	0x1001
	.long	0x13ae
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x13c3
	.long	0x1002c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x13c4
	.short	0x1a
	.short	0x1009
	.long	0x13c2
	.long	0x13ae
	.long	0x13bf
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x13c5
	.long	0x0
	.short	0x5a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x103d
	.short	0x0
	.asciz	"_Myostr"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13c0
	.asciz	"_Sentry_base"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13c1
	.asciz	"~_Sentry_base"
	.byte	242
	.byte	241
	.short	0x1511
	.short	0x3
	.long	0x13c6
	.asciz	"operator="
	.byte	242
	.byte	241
	.short	0x8e
	.short	0x1504
	.short	0x4
	.short	0x20a
	.long	0x13c7
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"basic_ostream<char,std::char_traits<char> >::_Sentry_base"
	.asciz	".?AV_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x13c8
	.long	0x13bd
	.long	0x49
	.short	0x12
	.short	0x1602
	.long	0x13ad
	.long	0x13b0
	.asciz	"sentry"
	.byte	241
	.short	0x1a
	.short	0x1602
	.long	0x13ae
	.long	0x13c0
	.asciz	"_Sentry_base"
	.byte	243
	.byte	242
	.byte	241
	.short	0x6a
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"basic_ios<char,std::char_traits<char> >"
	.asciz	".?AV?$basic_ios@DU?$char_traits@D@std@@@std@@"
	.short	0x76
	.short	0x1504
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"basic_streambuf<char,std::char_traits<char> >"
	.asciz	".?AV?$basic_streambuf@DU?$char_traits@D@std@@@std@@"
	.short	0xa
	.short	0x1002
	.long	0x13cd
	.long	0x1000c
	.short	0xa
	.short	0x1001
	.long	0x13cc
	.short	0x1
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x13cf
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x13ce
	.long	0x13cc
	.long	0x13d0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1602
	.long	0x13cc
	.long	0x13d1
	.asciz	"rdbuf"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x103c
	.long	0x1000c
	.short	0x1a
	.short	0x1009
	.long	0x13d3
	.long	0x13cc
	.long	0x13d0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0xe
	.short	0x1602
	.long	0x13cc
	.long	0x13d4
	.asciz	"tie"
	.short	0x1a
	.short	0x1009
	.long	0x70
	.long	0x13cc
	.long	0x13d0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.long	0x0
	.short	0x12
	.short	0x1602
	.long	0x13cc
	.long	0x13d6
	.asciz	"fill"
	.byte	243
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1602
	.long	0x1061
	.long	0x107d
	.asciz	"eq_int_type"
	.short	0xa
	.short	0x1002
	.long	0x13cd
	.long	0x1040c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x106a
	.long	0x13
	.short	0x1a
	.short	0x1009
	.long	0x13
	.long	0x13cd
	.long	0x13d9
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x13da
	.long	0x0
	.short	0x12
	.short	0x1602
	.long	0x13cd
	.long	0x13db
	.asciz	"sputn"
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1602
	.long	0x10a1
	.long	0x10bc
	.asciz	"width"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x13cc
	.long	0x1040c
	.short	0x1a
	.short	0x1009
	.long	0x3
	.long	0x13cc
	.long	0x13de
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x10af
	.long	0x0
	.short	0x16
	.short	0x1602
	.long	0x13cc
	.long	0x13df
	.asciz	"setstate"
	.byte	243
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1602
	.long	0x13ad
	.long	0x13b6
	.asciz	"~sentry"
	.short	0x1a
	.short	0x1602
	.long	0x13ae
	.long	0x13c1
	.asciz	"~_Sentry_base"
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1602
	.long	0x10a1
	.long	0x10b3
	.asciz	"rdstate"
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x13e4
	.asciz	"main"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1503
	.long	0x41
	.long	0x23
	.short	0x20
	.byte	0
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x103d
	.long	0x106a
	.short	0xe
	.short	0x1008
	.long	0x103d
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x13e7
	.short	0x16
	.short	0x1601
	.long	0x1045
	.long	0x13e8
	.asciz	"operator<<"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x10ab
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x13ad
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x13ae
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x13cf
	.long	0x1000c
	.short	0xa
	.short	0x1002
	.long	0x13cc
	.long	0x1000c
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1003
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x13ef
	.asciz	"main.extracted"
	.byte	241
	.short	0x5e
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"__storeu_pd"
	.asciz	".?AU__storeu_pd@?1??_mm256_storeu_pd@@YAXPEANU__m256d@@@Z@"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x13f1
	.long	0x1000c
	.short	0x12
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x13e6
	.short	0x0
	.asciz	"__v"
	.byte	242
	.byte	241
	.short	0x5e
	.short	0x1505
	.short	0x1
	.short	0x200
	.long	0x13f3
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"__storeu_pd"
	.asciz	".?AU__storeu_pd@?1??_mm256_storeu_pd@@YAXPEANU__m256d@@@Z@"
	.byte	243
	.byte	242
	.byte	241
	.short	0x5e
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files (x86)\\Intel\\oneAPI\\compiler\\2024.2\\lib\\clang\\19\\include\\avxintrin.h"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x13f4
	.long	0x13f5
	.long	0xcd4
	.short	0x4a
	.short	0x1505
	.short	0x0
	.short	0x280
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"std::ratio<1,1000000>"
	.asciz	".?AU?$ratio@$00$0PECEA@@std@@"
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1203
	.short	0x150e
	.short	0x3
	.long	0x101b
	.asciz	"num"
	.short	0x150e
	.short	0x3
	.long	0x101b
	.asciz	"den"
	.short	0x1510
	.short	0x0
	.long	0x13f7
	.asciz	"type"
	.byte	243
	.byte	242
	.byte	241
	.short	0x4a
	.short	0x1505
	.short	0x3
	.short	0x210
	.long	0x13f8
	.long	0x0
	.long	0x0
	.short	0x1
	.asciz	"std::ratio<1,1000000>"
	.asciz	".?AU?$ratio@$00$0PECEA@@std@@"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x13f9
	.long	0x101e
	.long	0x43
	.short	0x4a
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Users\\\320\230\320\262\320\260\320\275\\Desktop\\IntrinsicsBenchmark\\IntrinsicsBenchmark"
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1605
	.long	0x0
	.asciz	"IntrinsicsBenchmark.cpp"
	.short	0xa
	.short	0x1605
	.long	0x0
	.byte	0
	.byte	243
	.byte	242
	.byte	241
	.short	0x56
	.short	0x1605
	.long	0x0
	.asciz	"C:\\Program Files (x86)\\Intel\\oneAPI\\compiler\\2024.2\\bin\\compiler\\clang-cl.exe"
	.byte	242
	.byte	241
	.short	0x1eb2
	.short	0x1605
	.long	0x0
	.asciz	"\"-cc1\" \"-triple\" \"x86_64-pc-windows-msvc19.39.33521\" \"-S\" \"-disable-free\" \"-clear-ast-before-backend\" \"-disable-llvm-verifier\" \"-discard-value-names\" \"-mrelocation-model\" \"pic\" \"-pic-level\" \"2\" \"-fveclib=SVML\" \"-faltmathlib=SVMLAltMathLibrary\" \"-mframe-pointer=none\" \"-fapprox-func\" \"-funsafe-math-optimizations\" \"-fno-signed-zeros\" \"-mreassociate\" \"-freciprocal-math\" \"-fdenormal-fp-math=preserve-sign,preserve-sign\" \"-ffp-contract=fast\" \"-fno-rounding-math\" \"-complex-range=promoted\" \"-fno-verbose-asm\" \"-mconstructor-aliases\" \"-funwind-tables=2\" \"-target-cpu\" \"skylake\" \"-target-feature\" \"+prfchw\" \"-target-feature\" \"-cldemote\" \"-target-feature\" \"+avx\" \"-target-feature\" \"-msrlist\" \"-target-feature\" \"+aes\" \"-target-feature\" \"+sahf\" \"-target-feature\" \"+pclmul\" \"-target-feature\" \"-xop\" \"-target-feature\" \"+crc32\" \"-target-feature\" \"-pbndkb\" \"-target-feature\" \"+xsaves\" \"-target-feature\" \"-avx512fp16\" \"-target-feature\" \"-usermsr\" \"-target-feature\" \"-sm4\" \"-target-feature\" \"-egpr\" \"-target-feature\" \"+sse4.1\" \"-target-feature\" \"-avx512ifma\" \"-target-feature\" \"+xsave\" \"-target-feature\" \"-avx512pf\" \"-target-feature\" \"+sse4.2\" \"-target-feature\" \"-tsxldtrk\" \"-target-feature\" \"-ptwrite\" \"-target-feature\" \"-widekl\" \"-target-feature\" \"-sm3\" \"-target-feature\" \"-wrmsrns\" \"-target-feature\" \"+invpcid\" \"-target-feature\" \"+64bit\" \"-target-feature\" \"+xsavec\" \"-target-feature\" \"-avx10.1-512\" \"-target-feature\" \"-avx512vpopcntdq\" \"-target-feature\" \"+cmov\" \"-target-feature\" \"-avx512vp2intersect\" \"-target-feature\" \"-avx512cd\" \"-target-feature\" \"+movbe\" \"-target-feature\" \"-avxvnniint8\" \"-target-feature\" \"-avx512er\" \"-target-feature\" \"-ccmp\" \"-target-feature\" \"-amx-int8\" \"-target-feature\" \"-kl\" \"-target-feature\" \"-avx10.1-256\" \"-target-feature\" \"-sha512\" \"-target-feature\" \"-avxvnni\" \"-target-feature\" \"-rtm\" \"-target-feature\" \"+adx\" \"-target-feature\" \"+avx2\" \"-target-feature\" \"-hreset\" \"-target-feature\" \"-movdiri\" \"-target-feature\" \"-serialize\" \"-target-feature\" \"-vpclmulqdq\" \"-target-feature\" \"-avx512vl\" \"-target-feature\" \"-uintr\" \"-target-feature\" \"-cf\" \"-target-feature\" \"+clflushopt\" \"-target-feature\" \"-raoint\" \"-target-feature\" \"-cmpccxadd\" \"-target-feature\" \"+bmi\" \"-target-feature\" \"-amx-tile\" \"-target-feature\" \"+sse\" \"-target-feature\" \"-gfni\" \"-target-feature\" \"-avxvnniint16\" \"-target-feature\" \"-amx-fp16\" \"-target-feature\" \"-ndd\" \"-target-feature\" \"+xsaveopt\" \"-target-feature\" \"+rdrnd\" \"-target-feature\" \"-avx512f\" \"-target-feature\" \"-amx-bf16\" \"-target-feature\" \"-avx512bf16\" \"-target-feature\" \"-avx512vnni\" \"-target-feature\" \"-push2pop2\" \"-target-feature\" \"+cx8\" \"-target-feature\" \"-avx512bw\" \"-target-feature\" \"+sse3\" \"-target-feature\" \"-pku\" \"-target-feature\" \"+fsgsbase\" \"-target-feature\" \"-clzero\" \"-target-feature\" \"-mwaitx\" \"-target-feature\" \"-lwp\" \"-target-feature\" \"+lzcnt\" \"-target-feature\" \"-sha\" \"-target-feature\" \"-movdir64b\" \"-target-feature\" \"-ppx\" \"-target-feature\" \"-wbnoinvd\" \"-target-feature\" \"-enqcmd\" \"-target-feature\" \"-prefetchwt1\" \"-target-feature\" \"-avxneconvert\" \"-target-feature\" \"-tbm\" \"-target-feature\" \"-pconfig\" \"-target-feature\" \"-amx-complex\" \"-target-feature\" \"+ssse3\" \"-target-feature\" \"+cx16\" \"-target-feature\" \"+bmi2\" \"-target-feature\" \"+fma\" \"-target-feature\" \"+popcnt\" \"-target-feature\" \"-avxifma\" \"-target-feature\" \"+f16c\" \"-target-feature\" \"-avx512bitalg\" \"-target-feature\" \"-rdpru\" \"-target-feature\" \"-clwb\" \"-target-feature\" \"+mmx\" \"-target-feature\" \"+sse2\" \"-target-feature\" \"+rdseed\" \"-target-feature\" \"-avx512vbmi2\" \"-target-feature\" \"-rdpid\" \"-target-feature\" \"-prefetchi\" \"-target-feature\" \"-fma4\" \"-target-feature\" \"-avx512vbmi\" \"-target-feature\" \"-shstk\" \"-target-feature\" \"-vaes\" \"-target-feature\" \"-waitpkg\" \"-target-feature\" \"+sgx\" \"-target-feature\" \"+fxsr\" \"-target-feature\" \"-avx512dq\" \"-target-feature\" \"-sse4a\" \"-mllvm\" \"-x86-enable-unaligned-vector-move=true\" \"-D_DEBUG\" \"-D_MT\" \"-D_DLL\" \"--dependent-lib=msvcrtd\" \"--dependent-lib=libircmt\" \"--dependent-lib=svml_dispmd\" \"--dependent-lib=libdecimal\" \"--dependent-lib=libmmdd\" \"--dependent-lib=oldnames\" \"--dependent-lib=libiomp5md\" \"-stack-protector\" \"2\" \"-fcxx-exceptions\" \"-fexceptions\" \"-fexternc-nounwind\" \"-fdiagnostics-format\" \"msvc\" \"-gno-column-info\" \"-gcodeview\" \"-debug-info-kind=limited\" \"-fdebug-compilation-dir=C:\\\\Users\\\\\320\230\320\262\320\260\320\275\\\\Desktop\\\\IntrinsicsBenchmark\\\\IntrinsicsBenchmark\" \"-ffunction-sections\" \"-fcoverage-compilation-dir=C:\\\\Users\\\\\320\230\320\262\320\260\320\275\\\\Desktop\\\\IntrinsicsBenchmark\\\\IntrinsicsBenchmark\" \"-fclang-abi-compat=17\" \"-resource-dir\" \"C:\\\\Program Files (x86)\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.2\\\\lib\\\\clang\\\\19\" \"-D\" \"_DEBUG\" \"-D\" \"_CONSOLE\" \"-D\" \"_UNICODE\" \"-D\" \"UNICODE\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.2\\\\bin\\\\compiler\\\\..\\\\..\\\\opt\\\\compiler\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.2\\\\lib\\\\clang\\\\19\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.2\\\\bin\\\\compiler\\\\..\\\\..\\\\opt\\\\compiler\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Intel\\\\oneAPI\\\\tbb\\\\2021.13\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.2\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.2\\\\opt\\\\compiler\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files\\\\Microsoft Visual Studio\\\\2022\\\\Enterprise\\\\VC\\\\Tools\\\\MSVC\\\\14.39.33519\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files\\\\Microsoft Visual Studio\\\\2022\\\\Enterprise\\\\VC\\\\Tools\\\\MSVC\\\\14.39.33519\\\\atlmfc\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files\\\\Microsoft Visual Studio\\\\2022\\\\Enterprise\\\\VC\\\\Auxiliary\\\\VS\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\ucrt\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\um\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\shared\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\winrt\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\cppwinrt\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\NETFXSDK\\\\4.8.1\\\\Include\\\\um\" \"-internal-isystem\" \"C:\\\\Program Files\\\\Microsoft Visual Studio\\\\2022\\\\Enterprise\\\\VC\\\\Tools\\\\MSVC\\\\14.39.33519\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files\\\\Microsoft Visual Studio\\\\2022\\\\Enterprise\\\\VC\\\\Tools\\\\MSVC\\\\14.39.33519\\\\atlmfc\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files\\\\Microsoft Visual Studio\\\\2022\\\\Enterprise\\\\VC\\\\Auxiliary\\\\VS\\\\include\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\ucrt\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\um\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\shared\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\winrt\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Include\\\\10.0.22621.0\\\\cppwinrt\" \"-internal-isystem\" \"C:\\\\Program Files (x86)\\\\Windows Kits\\\\NETFXSDK\\\\4.8.1\\\\Include\\\\um\" \"-header-base-path\" \"C:\\\\Program Files (x86)\\\\Intel\\\\oneAPI\\\\compiler\\\\2024.2\" \"-O3\" \"-Wall\" \"-Wno-c++11-narrowing\" \"-fdeprecated-macro\" \"-ferror-limit\" \"19\" \"-fopenmp-late-outline\" \"-fopenmp-threadprivate-legacy\" \"-fopenmp\" \"-malign-double\" \"-fno-use-cxa-atexit\" \"-fuse-line-directives\" \"-fms-extensions\" \"-fms-compatibility\" \"-fms-compatibility-version=19.39.33521\" \"-std=c++17\" \"-fdiagnostics-absolute-paths\" \"-fskip-odr-check-in-gmf\" \"-fdelayed-template-parsing\" \"-fpack-struct=16\" \"-vectorize-loops\" \"-vectorize-slp\" \"-mllvm\" \"-disable-hir-generate-mkl-call\" \"-mllvm\" \"-loopopt=1\" \"-floopopt-pipeline=light\" \"-mllvm\" \"-intel-abi-compatible=true\" \"-mllvm\" \"-paropt=31\" \"-fintel-compatibility\" \"-fintel-libirc-allowed\" \"-fintel-libimf-allowed\" \"-x\" \"c++\""
	.short	0x1a
	.short	0x1603
	.short	0x5
	.long	0x13fb
	.long	0x13fe
	.long	0x13fc
	.long	0x13fd
	.long	0x13ff
	.byte	242
	.byte	241
	.globl	_fltused
