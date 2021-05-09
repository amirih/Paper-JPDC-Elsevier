	.text
	.file	"TRA3G.c"
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
	.globl	assignMatrixui16        # -- Begin function assignMatrixui16
	.p2align	4, 0x90
	.type	assignMatrixui16,@function
assignMatrixui16:                       # @assignMatrixui16
	.cfi_startproc
# %bb.0:
	addq	$6, %rdi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_2 Depth 2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_2:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%rax,%rcx), %edx
	addl	$10, %edx
	movw	%dx, -6(%rdi,%rcx,2)
	leal	11(%rax,%rcx), %edx
	movw	%dx, -4(%rdi,%rcx,2)
	leal	12(%rax,%rcx), %edx
	movw	%dx, -2(%rdi,%rcx,2)
	leal	(%rax,%rcx), %edx
	addl	$13, %edx
	movw	%dx, (%rdi,%rcx,2)
	addq	$4, %rcx
	cmpq	$64, %rcx
	jne	.LBB8_2
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	addq	$1, %rax
	subq	$-128, %rdi
	cmpq	$64, %rax
	jne	.LBB8_1
# %bb.4:
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
	.globl	assignArrayi32          # -- Begin function assignArrayi32
	.p2align	4, 0x90
	.type	assignArrayi32,@function
assignArrayi32:                         # @assignArrayi32
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	leal	1234(%rax), %ecx
	imull	%eax, %ecx
	imulq	$274877907, %rcx, %rdx  # imm = 0x10624DD3
	shrq	$38, %rdx
	imull	$1000, %edx, %edx       # imm = 0x3E8
	subl	%edx, %ecx
	movl	%ecx, (%rdi,%rax,4)
	leal	1235(%rax), %ecx
	leal	1(%rax), %edx
	imull	%ecx, %edx
	imulq	$274877907, %rdx, %rcx  # imm = 0x10624DD3
	shrq	$38, %rcx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %edx
	movl	%edx, 4(%rdi,%rax,4)
	leal	1236(%rax), %ecx
	leal	2(%rax), %edx
	imull	%ecx, %edx
	imulq	$274877907, %rdx, %rcx  # imm = 0x10624DD3
	shrq	$38, %rcx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %edx
	movl	%edx, 8(%rdi,%rax,4)
	leal	1237(%rax), %ecx
	leal	3(%rax), %edx
	imull	%ecx, %edx
	imulq	$274877907, %rdx, %rcx  # imm = 0x10624DD3
	shrq	$38, %rcx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %edx
	movl	%edx, 12(%rdi,%rax,4)
	addq	$4, %rax
	cmpq	$4096, %rax             # imm = 0x1000
	jne	.LBB10_1
# %bb.2:
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
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	128                     # 0x80
	.long	192                     # 0xc0
	.long	256                     # 0x100
	.long	320                     # 0x140
	.long	384                     # 0x180
	.long	448                     # 0x1c0
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
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, mask+96(%rip)
	vmovups	%ymm0, mask+72(%rip)
	vmovups	%ymm0, mask+40(%rip)
	vmovups	%ymm0, mask+8(%rip)
	movq	$12, mask(%rip)
	xorl	%r14d, %r14d
	movl	$128, %esi
	movl	$mask, %edx
	xorl	%edi, %edi
	vzeroupper
	callq	sched_setaffinity
	movl	$A+12, %r10d
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
	movq	$.L.str.8, programName(%rip)
	movq	$9999999, elapsed_rdtsc(%rip) # imm = 0x98967F
	movabsq	$19999999999, %rax      # imm = 0x4A817C7FF
	movq	%rax, overal_time(%rip)
	movq	$0, ttime(%rip)
	vmovdqa	.LCPI15_0(%rip), %ymm0  # ymm0 = [0,64,128,192,256,320,384,448]
	.p2align	4, 0x90
