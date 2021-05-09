	.file	"TRA3G.c"
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
	vmovsd	.LC0(%rip), %xmm5
	vmovsd	.LC1(%rip), %xmm4
	vmovsd	.LC2(%rip), %xmm6
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
	vmulsd	%xmm6, %xmm3, %xmm3
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
	vfmadd231sd	%xmm5, %xmm1, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vaddsd	%xmm4, %xmm0, %xmm0
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
	vmovsd	.LC1(%rip), %xmm1
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
	addq	$256, %rdi
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L28:
	leaq	-256(%rdi), %rdx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L29:
	movl	%ecx, %eax
	imulq	$274877907, %rax, %rax
	movl	%ecx, %r8d
	addq	$4, %rdx
	shrq	$38, %rax
	imull	$1000, %eax, %eax
	addl	%esi, %ecx
	subl	%eax, %r8d
	movl	%r8d, -4(%rdx)
	cmpq	%rdi, %rdx
	jne	.L29
	incl	%esi
	leaq	256(%rdx), %rdi
	cmpl	$64, %esi
	jne	.L28
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
.L34:
	leaq	-128(%rbx), %r13
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L35:
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
	jne	.L35
	incl	%ebp
	subq	$-128, %rbx
	cmpl	$64, %ebp
	jne	.L34
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
.L41:
	leaq	-128(%rbx), %r13
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L42:
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
	jne	.L42
	incl	%ebp
	subq	$-128, %rbx
	cmpl	$64, %ebp
	jne	.L41
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
	xorl	%esi, %esi
	movq	%rdi, %rcx
	incl	%esi
	leaq	268(%rdi), %r8
	addq	$272, %rcx
	leaq	4(%rdi), %rdi
	cmpl	$64, %esi
	je	.L52
	.p2align 4,,10
	.p2align 3
.L50:
	movq	%rdi, %rdx
	movq	%r8, %rax
	.p2align 4,,10
	.p2align 3
.L49:
	vmovss	(%rdx), %xmm1
	vmovss	(%rax), %xmm0
	vmovss	%xmm1, (%rax)
	addq	$4, %rax
	vmovss	%xmm0, (%rdx)
	addq	$268, %rdx
	cmpq	%rcx, %rax
	jne	.L49
	incl	%esi
	addq	$268, %r8
	addq	$4, %rdi
	addq	$272, %rcx
	cmpl	$64, %esi
	jne	.L50
.L52:
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
	movq	%rdi, %rcx
	movl	$10, %r8d
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L54:
	movl	$1, %eax
	leal	-1(%r8), %esi
	.p2align 4,,10
	.p2align 3
.L55:
	leal	(%rsi,%rax), %edx
	movw	%dx, -2(%rcx,%rax,2)
	incq	%rax
	cmpq	$65, %rax
	jne	.L55
	incl	%edi
	incl	%r8d
	subq	$-128, %rcx
	cmpl	$64, %edi
	jne	.L54
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
.L60:
	leaq	-64(%rbp), %r12
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L61:
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
	jne	.L61
	incl	%ebx
	leaq	64(%r12), %rbp
	cmpl	$64, %ebx
	jne	.L60
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
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L67:
	leal	1234(%rcx), %edx
	imull	%ecx, %edx
	movl	%edx, %eax
	imulq	$274877907, %rax, %rax
	shrq	$38, %rax
	imull	$1000, %eax, %eax
	subl	%eax, %edx
	movl	%edx, (%rdi,%rcx,4)
	incq	%rcx
	cmpq	$4096, %rcx
	jne	.L67
	ret
	.cfi_endproc
.LFE5542:
	.size	assignArrayi32, .-assignArrayi32
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"w"
.LC4:
	.string	"fileForOutPuts"
.LC5:
	.string	"%s - %dx%d \n"
.LC6:
	.string	"\n\n"
.LC7:
	.string	" A[%d][%d] = %lf, \n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
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
	movl	$.LC3, %esi
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC4, %edi
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
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
	.p2align 4,,10
	.p2align 3
