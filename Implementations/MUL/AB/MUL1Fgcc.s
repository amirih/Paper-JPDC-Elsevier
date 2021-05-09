	.file	"MUL1F.c"
	.text
	.p2align 4
	.globl	assignToThisCore12
	.type	assignToThisCore12, @function
assignToThisCore12:
.LFB5532:
	.cfi_startproc
	xorl	%edx, %edx
	xorl	%eax, %eax
.L2:
	movl	%eax, %ecx
	addl	$32, %eax
	movq	%rdx, mask(%rcx)
	movq	%rdx, mask+8(%rcx)
	movq	%rdx, mask+16(%rcx)
	movq	%rdx, mask+24(%rcx)
	cmpl	$128, %eax
	jb	.L2
	movslq	%edi, %rax
	cmpq	$1023, %rax
	jbe	.L8
.L4:
	movslq	%esi, %rax
	cmpq	$1023, %rax
	ja	.L5
	shrq	$6, %rax
	movl	$1, %edx
	shlx	%rsi, %rdx, %rsi
	orq	%rsi, mask(,%rax,8)
.L5:
	movl	$mask, %edx
	movl	$128, %esi
	xorl	%edi, %edi
	jmp	sched_setaffinity
	.p2align 4,,10
	.p2align 3
.L8:
	shrq	$6, %rax
	movl	$1, %edx
	shlx	%rdi, %rdx, %rdi
	orq	%rdi, mask(,%rax,8)
	jmp	.L4
	.cfi_endproc
.LFE5532:
	.size	assignToThisCore12, .-assignToThisCore12
	.p2align 4
	.globl	assignImagef32
	.type	assignImagef32, @function
assignImagef32:
.LFB5533:
	.cfi_startproc
	vmovsd	.LC0(%rip), %xmm4
	vmovsd	.LC1(%rip), %xmm6
	vmovsd	.LC2(%rip), %xmm5
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%rdi, %r9
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L10:
	vcvtsi2sdl	%esi, %xmm2, %xmm3
	movq	%r9, %r8
	movl	%esi, %edi
	xorl	%ecx, %ecx
	vfmadd132sd	%xmm6, %xmm5, %xmm3
	.p2align 4,,10
	.p2align 3
.L11:
	movl	%ecx, %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm0
	movl	%esi, %eax
	incl	%ecx
	cltd
	idivl	%ecx
	vmovapd	%xmm0, %xmm1
	vfmadd132sd	%xmm4, %xmm3, %xmm1
	addq	$4, %r8
	addl	%edi, %eax
	movl	%eax, %edx
	shrl	%edx
	imulq	$1195121335, %rdx, %rdx
	addl	%esi, %edi
	shrq	$37, %rdx
	imull	$230, %edx, %edx
	subl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -4(%r8)
	cmpl	$64, %ecx
	jne	.L11
	incl	%esi
	addq	$272, %r9
	cmpl	$64, %esi
	jne	.L10
	ret
	.cfi_endproc
.LFE5533:
	.size	assignImagef32, .-assignImagef32
	.p2align 4
	.globl	assignMatrixf32
	.type	assignMatrixf32, @function
assignMatrixf32:
.LFB5534:
	.cfi_startproc
	vmovsd	.LC2(%rip), %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%rdi, %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L16:
	xorl	%edi, %edi
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L17:
	movl	%esi, %eax
	cltd
	idivl	%ecx
	leal	(%rax,%rdi), %edx
	movq	%rdx, %rax
	imulq	$274877907, %rdx, %rdx
	addl	%esi, %edi
	shrq	$38, %rdx
	imull	$1000, %edx, %edx
	subl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -4(%r8,%rcx,4)
	incq	%rcx
	cmpq	$65, %rcx
	jne	.L17
	incl	%esi
	addq	$256, %r8
	cmpl	$64, %esi
	jne	.L16
	ret
	.cfi_endproc
.LFE5534:
	.size	assignMatrixf32, .-assignMatrixf32
	.p2align 4
	.globl	assignImagei32
	.type	assignImagei32, @function
assignImagei32:
.LFB5535:
	.cfi_startproc
	movq	%rdi, %r9
	movl	$2155905153, %r10d
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L22:
	xorl	%r8d, %r8d
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L23:
	movl	%edi, %eax
	cltd
	idivl	%ecx
	leal	(%rax,%r8), %edx
	movq	%rdx, %rax
	imulq	%r10, %rdx
	addl	%edi, %r8d
	shrq	$39, %rdx
	movl	%edx, %esi
	sall	$8, %esi
	subl	%edx, %esi
	subl	%esi, %eax
	movl	%eax, -4(%r9,%rcx,4)
	incq	%rcx
	cmpq	$65, %rcx
	jne	.L23
	incl	%edi
	addq	$272, %r9
	cmpl	$64, %edi
	jne	.L22
	ret
	.cfi_endproc
.LFE5535:
	.size	assignImagei32, .-assignImagei32
	.p2align 4
	.globl	assignMatrixi32
	.type	assignMatrixi32, @function