.LBB15_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
	#APP
	#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm1
	#NO_APP
	rdtsc
	shlq	$32, %rdx
	orq	%rax, %rdx
	movq	%rdx, t1_rdtsc(%rip)
	movl	$A, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB15_6:                               #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	leaq	4(%rax), %rdx
	vpxor	%xmm3, %xmm3, %xmm3
	vpcmpeqd	%ymm4, %ymm4, %ymm4
	leaq	8(%rax), %rsi
	vpxor	%xmm5, %xmm5, %xmm5
	vpcmpeqd	%ymm6, %ymm6, %ymm6
	leaq	12(%rax), %rdi
	vpxor	%xmm7, %xmm7, %xmm7
	vpcmpeqd	%ymm8, %ymm8, %ymm8
	leaq	16(%rax), %rbp
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%ymm10, %ymm10, %ymm10
	leaq	20(%rax), %rbx
	vpxor	%xmm11, %xmm11, %xmm11
	vpgatherdd	%ymm2, (%rax,%ymm0,4), %ymm1
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	vpgatherdd	%ymm4, (%rdx,%ymm0,4), %ymm3
	leaq	24(%rax), %rdx
	vpgatherdd	%ymm6, (%rsi,%ymm0,4), %ymm5
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	%ymm8, (%rdi,%ymm0,4), %ymm7
	vpcmpeqd	%ymm6, %ymm6, %ymm6
	vpgatherdd	%ymm10, (%rbp,%ymm0,4), %ymm9
	leaq	28(%rax), %rsi
	vpgatherdd	%ymm2, (%rbx,%ymm0,4), %ymm11
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	%ymm6, (%rdx,%ymm0,4), %ymm4
	vpcmpeqd	%ymm6, %ymm6, %ymm6
	vpgatherdd	%ymm6, (%rsi,%ymm0,4), %ymm2
	vmovdqa	%ymm1, A_T(,%rcx,4)
	vmovdqa	%ymm3, A_T+256(,%rcx,4)
	vmovdqa	%ymm5, A_T+512(,%rcx,4)
	vmovdqa	%ymm7, A_T+768(,%rcx,4)
	leaq	32(%rax), %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	leaq	36(%rax), %rsi
	vmovdqa	%ymm9, A_T+1024(,%rcx,4)
	vpxor	%xmm5, %xmm5, %xmm5
	vpcmpeqd	%ymm6, %ymm6, %ymm6
	leaq	40(%rax), %rdi
	vpxor	%xmm7, %xmm7, %xmm7
	vmovdqa	%ymm11, A_T+1280(,%rcx,4)
	vpcmpeqd	%ymm8, %ymm8, %ymm8
	leaq	44(%rax), %rbp
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%ymm10, %ymm10, %ymm10
	vmovdqa	%ymm4, A_T+1536(,%rcx,4)
	leaq	48(%rax), %rbx
	vpxor	%xmm4, %xmm4, %xmm4
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	leaq	52(%rax), %rdx
	vmovdqa	%ymm2, A_T+1792(,%rcx,4)
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	%ymm3, (%r8,%ymm0,4), %ymm1
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	vpgatherdd	%ymm6, (%rsi,%ymm0,4), %ymm5
	leaq	56(%rax), %rsi
	vpgatherdd	%ymm8, (%rdi,%ymm0,4), %ymm7
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	%ymm10, (%rbp,%ymm0,4), %ymm9
	vpcmpeqd	%ymm8, %ymm8, %ymm8
	vpgatherdd	%ymm11, (%rbx,%ymm0,4), %ymm4
	leaq	60(%rax), %rdi
	vpgatherdd	%ymm3, (%rdx,%ymm0,4), %ymm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	%ymm8, (%rsi,%ymm0,4), %ymm6
	vpcmpeqd	%ymm8, %ymm8, %ymm8
	vpgatherdd	%ymm8, (%rdi,%ymm0,4), %ymm3
	vmovdqa	%ymm1, A_T+2048(,%rcx,4)
	vmovdqa	%ymm5, A_T+2304(,%rcx,4)
	vmovdqa	%ymm7, A_T+2560(,%rcx,4)
	vmovdqa	%ymm9, A_T+2816(,%rcx,4)
	leaq	64(%rax), %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	leaq	68(%rax), %rsi
	vmovdqa	%ymm4, A_T+3072(,%rcx,4)
	vpxor	%xmm4, %xmm4, %xmm4
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	leaq	72(%rax), %rdi
	vpxor	%xmm8, %xmm8, %xmm8
	vmovdqa	%ymm2, A_T+3328(,%rcx,4)
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	leaq	76(%rax), %rbp
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%ymm10, %ymm10, %ymm10
	vmovdqa	%ymm6, A_T+3584(,%rcx,4)
	leaq	80(%rax), %rbx
	vpxor	%xmm6, %xmm6, %xmm6
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	leaq	84(%rax), %rdx
	vmovdqa	%ymm3, A_T+3840(,%rcx,4)
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	%ymm5, (%r8,%ymm0,4), %ymm1
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm4
	leaq	88(%rax), %rsi
	vpgatherdd	%ymm2, (%rdi,%ymm0,4), %ymm8
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	%ymm10, (%rbp,%ymm0,4), %ymm9
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm11, (%rbx,%ymm0,4), %ymm6
	leaq	92(%rax), %rdi
	vpgatherdd	%ymm5, (%rdx,%ymm0,4), %ymm3
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm2
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm7, (%rdi,%ymm0,4), %ymm5
	vmovdqa	%ymm1, A_T+4096(,%rcx,4)
	vmovdqa	%ymm4, A_T+4352(,%rcx,4)
	vmovdqa	%ymm8, A_T+4608(,%rcx,4)
	vmovdqa	%ymm9, A_T+4864(,%rcx,4)
	leaq	96(%rax), %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm4, %ymm4, %ymm4
	leaq	100(%rax), %rsi
	vmovdqa	%ymm6, A_T+5120(,%rcx,4)
	vpxor	%xmm6, %xmm6, %xmm6
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	leaq	104(%rax), %rdi
	vpxor	%xmm8, %xmm8, %xmm8
	vmovdqa	%ymm3, A_T+5376(,%rcx,4)
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	leaq	108(%rax), %rbp
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%ymm10, %ymm10, %ymm10
	vmovdqa	%ymm2, A_T+5632(,%rcx,4)
	leaq	112(%rax), %rbx
	vpxor	%xmm2, %xmm2, %xmm2
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	leaq	116(%rax), %rdx
	vmovdqa	%ymm5, A_T+5888(,%rcx,4)
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	%ymm4, (%r8,%ymm0,4), %ymm1
	vpcmpeqd	%ymm4, %ymm4, %ymm4
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm6
	leaq	120(%rax), %rsi
	vpgatherdd	%ymm3, (%rdi,%ymm0,4), %ymm8
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	%ymm10, (%rbp,%ymm0,4), %ymm9
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm11, (%rbx,%ymm0,4), %ymm2
	leaq	124(%rax), %rdi
	vpgatherdd	%ymm4, (%rdx,%ymm0,4), %ymm5
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm3
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm7, (%rdi,%ymm0,4), %ymm4
	vmovdqa	%ymm1, A_T+6144(,%rcx,4)
	vmovdqa	%ymm6, A_T+6400(,%rcx,4)
	vmovdqa	%ymm8, A_T+6656(,%rcx,4)
	movq	%rax, %rdx
	vmovdqa	%ymm9, A_T+6912(,%rcx,4)
	subq	$-128, %rdx
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm6, %ymm6, %ymm6
	leaq	132(%rax), %r8
	vmovdqa	%ymm2, A_T+7168(,%rcx,4)
	vpxor	%xmm2, %xmm2, %xmm2
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	leaq	136(%rax), %rdi
	vpxor	%xmm8, %xmm8, %xmm8
	vmovdqa	%ymm5, A_T+7424(,%rcx,4)
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	leaq	140(%rax), %rbp
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%ymm10, %ymm10, %ymm10
	vmovdqa	%ymm3, A_T+7680(,%rcx,4)
	leaq	144(%rax), %rbx
	vpxor	%xmm3, %xmm3, %xmm3
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	leaq	148(%rax), %rsi
	vmovdqa	%ymm4, A_T+7936(,%rcx,4)
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	%ymm6, (%rdx,%ymm0,4), %ymm1
	vpcmpeqd	%ymm6, %ymm6, %ymm6
	vpgatherdd	%ymm7, (%r8,%ymm0,4), %ymm2
	leaq	152(%rax), %rdx
	vpgatherdd	%ymm5, (%rdi,%ymm0,4), %ymm8
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	%ymm10, (%rbp,%ymm0,4), %ymm9
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm11, (%rbx,%ymm0,4), %ymm3
	leaq	156(%rax), %rdi
	vpgatherdd	%ymm6, (%rsi,%ymm0,4), %ymm4
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	%ymm7, (%rdx,%ymm0,4), %ymm5
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm7, (%rdi,%ymm0,4), %ymm6
	vmovdqa	%ymm1, A_T+8192(,%rcx,4)
	vmovdqa	%ymm2, A_T+8448(,%rcx,4)
	vmovdqa	%ymm8, A_T+8704(,%rcx,4)
	vmovdqa	%ymm9, A_T+8960(,%rcx,4)
	leaq	160(%rax), %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	leaq	164(%rax), %rsi
	vmovdqa	%ymm3, A_T+9216(,%rcx,4)
	vpxor	%xmm3, %xmm3, %xmm3
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	leaq	168(%rax), %rdi
	vpxor	%xmm8, %xmm8, %xmm8
	vmovdqa	%ymm4, A_T+9472(,%rcx,4)
	vpcmpeqd	%ymm4, %ymm4, %ymm4
	leaq	172(%rax), %rbp
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%ymm10, %ymm10, %ymm10
	vmovdqa	%ymm5, A_T+9728(,%rcx,4)
	leaq	176(%rax), %rbx
	vpxor	%xmm5, %xmm5, %xmm5
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	leaq	180(%rax), %rdx
	vmovdqa	%ymm6, A_T+9984(,%rcx,4)
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	%ymm2, (%r8,%ymm0,4), %ymm1
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm3
	leaq	184(%rax), %rsi
	vpgatherdd	%ymm4, (%rdi,%ymm0,4), %ymm8
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	%ymm10, (%rbp,%ymm0,4), %ymm9
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm11, (%rbx,%ymm0,4), %ymm5
	leaq	188(%rax), %rdi
	vpgatherdd	%ymm2, (%rdx,%ymm0,4), %ymm6
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm4
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm7, (%rdi,%ymm0,4), %ymm2
	vmovdqa	%ymm1, A_T+10240(,%rcx,4)
	vmovdqa	%ymm3, A_T+10496(,%rcx,4)
	vmovdqa	%ymm8, A_T+10752(,%rcx,4)
	vmovdqa	%ymm9, A_T+11008(,%rcx,4)
	leaq	192(%rax), %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	leaq	196(%rax), %rsi
	vmovdqa	%ymm5, A_T+11264(,%rcx,4)
	vpxor	%xmm5, %xmm5, %xmm5
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	leaq	200(%rax), %rdi
	vpxor	%xmm8, %xmm8, %xmm8
	vmovdqa	%ymm6, A_T+11520(,%rcx,4)
	vpcmpeqd	%ymm6, %ymm6, %ymm6
	leaq	204(%rax), %rbp
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%ymm10, %ymm10, %ymm10
	vmovdqa	%ymm4, A_T+11776(,%rcx,4)
	leaq	208(%rax), %rbx
	vpxor	%xmm4, %xmm4, %xmm4
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	leaq	212(%rax), %rdx
	vmovdqa	%ymm2, A_T+12032(,%rcx,4)
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	%ymm3, (%r8,%ymm0,4), %ymm1
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm5
	leaq	216(%rax), %rsi
	vpgatherdd	%ymm6, (%rdi,%ymm0,4), %ymm8
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	%ymm10, (%rbp,%ymm0,4), %ymm9
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm11, (%rbx,%ymm0,4), %ymm4
	leaq	220(%rax), %rdi
	vpgatherdd	%ymm3, (%rdx,%ymm0,4), %ymm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm6
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm7, (%rdi,%ymm0,4), %ymm3
	vmovdqa	%ymm1, A_T+12288(,%rcx,4)
	vmovdqa	%ymm5, A_T+12544(,%rcx,4)
	vmovdqa	%ymm8, A_T+12800(,%rcx,4)
	vmovdqa	%ymm9, A_T+13056(,%rcx,4)
	leaq	224(%rax), %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	leaq	228(%rax), %rsi
	vmovdqa	%ymm4, A_T+13312(,%rcx,4)
	vpxor	%xmm4, %xmm4, %xmm4
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	leaq	232(%rax), %rdi
	vpxor	%xmm8, %xmm8, %xmm8
	vmovdqa	%ymm2, A_T+13568(,%rcx,4)
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	leaq	236(%rax), %rbp
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%ymm10, %ymm10, %ymm10
	vmovdqa	%ymm6, A_T+13824(,%rcx,4)
	leaq	240(%rax), %rbx
	vpxor	%xmm6, %xmm6, %xmm6
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	leaq	244(%rax), %rdx
	vmovdqa	%ymm3, A_T+14080(,%rcx,4)
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	%ymm5, (%r8,%ymm0,4), %ymm1
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm4
	leaq	248(%rax), %rsi
	vpgatherdd	%ymm2, (%rdi,%ymm0,4), %ymm8
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	%ymm10, (%rbp,%ymm0,4), %ymm9
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm11, (%rbx,%ymm0,4), %ymm6
	leaq	252(%rax), %rdi
	vpgatherdd	%ymm5, (%rdx,%ymm0,4), %ymm3
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	%ymm7, (%rsi,%ymm0,4), %ymm2
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpgatherdd	%ymm7, (%rdi,%ymm0,4), %ymm5
	vmovdqa	%ymm1, A_T+14336(,%rcx,4)
	vmovdqa	%ymm4, A_T+14592(,%rcx,4)
	vmovdqa	%ymm8, A_T+14848(,%rcx,4)
	vmovdqa	%ymm9, A_T+15104(,%rcx,4)
	vmovdqa	%ymm6, A_T+15360(,%rcx,4)
	vmovdqa	%ymm3, A_T+15616(,%rcx,4)
	vmovdqa	%ymm2, A_T+15872(,%rcx,4)
	vmovdqa	%ymm5, A_T+16128(,%rcx,4)
	addq	$8, %rcx
	addq	$2048, %rax             # imm = 0x800
	cmpq	$64, %rcx
	jb	.LBB15_6