.L71:
	movq	fileForOutPuts(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L70:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	fileForOutPuts(%rip), %rdi
	movl	%ebx, %ecx
	vcvtss2sd	(%r12,%rbx,4), %xmm1, %xmm0
	movl	%ebp, %edx
	movl	$.LC7, %esi
	movl	$1, %eax
	incq	%rbx
	call	fprintf
	cmpq	$64, %rbx
	jne	.L70
	incl	%ebp
	addq	$256, %r12
	cmpl	$64, %ebp
	jne	.L71
	movq	fileForOutPuts(%rip), %rcx
	movl	$.LC8, %edi
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
	movl	$.LC3, %esi
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
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
	.p2align 4,,10
	.p2align 3
.L77:
	movq	fileForOutPuts(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L76:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	fileForOutPuts(%rip), %rdi
	movl	%ebx, %ecx
	vcvtss2sd	(%r12,%rbx,4), %xmm1, %xmm0
	movl	%ebp, %edx
	movl	$.LC7, %esi
	movl	$1, %eax
	incq	%rbx
	call	fprintf
	cmpq	$64, %rbx
	jne	.L76
	incl	%ebp
	addq	$256, %r12
	cmpl	$64, %ebp
	jne	.L77
	movq	fileForOutPuts(%rip), %rcx
	movl	$.LC8, %edi
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
.LC9:
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
	movl	$.LC3, %esi
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC4, %edi
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
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
	.p2align 4,,10
	.p2align 3
.L83:
	movq	fileForOutPuts(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L82:
	movl	(%r12,%rbx,4), %r8d
	movq	fileForOutPuts(%rip), %rdi
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movl	$.LC9, %esi
	xorl	%eax, %eax
	incq	%rbx
	call	fprintf
	cmpq	$64, %rbx
	jne	.L82
	incl	%ebp
	addq	$256, %r12
	cmpl	$64, %ebp
	jne	.L83
	movq	fileForOutPuts(%rip), %rcx
	movl	$.LC8, %edi
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
	movl	$.LC3, %esi
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
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
	.p2align 4,,10
	.p2align 3
.L89:
	movq	fileForOutPuts(%rip), %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L88:
	movl	(%r12,%rbx,4), %r8d
	movq	fileForOutPuts(%rip), %rdi
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movl	$.LC9, %esi
	xorl	%eax, %eax
	incq	%rbx
	call	fprintf
	cmpq	$64, %rbx
	jne	.L88
	incl	%ebp
	addq	$256, %r12
	cmpl	$64, %ebp
	jne	.L89
	movq	fileForOutPuts(%rip), %rcx
	movl	$.LC8, %edi
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
.LC10:
	.string	"TRA3G"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"\nthe best is %lld in %lldth iteration and %lld repetitions\n"
	.section	.rodata.str1.1
.LC12:
	.string	"a"
.LC13:
	.string	"fileForSpeedups"
.LC14:
	.string	"%s, %dx%d, %lld\n"
.LC15:
	.string	"%d"
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
	movl	$3, %esi
	movl	$2, %edi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$32, %rsp
	call	assignToThisCore12
	movl	$A+256, %edi
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L94:
	leaq	-256(%rdi), %rcx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L95:
	movl	%edx, %eax
	imulq	$274877907, %rax, %rax
	movl	%edx, %r10d
	addq	$4, %rcx
	shrq	$38, %rax
	imull	$1000, %eax, %eax
	addl	%esi, %edx
	subl	%eax, %r10d
	movl	%r10d, -4(%rcx)
	cmpq	%rcx, %rdi
	jne	.L95
	incl	%esi
	addq	$256, %rdi
	cmpl	$64, %esi
	jne	.L94
	movabsq	$274877906944, %rax
	movq	%rax, (%rsp)
	movabsq	$824633720960, %rax
	movq	%rax, 8(%rsp)
	movabsq	$1374389534976, %rax
	movq	%rax, 16(%rsp)
	movabsq	$1924145348992, %rax
	movq	%rax, 24(%rsp)
	movabsq	$19999999999, %rax
	movq	$.LC10, programName(%rip)
	movq	$9999999, elapsed_rdtsc(%rip)
	movq	%rax, overal_time(%rip)
	movq	$0, ttime(%rip)
	vmovdqa	(%rsp), %ymm1
	movl	$A+16384, %ecx
	vpcmpeqd	%ymm0, %ymm0, %ymm0
	movl	$9999999, %esi
.L101:
#APP
# 23 "TRA3G.c" 1
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm1
# 0 "" 2
#NO_APP
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, t1_rdtsc(%rip)
	movl	$A_T, %edx
	movl	$A, %eax
	.p2align 4,,10
	.p2align 3
.L97:
	vmovdqa	%ymm0, %ymm2
	vpgatherdd	%ymm2, (%rax,%ymm1,4), %ymm9
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm0, %ymm5
	vmovdqa	%ymm0, %ymm2
	vpgatherdd	%ymm3, 4(%rax,%ymm1,4), %ymm8
	vpgatherdd	%ymm5, 12(%rax,%ymm1,4), %ymm6
	vmovdqa	%ymm0, %ymm4
	vpgatherdd	%ymm2, 16(%rax,%ymm1,4), %ymm5
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm0, %ymm2
	vmovdqa	%ymm0, %ymm10
	vpgatherdd	%ymm4, 8(%rax,%ymm1,4), %ymm7
	vpgatherdd	%ymm3, 20(%rax,%ymm1,4), %ymm4
	vpgatherdd	%ymm2, 24(%rax,%ymm1,4), %ymm3
	vpgatherdd	%ymm10, 28(%rax,%ymm1,4), %ymm2
	vmovdqa	%ymm2, 1792(%rdx)
	vmovdqa	%ymm7, 512(%rdx)
	vmovdqa	%ymm6, 768(%rdx)
	vmovdqa	%ymm5, 1024(%rdx)
	vmovdqa	%ymm4, 1280(%rdx)
	vmovdqa	%ymm3, 1536(%rdx)
	vmovdqa	%ymm9, (%rdx)
	vmovdqa	%ymm8, 256(%rdx)
	vmovdqa	%ymm0, %ymm6
	vmovdqa	%ymm0, %ymm7
	vmovdqa	%ymm0, %ymm4
	vmovdqa	%ymm0, %ymm5
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm0, %ymm2
	vpgatherdd	%ymm6, 32(%rax,%ymm1,4), %ymm9
	vpgatherdd	%ymm7, 36(%rax,%ymm1,4), %ymm8
	vpgatherdd	%ymm5, 44(%rax,%ymm1,4), %ymm6
	vpgatherdd	%ymm4, 40(%rax,%ymm1,4), %ymm7
	vmovdqa	%ymm0, %ymm11
	vpgatherdd	%ymm3, 48(%rax,%ymm1,4), %ymm5
	vpgatherdd	%ymm2, 52(%rax,%ymm1,4), %ymm4
	vmovdqa	%ymm0, %ymm2
	vpgatherdd	%ymm2, 56(%rax,%ymm1,4), %ymm3
	vpgatherdd	%ymm11, 60(%rax,%ymm1,4), %ymm2
	vmovdqa	%ymm2, 3840(%rdx)
	vmovdqa	%ymm7, 2560(%rdx)
	vmovdqa	%ymm6, 2816(%rdx)
	vmovdqa	%ymm5, 3072(%rdx)
	vmovdqa	%ymm4, 3328(%rdx)
	vmovdqa	%ymm3, 3584(%rdx)
	vmovdqa	%ymm9, 2048(%rdx)
	vmovdqa	%ymm8, 2304(%rdx)
	vmovdqa	%ymm0, %ymm6
	vmovdqa	%ymm0, %ymm5
	vmovdqa	%ymm0, %ymm3
	vpgatherdd	%ymm6, 64(%rax,%ymm1,4), %ymm9
	vmovdqa	%ymm0, %ymm7
	vpgatherdd	%ymm5, 76(%rax,%ymm1,4), %ymm6
	vmovdqa	%ymm0, %ymm4
	vpgatherdd	%ymm3, 80(%rax,%ymm1,4), %ymm5
	vmovdqa	%ymm0, %ymm2
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm0, %ymm12
	vpgatherdd	%ymm7, 68(%rax,%ymm1,4), %ymm8
	vpgatherdd	%ymm4, 72(%rax,%ymm1,4), %ymm7
	vpgatherdd	%ymm3, 84(%rax,%ymm1,4), %ymm4
	vpgatherdd	%ymm2, 88(%rax,%ymm1,4), %ymm3
	vpgatherdd	%ymm12, 92(%rax,%ymm1,4), %ymm2
	vmovdqa	%ymm9, 4096(%rdx)
	vmovdqa	%ymm7, 4608(%rdx)
	vmovdqa	%ymm6, 4864(%rdx)
	vmovdqa	%ymm5, 5120(%rdx)
	vmovdqa	%ymm4, 5376(%rdx)
	vmovdqa	%ymm3, 5632(%rdx)
	vmovdqa	%ymm2, 5888(%rdx)
	vmovdqa	%ymm8, 4352(%rdx)
	vmovdqa	%ymm0, %ymm7
	vmovdqa	%ymm0, %ymm4
	vpgatherdd	%ymm7, 100(%rax,%ymm1,4), %ymm8
	vmovdqa	%ymm0, %ymm6
	vpgatherdd	%ymm4, 104(%rax,%ymm1,4), %ymm7
	vmovdqa	%ymm0, %ymm5
	vmovdqa	%ymm0, %ymm4
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm0, %ymm2
	vmovdqa	%ymm0, %ymm13
	vpgatherdd	%ymm6, 96(%rax,%ymm1,4), %ymm9
	vpgatherdd	%ymm5, 108(%rax,%ymm1,4), %ymm6
	vpgatherdd	%ymm4, 112(%rax,%ymm1,4), %ymm5
	vpgatherdd	%ymm3, 116(%rax,%ymm1,4), %ymm4
	vpgatherdd	%ymm2, 120(%rax,%ymm1,4), %ymm3
	vpgatherdd	%ymm13, 124(%rax,%ymm1,4), %ymm2
	vmovdqa	%ymm2, 7936(%rdx)
	vmovdqa	%ymm8, 6400(%rdx)
	vmovdqa	%ymm7, 6656(%rdx)
	vmovdqa	%ymm6, 6912(%rdx)
	vmovdqa	%ymm5, 7168(%rdx)
	vmovdqa	%ymm4, 7424(%rdx)
	vmovdqa	%ymm3, 7680(%rdx)
	vmovdqa	%ymm9, 6144(%rdx)
	vmovdqa	%ymm0, %ymm6
	vmovdqa	%ymm0, %ymm4
	vmovdqa	%ymm0, %ymm2
	vpgatherdd	%ymm6, 128(%rax,%ymm1,4), %ymm9
	vmovdqa	%ymm0, %ymm7
	vpgatherdd	%ymm4, 140(%rax,%ymm1,4), %ymm6
	vmovdqa	%ymm0, %ymm5
	vpgatherdd	%ymm2, 148(%rax,%ymm1,4), %ymm4
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm0, %ymm2
	vmovdqa	%ymm0, %ymm14
	vpgatherdd	%ymm7, 132(%rax,%ymm1,4), %ymm8
	vpgatherdd	%ymm5, 136(%rax,%ymm1,4), %ymm7
	vpgatherdd	%ymm3, 144(%rax,%ymm1,4), %ymm5
	vpgatherdd	%ymm2, 152(%rax,%ymm1,4), %ymm3
	vpgatherdd	%ymm14, 156(%rax,%ymm1,4), %ymm2
	vmovdqa	%ymm2, 9984(%rdx)
	vmovdqa	%ymm7, 8704(%rdx)
	vmovdqa	%ymm6, 8960(%rdx)
	vmovdqa	%ymm5, 9216(%rdx)
	vmovdqa	%ymm4, 9472(%rdx)
	vmovdqa	%ymm3, 9728(%rdx)
	vmovdqa	%ymm9, 8192(%rdx)
	vmovdqa	%ymm8, 8448(%rdx)
	vmovdqa	%ymm0, %ymm6
	vmovdqa	%ymm0, %ymm7
	vmovdqa	%ymm0, %ymm5
	vmovdqa	%ymm0, %ymm4
	vmovdqa	%ymm0, %ymm3
	vpgatherdd	%ymm6, 160(%rax,%ymm1,4), %ymm9
	vpgatherdd	%ymm7, 164(%rax,%ymm1,4), %ymm8
	vpgatherdd	%ymm4, 172(%rax,%ymm1,4), %ymm6
	vpgatherdd	%ymm5, 168(%rax,%ymm1,4), %ymm7
	vmovdqa	%ymm0, %ymm2
	vpgatherdd	%ymm3, 176(%rax,%ymm1,4), %ymm5
	vmovdqa	%ymm0, %ymm15
	vmovdqa	%ymm0, %ymm3
	vpgatherdd	%ymm3, 180(%rax,%ymm1,4), %ymm4
	vpgatherdd	%ymm2, 184(%rax,%ymm1,4), %ymm3
	vpgatherdd	%ymm15, 188(%rax,%ymm1,4), %ymm2
	vmovdqa	%ymm2, 12032(%rdx)
	vmovdqa	%ymm7, 10752(%rdx)
	vmovdqa	%ymm6, 11008(%rdx)
	vmovdqa	%ymm5, 11264(%rdx)
	vmovdqa	%ymm4, 11520(%rdx)
	vmovdqa	%ymm3, 11776(%rdx)
	vmovdqa	%ymm9, 10240(%rdx)
	vmovdqa	%ymm8, 10496(%rdx)
	vmovdqa	%ymm0, %ymm6
	vmovdqa	%ymm0, %ymm4
	vpgatherdd	%ymm6, 192(%rax,%ymm1,4), %ymm9
	vmovdqa	%ymm0, %ymm7
	vpgatherdd	%ymm4, 204(%rax,%ymm1,4), %ymm6
	vmovdqa	%ymm0, %ymm5
	vmovdqa	%ymm0, %ymm4
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm0, %ymm2
	vmovdqa	%ymm0, %ymm10
	vpgatherdd	%ymm7, 196(%rax,%ymm1,4), %ymm8
	vpgatherdd	%ymm5, 200(%rax,%ymm1,4), %ymm7
	vpgatherdd	%ymm4, 208(%rax,%ymm1,4), %ymm5
	vpgatherdd	%ymm3, 212(%rax,%ymm1,4), %ymm4
	vpgatherdd	%ymm2, 216(%rax,%ymm1,4), %ymm3
	vpgatherdd	%ymm10, 220(%rax,%ymm1,4), %ymm2
	vmovdqa	%ymm9, 12288(%rdx)
	vmovdqa	%ymm8, 12544(%rdx)
	vmovdqa	%ymm7, 12800(%rdx)
	vmovdqa	%ymm6, 13056(%rdx)
	vmovdqa	%ymm5, 13312(%rdx)
	vmovdqa	%ymm4, 13568(%rdx)
	vmovdqa	%ymm3, 13824(%rdx)
	vmovdqa	%ymm2, 14080(%rdx)
	vmovdqa	%ymm0, %ymm7
	vmovdqa	%ymm0, %ymm5
	vpgatherdd	%ymm7, 228(%rax,%ymm1,4), %ymm8
	vmovdqa	%ymm0, %ymm6
	vpgatherdd	%ymm5, 232(%rax,%ymm1,4), %ymm7
	vmovdqa	%ymm0, %ymm4
	vmovdqa	%ymm0, %ymm5
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm0, %ymm2
	vmovdqa	%ymm0, %ymm11
	vpgatherdd	%ymm6, 224(%rax,%ymm1,4), %ymm9
	vpgatherdd	%ymm5, 236(%rax,%ymm1,4), %ymm6
	vpgatherdd	%ymm4, 240(%rax,%ymm1,4), %ymm5
	vpgatherdd	%ymm3, 244(%rax,%ymm1,4), %ymm4
	vpgatherdd	%ymm2, 248(%rax,%ymm1,4), %ymm3
	vpgatherdd	%ymm11, 252(%rax,%ymm1,4), %ymm2
	addq	$2048, %rax
	vmovdqa	%ymm9, 14336(%rdx)
	vmovdqa	%ymm8, 14592(%rdx)
	vmovdqa	%ymm7, 14848(%rdx)
	vmovdqa	%ymm6, 15104(%rdx)
	vmovdqa	%ymm5, 15360(%rdx)
	vmovdqa	%ymm4, 15616(%rdx)
	vmovdqa	%ymm3, 15872(%rdx)
	vmovdqa	%ymm2, 16128(%rdx)
	addq	$32, %rdx
	cmpq	%rax, %rcx
	jne	.L97
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, t2_rdtsc(%rip)
#APP
# 53 "TRA3G.c" 1
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm2
# 0 "" 2
#NO_APP
	movq	t2_rdtsc(%rip), %rax
	movq	ttbest_rdtsc(%rip), %r8
	subq	t1_rdtsc(%rip), %rax
	movq	%rax, ttotal_rdtsc(%rip)
	movq	elapsed_rdtsc(%rip), %rdx
	cmpq	%r8, %rax
	jge	.L99
	movq	elapsed_rdtsc(%rip), %rdx
	movq	%rsi, %rdi
	subq	%rdx, %rdi
	movq	%rax, ttbest_rdtsc(%rip)
	movq	%rdi, elapsed(%rip)
	movq	%rax, %r8
.L99:
	addq	ttime(%rip), %rax
	leaq	-1(%rdx), %rdi
	movq	%rax, ttime(%rip)
	movq	%rdi, elapsed_rdtsc(%rip)
	testq	%rdx, %rdx
	je	.L102
	cmpq	overal_time(%rip), %rax
	jl	.L101
.L100:
	movq	elapsed(%rip), %rdx
	movl	$9999999, %ecx
	subq	%rdi, %rcx
	movq	%r8, %rsi
	movl	$.LC11, %edi
	xorl	%eax, %eax
	vzeroupper
	call	printf
	movl	$.LC12, %esi
	movl	$.LC13, %edi
	call	fopen
	movq	ttbest_rdtsc(%rip), %r9
	movq	programName(%rip), %rdx
	movq	%rax, %rdi
	movq	%rax, fileForSpeedups(%rip)
	movl	$64, %r8d
	movl	$64, %ecx
	movl	$.LC14, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	A_T+8320(%rip), %esi
	movl	$.LC15, %edi
	xorl	%eax, %eax
	call	printf
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L102:
	.cfi_restore_state
	orq	$-1, %rdi
	jmp	.L100
	.cfi_endproc
.LFE5559:
	.size	main, .-main
	.comm	A_T,16384,32
	.comm	A,16384,32
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
.LC16:
	.string	" "
	.data
	.align 8
	.type	programName, @object
	.size	programName, 8
programName:
	.quad	.LC16
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
	.long	2439541424
	.long	1069513965
	.align 8
.LC2:
	.long	2296604913
	.long	1056241845
	.ident	"GCC: (GNU) 9.1.1 20190503 (Red Hat 9.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