assignMatrixi32:
.LFB5536:
	.cfi_startproc
	vmovdqa	.LC3(%rip), %ymm12
	vmovdqa	.LC4(%rip), %ymm0
	vmovdqa	.LC5(%rip), %ymm4
	vmovdqa	.LC6(%rip), %ymm3
	vmovdqa	.LC7(%rip), %ymm11
	vmovdqa	.LC8(%rip), %ymm10
	vmovdqa	.LC9(%rip), %ymm9
	vmovdqa	.LC10(%rip), %ymm8
	vmovdqa	.LC11(%rip), %ymm7
	vmovdqa	.LC12(%rip), %ymm6
	vmovdqa	.LC13(%rip), %ymm5
	movq	%rdi, %rax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L28:
	vmovd	%edx, %xmm1
	vpbroadcastd	%xmm1, %ymm1
	vpmulld	%ymm12, %ymm1, %ymm13
	incl	%edx
	addq	$256, %rax
	vpsrlq	$32, %ymm13, %ymm14
	vpmuldq	%ymm0, %ymm13, %ymm2
	vpmuldq	%ymm0, %ymm14, %ymm14
	vpshufb	%ymm4, %ymm2, %ymm2
	vpshufb	%ymm3, %ymm14, %ymm14
	vpor	%ymm14, %ymm2, %ymm2
	vpsrad	$6, %ymm2, %ymm14
	vpslld	$5, %ymm14, %ymm2
	vpsubd	%ymm14, %ymm2, %ymm2
	vpslld	$2, %ymm2, %ymm2
	vpaddd	%ymm14, %ymm2, %ymm2
	vpslld	$3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm13, %ymm2
	vpmulld	%ymm11, %ymm1, %ymm13
	vmovdqu	%ymm2, -256(%rax)
	vpsrlq	$32, %ymm13, %ymm14
	vpmuldq	%ymm0, %ymm13, %ymm2
	vpmuldq	%ymm0, %ymm14, %ymm14
	vpshufb	%ymm4, %ymm2, %ymm2
	vpshufb	%ymm3, %ymm14, %ymm14
	vpor	%ymm14, %ymm2, %ymm2
	vpsrad	$6, %ymm2, %ymm14
	vpslld	$5, %ymm14, %ymm2
	vpsubd	%ymm14, %ymm2, %ymm2
	vpslld	$2, %ymm2, %ymm2
	vpaddd	%ymm14, %ymm2, %ymm2
	vpslld	$3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm13, %ymm2
	vpmulld	%ymm10, %ymm1, %ymm13
	vmovdqu	%ymm2, -224(%rax)
	vpsrlq	$32, %ymm13, %ymm14
	vpmuldq	%ymm0, %ymm13, %ymm2
	vpmuldq	%ymm0, %ymm14, %ymm14
	vpshufb	%ymm4, %ymm2, %ymm2
	vpshufb	%ymm3, %ymm14, %ymm14
	vpor	%ymm14, %ymm2, %ymm2
	vpsrad	$6, %ymm2, %ymm14
	vpslld	$5, %ymm14, %ymm2
	vpsubd	%ymm14, %ymm2, %ymm2
	vpslld	$2, %ymm2, %ymm2
	vpaddd	%ymm14, %ymm2, %ymm2
	vpslld	$3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm13, %ymm2
	vpmulld	%ymm9, %ymm1, %ymm13
	vmovdqu	%ymm2, -192(%rax)
	vpsrlq	$32, %ymm13, %ymm14
	vpmuldq	%ymm0, %ymm13, %ymm2
	vpmuldq	%ymm0, %ymm14, %ymm14
	vpshufb	%ymm4, %ymm2, %ymm2
	vpshufb	%ymm3, %ymm14, %ymm14
	vpor	%ymm14, %ymm2, %ymm2
	vpsrad	$6, %ymm2, %ymm14
	vpslld	$5, %ymm14, %ymm2
	vpsubd	%ymm14, %ymm2, %ymm2
	vpslld	$2, %ymm2, %ymm2
	vpaddd	%ymm14, %ymm2, %ymm2
	vpslld	$3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm13, %ymm2
	vpmulld	%ymm8, %ymm1, %ymm13
	vmovdqu	%ymm2, -160(%rax)
	vpsrlq	$32, %ymm13, %ymm14
	vpmuldq	%ymm0, %ymm13, %ymm2
	vpmuldq	%ymm0, %ymm14, %ymm14
	vpshufb	%ymm4, %ymm2, %ymm2
	vpshufb	%ymm3, %ymm14, %ymm14
	vpor	%ymm14, %ymm2, %ymm2
	vpsrad	$6, %ymm2, %ymm14
	vpslld	$5, %ymm14, %ymm2
	vpsubd	%ymm14, %ymm2, %ymm2
	vpslld	$2, %ymm2, %ymm2
	vpaddd	%ymm14, %ymm2, %ymm2
	vpslld	$3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm13, %ymm2
	vpmulld	%ymm7, %ymm1, %ymm13
	vmovdqu	%ymm2, -128(%rax)
	vpsrlq	$32, %ymm13, %ymm14
	vpmuldq	%ymm0, %ymm13, %ymm2
	vpmuldq	%ymm0, %ymm14, %ymm14
	vpshufb	%ymm4, %ymm2, %ymm2
	vpshufb	%ymm3, %ymm14, %ymm14
	vpor	%ymm14, %ymm2, %ymm2
	vpsrad	$6, %ymm2, %ymm14
	vpslld	$5, %ymm14, %ymm2
	vpsubd	%ymm14, %ymm2, %ymm2
	vpslld	$2, %ymm2, %ymm2
	vpaddd	%ymm14, %ymm2, %ymm2
	vpslld	$3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm13, %ymm2
	vpmulld	%ymm6, %ymm1, %ymm13
	vmovdqu	%ymm2, -96(%rax)
	vpmulld	%ymm5, %ymm1, %ymm1
	vpsrlq	$32, %ymm13, %ymm14
	vpmuldq	%ymm0, %ymm13, %ymm2
	vpmuldq	%ymm0, %ymm14, %ymm14
	vpshufb	%ymm4, %ymm2, %ymm2
	vpshufb	%ymm3, %ymm14, %ymm14
	vpor	%ymm14, %ymm2, %ymm2
	vpsrad	$6, %ymm2, %ymm14
	vpslld	$5, %ymm14, %ymm2
	vpsubd	%ymm14, %ymm2, %ymm2
	vpslld	$2, %ymm2, %ymm2
	vpaddd	%ymm14, %ymm2, %ymm2
	vpslld	$3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm13, %ymm2
	vpsrlq	$32, %ymm1, %ymm13
	vmovdqu	%ymm2, -64(%rax)
	vpmuldq	%ymm0, %ymm13, %ymm13
	vpmuldq	%ymm0, %ymm1, %ymm2
	vpshufb	%ymm3, %ymm13, %ymm13
	vpshufb	%ymm4, %ymm2, %ymm2
	vpor	%ymm13, %ymm2, %ymm2
	vpsrad	$6, %ymm2, %ymm13
	vpslld	$5, %ymm13, %ymm2
	vpsubd	%ymm13, %ymm2, %ymm2
	vpslld	$2, %ymm2, %ymm2
	vpaddd	%ymm13, %ymm2, %ymm2
	vpslld	$3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm1, %ymm1
	vmovdqu	%ymm1, -32(%rax)
	cmpl	$64, %edx
	jne	.L28
	vzeroupper
	ret
	.cfi_endproc
