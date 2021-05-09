	.file	"MUL3.c"
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
.LFB5535:
	.cfi_startproc
	vmovsd	.LC0(%rip), %xmm5
	vmovsd	.LC1(%rip), %xmm4
	vmovsd	.LC2(%rip), %xmm6
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%rdi, %r9
	xorl	%esi, %esi
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
	cmpl	$256, %ecx
	jne	.L11
	incl	%esi
	addq	$1040, %r9
	cmpl	$256, %esi
	jne	.L10
	ret
	.cfi_endproc
.LFE5535:
	.size	assignImagef32, .-assignImagef32
	.p2align 4
	.globl	assignMatrixf32
	.type	assignMatrixf32, @function
assignMatrixf32:
.LFB5536:
	.cfi_startproc
	vmovsd	.LC1(%rip), %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%rdi, %r8
	xorl	%esi, %esi
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
	cmpq	$257, %rcx
	jne	.L17
	incl	%esi
	addq	$1024, %r8
	cmpl	$256, %esi
	jne	.L16
	ret
	.cfi_endproc
.LFE5536:
	.size	assignMatrixf32, .-assignMatrixf32
	.p2align 4
	.globl	assignImagei32
	.type	assignImagei32, @function
assignImagei32:
.LFB5537:
	.cfi_startproc
	movq	%rdi, %r9
	movl	$2155905153, %r10d
	xorl	%edi, %edi
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
	cmpq	$257, %rcx
	jne	.L23
	incl	%edi
	addq	$1040, %r9
	cmpl	$256, %edi
	jne	.L22
	ret
	.cfi_endproc
.LFE5537:
	.size	assignImagei32, .-assignImagei32
	.p2align 4
	.globl	assignMatrixi32
	.type	assignMatrixi32, @function
assignMatrixi32:
.LFB5538:
	.cfi_startproc
	addq	$1024, %rdi
	xorl	%esi, %esi
.L28:
	leaq	-1024(%rdi), %rdx
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
	leaq	1024(%rdx), %rdi
	cmpl	$256, %esi
	jne	.L28
	ret
	.cfi_endproc
.LFE5538:
	.size	assignMatrixi32, .-assignMatrixi32
	.p2align 4
	.globl	assignMatrixi16
	.type	assignMatrixi16, @function
assignMatrixi16:
.LFB5539:
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
	leaq	512(%rdi), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.L34:
	leaq	-512(%rbx), %r13
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
	addq	$512, %rbx
	cmpl	$256, %ebp
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
.LFE5539:
	.size	assignMatrixi16, .-assignMatrixi16
	.p2align 4
	.globl	assignImagei16
	.type	assignImagei16, @function
assignImagei16:
.LFB5563:
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
	leaq	512(%rdi), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.L41:
	leaq	-512(%rbx), %r13
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
	addq	$512, %rbx
	cmpl	$256, %ebp
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
.LFE5563:
	.size	assignImagei16, .-assignImagei16
	.p2align 4
	.globl	imageTranspose
	.type	imageTranspose, @function
imageTranspose:
.LFB5541:
	.cfi_startproc
	xorl	%esi, %esi
	movq	%rdi, %rcx
	incl	%esi
	leaq	1036(%rdi), %r8
	addq	$1040, %rcx
	leaq	4(%rdi), %rdi
	cmpl	$256, %esi
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
	addq	$1036, %rdx
	cmpq	%rcx, %rax
	jne	.L49
	incl	%esi
	addq	$1036, %r8
	addq	$4, %rdi
	addq	$1040, %rcx
	cmpl	$256, %esi
	jne	.L50
.L52:
	ret
	.cfi_endproc
.LFE5541:
	.size	imageTranspose, .-imageTranspose
	.p2align 4
	.globl	assignMatrixui16
	.type	assignMatrixui16, @function
assignMatrixui16:
.LFB5542:
	.cfi_startproc
	movq	%rdi, %rcx
	xorl	%edi, %edi
.L54:
	xorl	%eax, %eax
	leal	10(%rdi), %esi
	.p2align 4,,10
	.p2align 3
.L55:
	leal	(%rsi,%rax), %edx
	movzbl	%dl, %edx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
	cmpq	$256, %rax
	jne	.L55
	incl	%edi
	addq	$512, %rcx
	cmpl	$256, %edi
	jne	.L54
	ret
	.cfi_endproc
.LFE5542:
	.size	assignMatrixui16, .-assignMatrixui16
	.p2align 4
	.globl	assignMatrixi8
	.type	assignMatrixi8, @function
