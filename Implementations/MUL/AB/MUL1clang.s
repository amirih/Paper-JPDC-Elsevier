	.text
	.file	"MUL1.c"
	.globl	assignToThisCore12      # -- Begin function assignToThisCore12
	.p2align	4, 0x90
	.type	assignToThisCore12,@function
assignToThisCore12:                     # @assignToThisCore12
	.cfi_startproc
# %bb.0:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, mask+96(%rip)
	vmovups	%ymm0, mask+64(%rip)
	vmovups	%ymm0, mask+32(%rip)
	vmovups	%ymm0, mask(%rip)
	cmpl	$1023, %edi             # imm = 0x3FF
	jbe	.LBB0_1
# %bb.2:
	cmpl	$1023, %esi             # imm = 0x3FF
	jbe	.LBB0_3
.LBB0_4:
	movl	$128, %esi
	movl	$mask, %edx
	xorl	%edi, %edi
	vzeroupper
	jmp	sched_setaffinity       # TAILCALL
.LBB0_1:
	movslq	%edi, %rax
	movl	$1, %ecx
	shlxq	%rax, %rcx, %rcx
	shrq	$6, %rax
	orq	%rcx, mask(,%rax,8)
	cmpl	$1023, %esi             # imm = 0x3FF
	ja	.LBB0_4
.LBB0_3:
	movslq	%esi, %rax
	movl	$1, %ecx
	shlxq	%rax, %rcx, %rcx
	shrq	$6, %rax
	orq	%rcx, mask(,%rax,8)
	movl	$128, %esi
	movl	$mask, %edx
	xorl	%edi, %edi
	vzeroupper
	jmp	sched_setaffinity       # TAILCALL
.Lfunc_end0:
	.size	assignToThisCore12, .Lfunc_end0-assignToThisCore12
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function assignImagef32
.LCPI1_0:
	.quad	4536524183238306033     # double 2.0000000000000002E-5
.LCPI1_1:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI1_2:
	.quad	4593527504729830064     # double 0.123
	.text
	.globl	assignImagef32
	.p2align	4, 0x90
	.type	assignImagef32,@function
assignImagef32:                         # @assignImagef32
	.cfi_startproc
# %bb.0:
	addq	$4, %rdi
	xorl	%r9d, %r9d
	vmovsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	vmovsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	vmovsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	.p2align	4, 0x90
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	vcvtsi2sdl	%r9d, %xmm6, %xmm3
	vmulsd	%xmm0, %xmm3, %xmm3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %ecx
	leal	1(%rsi), %r8d
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%r8d
	imull	%r9d, %ecx
	addl	%r9d, %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	shrl	%ecx
	imulq	$1195121335, %rcx, %rcx # imm = 0x473C1AB7
	shrq	$37, %rcx
	imull	$230, %ecx, %ecx
	subl	%ecx, %eax
	vcvtsi2sdl	%eax, %xmm6, %xmm4
	vcvtsi2sdl	%esi, %xmm6, %xmm5
	vmulsd	%xmm1, %xmm5, %xmm5
	vaddsd	%xmm4, %xmm5, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm4
	vaddsd	%xmm2, %xmm4, %xmm4
	vcvtsd2ss	%xmm4, %xmm4, %xmm4
	vmovss	%xmm4, -4(%rdi,%rsi,4)
	leaq	2(%rsi), %rcx
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%esi, %edx
	orl	$1, %edx
	imull	%r9d, %edx
	addl	%r9d, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	imulq	$1195121335, %rdx, %rdx # imm = 0x473C1AB7
	shrq	$37, %rdx
	imull	$230, %edx, %edx
	subl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm6, %xmm4
	vcvtsi2sdl	%r8d, %xmm6, %xmm5
	vmulsd	%xmm1, %xmm5, %xmm5
	vaddsd	%xmm4, %xmm5, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm4
	vaddsd	%xmm2, %xmm4, %xmm4
	vcvtsd2ss	%xmm4, %xmm4, %xmm4
	vmovss	%xmm4, (%rdi,%rsi,4)
	movq	%rcx, %rsi
	cmpq	$64, %rcx
	jne	.LBB1_2
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r9
	addq	$272, %rdi              # imm = 0x110
	cmpq	$64, %r9
	jne	.LBB1_1
# %bb.4:
	retq
.Lfunc_end1:
	.size	assignImagef32, .Lfunc_end1-assignImagef32
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function assignMatrixf32
.LCPI2_0:
	.quad	4593527504729830064     # double 0.123
	.text
	.globl	assignMatrixf32
	.p2align	4, 0x90
	.type	assignMatrixf32,@function
assignMatrixf32:                        # @assignMatrixf32
	.cfi_startproc
# %bb.0:
	xorl	%r8d, %r8d
	vmovsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	movl	$1, %esi
	movl	$2, %r9d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	movl	%r10d, %edx
	imull	%r8d, %edx
	addl	%edx, %eax
	imulq	$274877907, %rax, %rdx  # imm = 0x10624DD3
	shrq	$38, %rdx
	imull	$1000, %edx, %edx       # imm = 0x3E8
	subl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	movl	%r10d, %ecx
	vmovss	%xmm1, -4(%rdi,%rsi,4)
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $eax killed $eax def $rax
	orl	$1, %ecx
	imull	%r8d, %ecx
	addl	%ecx, %eax
	imulq	$274877907, %rax, %rcx  # imm = 0x10624DD3
	shrq	$38, %rcx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	addq	$2, %r10
	vmovss	%xmm1, (%rdi,%rsi,4)
	addq	$2, %rsi
	addl	$2, %r9d
	cmpq	$65, %rsi
	jne	.LBB2_2
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	addq	$1, %r8
	addq	$256, %rdi              # imm = 0x100
	cmpq	$64, %r8
	jne	.LBB2_1
# %bb.4:
	retq
.Lfunc_end2:
	.size	assignMatrixf32, .Lfunc_end2-assignMatrixf32
	.cfi_endproc
                                        # -- End function
	.globl	assignImagei32          # -- Begin function assignImagei32
	.p2align	4, 0x90
	.type	assignImagei32,@function
