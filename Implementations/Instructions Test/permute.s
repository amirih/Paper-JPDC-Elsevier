	.file	"permute.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"[3] %lf, [2] %lf, [1] %lf , [0] %lf\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB5458:
	.cfi_startproc
	lea	r10, [rsp+8]
	.cfi_def_cfa 10, 0
	and	rsp, -32
	push	QWORD PTR [r10-8]
	push	rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	mov	rbp, rsp
	push	r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	sub	rsp, 40
	vmovsd	xmm3, QWORD PTR .LC0[rip]
	vmovsd	QWORD PTR [rbp-48], xmm3
	vmovsd	xmm2, QWORD PTR .LC1[rip]
	vmovsd	QWORD PTR [rbp-40], xmm2
	vmovsd	xmm1, QWORD PTR .LC2[rip]
	vmovsd	QWORD PTR [rbp-32], xmm1
	vmovsd	xmm0, QWORD PTR .LC3[rip]
	vmovsd	QWORD PTR [rbp-24], xmm0
	mov	edi, OFFSET FLAT:.LC4
	mov	al, 4
	call	printf
	vpermpd	ymm1, YMMWORD PTR [rbp-48], 54
	vmovapd	xmm2, xmm1
	vextractf128	xmm1, ymm1, 0x1
	vunpckhpd	xmm0, xmm1, xmm1
	vmovsd	xmm3, xmm3, xmm2
	vunpckhpd	xmm2, xmm2, xmm2
	mov	edi, OFFSET FLAT:.LC4
	mov	al, 4
	vzeroupper
	call	printf
	xor	eax, eax
	add	rsp, 40
	pop	r10
	.cfi_def_cfa 10, 0
	pop	rbp
	lea	rsp, [r10-8]
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5458:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	3264175145
	.long	1072703733
	.align 8
.LC1:
	.long	3264175145
	.long	1073752309
	.align 8
.LC2:
	.long	2748779069
	.long	1074281840
	.align 8
.LC3:
	.long	3264175145
	.long	1074800885
	.ident	"GCC: (GNU) 8.1.1 20180502 (Red Hat 8.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