# %bb.7:                                #   in Loop: Header=BB15_5 Depth=1
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
	jge	.LBB15_9
# %bb.8:                                #   in Loop: Header=BB15_5 Depth=1
	movq	%rax, ttbest_rdtsc(%rip)
	movq	elapsed_rdtsc(%rip), %rdi
	movl	$9999999, %ecx          # imm = 0x98967F
	subq	%rdi, %rcx
	movq	%rcx, elapsed(%rip)
	movq	%rax, %rsi
	jmp	.LBB15_10
	.p2align	4, 0x90
.LBB15_9:                               #   in Loop: Header=BB15_5 Depth=1
	movq	elapsed_rdtsc(%rip), %rdi
.LBB15_10:                              #   in Loop: Header=BB15_5 Depth=1
	addq	ttime(%rip), %rax
	movq	%rax, ttime(%rip)
	leaq	-1(%rdi), %rcx
	movq	%rcx, elapsed_rdtsc(%rip)
	testq	%rdi, %rdi
	je	.LBB15_12
# %bb.11:                               #   in Loop: Header=BB15_5 Depth=1
	cmpq	overal_time(%rip), %rax
	jl	.LBB15_5
.LBB15_12:
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
	movl	A_T+8320(%rip), %esi
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
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

	.type	A,@object               # @A
	.comm	A,16384,32
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"TRA3G"
	.size	.L.str.8, 6

	.type	t1_rdtsc,@object        # @t1_rdtsc
	.comm	t1_rdtsc,8,8
	.type	A_T,@object             # @A_T
	.comm	A_T,16384,32
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

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%d"
	.size	.L.str.13, 3

	.type	mask1,@object           # @mask1
	.comm	mask1,128,8
	.type	temp2i16,@object        # @temp2i16
	.comm	temp2i16,32,32

	.ident	"clang version 8.0.0 (Fedora 8.0.0-1.fc30)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mask
	.addrsig_sym A