.LFE5536:
	.size	assignMatrixi32, .-assignMatrixi32
	.p2align 4
	.globl	assignMatrixi16
	.type	assignMatrixi16, @function
assignMatrixi16:
.LFB5537:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	128(%rdi), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L31:
	leaq	-128(%rbx), %r13
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L32:
	call	rand
	movl	%r12d, %edx
	shrl	%edx
	imulq	$558694933, %rdx, %rdx
	movl	%r12d, %ecx
	movl	%eax, %esi
	shrq	$36, %rdx
	imull	$246, %edx, %edx
	sarl	$31, %esi
	addq	$2, %r13
	subl	%edx, %ecx
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	addl	%ebp, %r12d
	sarq	$34, %rdx
	subl	%esi, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	%edx, %edx
	subl	%edx, %eax
	addl	%ecx, %eax
	movw	%ax, -2(%r13)
	cmpq	%r13, %rbx
	jne	.L32
	incl	%ebp
	subq	$-128, %rbx
	cmpl	$64, %ebp
	jne	.L31
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5537:
	.size	assignMatrixi16, .-assignMatrixi16
	.p2align 4
	.globl	assignImagei16
	.type	assignImagei16, @function
assignImagei16:
.LFB5561:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	128(%rdi), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L38:
	leaq	-128(%rbx), %r13
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L39:
	call	rand
	movl	%r12d, %edx
	shrl	%edx
	imulq	$558694933, %rdx, %rdx
	movl	%r12d, %ecx
	movl	%eax, %esi
	shrq	$36, %rdx
	imull	$246, %edx, %edx
	sarl	$31, %esi
	addq	$2, %r13
	subl	%edx, %ecx
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	addl	%ebp, %r12d
	sarq	$34, %rdx
	subl	%esi, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	%edx, %edx
	subl	%edx, %eax
	addl	%ecx, %eax
	movw	%ax, -2(%r13)
	cmpq	%r13, %rbx
	jne	.L39
	incl	%ebp
	subq	$-128, %rbx
	cmpl	$64, %ebp
	jne	.L38
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5561:
	.size	assignImagei16, .-assignImagei16
	.p2align 4
	.globl	imageTranspose
	.type	imageTranspose, @function