assignImagei32:                         # @assignImagei32
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%r9d, %r9d
	movl	$2155905153, %r8d       # imm = 0x80808081
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movl	$1, %esi
	movl	$2, %r10d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r11d, %ecx
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	imull	%r9d, %ecx
	movl	%r11d, %ebx
	orl	$1, %ebx
	addl	%ecx, %eax
	movq	%rax, %rcx
	imulq	%r8, %rcx
	shrq	$39, %rcx
	movl	%ecx, %edx
	shll	$8, %edx
	subl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, -4(%rdi,%rsi,4)
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%r10d
                                        # kill: def $eax killed $eax def $rax
	imull	%r9d, %ebx
	addq	$2, %r11
	addl	%ebx, %eax
	movq	%rax, %rcx
	imulq	%r8, %rcx
	shrq	$39, %rcx
	movl	%ecx, %edx
	shll	$8, %edx
	subl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, (%rdi,%rsi,4)
	addq	$2, %rsi
	addl	$2, %r10d
	cmpq	$65, %rsi
	jne	.LBB3_2
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	addq	$1, %r9
	addq	$272, %rdi              # imm = 0x110
	cmpq	$64, %r9
	jne	.LBB3_1
# %bb.4:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	assignImagei32, .Lfunc_end3-assignImagei32
	.cfi_endproc
                                        # -- End function
	.globl	assignMatrixi32         # -- Begin function assignMatrixi32
	.p2align	4, 0x90
	.type	assignMatrixi32,@function
assignMatrixi32:                        # @assignMatrixi32
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	addq	$12, %rdi
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	xorl	%r13d, %r13d
	movl	%r10d, %ebp
	movl	%r8d, %esi
	movl	%r9d, %ecx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_2:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %eax
	imulq	$274877907, %rax, %rax  # imm = 0x10624DD3
	shrq	$38, %rax
	imull	$1000, %eax, %eax       # imm = 0x3E8
	movl	%ecx, %r14d
	subl	%eax, %r14d
	movl	%esi, %eax
	imulq	$274877907, %rax, %rax  # imm = 0x10624DD3
	shrq	$38, %rax
	imull	$1000, %eax, %r15d      # imm = 0x3E8
	movl	%esi, %r12d
	subl	%r15d, %r12d
	movl	%ebp, %eax
	imulq	$274877907, %rax, %rax  # imm = 0x10624DD3
	shrq	$38, %rax
	imull	$1000, %eax, %eax       # imm = 0x3E8
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	%r13d, %eax
	imulq	$274877907, %rax, %rax  # imm = 0x10624DD3
	shrq	$38, %rax
	imull	$1000, %eax, %r15d      # imm = 0x3E8
	movl	%r13d, %eax
	subl	%r15d, %eax
	movl	%eax, -12(%rdi,%rbx,4)
	movl	%edx, -8(%rdi,%rbx,4)
	movl	%r12d, -4(%rdi,%rbx,4)
	movl	%r14d, (%rdi,%rbx,4)
	addq	$4, %rbx
	addl	%r11d, %ecx
	addl	%r11d, %esi
	addl	%r11d, %ebp
	addl	%r11d, %r13d
	cmpq	$64, %rbx
	jne	.LBB4_2
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	addq	$1, %r10
	addl	$3, %r9d
	addl	$4, %r11d
	addq	$256, %rdi              # imm = 0x100
	addl	$2, %r8d
	cmpq	$64, %r10
	jne	.LBB4_1
# %bb.4:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	assignMatrixi32, .Lfunc_end4-assignMatrixi32
	.cfi_endproc
                                        # -- End function
	.globl	assignMatrixi16         # -- Begin function assignMatrixi16
	.p2align	4, 0x90
	.type	assignMatrixi16,@function
assignMatrixi16:                        # @assignMatrixi16
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB5_2:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	shrl	%eax
	imulq	$558694933, %rax, %rax  # imm = 0x214D0215
	shrq	$36, %rax
	imull	$246, %eax, %eax
	movl	%ebp, %r12d
	subl	%eax, %r12d
	callq	rand
	cltq
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	addl	%r12d, %eax
	movw	%ax, (%r14,%rbx,2)
	addq	$1, %rbx
	addl	%r15d, %ebp
	cmpq	$64, %rbx
	jne	.LBB5_2
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	addq	$1, %r15
	subq	$-128, %r14
	cmpq	$64, %r15
	jne	.LBB5_1
# %bb.4:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	assignMatrixi16, .Lfunc_end5-assignMatrixi16
	.cfi_endproc
                                        # -- End function
	.globl	assignImagei16          # -- Begin function assignImagei16
	.p2align	4, 0x90
	.type	assignImagei16,@function
assignImagei16:                         # @assignImagei16
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB6_2:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	shrl	%eax
	imulq	$558694933, %rax, %rax  # imm = 0x214D0215
	shrq	$36, %rax
	imull	$246, %eax, %eax
	movl	%ebp, %r12d
	subl	%eax, %r12d
	callq	rand
	cltq
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	addl	%r12d, %eax
	movw	%ax, (%r14,%rbx,2)
	addq	$1, %rbx
	addl	%r15d, %ebp
	cmpq	$64, %rbx
	jne	.LBB6_2
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	addq	$1, %r15
	subq	$-128, %r14
	cmpq	$64, %r15
	jne	.LBB6_1
# %bb.4:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	assignImagei16, .Lfunc_end6-assignImagei16
	.cfi_endproc
                                        # -- End function
	.globl	imageTranspose          # -- Begin function imageTranspose
	.p2align	4, 0x90
	.type	imageTranspose,@function