assignMatrixi8:
.LFB5543:
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
	leaq	256(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.L60:
	leaq	-256(%rbp), %r12
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
	leaq	256(%r12), %rbp
	cmpl	$256, %ebx
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
.LFE5543:
	.size	assignMatrixi8, .-assignMatrixi8
	.p2align 4
	.globl	assignArrayi32
	.type	assignArrayi32, @function
assignArrayi32:
.LFB5544:
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
	cmpq	$65536, %rcx
	jne	.L67
	ret
	.cfi_endproc
.LFE5544:
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
	movl	$256, %r8d
	movl	$256, %ecx
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
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
	cmpq	$256, %rbx
	jne	.L70
	incl	%ebp
	addq	$1024, %r12
	cmpl	$256, %ebp
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
.LFE5557:
	.size	savefloatMatrixFileForOutPuts, .-savefloatMatrixFileForOutPuts
	.p2align 4
	.globl	savefloatMatrixFileName
	.type	savefloatMatrixFileName, @function
savefloatMatrixFileName:
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
	movl	$256, %r8d
	movl	$256, %ecx
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
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
	cmpq	$256, %rbx
	jne	.L76
	incl	%ebp
	addq	$1024, %r12
	cmpl	$256, %ebp
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
.LFE5558:
	.size	savefloatMatrixFileName, .-savefloatMatrixFileName
	.section	.rodata.str1.1
.LC9:
	.string	" A[%d][%d] = %d, \n"
	.text
	.p2align 4
	.globl	saveintMatrixFileForOutPuts
	.type	saveintMatrixFileForOutPuts, @function
saveintMatrixFileForOutPuts:
.LFB5559:
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
	movl	$256, %r8d
	movl	$256, %ecx
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
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
	cmpq	$256, %rbx
	jne	.L82
	incl	%ebp
	addq	$1024, %r12
	cmpl	$256, %ebp
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
.LFE5559:
	.size	saveintMatrixFileForOutPuts, .-saveintMatrixFileForOutPuts
	.p2align 4
	.globl	saveintMatrixFileName
	.type	saveintMatrixFileName, @function
saveintMatrixFileName:
.LFB5560:
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
	movl	$256, %r8d
	movl	$256, %ecx
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
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
	cmpq	$256, %rbx
	jne	.L88
	incl	%ebp
	addq	$1024, %r12
	cmpl	$256, %ebp
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
.LFE5560:
	.size	saveintMatrixFileName, .-saveintMatrixFileName
	.section	.rodata.str1.1
.LC10:
	.string	"MUL3ABG"
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
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB5561:
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
	movl	$a, %edx
	xorl	%esi, %esi
.L94:
	xorl	%ecx, %ecx
	leaq	1024(%rdx), %rdi
.L95:
	movl	%ecx, %eax
	imulq	$274877907, %rax, %rax
	movl	%ecx, %r10d
	addq	$4, %rdx
	shrq	$38, %rax
	imull	$1000, %eax, %eax
	addl	%esi, %ecx
	subl	%eax, %r10d
	movl	%r10d, -4(%rdx)
	cmpq	%rdi, %rdx
	jne	.L95
	incl	%esi
	cmpl	$256, %esi
	jne	.L94
	movl	$b, %edx
	xorl	%esi, %esi
.L96:
	xorl	%ecx, %ecx
	leaq	1024(%rdx), %rdi
.L97:
	movl	%ecx, %eax
	imulq	$274877907, %rax, %rax
	movl	%ecx, %r11d
	addq	$4, %rdx
	shrq	$38, %rax
	imull	$1000, %eax, %eax
	addl	%esi, %ecx
	subl	%eax, %r11d
	movl	%r11d, -4(%rdx)
	cmpq	%rdi, %rdx
	jne	.L97
	incl	%esi
	cmpl	$256, %esi
	jne	.L96
	movabsq	$1099511627776, %rax
	movq	%rax, (%rsp)
	movabsq	$3298534883840, %rax
	movq	%rax, 8(%rsp)
	movabsq	$5497558139904, %rax
	movq	%rax, 16(%rsp)
	movabsq	$7696581395968, %rax
	movq	%rax, 24(%rsp)
	movabsq	$9999999999, %rax
	movq	$.LC10, programName(%rip)
	movq	$999999, elapsed_rdtsc(%rip)
	movq	%rax, overal_time(%rip)
	movq	$0, ttime(%rip)
	vmovdqa	(%rsp), %ymm3
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	movl	$999999, %edi
.L107:
#APP
# 21 "MUL3.c" 1
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm1
# 0 "" 2
#NO_APP
	rdtsc
	movl	$a, %r9d
	xorl	%r8d, %r8d
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, t1_rdtsc(%rip)
.L99:
	movl	$b+262144, %ecx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L103:
	leaq	-262144(%rcx), %rdx
	movq	%r9, %rax
	vpxor	%xmm1, %xmm1, %xmm1
	.p2align 4,,10
	.p2align 3
.L100:
	vmovdqa	%ymm2, %ymm4
	vpgatherdd	%ymm4, (%rdx,%ymm3,4), %ymm0
	vpmulld	(%rax), %ymm0, %ymm0
	addq	$8192, %rdx
	vpaddd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, %ymm1
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jne	.L100
	vpextrd	$1, %xmm0, %ecx
	vmovd	%xmm0, %eax
	addl	%ecx, %eax
	vpextrd	$2, %xmm0, %ecx
	addl	%ecx, %eax
	vmovdqa	%ymm0, temp8(%rip)
	vpextrd	$3, %xmm0, %ecx
	vextracti128	$0x1, %ymm0, %xmm0
	addl	%ecx, %eax
	vmovd	%xmm0, %ecx
	addl	%ecx, %eax
	vpextrd	$1, %xmm0, %ecx
	addl	%ecx, %eax
	vpextrd	$2, %xmm0, %ecx
	addl	%eax, %ecx
	vpextrd	$3, %xmm0, %eax
	addl	%ecx, %eax
	movl	%eax, c_result(%r8,%rsi,4)
	incq	%rsi
	leaq	4(%rdx), %rcx
	cmpq	$256, %rsi
	jne	.L103
	addq	$1024, %r8
	addq	$1024, %r9
	cmpq	$262144, %r8
	jne	.L99
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, t2_rdtsc(%rip)
#APP
# 46 "MUL3.c" 1
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm2
# 0 "" 2
#NO_APP
	movq	t2_rdtsc(%rip), %rax
	movq	ttbest_rdtsc(%rip), %rsi
	subq	t1_rdtsc(%rip), %rax
	movq	%rax, ttotal_rdtsc(%rip)
	movq	elapsed_rdtsc(%rip), %rdx
	cmpq	%rsi, %rax
	jge	.L105
	movq	elapsed_rdtsc(%rip), %rdx
	movq	%rdi, %rcx
	subq	%rdx, %rcx
	movq	%rax, ttbest_rdtsc(%rip)
	movq	%rcx, elapsed(%rip)
	movq	%rax, %rsi
.L105:
	addq	ttime(%rip), %rax
	leaq	-1(%rdx), %r8
	movq	%rax, ttime(%rip)
	movq	%r8, elapsed_rdtsc(%rip)
	testq	%rdx, %rdx
	je	.L109
	cmpq	overal_time(%rip), %rax
	jl	.L107
	jmp	.L106
.L109:
	orq	$-1, %r8
.L106:
	movq	elapsed(%rip), %rdx
	movl	$999999, %ecx
	subq	%r8, %rcx
	movl	$.LC11, %edi
	xorl	%eax, %eax
	vzeroupper
	call	printf
	movl	$.LC12, %esi
	movl	$.LC13, %edi
	call	fopen
	movq	ttbest_rdtsc(%rip), %r9
	movq	programName(%rip), %rdx
	movq	%rax, fileForSpeedups(%rip)
	movq	%rax, %rdi
	movl	$256, %r8d
	movl	$256, %ecx
	movl	$.LC14, %esi
	xorl	%eax, %eax
	call	fprintf
	xorl	%eax, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5561:
	.size	main, .-main
	.comm	c_result,262144,32
	.comm	b,262144,32
	.comm	a,262144,32
	.globl	fileForOutPuts
	.bss
	.align 8
	.type	fileForOutPuts, @object
	.size	fileForOutPuts, 8
fileForOutPuts:
	.zero	8
	.comm	temp2i16,32,32
	.comm	temp8,32,32
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
	.quad	9999999999
	.globl	elapsed_rdtsc
	.align 8
	.type	elapsed_rdtsc, @object
	.size	elapsed_rdtsc, 8
elapsed_rdtsc:
	.quad	999999
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
.LC15:
	.string	" "
	.data
	.align 8
	.type	programName, @object
	.size	programName, 8
programName:
	.quad	.LC15
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