imageTranspose:
.LFB5539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r10
	leaq	268(%rdi), %rdx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	leaq	4(%rdi), %rax
	movl	$1, %r9d
	pushq	%r14
	xorl	%r8d, %r8d
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	$272, %ebx
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L75:
	cmpl	$6, %r8d
	jbe	.L53
	vmovss	1608(%rax), %xmm2
	vmovss	536(%rax), %xmm1
	vinsertps	$0x10, 1876(%rax), %xmm2, %xmm3
	vinsertps	$0x10, 804(%rax), %xmm1, %xmm4
	vmovss	1072(%rax), %xmm2
	vmovss	(%rax), %xmm1
	vinsertps	$0x10, 1340(%rax), %xmm2, %xmm2
	vinsertps	$0x10, 268(%rax), %xmm1, %xmm1
	vmovups	(%rdx), %ymm0
	vmovlhps	%xmm4, %xmm1, %xmm1
	vmovlhps	%xmm3, %xmm2, %xmm2
	movl	%esi, %ecx
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
	vmovups	%ymm1, (%rdx)
	shrl	$3, %ecx
	vmovss	%xmm0, (%rax)
	vextractps	$1, %xmm0, 268(%rax)
	vextractps	$2, %xmm0, 536(%rax)
	vextractps	$3, %xmm0, 804(%rax)
	vextractf128	$0x1, %ymm0, %xmm0
	vmovss	%xmm0, 1072(%rax)
	vextractps	$1, %xmm0, 1340(%rax)
	vextractps	$2, %xmm0, 1608(%rax)
	vextractps	$3, %xmm0, 1876(%rax)
	cmpl	$1, %ecx
	je	.L46
	vmovss	3752(%rax), %xmm2
	vmovss	2680(%rax), %xmm1
	vinsertps	$0x10, 4020(%rax), %xmm2, %xmm3
	vinsertps	$0x10, 2948(%rax), %xmm1, %xmm4
	vmovss	3216(%rax), %xmm2
	vmovss	2144(%rax), %xmm1
	vinsertps	$0x10, 3484(%rax), %xmm2, %xmm2
	vinsertps	$0x10, 2412(%rax), %xmm1, %xmm1
	vmovups	32(%rdx), %ymm0
	vmovlhps	%xmm4, %xmm1, %xmm1
	vmovlhps	%xmm3, %xmm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
	vmovups	%ymm1, 32(%rdx)
	vmovss	%xmm0, 2144(%rax)
	vextractps	$1, %xmm0, 2412(%rax)
	vextractps	$2, %xmm0, 2680(%rax)
	vextractps	$3, %xmm0, 2948(%rax)
	vextractf128	$0x1, %ymm0, %xmm0
	vmovss	%xmm0, 3216(%rax)
	vextractps	$1, %xmm0, 3484(%rax)
	vextractps	$2, %xmm0, 3752(%rax)
	vextractps	$3, %xmm0, 4020(%rax)
	cmpl	$2, %ecx
	je	.L46
	vmovss	5896(%rax), %xmm2
	vmovss	4824(%rax), %xmm1
	vinsertps	$0x10, 6164(%rax), %xmm2, %xmm3
	vinsertps	$0x10, 5092(%rax), %xmm1, %xmm4
	vmovss	5360(%rax), %xmm2
	vmovss	4288(%rax), %xmm1
	vinsertps	$0x10, 5628(%rax), %xmm2, %xmm2
	vinsertps	$0x10, 4556(%rax), %xmm1, %xmm1
	vmovups	64(%rdx), %ymm0
	vmovlhps	%xmm4, %xmm1, %xmm1
	vmovlhps	%xmm3, %xmm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
	vmovups	%ymm1, 64(%rdx)
	vmovss	%xmm0, 4288(%rax)
	vextractps	$1, %xmm0, 4556(%rax)
	vextractps	$2, %xmm0, 4824(%rax)
	vextractps	$3, %xmm0, 5092(%rax)
	vextractf128	$0x1, %ymm0, %xmm0
	vmovss	%xmm0, 5360(%rax)
	vextractps	$1, %xmm0, 5628(%rax)
	vextractps	$2, %xmm0, 5896(%rax)
	vextractps	$3, %xmm0, 6164(%rax)
	cmpl	$3, %ecx
	je	.L46
	vmovss	8040(%rax), %xmm2
	vmovss	6968(%rax), %xmm1
	vinsertps	$0x10, 8308(%rax), %xmm2, %xmm3
	vinsertps	$0x10, 7236(%rax), %xmm1, %xmm4
	vmovss	7504(%rax), %xmm2
	vmovss	6432(%rax), %xmm1
	vinsertps	$0x10, 7772(%rax), %xmm2, %xmm2
	vinsertps	$0x10, 6700(%rax), %xmm1, %xmm1
	vmovups	96(%rdx), %ymm0
	vmovlhps	%xmm4, %xmm1, %xmm1
	vmovlhps	%xmm3, %xmm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
	vmovups	%ymm1, 96(%rdx)
	vmovss	%xmm0, 6432(%rax)
	vextractps	$1, %xmm0, 6700(%rax)
	vextractps	$2, %xmm0, 6968(%rax)
	vextractps	$3, %xmm0, 7236(%rax)
	vextractf128	$0x1, %ymm0, %xmm0
	vmovss	%xmm0, 7504(%rax)
	vextractps	$1, %xmm0, 7772(%rax)
	vextractps	$2, %xmm0, 8040(%rax)
	vextractps	$3, %xmm0, 8308(%rax)
	cmpl	$4, %ecx
	je	.L46
	vmovss	10184(%rax), %xmm2
	vmovss	9112(%rax), %xmm1
	vinsertps	$0x10, 10452(%rax), %xmm2, %xmm3
	vinsertps	$0x10, 9380(%rax), %xmm1, %xmm4
	vmovss	9648(%rax), %xmm2
	vmovss	8576(%rax), %xmm1
	vinsertps	$0x10, 9916(%rax), %xmm2, %xmm2
	vinsertps	$0x10, 8844(%rax), %xmm1, %xmm1
	vmovups	128(%rdx), %ymm0
	vmovlhps	%xmm4, %xmm1, %xmm1
	vmovlhps	%xmm3, %xmm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
	vmovups	%ymm1, 128(%rdx)
	vmovss	%xmm0, 8576(%rax)
	vextractps	$1, %xmm0, 8844(%rax)
	vextractps	$2, %xmm0, 9112(%rax)
	vextractps	$3, %xmm0, 9380(%rax)
	vextractf128	$0x1, %ymm0, %xmm0
	vmovss	%xmm0, 9648(%rax)
	vextractps	$1, %xmm0, 9916(%rax)
	vextractps	$2, %xmm0, 10184(%rax)
	vextractps	$3, %xmm0, 10452(%rax)
	cmpl	$5, %ecx
	je	.L46
	vmovss	12328(%rax), %xmm2
	vmovss	11256(%rax), %xmm1
	vinsertps	$0x10, 12596(%rax), %xmm2, %xmm3
	vinsertps	$0x10, 11524(%rax), %xmm1, %xmm4
	vmovss	11792(%rax), %xmm2
	vmovss	10720(%rax), %xmm1
	vinsertps	$0x10, 12060(%rax), %xmm2, %xmm2
	vinsertps	$0x10, 10988(%rax), %xmm1, %xmm1
	vmovups	160(%rdx), %ymm0
	vmovlhps	%xmm4, %xmm1, %xmm1
	vmovlhps	%xmm3, %xmm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
	vmovups	%ymm1, 160(%rdx)
	vmovss	%xmm0, 10720(%rax)
	vextractps	$1, %xmm0, 10988(%rax)
	vextractps	$2, %xmm0, 11256(%rax)
	vextractps	$3, %xmm0, 11524(%rax)
	vextractf128	$0x1, %ymm0, %xmm0
	vmovss	%xmm0, 11792(%rax)
	vextractps	$1, %xmm0, 12060(%rax)
	vextractps	$2, %xmm0, 12328(%rax)
	vextractps	$3, %xmm0, 12596(%rax)
	cmpl	$7, %ecx
	jne	.L46
	vmovss	14472(%rax), %xmm2
	vmovss	13400(%rax), %xmm1
	vinsertps	$0x10, 14740(%rax), %xmm2, %xmm3
	vinsertps	$0x10, 13668(%rax), %xmm1, %xmm4
	vmovss	13936(%rax), %xmm2
	vmovss	12864(%rax), %xmm1
	vinsertps	$0x10, 14204(%rax), %xmm2, %xmm2
	vinsertps	$0x10, 13132(%rax), %xmm1, %xmm1
	vmovups	192(%rdx), %ymm0
	vmovlhps	%xmm4, %xmm1, %xmm1
	vmovlhps	%xmm3, %xmm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
	vmovups	%ymm1, 192(%rdx)
	vmovss	%xmm0, 12864(%rax)
	vextractps	$1, %xmm0, 13132(%rax)
	vextractps	$2, %xmm0, 13400(%rax)
	vextractps	$3, %xmm0, 13668(%rax)
	vextractf128	$0x1, %ymm0, %xmm0
	vmovss	%xmm0, 13936(%rax)
	vextractps	$1, %xmm0, 14204(%rax)
	vextractps	$2, %xmm0, 14472(%rax)
	vextractps	$3, %xmm0, 14740(%rax)