imageTranspose:                         # @imageTranspose
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	leaq	12(%rdi), %rdx
	.p2align	4, 0x90
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
                                        #     Child Loop BB7_8 Depth 2
	testq	%r9, %r9
	je	.LBB7_9
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movl	%r9d, %r10d
	andl	$3, %r10d
	leaq	-1(%r9), %rax
	cmpq	$3, %rax
	jae	.LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	xorl	%ecx, %ecx
	testb	$3, %r9b
	jne	.LBB7_7
	jmp	.LBB7_9
	.p2align	4, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	movq	%r9, %r11
	subq	%r10, %r11
	movq	%r8, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB7_5:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rdx,%rcx,4), %eax
	movl	(%rsi), %ebx
	movl	%ebx, -12(%rdx,%rcx,4)
	movl	%eax, (%rsi)
	movl	-8(%rdx,%rcx,4), %eax
	movl	268(%rsi), %ebx
	movl	%ebx, -8(%rdx,%rcx,4)
	movl	%eax, 268(%rsi)
	movl	-4(%rdx,%rcx,4), %eax
	movl	536(%rsi), %ebx
	movl	%ebx, -4(%rdx,%rcx,4)
	movl	%eax, 536(%rsi)
	movl	(%rdx,%rcx,4), %eax
	movl	804(%rsi), %ebx
	movl	%ebx, (%rdx,%rcx,4)
	movl	%eax, 804(%rsi)
	addq	$4, %rcx
	addq	$1072, %rsi             # imm = 0x430
	cmpq	%rcx, %r11
	jne	.LBB7_5
# %bb.6:                                #   in Loop: Header=BB7_1 Depth=1
	testb	$3, %r9b
	je	.LBB7_9
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	imulq	$268, %rcx, %rax        # imm = 0x10C
	addq	%r8, %rax
	leaq	(%rdi,%rcx,4), %r11
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB7_8:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r11,%rsi,4), %ebx
	movl	(%rax), %ecx
	movl	%ecx, (%r11,%rsi,4)
	movl	%ebx, (%rax)
	addq	$268, %rax              # imm = 0x10C
	addq	$1, %rsi
	cmpq	%rsi, %r10
	jne	.LBB7_8
.LBB7_9:                                #   in Loop: Header=BB7_1 Depth=1
	addq	$1, %r9
	addq	$268, %rdx              # imm = 0x10C
	addq	$4, %r8
	addq	$268, %rdi              # imm = 0x10C
	cmpq	$64, %r9
	jne	.LBB7_1
# %bb.10:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	imageTranspose, .Lfunc_end7-imageTranspose
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function assignMatrixui16
.LCPI8_0:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	14                      # 0xe
	.byte	15                      # 0xf
	.byte	16                      # 0x10
	.byte	17                      # 0x11
	.byte	20                      # 0x14
	.byte	21                      # 0x15
	.byte	24                      # 0x18
	.byte	25                      # 0x19
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.byte	24                      # 0x18
	.byte	25                      # 0x19
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.byte	30                      # 0x1e
	.byte	31                      # 0x1f
.LCPI8_1:
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	25                      # 0x19
.LCPI8_3:
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	40                      # 0x28
	.short	41                      # 0x29
.LCPI8_4:
	.short	42                      # 0x2a
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	45                      # 0x2d
	.short	46                      # 0x2e
	.short	47                      # 0x2f
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	54                      # 0x36
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	57                      # 0x39
.LCPI8_5:
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	60                      # 0x3c
	.short	61                      # 0x3d
	.short	62                      # 0x3e
	.short	63                      # 0x3f
	.short	64                      # 0x40
	.short	65                      # 0x41
	.short	66                      # 0x42
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	69                      # 0x45
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	72                      # 0x48
	.short	73                      # 0x49
	.section	.rodata,"a",@progbits
	.p2align	1
.LCPI8_2:
	.short	255                     # 0xff
	.text
	.globl	assignMatrixui16
	.p2align	4, 0x90
	.type	assignMatrixui16,@function
assignMatrixui16:                       # @assignMatrixui16
	.cfi_startproc
# %bb.0:
	addq	$96, %rdi
	xorl	%eax, %eax
	vmovdqa	.LCPI8_0(%rip), %ymm0   # ymm0 = [0,1,4,5,8,9,12,13,8,9,12,13,12,13,14,15,16,17,20,21,24,25,28,29,24,25,28,29,28,29,30,31]
	vmovdqa	.LCPI8_1(%rip), %ymm1   # ymm1 = [10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
	vpbroadcastw	.LCPI8_2(%rip), %ymm2 # ymm2 = [255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255]
	vmovdqa	.LCPI8_3(%rip), %ymm3   # ymm3 = [26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41]
	vmovdqa	.LCPI8_4(%rip), %ymm4   # ymm4 = [42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57]
	vmovdqa	.LCPI8_5(%rip), %ymm5   # ymm5 = [58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73]
	.p2align	4, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	vmovd	%eax, %xmm6
	vpbroadcastd	%xmm6, %ymm6
	vpshufb	%ymm0, %ymm6, %ymm6
	vpermq	$232, %ymm6, %ymm6      # ymm6 = ymm6[0,2,2,3]
	vinserti128	$1, %xmm6, %ymm6, %ymm6
	vpaddw	%ymm1, %ymm6, %ymm7
	vpand	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, -96(%rdi)
	vpaddw	%ymm3, %ymm6, %ymm7
	vpand	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, -64(%rdi)
	vpaddw	%ymm4, %ymm6, %ymm7
	vpand	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, -32(%rdi)
	vpaddw	%ymm5, %ymm6, %ymm6
	vpand	%ymm2, %ymm6, %ymm6
	vmovdqu	%ymm6, (%rdi)
	addq	$1, %rax
	subq	$-128, %rdi
	cmpq	$64, %rax
	jne	.LBB8_1
# %bb.2:
	vzeroupper
	retq
.Lfunc_end8:
	.size	assignMatrixui16, .Lfunc_end8-assignMatrixui16
	.cfi_endproc
                                        # -- End function
	.globl	assignMatrixi8          # -- Begin function assignMatrixi8
	.p2align	4, 0x90
	.type	assignMatrixi8,@function
assignMatrixi8:                         # @assignMatrixi8
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB9_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_2:                                #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$254, %ecx
	subl	%ecx, %eax
	addb	%r12b, %al
	movb	%al, (%r14,%rbx)
	addq	$1, %rbx
	addb	%r15b, %r12b
	cmpq	$64, %rbx
	jne	.LBB9_2
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	addq	$1, %r15
	addq	$64, %r14
	cmpq	$64, %r15
	jne	.LBB9_1
# %bb.4:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	assignMatrixi8, .Lfunc_end9-assignMatrixi8
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function assignArrayi32
.LCPI10_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
.LCPI10_1:
	.long	1234                    # 0x4d2
	.long	1235                    # 0x4d3
	.long	1236                    # 0x4d4
	.long	1237                    # 0x4d5
	.long	1238                    # 0x4d6
	.long	1239                    # 0x4d7
	.long	1240                    # 0x4d8
	.long	1241                    # 0x4d9
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI10_2:
	.long	274877907               # 0x10624dd3
.LCPI10_3:
	.long	1000                    # 0x3e8
.LCPI10_4:
	.long	8                       # 0x8
.LCPI10_5:
	.long	16                      # 0x10
.LCPI10_6:
	.long	24                      # 0x18
.LCPI10_7:
	.long	32                      # 0x20
	.text
	.globl	assignArrayi32
	.p2align	4, 0x90
	.type	assignArrayi32,@function
assignArrayi32:                         # @assignArrayi32
	.cfi_startproc
# %bb.0:
	vmovdqa	.LCPI10_0(%rip), %ymm0  # ymm0 = [0,1,2,3,4,5,6,7]
	vmovdqa	.LCPI10_1(%rip), %ymm1  # ymm1 = [1234,1235,1236,1237,1238,1239,1240,1241]
	xorl	%eax, %eax
	vpbroadcastd	.LCPI10_2(%rip), %ymm2 # ymm2 = [274877907,274877907,274877907,274877907,274877907,274877907,274877907,274877907]
	vpbroadcastd	.LCPI10_3(%rip), %ymm3 # ymm3 = [1000,1000,1000,1000,1000,1000,1000,1000]
	vpbroadcastd	.LCPI10_4(%rip), %ymm4 # ymm4 = [8,8,8,8,8,8,8,8]
	vpbroadcastd	.LCPI10_5(%rip), %ymm5 # ymm5 = [16,16,16,16,16,16,16,16]
	vpbroadcastd	.LCPI10_6(%rip), %ymm6 # ymm6 = [24,24,24,24,24,24,24,24]
	vpbroadcastd	.LCPI10_7(%rip), %ymm7 # ymm7 = [32,32,32,32,32,32,32,32]
	.p2align	4, 0x90
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	vpmulld	%ymm0, %ymm1, %ymm8
	vpshufd	$245, %ymm8, %ymm9      # ymm9 = ymm8[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm2, %ymm9, %ymm9
	vpmuludq	%ymm2, %ymm8, %ymm10
	vpshufd	$245, %ymm10, %ymm10    # ymm10 = ymm10[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm9, %ymm10, %ymm9 # ymm9 = ymm10[0],ymm9[1],ymm10[2],ymm9[3],ymm10[4],ymm9[5],ymm10[6],ymm9[7]
	vpsrld	$6, %ymm9, %ymm9
	vpmulld	%ymm3, %ymm9, %ymm9
	vpsubd	%ymm9, %ymm8, %ymm8
	vmovdqu	%ymm8, (%rdi,%rax,4)
	vpaddd	%ymm4, %ymm1, %ymm8
	vpaddd	%ymm4, %ymm0, %ymm9
	vpmulld	%ymm9, %ymm8, %ymm8
	vpshufd	$245, %ymm8, %ymm9      # ymm9 = ymm8[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm2, %ymm9, %ymm9
	vpmuludq	%ymm2, %ymm8, %ymm10
	vpshufd	$245, %ymm10, %ymm10    # ymm10 = ymm10[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm9, %ymm10, %ymm9 # ymm9 = ymm10[0],ymm9[1],ymm10[2],ymm9[3],ymm10[4],ymm9[5],ymm10[6],ymm9[7]
	vpsrld	$6, %ymm9, %ymm9
	vpmulld	%ymm3, %ymm9, %ymm9
	vpsubd	%ymm9, %ymm8, %ymm8
	vmovdqu	%ymm8, 32(%rdi,%rax,4)
	vpaddd	%ymm5, %ymm1, %ymm8
	vpaddd	%ymm5, %ymm0, %ymm9
	vpmulld	%ymm9, %ymm8, %ymm8
	vpshufd	$245, %ymm8, %ymm9      # ymm9 = ymm8[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm2, %ymm9, %ymm9
	vpmuludq	%ymm2, %ymm8, %ymm10
	vpshufd	$245, %ymm10, %ymm10    # ymm10 = ymm10[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm9, %ymm10, %ymm9 # ymm9 = ymm10[0],ymm9[1],ymm10[2],ymm9[3],ymm10[4],ymm9[5],ymm10[6],ymm9[7]
	vpsrld	$6, %ymm9, %ymm9
	vpmulld	%ymm3, %ymm9, %ymm9
	vpsubd	%ymm9, %ymm8, %ymm8
	vmovdqu	%ymm8, 64(%rdi,%rax,4)
	vpaddd	%ymm6, %ymm1, %ymm8
	vpaddd	%ymm6, %ymm0, %ymm9
	vpmulld	%ymm9, %ymm8, %ymm8
	vpshufd	$245, %ymm8, %ymm9      # ymm9 = ymm8[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm2, %ymm9, %ymm9
	vpmuludq	%ymm2, %ymm8, %ymm10
	vpshufd	$245, %ymm10, %ymm10    # ymm10 = ymm10[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm9, %ymm10, %ymm9 # ymm9 = ymm10[0],ymm9[1],ymm10[2],ymm9[3],ymm10[4],ymm9[5],ymm10[6],ymm9[7]
	vpsrld	$6, %ymm9, %ymm9
	vpmulld	%ymm3, %ymm9, %ymm9
	vpsubd	%ymm9, %ymm8, %ymm8
	vmovdqu	%ymm8, 96(%rdi,%rax,4)
	addq	$32, %rax
	vpaddd	%ymm7, %ymm1, %ymm1
	vpaddd	%ymm7, %ymm0, %ymm0
	cmpq	$4096, %rax             # imm = 0x1000
	jne	.LBB10_1
# %bb.2:
	vzeroupper
	retq
.Lfunc_end10:
	.size	assignArrayi32, .Lfunc_end10-assignArrayi32
	.cfi_endproc
                                        # -- End function
	.globl	savefloatMatrixFileForOutPuts # -- Begin function savefloatMatrixFileForOutPuts
	.p2align	4, 0x90
	.type	savefloatMatrixFileForOutPuts,@function