.L46:
	movl	%esi, %edi
	andl	$-8, %edi
	andl	$7, %esi
	je	.L49
	movl	%edi, %esi
	leaq	(%rdx,%rsi,4), %rcx
	imulq	$268, %rsi, %rsi
	leaq	0(,%r9,4), %r11
	vmovss	(%rcx), %xmm0
	leaq	(%rsi,%r11), %r12
	addq	%r10, %r12
	vmovss	(%r12), %xmm1
	leal	1(%rdi), %r14d
	vmovss	%xmm1, (%rcx)
	vmovss	%xmm0, (%r12)
	cmpl	%r8d, %edi
	jge	.L49
	leaq	268(%rsi,%r11), %r12
	addq	%r10, %r12
	vmovss	4(%rcx), %xmm0
	vmovss	(%r12), %xmm1
	leal	2(%rdi), %r15d
	vmovss	%xmm1, 4(%rcx)
	vmovss	%xmm0, (%r12)
	cmpl	%r8d, %r14d
	jge	.L49
	leaq	536(%rsi,%r11), %r12
	addq	%r10, %r12
	vmovss	8(%rcx), %xmm0
	vmovss	(%r12), %xmm1
	leal	3(%rdi), %r14d
	vmovss	%xmm1, 8(%rcx)
	vmovss	%xmm0, (%r12)
	cmpl	%r8d, %r15d
	jge	.L49
	leaq	804(%rsi,%r11), %r12
	addq	%r10, %r12
	vmovss	(%r12), %xmm1
	vmovss	12(%rcx), %xmm0
	vmovss	%xmm1, 12(%rcx)
	vmovss	%xmm0, (%r12)
	leal	4(%rdi), %r12d
	cmpl	%r8d, %r14d
	jge	.L49
	leaq	1072(%rsi,%r11), %r14
	addq	%r10, %r14
	vmovss	16(%rcx), %xmm0
	vmovss	(%r14), %xmm1
	addl	$5, %edi
	vmovss	%xmm1, 16(%rcx)
	vmovss	%xmm0, (%r14)
	cmpl	%r8d, %r12d
	jge	.L49
	leaq	1340(%rsi,%r11), %r12
	addq	%r10, %r12
	vmovss	20(%rcx), %xmm0
	vmovss	(%r12), %xmm1
	vmovss	%xmm1, 20(%rcx)
	vmovss	%xmm0, (%r12)
	cmpl	%r8d, %edi
	jge	.L49
	leaq	1608(%rsi,%r11), %rsi
	addq	%r10, %rsi
	vmovss	24(%rcx), %xmm0
	vmovss	(%rsi), %xmm1
	vmovss	%xmm1, 24(%rcx)
	vmovss	%xmm0, (%rsi)
.L49:
	incq	%r9
	incq	%r8
	addq	$268, %rdx
	addq	$4, %rax
	addq	$272, %rbx
	cmpq	$64, %r9
	je	.L73
.L45:
	movq	%rdx, %rcx
	leaq	-264(%rbx), %rdi
	subq	%r10, %rcx
	movl	%r9d, %esi
	cmpq	%rcx, %rdi
	jle	.L75