savefloatMatrixFileForOutPuts:          # @savefloatMatrixFileForOutPuts
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	callq	fopen
	movq	%rax, fileForOutPuts(%rip)
	movq	programName(%rip), %rdx
	xorl	%r15d, %r15d
	movl	$.L.str.3, %esi
	movq	%rax, %rdi
	movl	$64, %ecx
	movl	$64, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	fileForOutPuts(%rip), %rcx
	.p2align	4, 0x90
.LBB11_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_2 Depth 2
	movl	$.L.str.4, %edi
	movl	$2, %esi
	movl	$1, %edx
	callq	fwrite
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB11_2:                               #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	fileForOutPuts(%rip), %rdi
	vmovss	(%r14,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movl	$.L.str.5, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movb	$1, %al
	callq	fprintf
	addq	$1, %rbx
	cmpq	$64, %rbx
	jne	.LBB11_2
# %bb.3:                                #   in Loop: Header=BB11_1 Depth=1
	addq	$1, %r15
	movq	fileForOutPuts(%rip), %rcx
	addq	$256, %r14              # imm = 0x100
	cmpq	$64, %r15
	jne	.LBB11_1
# %bb.4:
	movl	$.L.str.6, %edi
	movl	$98, %esi
	movl	$1, %edx
	callq	fwrite
	movq	fileForOutPuts(%rip), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	fclose                  # TAILCALL
.Lfunc_end11:
	.size	savefloatMatrixFileForOutPuts, .Lfunc_end11-savefloatMatrixFileForOutPuts
	.cfi_endproc
                                        # -- End function
	.globl	savefloatMatrixFileName # -- Begin function savefloatMatrixFileName
	.p2align	4, 0x90
	.type	savefloatMatrixFileName,@function
savefloatMatrixFileName:                # @savefloatMatrixFileName
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	fopen
	movq	%rax, fileForOutPuts(%rip)
	movq	programName(%rip), %rdx
	xorl	%r15d, %r15d
	movl	$.L.str.3, %esi
	movq	%rax, %rdi
	movl	$64, %ecx
	movl	$64, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	fileForOutPuts(%rip), %rcx
	.p2align	4, 0x90
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_2 Depth 2
	movl	$.L.str.4, %edi
	movl	$2, %esi
	movl	$1, %edx
	callq	fwrite
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB12_2:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	fileForOutPuts(%rip), %rdi
	vmovss	(%r14,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movl	$.L.str.5, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movb	$1, %al
	callq	fprintf
	addq	$1, %rbx
	cmpq	$64, %rbx
	jne	.LBB12_2
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	addq	$1, %r15
	movq	fileForOutPuts(%rip), %rcx
	addq	$256, %r14              # imm = 0x100
	cmpq	$64, %r15
	jne	.LBB12_1
# %bb.4:
	movl	$.L.str.6, %edi
	movl	$98, %esi
	movl	$1, %edx
	callq	fwrite
	movq	fileForOutPuts(%rip), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	fclose                  # TAILCALL
.Lfunc_end12:
	.size	savefloatMatrixFileName, .Lfunc_end12-savefloatMatrixFileName
	.cfi_endproc
                                        # -- End function
	.globl	saveintMatrixFileForOutPuts # -- Begin function saveintMatrixFileForOutPuts
	.p2align	4, 0x90
	.type	saveintMatrixFileForOutPuts,@function
saveintMatrixFileForOutPuts:            # @saveintMatrixFileForOutPuts
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	callq	fopen
	movq	%rax, fileForOutPuts(%rip)
	movq	programName(%rip), %rdx
	movl	$.L.str.3, %esi
	movq	%rax, %rdi
	movl	$64, %ecx
	movl	$64, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	fileForOutPuts(%rip), %rcx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB13_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_2 Depth 2
	movl	$.L.str.4, %edi
	movl	$2, %esi
	movl	$1, %edx
	callq	fwrite
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB13_2:                               #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	fileForOutPuts(%rip), %rdi
	movl	(%r14,%rbx,4), %r8d
	movl	$.L.str.7, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	fprintf
	addq	$1, %rbx
	cmpq	$64, %rbx
	jne	.LBB13_2
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	addq	$1, %r15
	movq	fileForOutPuts(%rip), %rcx
	addq	$256, %r14              # imm = 0x100
	cmpq	$64, %r15
	jne	.LBB13_1
# %bb.4:
	movl	$.L.str.6, %edi
	movl	$98, %esi
	movl	$1, %edx
	callq	fwrite
	movq	fileForOutPuts(%rip), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	fclose                  # TAILCALL
.Lfunc_end13:
	.size	saveintMatrixFileForOutPuts, .Lfunc_end13-saveintMatrixFileForOutPuts
	.cfi_endproc
                                        # -- End function
	.globl	saveintMatrixFileName   # -- Begin function saveintMatrixFileName
	.p2align	4, 0x90
	.type	saveintMatrixFileName,@function
saveintMatrixFileName:                  # @saveintMatrixFileName
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	fopen
	movq	%rax, fileForOutPuts(%rip)
	movq	programName(%rip), %rdx
	movl	$.L.str.3, %esi
	movq	%rax, %rdi
	movl	$64, %ecx
	movl	$64, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	fileForOutPuts(%rip), %rcx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_2 Depth 2
	movl	$.L.str.4, %edi
	movl	$2, %esi
	movl	$1, %edx
	callq	fwrite
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB14_2:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	fileForOutPuts(%rip), %rdi
	movl	(%r14,%rbx,4), %r8d
	movl	$.L.str.7, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	fprintf
	addq	$1, %rbx
	cmpq	$64, %rbx
	jne	.LBB14_2
# %bb.3:                                #   in Loop: Header=BB14_1 Depth=1
	addq	$1, %r15
	movq	fileForOutPuts(%rip), %rcx
	addq	$256, %r14              # imm = 0x100
	cmpq	$64, %r15
	jne	.LBB14_1
# %bb.4:
	movl	$.L.str.6, %edi
	movl	$98, %esi
	movl	$1, %edx
	callq	fwrite
	movq	fileForOutPuts(%rip), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	fclose                  # TAILCALL
.Lfunc_end14:
	.size	saveintMatrixFileName, .Lfunc_end14-saveintMatrixFileName
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function main
.LCPI15_0:
	.quad	0                       # 0x0
	.quad	256                     # 0x100
	.quad	512                     # 0x200
	.quad	768                     # 0x300
.LCPI15_1:
	.quad	1024                    # 0x400
	.quad	1280                    # 0x500
	.quad	1536                    # 0x600
	.quad	1792                    # 0x700
.LCPI15_2:
	.quad	2048                    # 0x800
	.quad	2304                    # 0x900
	.quad	2560                    # 0xa00
	.quad	2816                    # 0xb00
.LCPI15_3:
	.quad	3072                    # 0xc00
	.quad	3328                    # 0xd00
	.quad	3584                    # 0xe00
	.quad	3840                    # 0xf00
.LCPI15_4:
	.quad	4096                    # 0x1000
	.quad	4352                    # 0x1100
	.quad	4608                    # 0x1200
	.quad	4864                    # 0x1300
.LCPI15_5:
	.quad	5120                    # 0x1400
	.quad	5376                    # 0x1500
	.quad	5632                    # 0x1600
	.quad	5888                    # 0x1700
.LCPI15_6:
	.quad	6144                    # 0x1800
	.quad	6400                    # 0x1900
	.quad	6656                    # 0x1a00
	.quad	6912                    # 0x1b00
.LCPI15_7:
	.quad	7168                    # 0x1c00
	.quad	7424                    # 0x1d00
	.quad	7680                    # 0x1e00
	.quad	7936                    # 0x1f00
.LCPI15_8:
	.quad	8192                    # 0x2000
	.quad	8448                    # 0x2100
	.quad	8704                    # 0x2200
	.quad	8960                    # 0x2300
.LCPI15_9:
	.quad	9216                    # 0x2400
	.quad	9472                    # 0x2500
	.quad	9728                    # 0x2600
	.quad	9984                    # 0x2700
.LCPI15_10:
	.quad	10240                   # 0x2800
	.quad	10496                   # 0x2900
	.quad	10752                   # 0x2a00
	.quad	11008                   # 0x2b00
.LCPI15_11:
	.quad	11264                   # 0x2c00
	.quad	11520                   # 0x2d00
	.quad	11776                   # 0x2e00
	.quad	12032                   # 0x2f00
.LCPI15_12:
	.quad	12288                   # 0x3000
	.quad	12544                   # 0x3100
	.quad	12800                   # 0x3200
	.quad	13056                   # 0x3300
.LCPI15_13:
	.quad	13312                   # 0x3400
	.quad	13568                   # 0x3500
	.quad	13824                   # 0x3600
	.quad	14080                   # 0x3700
.LCPI15_14:
	.quad	14336                   # 0x3800
	.quad	14592                   # 0x3900
	.quad	14848                   # 0x3a00
	.quad	15104                   # 0x3b00
.LCPI15_15:
	.quad	15360                   # 0x3c00
	.quad	15616                   # 0x3d00
	.quad	15872                   # 0x3e00
	.quad	16128                   # 0x3f00
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, mask+96(%rip)
	vmovdqu	%ymm0, mask+72(%rip)
	vmovdqu	%ymm0, mask+40(%rip)
	vmovdqu	%ymm0, mask+8(%rip)
	movq	$12, mask(%rip)
	xorl	%r14d, %r14d
	movl	$128, %esi
	movl	$mask, %edx
	xorl	%edi, %edi
	vzeroupper
	callq	sched_setaffinity
	movl	$a+12, %r10d
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB15_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_2 Depth 2
	xorl	%r13d, %r13d
	movl	%r9d, %ebp
	movl	%r14d, %edx
	movl	%r8d, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB15_2:                               #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %ecx
	imulq	$274877907, %rcx, %rcx  # imm = 0x10624DD3
	shrq	$38, %rcx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	movl	%esi, %r15d
	subl	%ecx, %r15d
	movl	%edx, %ecx
	imulq	$274877907, %rcx, %rcx  # imm = 0x10624DD3
	shrq	$38, %rcx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	movl	%edx, %r12d
	subl	%ecx, %r12d
	movl	%ebp, %ecx
	imulq	$274877907, %rcx, %rcx  # imm = 0x10624DD3
	shrq	$38, %rcx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	movl	%ebp, %ebx
	subl	%ecx, %ebx
	movl	%r13d, %ecx
	imulq	$274877907, %rcx, %rcx  # imm = 0x10624DD3
	shrq	$38, %rcx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	movl	%r13d, %edi
	subl	%ecx, %edi
	movl	%edi, -12(%r10,%rax,4)
	movl	%ebx, -8(%r10,%rax,4)
	movl	%r12d, -4(%r10,%rax,4)
	movl	%r15d, (%r10,%rax,4)
	addq	$4, %rax
	addl	%r11d, %esi
	addl	%r11d, %edx
	addl	%r11d, %ebp
	addl	%r11d, %r13d
	cmpq	$64, %rax
	jne	.LBB15_2
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	addq	$1, %r9
	addl	$3, %r8d
	addl	$4, %r11d
	addq	$256, %r10              # imm = 0x100
	addl	$2, %r14d
	cmpq	$64, %r9
	jne	.LBB15_1
# %bb.4:
	movl	$b+12, %r11d
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB15_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
	xorl	%r13d, %r13d
	movl	%r10d, %edx
	movl	%r8d, %esi
	movl	%r9d, %edi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB15_6:                               #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %ebp
	imulq	$274877907, %rbp, %rbp  # imm = 0x10624DD3
	shrq	$38, %rbp
	imull	$1000, %ebp, %ebp       # imm = 0x3E8
	movl	%edi, %r15d
	subl	%ebp, %r15d
	movl	%esi, %ebp
	imulq	$274877907, %rbp, %rbp  # imm = 0x10624DD3
	shrq	$38, %rbp
	imull	$1000, %ebp, %ebp       # imm = 0x3E8
	movl	%esi, %r12d
	subl	%ebp, %r12d
	movl	%edx, %ebp
	imulq	$274877907, %rbp, %rbp  # imm = 0x10624DD3
	shrq	$38, %rbp
	imull	$1000, %ebp, %ebp       # imm = 0x3E8
	movl	%edx, %ecx
	subl	%ebp, %ecx
	movl	%r13d, %ebp
	imulq	$274877907, %rbp, %rbp  # imm = 0x10624DD3
	shrq	$38, %rbp
	imull	$1000, %ebp, %ebp       # imm = 0x3E8
	movl	%r13d, %ebx
	subl	%ebp, %ebx
	movl	%ebx, -12(%r11,%rax,4)
	movl	%ecx, -8(%r11,%rax,4)
	movl	%r12d, -4(%r11,%rax,4)
	movl	%r15d, (%r11,%rax,4)
	addq	$4, %rax
	addl	%r14d, %edi
	addl	%r14d, %esi
	addl	%r14d, %edx
	addl	%r14d, %r13d
	cmpq	$64, %rax
	jne	.LBB15_6
# %bb.7:                                #   in Loop: Header=BB15_5 Depth=1
	addq	$1, %r10
	addl	$3, %r9d
	addl	$4, %r14d
	addq	$256, %r11              # imm = 0x100
	addl	$2, %r8d
	cmpq	$64, %r10
	jne	.LBB15_5
# %bb.8:
	movq	$.L.str.8, programName(%rip)
	movq	$9999999, elapsed_rdtsc(%rip) # imm = 0x98967F
	movabsq	$19999999999, %rax      # imm = 0x4A817C7FF
	movq	%rax, overal_time(%rip)
	movq	$0, ttime(%rip)
	movl	$b, %ecx
	vmovdqa	.LCPI15_15(%rip), %ymm15 # ymm15 = [15360,15616,15872,16128]
	.p2align	4, 0x90
.LBB15_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_10 Depth 2
                                        #       Child Loop BB15_11 Depth 3
	#APP
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm1
	#NO_APP
	rdtsc
	shlq	$32, %rdx
	orq	%rax, %rdx
	movq	%rdx, t1_rdtsc(%rip)
	movl	$c_result, %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB15_10:                              #   Parent Loop BB15_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_11 Depth 3
	movq	%rdx, %rsi
	shlq	$8, %rsi
	leaq	a(%rsi), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB15_11:                              #   Parent Loop BB15_9 Depth=1
                                        #     Parent Loop BB15_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovq	%rcx, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vmovq	%rdi, %xmm1
	vpbroadcastq	%xmm1, %ymm1
	vpsllq	$2, %ymm1, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpaddq	.LCPI15_0(%rip), %ymm0, %ymm3
	vpaddq	.LCPI15_1(%rip), %ymm0, %ymm2
	vpcmpeqd	%xmm4, %xmm4, %xmm4
	vpgatherqd	%xmm4, (,%ymm2), %xmm1
	vpcmpeqd	%xmm4, %xmm4, %xmm4
	vpgatherqd	%xmm4, (,%ymm3), %xmm2
	vpaddq	.LCPI15_2(%rip), %ymm0, %ymm5
	vpaddq	.LCPI15_3(%rip), %ymm0, %ymm4
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	vpgatherqd	%xmm6, (,%ymm4), %xmm3
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	vpgatherqd	%xmm6, (,%ymm5), %xmm4
	vpaddq	.LCPI15_4(%rip), %ymm0, %ymm5
	vpaddq	.LCPI15_5(%rip), %ymm0, %ymm6
	vpcmpeqd	%xmm7, %xmm7, %xmm7
	vpgatherqd	%xmm7, (,%ymm6), %xmm8
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	vpgatherqd	%xmm6, (,%ymm5), %xmm7
	vpaddq	.LCPI15_6(%rip), %ymm0, %ymm5
	vpaddq	.LCPI15_7(%rip), %ymm0, %ymm6
	vpcmpeqd	%xmm9, %xmm9, %xmm9
	vpgatherqd	%xmm9, (,%ymm6), %xmm10
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	vpgatherqd	%xmm6, (,%ymm5), %xmm9
	vpaddq	.LCPI15_8(%rip), %ymm0, %ymm5
	vpaddq	.LCPI15_9(%rip), %ymm0, %ymm6
	vpcmpeqd	%xmm11, %xmm11, %xmm11
	vpgatherqd	%xmm11, (,%ymm6), %xmm12
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	vpgatherqd	%xmm6, (,%ymm5), %xmm11
	vpaddq	.LCPI15_10(%rip), %ymm0, %ymm5
	vpaddq	.LCPI15_11(%rip), %ymm0, %ymm6
	vpcmpeqd	%xmm13, %xmm13, %xmm13
	vpgatherqd	%xmm13, (,%ymm6), %xmm14
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	vpgatherqd	%xmm6, (,%ymm5), %xmm13
	vinserti128	$1, %xmm1, %ymm2, %ymm1
	vinserti128	$1, %xmm3, %ymm4, %ymm2
	vinserti128	$1, %xmm8, %ymm7, %ymm3
	vinserti128	$1, %xmm10, %ymm9, %ymm4
	vpaddq	.LCPI15_12(%rip), %ymm0, %ymm5
	vpaddq	.LCPI15_13(%rip), %ymm0, %ymm6
	vpcmpeqd	%xmm7, %xmm7, %xmm7
	vpgatherqd	%xmm7, (,%ymm6), %xmm8
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	vpgatherqd	%xmm6, (,%ymm5), %xmm7
	vpmulld	(%rsi), %ymm1, %ymm1
	vpmulld	32(%rsi), %ymm2, %ymm2
	vpmulld	64(%rsi), %ymm3, %ymm3
	vpmulld	96(%rsi), %ymm4, %ymm4
	vpaddd	%ymm1, %ymm2, %ymm1
	vpaddd	%ymm4, %ymm3, %ymm2
	vpaddd	%ymm2, %ymm1, %ymm1
	vpaddq	.LCPI15_14(%rip), %ymm0, %ymm2
	vpaddq	%ymm15, %ymm0, %ymm0
	vpcmpeqd	%xmm3, %xmm3, %xmm3
	vpgatherqd	%xmm3, (,%ymm0), %xmm4
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	vpgatherqd	%xmm0, (,%ymm2), %xmm3
	vinserti128	$1, %xmm12, %ymm11, %ymm0
	vinserti128	$1, %xmm14, %ymm13, %ymm2
	vinserti128	$1, %xmm8, %ymm7, %ymm5
	vpmulld	128(%rsi), %ymm0, %ymm0
	vpmulld	160(%rsi), %ymm2, %ymm2
	vpmulld	192(%rsi), %ymm5, %ymm5
	vpaddd	%ymm2, %ymm0, %ymm0
	vpaddd	%ymm5, %ymm0, %ymm0
	vinserti128	$1, %xmm4, %ymm3, %ymm2
	vpmulld	224(%rsi), %ymm2, %ymm2
	vpaddd	%ymm0, %ymm1, %ymm0
	vpaddd	%ymm0, %ymm2, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vpshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	vpaddd	%ymm1, %ymm0, %ymm0
	vpshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, (%rax,%rdi,4)
	addq	$1, %rdi
	cmpq	$64, %rdi
	jne	.LBB15_11
# %bb.12:                               #   in Loop: Header=BB15_10 Depth=2
	addq	$1, %rdx
	addq	$256, %rax              # imm = 0x100
	cmpq	$64, %rdx
	jne	.LBB15_10
# %bb.13:                               #   in Loop: Header=BB15_9 Depth=1
	rdtsc
	shlq	$32, %rdx
	orq	%rax, %rdx
	movq	%rdx, t2_rdtsc(%rip)
	#APP
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm2
	#NO_APP
	movq	t2_rdtsc(%rip), %rax
	subq	t1_rdtsc(%rip), %rax
	movq	%rax, ttotal_rdtsc(%rip)
	movq	ttbest_rdtsc(%rip), %rsi
	cmpq	%rsi, %rax
	jge	.LBB15_15
# %bb.14:                               #   in Loop: Header=BB15_9 Depth=1
	movq	%rax, ttbest_rdtsc(%rip)
	movq	elapsed_rdtsc(%rip), %rdi
	movl	$9999999, %edx          # imm = 0x98967F
	subq	%rdi, %rdx
	movq	%rdx, elapsed(%rip)
	movq	%rax, %rsi
	jmp	.LBB15_16
	.p2align	4, 0x90
.LBB15_15:                              #   in Loop: Header=BB15_9 Depth=1
	movq	elapsed_rdtsc(%rip), %rdi
.LBB15_16:                              #   in Loop: Header=BB15_9 Depth=1
	addq	ttime(%rip), %rax
	movq	%rax, ttime(%rip)
	leaq	-1(%rdi), %rdx
	movq	%rdx, elapsed_rdtsc(%rip)
	testq	%rdi, %rdi
	je	.LBB15_18
# %bb.17:                               #   in Loop: Header=BB15_9 Depth=1
	cmpq	overal_time(%rip), %rax
	jl	.LBB15_9
.LBB15_18:
	movq	elapsed(%rip), %rdx
	movl	$10000000, %ecx         # imm = 0x989680
	subq	%rdi, %rcx
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	vzeroupper
	callq	printf
	movl	$.L.str.10, %edi
	movl	$.L.str.11, %esi
	callq	fopen
	movq	%rax, fileForSpeedups(%rip)
	movq	programName(%rip), %rdx
	movq	ttbest_rdtsc(%rip), %r9
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	movl	$64, %ecx
	movl	$64, %r8d
	xorl	%eax, %eax
	callq	fprintf
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	main, .Lfunc_end15-main
	.cfi_endproc
                                        # -- End function
	.type	fileForSpeedups,@object # @fileForSpeedups
	.bss
	.globl	fileForSpeedups
	.p2align	3
fileForSpeedups:
	.quad	0
	.size	fileForSpeedups, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
	.size	.L.str, 2

	.type	programName,@object     # @programName
	.data
	.globl	programName
	.p2align	3
programName:
	.quad	.L.str
	.size	programName, 8

	.type	ttbest_rdtsc,@object    # @ttbest_rdtsc
	.globl	ttbest_rdtsc
	.p2align	3
ttbest_rdtsc:
	.quad	99999999999999999       # 0x16345785d89ffff
	.size	ttbest_rdtsc, 8

	.type	elapsed_rdtsc,@object   # @elapsed_rdtsc
	.globl	elapsed_rdtsc
	.p2align	3
elapsed_rdtsc:
	.quad	9999999                 # 0x98967f
	.size	elapsed_rdtsc, 8

	.type	overal_time,@object     # @overal_time
	.globl	overal_time
	.p2align	3
overal_time:
	.quad	19999999999             # 0x4a817c7ff
	.size	overal_time, 8

	.type	ttime,@object           # @ttime
	.bss
	.globl	ttime
	.p2align	3
ttime:
	.quad	0                       # 0x0
	.size	ttime, 8

	.type	mask,@object            # @mask
	.comm	mask,128,8
	.type	fileForOutPuts,@object  # @fileForOutPuts
	.globl	fileForOutPuts
	.p2align	3
fileForOutPuts:
	.quad	0
	.size	fileForOutPuts, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"fileForOutPuts"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"w"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s - %dx%d \n"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n\n"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" A[%d][%d] = %lf, \n"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" \n*************************\n*********************FINISHED*********************\n***************** \n"
	.size	.L.str.6, 99

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" A[%d][%d] = %d, \n"
	.size	.L.str.7, 19

	.type	a,@object               # @a
	.comm	a,16384,32
	.type	b,@object               # @b
	.comm	b,16384,32
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"MUL1"
	.size	.L.str.8, 5

	.type	t1_rdtsc,@object        # @t1_rdtsc
	.comm	t1_rdtsc,8,8
	.type	c_result,@object        # @c_result
	.comm	c_result,16384,32
	.type	t2_rdtsc,@object        # @t2_rdtsc
	.comm	t2_rdtsc,8,8
	.type	ttotal_rdtsc,@object    # @ttotal_rdtsc
	.comm	ttotal_rdtsc,8,8
	.type	elapsed,@object         # @elapsed
	.comm	elapsed,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\nthe best is %lld in %lldth iteration and %lld repetitions\n"
	.size	.L.str.9, 60

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fileForSpeedups"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"a"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s, %dx%d, %lld\n"
	.size	.L.str.12, 17

	.type	mask1,@object           # @mask1
	.comm	mask1,128,8
	.type	temp2i16,@object        # @temp2i16
	.comm	temp2i16,32,32

	.ident	"clang version 8.0.0 (Fedora 8.0.0-1.fc30)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mask