.L53:
	movq	%rax, %rsi
	movq	%rdx, %rcx
	leaq	(%r10,%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L48:
	vmovss	(%rsi), %xmm1
	vmovss	(%rcx), %xmm0
	vmovss	%xmm1, (%rcx)
	addq	$4, %rcx
	vmovss	%xmm0, (%rsi)
	addq	$268, %rsi
	cmpq	%rdi, %rcx
	jne	.L48
	jmp	.L49
.L73:
	vzeroupper
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5539:
	.size	imageTranspose, .-imageTranspose
	.p2align 4
	.globl	assignMatrixui16
	.type	assignMatrixui16, @function
assignMatrixui16:
.LFB5540:
	.cfi_startproc
	vmovdqa	.LC14(%rip), %ymm5
	vmovdqa	.LC15(%rip), %ymm4
	vmovdqa	.LC16(%rip), %ymm3
	vmovdqa	.LC17(%rip), %ymm2
	movq	%rdi, %rax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L77:
	vmovd	%edx, %xmm0
	vpbroadcastw	%xmm0, %ymm0
	vpaddw	%ymm5, %ymm0, %ymm1
	vmovdqu	%ymm1, (%rax)
	vpaddw	%ymm4, %ymm0, %ymm1
	vmovdqu	%ymm1, 32(%rax)
	incl	%edx
	vpaddw	%ymm3, %ymm0, %ymm1
	vpaddw	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm1, 64(%rax)
	vmovdqu	%ymm0, 96(%rax)
	subq	$-128, %rax
	cmpl	$64, %edx
	jne	.L77
	vzeroupper
	ret
	.cfi_endproc
.LFE5540:
	.size	assignMatrixui16, .-assignMatrixui16
	.p2align 4
	.globl	assignMatrixi8
	.type	assignMatrixi8, @function
assignMatrixi8:
.LFB5541:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	64(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L80:
	leaq	-64(%rbp), %r12
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L81:
	call	rand
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	andl	$1, %eax
	movzbl	%r13b, %edx
	subl	%ecx, %eax
	addl	%edx, %eax
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	movb	%al, (%r12)
	incq	%r12
	addl	%ebx, %r13d
	cmpq	%rbp, %r12
	jne	.L81
	incl	%ebx
	leaq	64(%r12), %rbp
	cmpl	$64, %ebx
	jne	.L80
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5541:
	.size	assignMatrixi8, .-assignMatrixi8
	.p2align 4
	.globl	assignArrayi32
	.type	assignArrayi32, @function
assignArrayi32:
.LFB5542:
	.cfi_startproc
	vmovdqa	.LC18(%rip), %ymm4
	vmovdqa	.LC3(%rip), %ymm3
	vmovdqa	.LC19(%rip), %ymm6
	vmovdqa	.LC4(%rip), %ymm5
	vmovdqa	.LC5(%rip), %ymm8
	vmovdqa	.LC6(%rip), %ymm7
	leaq	16384(%rdi), %rax
	.p2align 4,,10
	.p2align 3
.L87:
	vmovdqa	%ymm4, %ymm0
	vmovdqa	%ymm3, %ymm2
	vpmulld	%ymm0, %ymm2, %ymm2
	addq	$32, %rdi
	vpaddd	%ymm6, %ymm4, %ymm4
	vpaddd	%ymm6, %ymm3, %ymm3
	vpsrlq	$32, %ymm2, %ymm1
	vpmuldq	%ymm5, %ymm2, %ymm0
	vpmuldq	%ymm5, %ymm1, %ymm1
	vpshufb	%ymm8, %ymm0, %ymm0
	vpshufb	%ymm7, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpsrad	$6, %ymm0, %ymm1
	vpslld	$5, %ymm1, %ymm0
	vpsubd	%ymm1, %ymm0, %ymm0
	vpslld	$2, %ymm0, %ymm0
	vpaddd	%ymm1, %ymm0, %ymm0
	vpslld	$3, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, -32(%rdi)
	cmpq	%rdi, %rax
	jne	.L87
	vzeroupper
	ret
	.cfi_endproc
.LFE5542:
	.size	assignArrayi32, .-assignArrayi32
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC20:
	.string	"w"
.LC21:
	.string	"fileForOutPuts"
.LC22:
	.string	"%s - %dx%d \n"
.LC23:
	.string	"\n\n"
.LC24:
	.string	" A[%d][%d] = %lf, \n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC25:
	.string	" \n*************************\n*********************FINISHED*********************\n***************** \n"
	.text
	.p2align 4
	.globl	savefloatMatrixFileForOutPuts
	.type	savefloatMatrixFileForOutPuts, @function
savefloatMatrixFileForOutPuts:
.LFB5555:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$.LC20, %esi
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC21, %edi
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	fopen
	movq	programName(%rip), %rdx
	movq	%rax, fileForOutPuts(%rip)
	movq	%rax, %rdi
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$.LC22, %esi
	xorl	%eax, %eax
	call	fprintf
	.p2align 4,,10
	.p2align 3
.L91:
	movq	fileForOutPuts(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC23, %edi
	call	fwrite
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L90:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	fileForOutPuts(%rip), %rdi
	movl	%ebx, %ecx
	vcvtss2sd	(%r12,%rbx,4), %xmm1, %xmm0
	movl	%ebp, %edx
	movl	$.LC24, %esi
	movl	$1, %eax
	incq	%rbx
	call	fprintf
	cmpq	$64, %rbx
	jne	.L90
	incl	%ebp
	addq	$256, %r12
	cmpl	$64, %ebp
	jne	.L91
	movq	fileForOutPuts(%rip), %rcx
	movl	$.LC25, %edi
	movl	$98, %edx
	movl	$1, %esi
	call	fwrite
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	fileForOutPuts(%rip), %rdi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose
	.cfi_endproc
.LFE5555:
	.size	savefloatMatrixFileForOutPuts, .-savefloatMatrixFileForOutPuts
	.p2align 4
	.globl	savefloatMatrixFileName
	.type	savefloatMatrixFileName, @function
savefloatMatrixFileName:
.LFB5556:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC20, %esi
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	fopen
	movq	programName(%rip), %rdx
	movq	%rax, fileForOutPuts(%rip)
	movq	%rax, %rdi
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$.LC22, %esi
	xorl	%eax, %eax
	call	fprintf
	.p2align 4,,10
	.p2align 3
.L97:
	movq	fileForOutPuts(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC23, %edi
	call	fwrite
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L96:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	fileForOutPuts(%rip), %rdi
	movl	%ebx, %ecx
	vcvtss2sd	(%r12,%rbx,4), %xmm1, %xmm0
	movl	%ebp, %edx
	movl	$.LC24, %esi
	movl	$1, %eax
	incq	%rbx
	call	fprintf
	cmpq	$64, %rbx
	jne	.L96
	incl	%ebp
	addq	$256, %r12
	cmpl	$64, %ebp
	jne	.L97
	movq	fileForOutPuts(%rip), %rcx
	movl	$.LC25, %edi
	movl	$98, %edx
	movl	$1, %esi
	call	fwrite
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	fileForOutPuts(%rip), %rdi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose
	.cfi_endproc
.LFE5556:
	.size	savefloatMatrixFileName, .-savefloatMatrixFileName
	.section	.rodata.str1.1
.LC26:
	.string	" A[%d][%d] = %d, \n"
	.text
	.p2align 4
	.globl	saveintMatrixFileForOutPuts
	.type	saveintMatrixFileForOutPuts, @function
saveintMatrixFileForOutPuts:
.LFB5557:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$.LC20, %esi
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC21, %edi
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	fopen
	movq	programName(%rip), %rdx
	movq	%rax, fileForOutPuts(%rip)
	movq	%rax, %rdi
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$.LC22, %esi
	xorl	%eax, %eax
	call	fprintf
	.p2align 4,,10
	.p2align 3
.L103:
	movq	fileForOutPuts(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC23, %edi
	call	fwrite
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L102:
	movl	(%r12,%rbx,4), %r8d
	movq	fileForOutPuts(%rip), %rdi
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movl	$.LC26, %esi
	xorl	%eax, %eax
	incq	%rbx
	call	fprintf
	cmpq	$64, %rbx
	jne	.L102
	incl	%ebp
	addq	$256, %r12
	cmpl	$64, %ebp
	jne	.L103
	movq	fileForOutPuts(%rip), %rcx
	movl	$.LC25, %edi
	movl	$98, %edx
	movl	$1, %esi
	call	fwrite
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	fileForOutPuts(%rip), %rdi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose
	.cfi_endproc
.LFE5557:
	.size	saveintMatrixFileForOutPuts, .-saveintMatrixFileForOutPuts
	.p2align 4
	.globl	saveintMatrixFileName
	.type	saveintMatrixFileName, @function
saveintMatrixFileName:
.LFB5558:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC20, %esi
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	fopen
	movq	programName(%rip), %rdx
	movq	%rax, fileForOutPuts(%rip)
	movq	%rax, %rdi
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$.LC22, %esi
	xorl	%eax, %eax
	call	fprintf
	.p2align 4,,10
	.p2align 3
.L109:
	movq	fileForOutPuts(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC23, %edi
	call	fwrite
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L108:
	movl	(%r12,%rbx,4), %r8d
	movq	fileForOutPuts(%rip), %rdi
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movl	$.LC26, %esi
	xorl	%eax, %eax
	incq	%rbx
	call	fprintf
	cmpq	$64, %rbx
	jne	.L108
	incl	%ebp
	addq	$256, %r12
	cmpl	$64, %ebp
	jne	.L109
	movq	fileForOutPuts(%rip), %rcx
	movl	$.LC25, %edi
	movl	$98, %edx
	movl	$1, %esi
	call	fwrite
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	fileForOutPuts(%rip), %rdi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose
	.cfi_endproc
.LFE5558:
	.size	saveintMatrixFileName, .-saveintMatrixFileName
	.section	.rodata.str1.1
.LC27:
	.string	"MUL1F"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"\nthe best is %lld in %lldth iteration and %lld repetitions\n"
	.section	.rodata.str1.1
.LC29:
	.string	"a"
.LC30:
	.string	"fileForSpeedups"
.LC31:
	.string	"%s, %dx%d, %lld\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB5559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$2, %edi
	movl	$3, %esi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	call	assignToThisCore12
	vmovsd	.LC2(%rip), %xmm1
	movl	$a, %edi
	xorl	%ecx, %ecx
	vxorps	%xmm2, %xmm2, %xmm2
.L114:
	xorl	%r8d, %r8d
	movl	$1, %esi
.L115:
	movl	%ecx, %eax
	cltd
	idivl	%esi
	leal	(%rax,%r8), %edx
	movq	%rdx, %rax
	imulq	$274877907, %rdx, %rdx
	addl	%ecx, %r8d
	shrq	$38, %rdx
	imull	$1000, %edx, %edx
	subl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -4(%rdi,%rsi,4)
	incq	%rsi
	cmpq	$65, %rsi
	jne	.L115
	incl	%ecx
	addq	$256, %rdi
	cmpl	$64, %ecx
	jne	.L114
	movl	$b, %edi
	xorl	%ecx, %ecx
.L116:
	xorl	%r8d, %r8d
	movl	$1, %esi
.L117:
	movl	%ecx, %eax
	cltd
	idivl	%esi
	leal	(%rax,%r8), %edx
	movq	%rdx, %rax
	imulq	$274877907, %rdx, %rdx
	addl	%ecx, %r8d
	shrq	$38, %rdx
	imull	$1000, %edx, %edx
	subl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -4(%rdi,%rsi,4)
	incq	%rsi
	cmpq	$65, %rsi
	jne	.L117
	incl	%ecx
	addq	$256, %rdi
	cmpl	$64, %ecx
	jne	.L116
	movabsq	$19999999999, %rax
	movq	$.LC27, programName(%rip)
	movq	$9999999, elapsed_rdtsc(%rip)
	movq	%rax, overal_time(%rip)
	movq	$0, ttime(%rip)
	movl	$c_result+16384, %r8d
	movl	$c_result, %r10d
	subq	$b, %r8
	movl	$9999999, %r9d
.L127:
#APP
# 20 "MUL1F.c" 1
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm1
# 0 "" 2
#NO_APP
	rdtsc
	movl	$a, %r11d
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, t1_rdtsc(%rip)
	movq	%r10, %rsi
	subq	$b, %rsi
.L119:
	movl	$b+16384, %ecx
	movl	$b, %edi
.L123:
	movq	%rdi, %rax
	movq	%r11, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L120:
	vbroadcastss	(%rdx), %ymm1
	addq	$256, %rax
	vfmadd231ps	-256(%rax), %ymm1, %ymm0
	addq	$4, %rdx
	cmpq	%rcx, %rax
	jne	.L120
	addq	$32, %rdi
	vmovaps	%ymm0, -16384(%rsi,%rax)
	leaq	32(%rax), %rcx
	cmpq	$b+256, %rdi
	jne	.L123
	addq	$256, %rsi
	addq	$256, %r11
	cmpq	%r8, %rsi
	jne	.L119
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, t2_rdtsc(%rip)
#APP
# 30 "MUL1F.c" 1
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm2
# 0 "" 2
#NO_APP
	movq	t2_rdtsc(%rip), %rax
	movq	ttbest_rdtsc(%rip), %rsi
	subq	t1_rdtsc(%rip), %rax
	movq	%rax, ttotal_rdtsc(%rip)
	movq	elapsed_rdtsc(%rip), %rdx
	cmpq	%rsi, %rax
	jge	.L125
	movq	elapsed_rdtsc(%rip), %rdx
	movq	%r9, %rcx
	subq	%rdx, %rcx
	movq	%rax, ttbest_rdtsc(%rip)
	movq	%rcx, elapsed(%rip)
	movq	%rax, %rsi
.L125:
	addq	ttime(%rip), %rax
	leaq	-1(%rdx), %rdi
	movq	%rax, ttime(%rip)
	movq	%rdi, elapsed_rdtsc(%rip)
	testq	%rdx, %rdx
	je	.L128
	cmpq	overal_time(%rip), %rax
	jl	.L127
	jmp	.L126
.L128:
	orq	$-1, %rdi
.L126:
	movq	elapsed(%rip), %rdx
	movl	$9999999, %ecx
	subq	%rdi, %rcx
	xorl	%eax, %eax
	movl	$.LC28, %edi
	vzeroupper
	call	printf
	movl	$.LC29, %esi
	movl	$.LC30, %edi
	call	fopen
	movq	ttbest_rdtsc(%rip), %r9
	movq	programName(%rip), %rdx
	movq	%rax, fileForSpeedups(%rip)
	movq	%rax, %rdi
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$.LC31, %esi
	xorl	%eax, %eax
	call	fprintf
	xorl	%eax, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5559:
	.size	main, .-main
	.comm	b,16384,32
	.comm	c_result,16384,32
	.comm	a,16384,32
	.globl	fileForOutPuts
	.bss
	.align 8
	.type	fileForOutPuts, @object
	.size	fileForOutPuts, 8
fileForOutPuts:
	.zero	8
	.comm	temp2i16,32,32
	.comm	mask,128,32
	.globl	ttime
	.align 8
	.type	ttime, @object
	.size	ttime, 8
ttime:
	.zero	8
	.globl	overal_time
	.data
	.align 8
	.type	overal_time, @object
	.size	overal_time, 8
overal_time:
	.quad	19999999999
	.globl	elapsed_rdtsc
	.align 8
	.type	elapsed_rdtsc, @object
	.size	elapsed_rdtsc, 8
elapsed_rdtsc:
	.quad	9999999
	.comm	elapsed,8,8
	.globl	ttbest_rdtsc
	.align 8
	.type	ttbest_rdtsc, @object
	.size	ttbest_rdtsc, 8
ttbest_rdtsc:
	.quad	99999999999999999
	.comm	ttotal_rdtsc,8,8
	.comm	t2_rdtsc,8,8
	.comm	t1_rdtsc,8,8
	.comm	mask1,128,32
	.globl	programName
	.section	.rodata.str1.1
.LC32:
	.string	" "
	.data
	.align 8
	.type	programName, @object
	.size	programName, 8
programName:
	.quad	.LC32
	.globl	fileForSpeedups
	.bss
	.align 8
	.type	fileForSpeedups, @object
	.size	fileForSpeedups, 8
fileForSpeedups:
	.zero	8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	2296604913
	.long	1055193269
	.align 8
.LC1:
	.long	2296604913
	.long	1056241845
	.align 8
.LC2:
	.long	2439541424
	.long	1069513965
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC3:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
.LC4:
	.long	274877907
	.long	274877907
	.long	274877907
	.long	274877907
	.long	274877907
	.long	274877907
	.long	274877907
	.long	274877907
	.align 32
.LC5:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 32
.LC6:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.align 32
.LC7:
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 32
.LC8:
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.align 32
.LC9:
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.align 32
.LC10:
	.long	32
	.long	33
	.long	34
	.long	35
	.long	36
	.long	37
	.long	38
	.long	39
	.align 32
.LC11:
	.long	40
	.long	41
	.long	42
	.long	43
	.long	44
	.long	45
	.long	46
	.long	47
	.align 32
.LC12:
	.long	48
	.long	49
	.long	50
	.long	51
	.long	52
	.long	53
	.long	54
	.long	55
	.align 32
.LC13:
	.long	56
	.long	57
	.long	58
	.long	59
	.long	60
	.long	61
	.long	62
	.long	63
	.align 32
.LC14:
	.value	10
	.value	11
	.value	12
	.value	13
	.value	14
	.value	15
	.value	16
	.value	17
	.value	18
	.value	19
	.value	20
	.value	21
	.value	22
	.value	23
	.value	24
	.value	25
	.align 32
.LC15:
	.value	26
	.value	27
	.value	28
	.value	29
	.value	30
	.value	31
	.value	32
	.value	33
	.value	34
	.value	35
	.value	36
	.value	37
	.value	38
	.value	39
	.value	40
	.value	41
	.align 32
.LC16:
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	47
	.value	48
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	55
	.value	56
	.value	57
	.align 32
.LC17:
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	67
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	73
	.align 32
.LC18:
	.long	1234
	.long	1235
	.long	1236
	.long	1237
	.long	1238
	.long	1239
	.long	1240
	.long	1241
	.align 32
.LC19:
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.ident	"GCC: (GNU) 9.1.1 20190503 (Red Hat 9.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
