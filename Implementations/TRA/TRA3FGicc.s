# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.3.199 Build 20190206";
# mark_description "-D _GNU_SOURCE -Ofast -march=native -no-vec -S -c -o TRA3FGicc.s";
	.file "TRA3FG.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main()
main:
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #22.1
        pushq     %rbp                                          #22.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #22.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #22.1
        subq      $128, %rsp                                    #22.1
        xorl      %esi, %esi                                    #22.1
        movl      $3, %edi                                      #22.1
        call      __intel_new_feature_proc_init                 #22.1
                                # LOE rbx r12 r13 r14 r15
..B1.29:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  (%rsp)                                        #22.1
        vpxor     %ymm0, %ymm0, %ymm0                           #23.2
        orl       $32832, (%rsp)                                #22.1
        vldmxcsr  (%rsp)                                        #22.1
        vmovdqu   %ymm0, mask(%rip)                             #23.2
        vmovdqu   %ymm0, 32+mask(%rip)                          #23.2
        vmovdqu   %ymm0, 64+mask(%rip)                          #23.2
        vmovdqu   %ymm0, 96+mask(%rip)                          #23.2
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.29
                                # Execution count [5.00e-01]
        xorl      %edi, %edi                                    #23.2
        movl      $128, %esi                                    #23.2
        movl      $mask, %edx                                   #23.2
        orq       $12, mask(%rip)                               #23.2
        vzeroupper                                              #23.2
..___tag_value_main.6:
#       sched_setaffinity(__pid_t, size_t, const cpu_set_t *)
        call      sched_setaffinity                             #23.2
..___tag_value_main.7:
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        movq      $.L_2__STRING.8, programName(%rip)            #24.2
        xorl      %r9d, %r9d                                    #26.2
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm0             #26.2
        xorl      %ecx, %ecx                                    #26.2
                                # LOE rcx rbx r12 r13 r14 r15 r9d xmm0
..B1.4:                         # Preds ..B1.6 ..B1.3
                                # Execution count [6.40e+01]
        xorl      %edi, %edi                                    #26.2
        movq      %rcx, %r8                                     #26.2
        xorl      %r10d, %r10d                                  #26.2
        .align    16,0x90
                                # LOE rcx rbx r8 r12 r13 r14 r15 edi r9d r10d xmm0
..B1.5:                         # Preds ..B1.5 ..B1.4
                                # Execution count [4.10e+03]
        incl      %edi                                          #26.2
        movl      %r9d, %eax                                    #26.2
        xorl      %edx, %edx                                    #26.2
        vxorpd    %xmm1, %xmm1, %xmm1                           #26.2
        idivl     %edi                                          #26.2
        movl      %eax, %esi                                    #26.2
        movl      $274877907, %eax                              #26.2
        addl      %r10d, %esi                                   #26.2
        addl      %r9d, %r10d                                   #26.2
        imull     %esi                                          #26.2
        movl      %esi, %r11d                                   #26.2
        sarl      $6, %edx                                      #26.2
        sarl      $31, %r11d                                    #26.2
        subl      %r11d, %edx                                   #26.2
        imull     $-1000, %edx, %eax                            #26.2
        addl      %eax, %esi                                    #26.2
        vcvtsi2sd %esi, %xmm1, %xmm1                            #26.2
        vaddsd    %xmm1, %xmm0, %xmm2                           #26.2
        vcvtsd2ss %xmm2, %xmm2, %xmm2                           #26.2
        vmovss    %xmm2, a(%r8)                                 #26.2
        addq      $4, %r8                                       #26.2
        cmpl      $64, %edi                                     #26.2
        jl        ..B1.5        # Prob 98%                      #26.2
                                # LOE rcx rbx r8 r12 r13 r14 r15 edi r9d r10d xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [6.40e+01]
        incl      %r9d                                          #26.2
        addq      $256, %rcx                                    #26.2
        cmpl      $64, %r9d                                     #26.2
        jl        ..B1.4        # Prob 98%                      #26.2
                                # LOE rcx rbx r12 r13 r14 r15 r9d xmm0
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
        vmovups   vindexm.379.0.0.16(%rip), %ymm1               #30.18
                                # LOE rbx r12 r13 r14 r15 ymm1
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.72e+00]
        movq      $0x4a817c7ff, %rax                            #36.3
        movq      $9999999, elapsed_rdtsc(%rip)                 #36.3
        movq      %rax, overal_time(%rip)                       #36.3
        movq      $0, ttime(%rip)                               #36.3
        vpcmpeqd  %ymm0, %ymm0, %ymm0                           #49.12
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.19 ..B1.8
                                # Execution count [2.91e+00]
# Begin ASM
# #mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm1
# End ASM
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.9
                                # Execution count [2.91e+00]
        vzeroupper                                              #36.3
        rdtsc                                                   #36.3
        shlq      $32, %rdx                                     #36.3
        orq       %rdx, %rax                                    #36.3
                                # LOE rax rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.31
                                # Execution count [2.91e+00]
        xorl      %edx, %edx                                    #38.7
        movq      %rax, t1_rdtsc(%rip)                          #36.3
        xorl      %eax, %eax                                    #38.7
        vpcmpeqd  %ymm1, %ymm1, %ymm1                           #38.7
        vmovups   vindexm.379.0.0.16(%rip), %ymm3               #38.7
                                # LOE rax rdx rbx r12 r13 r14 r15 ymm1 ymm3
..B1.11:                        # Preds ..B1.13 ..B1.10
                                # Execution count [2.33e+01]
        xorl      %esi, %esi                                    #43.8
        lea       (,%rdx,4), %rcx                               #59.22
                                # LOE rax rdx rcx rbx rsi r12 r13 r14 r15 ymm1 ymm3
..B1.12:                        # Preds ..B1.12 ..B1.11
                                # Execution count [1.86e+02]
        vmovdqa   %ymm1, %ymm4                                  #49.12
        lea       (%rax,%rsi,4), %rdi                           #49.34
        vxorps    %ymm2, %ymm2, %ymm2                           #49.12
        addq      $8, %rsi                                      #43.22
        vxorps    %ymm0, %ymm0, %ymm0                           #50.12
        vmovdqa   %ymm1, %ymm5                                  #50.12
        vgatherdps %ymm4, a(%rdi,%ymm3,4), %ymm2                #49.12
        vgatherdps %ymm5, 4+a(%rdi,%ymm3,4), %ymm0              #50.12
        vmovups   %ymm2, a_tra(%rcx)                            #59.22
        vmovups   %ymm0, 256+a_tra(%rcx)                        #60.22
        vxorps    %ymm12, %ymm12, %ymm12                        #51.12
        vmovdqa   %ymm1, %ymm6                                  #51.12
        vxorps    %ymm13, %ymm13, %ymm13                        #52.12
        vmovdqa   %ymm1, %ymm7                                  #52.12
        vxorps    %ymm14, %ymm14, %ymm14                        #53.12
        vmovdqa   %ymm1, %ymm8                                  #53.12
        vxorps    %ymm15, %ymm15, %ymm15                        #54.12
        vmovdqa   %ymm1, %ymm9                                  #54.12
        vxorps    %ymm4, %ymm4, %ymm4                           #55.12
        vmovdqa   %ymm1, %ymm10                                 #55.12
        vxorps    %ymm5, %ymm5, %ymm5                           #56.12
        vmovdqa   %ymm1, %ymm11                                 #56.12
        vgatherdps %ymm6, 8+a(%rdi,%ymm3,4), %ymm12             #51.12
        vgatherdps %ymm7, 12+a(%rdi,%ymm3,4), %ymm13            #52.12
        vgatherdps %ymm8, 16+a(%rdi,%ymm3,4), %ymm14            #53.12
        vgatherdps %ymm9, 20+a(%rdi,%ymm3,4), %ymm15            #54.12
        vgatherdps %ymm10, 24+a(%rdi,%ymm3,4), %ymm4            #55.12
        vgatherdps %ymm11, 28+a(%rdi,%ymm3,4), %ymm5            #56.12
        vmovups   %ymm12, 512+a_tra(%rcx)                       #61.22
        vmovups   %ymm13, 768+a_tra(%rcx)                       #62.22
        vmovups   %ymm14, 1024+a_tra(%rcx)                      #63.22
        vmovups   %ymm15, 1280+a_tra(%rcx)                      #64.22
        vmovups   %ymm4, 1536+a_tra(%rcx)                       #65.22
        vmovups   %ymm5, 1792+a_tra(%rcx)                       #66.22
        addq      $2048, %rcx                                   #43.22
        cmpq      $64, %rsi                                     #43.15
        jl        ..B1.12       # Prob 87%                      #43.15
                                # LOE rax rdx rcx rbx rsi r12 r13 r14 r15 ymm1 ymm3
..B1.13:                        # Preds ..B1.12
                                # Execution count [2.33e+01]
        addq      $8, %rdx                                      #38.21
        addq      $2048, %rax                                   #38.21
        cmpq      $64, %rdx                                     #38.14
        jl        ..B1.11       # Prob 87%                      #38.14
                                # LOE rax rdx rbx r12 r13 r14 r15 ymm1 ymm3
..B1.14:                        # Preds ..B1.13
                                # Execution count [2.91e+00]
        vzeroupper                                              #79.2
        rdtsc                                                   #79.2
        shlq      $32, %rdx                                     #79.2
        orq       %rdx, %rax                                    #79.2
                                # LOE rax rbx r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
                                # Execution count [2.91e+00]
        movq      %rax, t2_rdtsc(%rip)                          #79.2
                                # LOE rbx r12 r13 r14 r15
..B1.34:                        # Preds ..B1.15
                                # Execution count [2.91e+00]
# Begin ASM
# #mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm2
# End ASM
                                # LOE rbx r12 r13 r14 r15
..B1.33:                        # Preds ..B1.34
                                # Execution count [2.91e+00]
        movq      t2_rdtsc(%rip), %rdx                          #79.2
        subq      t1_rdtsc(%rip), %rdx                          #79.2
        movq      ttbest_rdtsc(%rip), %rsi                      #79.2
        movq      %rdx, ttotal_rdtsc(%rip)                      #79.2
        cmpq      %rsi, %rdx                                    #79.2
        jge       ..B1.17       # Prob 50%                      #79.2
                                # LOE rdx rbx rsi r12 r13 r14 r15
..B1.16:                        # Preds ..B1.33
                                # Execution count [1.45e+00]
        movq      elapsed_rdtsc(%rip), %rcx                     #79.2
        movq      %rcx, %rax                                    #79.2
        negq      %rax                                          #79.2
        movq      %rdx, %rsi                                    #79.2
        addq      $9999999, %rax                                #79.2
        movq      %rdx, ttbest_rdtsc(%rip)                      #79.2
        movq      %rax, elapsed(%rip)                           #79.2
        jmp       ..B1.18       # Prob 100%                     #79.2
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15
..B1.17:                        # Preds ..B1.33
                                # Execution count [1.45e+00]
        movq      elapsed_rdtsc(%rip), %rcx                     #79.2
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15
..B1.18:                        # Preds ..B1.16 ..B1.17
                                # Execution count [2.91e+00]
        movq      ttime(%rip), %rax                             #79.2
        addq      %rdx, %rax                                    #79.2
        movq      %rax, ttime(%rip)                             #79.2
        testq     %rcx, %rcx                                    #79.2
        je        ..B1.21       # Prob 50%                      #79.2
                                # LOE rax rcx rbx rsi r12 r13 r14 r15
..B1.19:                        # Preds ..B1.18
                                # Execution count [1.45e+00]
        decq      %rcx                                          #79.2
        movq      %rcx, elapsed_rdtsc(%rip)                     #79.2
        cmpq      overal_time(%rip), %rax                       #79.2
        jl        ..B1.9        # Prob 82%                      #79.2
        jmp       ..B1.22       # Prob 100%                     #79.2
                                # LOE rcx rbx rsi r12 r13 r14 r15
..B1.21:                        # Preds ..B1.18
                                # Execution count [1.45e+00]
        movq      $-1, elapsed_rdtsc(%rip)                      #79.2
        movq      $-1, %rcx                                     #79.2
                                # LOE rcx rbx rsi r12 r13 r14 r15
..B1.22:                        # Preds ..B1.19 ..B1.21
                                # Execution count [1.00e+00]
        negq      %rcx                                          #79.2
        movl      $.L_2__STRING.9, %edi                         #79.2
        addq      $9999999, %rcx                                #79.2
        xorl      %eax, %eax                                    #79.2
        movq      elapsed(%rip), %rdx                           #79.2
..___tag_value_main.8:
#       printf(const char *__restrict__, ...)
        call      printf                                        #79.2
..___tag_value_main.9:
                                # LOE rbx r12 r13 r14 r15
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.10, %edi                        #79.2
        movl      $.L_2__STRING.11, %esi                        #79.2
#       fopen(const char *__restrict__, const char *__restrict__)
        call      fopen                                         #79.2
                                # LOE rax rbx r12 r13 r14 r15
..B1.24:                        # Preds ..B1.23
                                # Execution count [1.00e+00]
        movl      $64, %ecx                                     #79.2
        movq      %rax, %rdi                                    #79.2
        movq      %rax, fileForSpeedups(%rip)                   #79.2
        movl      $.L_2__STRING.12, %esi                        #79.2
        movl      %ecx, %r8d                                    #79.2
        xorl      %eax, %eax                                    #79.2
        movq      programName(%rip), %rdx                       #79.2
        movq      ttbest_rdtsc(%rip), %r9                       #79.2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #79.2
                                # LOE rbx r12 r13 r14 r15
..B1.25:                        # Preds ..B1.24
                                # Execution count [1.00e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #80.4
        movl      $.L_2__STRING.13, %edi                        #80.4
        movl      $1, %eax                                      #80.4
        vcvtss2sd 8320+a_tra(%rip), %xmm0, %xmm0                #80.4
..___tag_value_main.10:
#       printf(const char *__restrict__, ...)
        call      printf                                        #80.4
..___tag_value_main.11:
                                # LOE rbx r12 r13 r14 r15
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #82.9
        movq      %rbp, %rsp                                    #82.9
        popq      %rbp                                          #82.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #82.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.section .rodata, "a"
	.align 32
	.align 32
vindexm.379.0.0.16:
	.long	0
	.long	64
	.long	128
	.long	192
	.long	256
	.long	320
	.long	384
	.long	448
	.data
# -- End  main
	.text
.L_2__routine_start_assignToThisCore12_1:
# -- Begin  assignToThisCore12
	.text
# mark_begin;
       .align    16,0x90
	.globl assignToThisCore12
# --- assignToThisCore12(int, int)
assignToThisCore12:
# parameter 1: %edi
# parameter 2: %esi
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignToThisCore12.15:
..L16:
                                                         #51.1
        vpxor     %ymm0, %ymm0, %ymm0                           #52.2
        vmovdqu   %ymm0, mask(%rip)                             #52.2
        vmovdqu   %ymm0, 32+mask(%rip)                          #52.2
        vmovdqu   %ymm0, 64+mask(%rip)                          #52.2
        vmovdqu   %ymm0, 96+mask(%rip)                          #52.2
        movslq    %edi, %rdx                                    #51.1
        movslq    %esi, %rcx                                    #51.1
                                # LOE rdx rcx rbx rbp r12 r13 r14 r15 esi edi
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        movq      %rdx, %rax                                    #53.2
        shrq      $3, %rax                                      #53.2
        cmpq      $128, %rax                                    #53.2
        jae       ..B2.4        # Prob 50%                      #53.2
                                # LOE rdx rcx rbx rbp r12 r13 r14 r15 esi edi
..B2.3:                         # Preds ..B2.2
                                # Execution count [5.00e-01]
        shrq      $6, %rdx                                      #53.2
        movq      mask(,%rdx,8), %rax                           #53.2
        btsq      %rdi, %rax                                    #53.2
        movq      %rax, mask(,%rdx,8)                           #53.2
                                # LOE rcx rbx rbp r12 r13 r14 r15 esi
..B2.4:                         # Preds ..B2.2 ..B2.3
                                # Execution count [1.00e+00]
        movq      %rcx, %rax                                    #54.2
        shrq      $3, %rax                                      #54.2
        cmpq      $128, %rax                                    #54.2
        jae       ..B2.6        # Prob 50%                      #54.2
                                # LOE rcx rbx rbp r12 r13 r14 r15 esi
..B2.5:                         # Preds ..B2.4
                                # Execution count [5.00e-01]
        shrq      $6, %rcx                                      #54.2
        movq      mask(,%rcx,8), %rax                           #54.2
        btsq      %rsi, %rax                                    #54.2
        movq      %rax, mask(,%rcx,8)                           #54.2
                                # LOE rbx rbp r12 r13 r14 r15
..B2.6:                         # Preds ..B2.4 ..B2.5
                                # Execution count [1.00e+00]
        xorl      %edi, %edi                                    #55.2
        movl      $128, %esi                                    #55.2
        movl      $mask, %edx                                   #55.2
        vzeroupper                                              #55.2
#       sched_setaffinity(__pid_t, size_t, const cpu_set_t *)
        jmp       sched_setaffinity                             #55.2
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignToThisCore12,@function
	.size	assignToThisCore12,.-assignToThisCore12
..LNassignToThisCore12.1:
	.data
# -- End  assignToThisCore12
	.text
.L_2__routine_start_assignImagef32_2:
# -- Begin  assignImagef32
	.text
# mark_begin;
       .align    16,0x90
	.globl assignImagef32
# --- assignImagef32(float (*)[68])
assignImagef32:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignImagef32.18:
..L19:
                                                         #65.1
        xorl      %esi, %esi                                    #67.6
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm2             #71.67
        vmovsd    .L_2il0floatpacket.2(%rip), %xmm1             #71.58
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm0             #71.46
                                # LOE rbx rbp rdi r12 r13 r14 r15 esi xmm0 xmm1 xmm2
..B3.2:                         # Preds ..B3.4 ..B3.1
                                # Execution count [6.40e+01]
        vxorpd    %xmm3, %xmm3, %xmm3                           #71.56
        xorl      %eax, %eax                                    #68.7
        vcvtsi2sd %esi, %xmm3, %xmm3                            #71.56
        vfmadd213sd %xmm2, %xmm1, %xmm3                         #71.46
        xorl      %r9d, %r9d                                    #68.9
        movl      %esi, %r10d                                   #68.7
        .align    16,0x90
                                # LOE rbx rbp rdi r9 r12 r13 r14 r15 eax esi r10d xmm0 xmm1 xmm2 xmm3
..B3.3:                         # Preds ..B3.3 ..B3.2
                                # Execution count [4.10e+03]
        vxorpd    %xmm5, %xmm5, %xmm5                           #71.44
        lea       1(%rax), %r8d                                 #71.32
        vcvtsi2sd %eax, %xmm5, %xmm5                            #71.44
        movl      %esi, %eax                                    #71.32
        xorl      %edx, %edx                                    #71.32
        idivl     %r8d                                          #71.32
        movl      %eax, %ecx                                    #71.32
        movl      $1195121335, %eax                             #71.37
        addl      %r10d, %ecx                                   #71.32
        vxorpd    %xmm4, %xmm4, %xmm4                           #71.37
        imull     %ecx                                          #71.37
        movl      %ecx, %r11d                                   #71.37
        addl      %esi, %r10d                                   #71.32
        sarl      $6, %edx                                      #71.37
        sarl      $31, %r11d                                    #71.37
        subl      %r11d, %edx                                   #71.37
        imull     $-230, %edx, %eax                             #71.37
        addl      %eax, %ecx                                    #71.37
        movl      %r8d, %eax                                    #68.20
        vcvtsi2sd %ecx, %xmm4, %xmm4                            #71.37
        vaddsd    %xmm4, %xmm3, %xmm6                           #71.58
        vfmadd231sd %xmm0, %xmm5, %xmm6                         #71.4
        vcvtsd2ss %xmm6, %xmm6, %xmm6                           #71.4
        vmovss    %xmm6, (%rdi,%r9,4)                           #71.4
        incq      %r9                                           #71.32
        cmpl      $64, %r8d                                     #68.14
        jl        ..B3.3        # Prob 98%                      #68.14
                                # LOE rbx rbp rdi r9 r12 r13 r14 r15 eax esi r10d xmm0 xmm1 xmm2 xmm3
..B3.4:                         # Preds ..B3.3
                                # Execution count [6.40e+01]
        incl      %esi                                          #67.19
        addq      $272, %rdi                                    #67.19
        cmpl      $64, %esi                                     #67.13
        jl        ..B3.2        # Prob 98%                      #67.13
                                # LOE rbx rbp rdi r12 r13 r14 r15 esi xmm0 xmm1 xmm2
..B3.5:                         # Preds ..B3.4
                                # Execution count [1.00e+00]
        ret                                                     #74.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignImagef32,@function
	.size	assignImagef32,.-assignImagef32
..LNassignImagef32.2:
	.data
# -- End  assignImagef32
	.text
.L_2__routine_start_assignMatrixf32_3:
# -- Begin  assignMatrixf32
	.text
# mark_begin;
       .align    16,0x90
	.globl assignMatrixf32
# --- assignMatrixf32(float (*)[64])
assignMatrixf32:
# parameter 1: %rdi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignMatrixf32.21:
..L22:
                                                         #77.1
        movq      %rdi, %r9                                     #77.1
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm0             #84.44
        xorl      %ecx, %ecx                                    #79.6
                                # LOE rbx rbp r9 r12 r13 r14 r15 ecx xmm0
..B4.2:                         # Preds ..B4.4 ..B4.1
                                # Execution count [6.40e+01]
        xorl      %r8d, %r8d                                    #80.7
        xorl      %r10d, %r10d                                  #80.9
        xorl      %edi, %edi                                    #80.9
        .align    16,0x90
                                # LOE rbx rbp r9 r10 r12 r13 r14 r15 ecx edi r8d xmm0
..B4.3:                         # Preds ..B4.3 ..B4.2
                                # Execution count [4.10e+03]
        incl      %r8d                                          #84.30
        movl      %ecx, %eax                                    #84.30
        xorl      %edx, %edx                                    #84.30
        vxorpd    %xmm1, %xmm1, %xmm1                           #84.35
        idivl     %r8d                                          #84.30
        movl      %eax, %esi                                    #84.30
        movl      $274877907, %eax                              #84.35
        addl      %edi, %esi                                    #84.30
        addl      %ecx, %edi                                    #84.30
        imull     %esi                                          #84.35
        movl      %esi, %r11d                                   #84.35
        sarl      $6, %edx                                      #84.35
        sarl      $31, %r11d                                    #84.35
        subl      %r11d, %edx                                   #84.35
        imull     $-1000, %edx, %eax                            #84.35
        addl      %eax, %esi                                    #84.35
        vcvtsi2sd %esi, %xmm1, %xmm1                            #84.35
        vaddsd    %xmm1, %xmm0, %xmm2                           #84.44
        vcvtsd2ss %xmm2, %xmm2, %xmm2                           #84.4
        vmovss    %xmm2, (%r9,%r10,4)                           #84.4
        incq      %r10                                          #84.30
        cmpl      $64, %r8d                                     #80.14
        jl        ..B4.3        # Prob 98%                      #80.14
                                # LOE rbx rbp r9 r10 r12 r13 r14 r15 ecx edi r8d xmm0
..B4.4:                         # Preds ..B4.3
                                # Execution count [6.40e+01]
        incl      %ecx                                          #79.19
        addq      $256, %r9                                     #79.19
        cmpl      $64, %ecx                                     #79.13
        jl        ..B4.2        # Prob 98%                      #79.13
                                # LOE rbx rbp r9 r12 r13 r14 r15 ecx xmm0
..B4.5:                         # Preds ..B4.4
                                # Execution count [1.00e+00]
        ret                                                     #88.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignMatrixf32,@function
	.size	assignMatrixf32,.-assignMatrixf32
..LNassignMatrixf32.3:
	.data
# -- End  assignMatrixf32
	.text
.L_2__routine_start_assignImagei32_4:
# -- Begin  assignImagei32
	.text
# mark_begin;
       .align    16,0x90
	.globl assignImagei32
# --- assignImagei32(int (*)[68])
assignImagei32:
# parameter 1: %rdi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignImagei32.24:
..L25:
                                                         #90.1
        movq      %rdi, %r9                                     #90.1
        xorl      %ecx, %ecx                                    #92.6
                                # LOE rbx rbp r9 r12 r13 r14 r15 ecx
..B5.2:                         # Preds ..B5.4 ..B5.1
                                # Execution count [6.40e+01]
        xorl      %r8d, %r8d                                    #93.7
        xorl      %r10d, %r10d                                  #93.9
        xorl      %edi, %edi                                    #93.9
                                # LOE rbx rbp r9 r10 r12 r13 r14 r15 ecx edi r8d
..B5.3:                         # Preds ..B5.3 ..B5.2
                                # Execution count [4.10e+03]
        incl      %r8d                                          #96.30
        movl      %ecx, %eax                                    #96.30
        xorl      %edx, %edx                                    #96.30
        idivl     %r8d                                          #96.30
        movl      %eax, %esi                                    #96.30
        movl      $-2139062143, %eax                            #96.35
        addl      %edi, %esi                                    #96.30
        addl      %ecx, %edi                                    #96.30
        imull     %esi                                          #96.35
        movl      %esi, %r11d                                   #96.35
        addl      %esi, %edx                                    #96.35
        sarl      $7, %edx                                      #96.35
        sarl      $31, %r11d                                    #96.35
        subl      %r11d, %edx                                   #96.35
        movl      %edx, %eax                                    #96.35
        shll      $8, %eax                                      #96.35
        subl      %edx, %eax                                    #96.35
        subl      %eax, %esi                                    #96.35
        movl      %esi, (%r9,%r10,4)                            #96.4
        incq      %r10                                          #96.30
        cmpl      $64, %r8d                                     #93.14
        jl        ..B5.3        # Prob 98%                      #93.14
                                # LOE rbx rbp r9 r10 r12 r13 r14 r15 ecx edi r8d
..B5.4:                         # Preds ..B5.3
                                # Execution count [6.40e+01]
        incl      %ecx                                          #92.19
        addq      $272, %r9                                     #92.19
        cmpl      $64, %ecx                                     #92.13
        jl        ..B5.2        # Prob 98%                      #92.13
                                # LOE rbx rbp r9 r12 r13 r14 r15 ecx
..B5.5:                         # Preds ..B5.4
                                # Execution count [1.00e+00]
        ret                                                     #99.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignImagei32,@function
	.size	assignImagei32,.-assignImagei32
..LNassignImagei32.4:
	.data
# -- End  assignImagei32
	.text
.L_2__routine_start_assignMatrixi32_5:
# -- Begin  assignMatrixi32
	.text
# mark_begin;
       .align    16,0x90
	.globl assignMatrixi32
# --- assignMatrixi32(int (*)[64])
assignMatrixi32:
# parameter 1: %rdi
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignMatrixi32.27:
..L28:
                                                         #103.1
        xorl      %ecx, %ecx                                    #105.6
                                # LOE rbx rbp rdi r12 r13 r14 r15 ecx
..B6.2:                         # Preds ..B6.4 ..B6.1
                                # Execution count [6.40e+01]
        xorl      %esi, %esi                                    #106.7
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx
..B6.3:                         # Preds ..B6.3 ..B6.2
                                # Execution count [4.10e+03]
        movl      %esi, %r9d                                    #110.4
        movl      $274877907, %eax                              #110.20
        imull     %ecx, %r9d                                    #110.17
        imull     %r9d                                          #110.20
        sarl      $6, %edx                                      #110.20
        imull     $-1000, %edx, %r8d                            #110.20
        addl      %r8d, %r9d                                    #110.20
        movl      %r9d, (%rdi,%rsi,4)                           #110.4
        incq      %rsi                                          #106.20
        cmpq      $64, %rsi                                     #106.14
        jl        ..B6.3        # Prob 98%                      #106.14
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx
..B6.4:                         # Preds ..B6.3
                                # Execution count [6.40e+01]
        incl      %ecx                                          #105.19
        addq      $256, %rdi                                    #105.19
        cmpl      $64, %ecx                                     #105.13
        jl        ..B6.2        # Prob 98%                      #105.13
                                # LOE rbx rbp rdi r12 r13 r14 r15 ecx
..B6.5:                         # Preds ..B6.4
                                # Execution count [1.00e+00]
        ret                                                     #113.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignMatrixi32,@function
	.size	assignMatrixi32,.-assignMatrixi32
..LNassignMatrixi32.5:
	.data
# -- End  assignMatrixi32
	.text
.L_2__routine_start_assignMatrixi16_6:
# -- Begin  assignMatrixi16
	.text
# mark_begin;
       .align    16,0x90
	.globl assignMatrixi16
# --- assignMatrixi16(short (*)[64])
assignMatrixi16:
# parameter 1: %rdi
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignMatrixi16.30:
..L31:
                                                         #116.1
        pushq     %r12                                          #116.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #116.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #116.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        xorl      %eax, %eax                                    #118.6
        movl      %eax, %r12d                                   #118.6
        movq      %rdi, %r13                                    #118.6
                                # LOE rbx rbp r13 r15 r12d
..B7.2:                         # Preds ..B7.5 ..B7.1
                                # Execution count [6.40e+01]
        xorl      %r14d, %r14d                                  #119.7
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.3:                         # Preds ..B7.4 ..B7.2
                                # Execution count [4.10e+03]
#       rand(void)
        call      rand                                          #123.28
                                # LOE rbx rbp r13 r14 r15 eax r12d
..B7.9:                         # Preds ..B7.3
                                # Execution count [4.10e+03]
        movl      %eax, %r10d                                   #123.28
                                # LOE rbx rbp r13 r14 r15 r10d r12d
..B7.4:                         # Preds ..B7.9
                                # Execution count [4.10e+03]
        movl      $1717986919, %eax                             #123.35
        movl      %r10d, %ecx                                   #123.35
        imull     %r10d                                         #123.35
        movl      %r14d, %r9d                                   #123.4
        movl      $558694933, %eax                              #123.21
        sarl      $2, %edx                                      #123.35
        sarl      $31, %ecx                                     #123.35
        imull     %r12d, %r9d                                   #123.18
        subl      %ecx, %edx                                    #123.35
        lea       (%rdx,%rdx,4), %esi                           #123.35
        imull     %r9d                                          #123.21
        addl      %esi, %esi                                    #123.35
        sarl      $5, %edx                                      #123.21
        subl      %esi, %r10d                                   #123.35
        imull     $-246, %edx, %r8d                             #123.21
        addl      %r8d, %r9d                                    #123.21
        addl      %r9d, %r10d                                   #123.35
        movw      %r10w, (%r13,%r14,2)                          #123.4
        incq      %r14                                          #119.20
        cmpq      $64, %r14                                     #119.14
        jl        ..B7.3        # Prob 98%                      #119.14
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.5:                         # Preds ..B7.4
                                # Execution count [6.40e+01]
        incl      %r12d                                         #118.19
        addq      $128, %r13                                    #118.19
        cmpl      $64, %r12d                                    #118.13
        jl        ..B7.2        # Prob 98%                      #118.13
                                # LOE rbx rbp r13 r15 r12d
..B7.6:                         # Preds ..B7.5
                                # Execution count [1.00e+00]
	.cfi_restore 14
        popq      %r14                                          #126.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #126.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #126.1
	.cfi_def_cfa_offset 8
        ret                                                     #126.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignMatrixi16,@function
	.size	assignMatrixi16,.-assignMatrixi16
..LNassignMatrixi16.6:
	.data
# -- End  assignMatrixi16
	.text
.L_2__routine_start_assignImagei16_7:
# -- Begin  assignImagei16
	.text
# mark_begin;
       .align    16,0x90
	.globl assignImagei16
# --- assignImagei16(short (*)[64])
assignImagei16:
# parameter 1: %rdi
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignImagei16.45:
..L46:
                                                         #128.1
        pushq     %r12                                          #128.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #128.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #128.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        xorl      %eax, %eax                                    #130.6
        movl      %eax, %r12d                                   #130.6
        movq      %rdi, %r13                                    #130.6
                                # LOE rbx rbp r13 r15 r12d
..B8.2:                         # Preds ..B8.5 ..B8.1
                                # Execution count [6.40e+01]
        xorl      %r14d, %r14d                                  #131.7
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.3:                         # Preds ..B8.4 ..B8.2
                                # Execution count [4.10e+03]
#       rand(void)
        call      rand                                          #135.28
                                # LOE rbx rbp r13 r14 r15 eax r12d
..B8.9:                         # Preds ..B8.3
                                # Execution count [4.10e+03]
        movl      %eax, %r10d                                   #135.28
                                # LOE rbx rbp r13 r14 r15 r10d r12d
..B8.4:                         # Preds ..B8.9
                                # Execution count [4.10e+03]
        movl      $1717986919, %eax                             #135.35
        movl      %r10d, %ecx                                   #135.35
        imull     %r10d                                         #135.35
        movl      %r14d, %r9d                                   #135.4
        movl      $558694933, %eax                              #135.21
        sarl      $2, %edx                                      #135.35
        sarl      $31, %ecx                                     #135.35
        imull     %r12d, %r9d                                   #135.18
        subl      %ecx, %edx                                    #135.35
        lea       (%rdx,%rdx,4), %esi                           #135.35
        imull     %r9d                                          #135.21
        addl      %esi, %esi                                    #135.35
        sarl      $5, %edx                                      #135.21
        subl      %esi, %r10d                                   #135.35
        imull     $-246, %edx, %r8d                             #135.21
        addl      %r8d, %r9d                                    #135.21
        addl      %r9d, %r10d                                   #135.35
        movw      %r10w, (%r13,%r14,2)                          #135.4
        incq      %r14                                          #131.20
        cmpq      $64, %r14                                     #131.14
        jl        ..B8.3        # Prob 98%                      #131.14
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.5:                         # Preds ..B8.4
                                # Execution count [6.40e+01]
        incl      %r12d                                         #130.19
        addq      $128, %r13                                    #130.19
        cmpl      $64, %r12d                                    #130.13
        jl        ..B8.2        # Prob 98%                      #130.13
                                # LOE rbx rbp r13 r15 r12d
..B8.6:                         # Preds ..B8.5
                                # Execution count [1.00e+00]
	.cfi_restore 14
        popq      %r14                                          #138.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #138.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #138.1
	.cfi_def_cfa_offset 8
        ret                                                     #138.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignImagei16,@function
	.size	assignImagei16,.-assignImagei16
..LNassignImagei16.7:
	.data
# -- End  assignImagei16
	.text
.L_2__routine_start_imageTranspose_8:
# -- Begin  imageTranspose
	.text
# mark_begin;
       .align    16,0x90
	.globl imageTranspose
# --- imageTranspose(float (*)[67])
imageTranspose:
# parameter 1: %rdi
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_imageTranspose.60:
..L61:
                                                         #140.1
        pushq     %r15                                          #140.1
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
        pushq     %rbx                                          #140.1
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
        pushq     %rbp                                          #140.1
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
        xorl      %ecx, %ecx                                    #143.2
        movq      %rdi, %rdx                                    #143.2
        xorl      %esi, %esi                                    #143.2
        xorl      %eax, %eax                                    #143.2
                                # LOE rax rdx rcx rdi r12 r13 r14 esi
..B9.2:                         # Preds ..B9.9 ..B9.1
                                # Execution count [6.40e+01]
        testl     %esi, %esi                                    #144.14
        jle       ..B9.9        # Prob 50%                      #144.14
                                # LOE rax rdx rcx rdi r12 r13 r14 esi
..B9.3:                         # Preds ..B9.2
                                # Execution count [6.40e+01]
        movl      %esi, %r10d                                   #144.3
        movl      $1, %r8d                                      #144.3
        xorl      %ebp, %ebp                                    #144.3
        shrl      $1, %r10d                                     #144.3
        je        ..B9.7        # Prob 9%                       #144.3
                                # LOE rax rdx rcx rdi r12 r13 r14 ebp esi r8d r10d
..B9.4:                         # Preds ..B9.3
                                # Execution count [5.76e+01]
        lea       (%rdi,%rcx,4), %r9                            #146.14
        .align    16,0x90
                                # LOE rax rdx rcx rdi r9 r12 r13 r14 ebp esi r10d
..B9.5:                         # Preds ..B9.5 ..B9.4
                                # Execution count [1.60e+02]
        movslq    %ebp, %r11                                    #145.11
        lea       (%rbp,%rbp), %r15d                            #146.14
        movslq    %r15d, %r15                                   #146.14
        incl      %ebp                                          #144.3
        imulq     $268, %r15, %rbx                              #146.14
        movl      (%r9,%rbx), %r15d                             #146.14
        movl      (%rdx,%r11,8), %r8d                           #145.11
        movl      %r15d, (%rdx,%r11,8)                          #146.4
        movl      %r8d, (%r9,%rbx)                              #147.4
        movl      268(%r9,%rbx), %r8d                           #146.14
        movl      4(%rdx,%r11,8), %r15d                         #145.11
        movl      %r8d, 4(%rdx,%r11,8)                          #146.4
        movl      %r15d, 268(%r9,%rbx)                          #147.4
        cmpl      %r10d, %ebp                                   #144.3
        jb        ..B9.5        # Prob 63%                      #144.3
                                # LOE rax rdx rcx rdi r9 r12 r13 r14 ebp esi r10d
..B9.6:                         # Preds ..B9.5
                                # Execution count [5.76e+01]
        lea       1(%rbp,%rbp), %r8d                            #145.4
                                # LOE rax rdx rcx rdi r12 r13 r14 esi r8d
..B9.7:                         # Preds ..B9.6 ..B9.3
                                # Execution count [6.40e+01]
        lea       -1(%r8), %ebx                                 #144.3
        cmpl      %esi, %ebx                                    #144.3
        jae       ..B9.9        # Prob 9%                       #144.3
                                # LOE rax rdx rcx rdi r12 r13 r14 esi r8d
..B9.8:                         # Preds ..B9.7
                                # Execution count [5.76e+01]
        movslq    %r8d, %r8                                     #145.11
        imulq     $268, %r8, %r10                               #146.14
        addq      %rdi, %r10                                    #146.14
        lea       (%rdi,%r8,4), %rbp                            #145.11
        movl      -4(%rbp,%rax), %r9d                           #145.11
        movl      -268(%r10,%rcx,4), %ebx                       #146.14
        movl      %ebx, -4(%rbp,%rax)                           #146.4
        movl      %r9d, -268(%r10,%rcx,4)                       #147.4
                                # LOE rax rdx rcx rdi r12 r13 r14 esi
..B9.9:                         # Preds ..B9.2 ..B9.7 ..B9.8
                                # Execution count [6.40e+01]
        incl      %esi                                          #143.2
        addq      $268, %rdx                                    #143.2
        addq      $268, %rax                                    #143.2
        incq      %rcx                                          #143.2
        cmpl      $64, %esi                                     #143.2
        jb        ..B9.2        # Prob 98%                      #143.2
                                # LOE rax rdx rcx rdi r12 r13 r14 esi
..B9.10:                        # Preds ..B9.9
                                # Execution count [1.00e+00]
	.cfi_restore 6
        popq      %rbp                                          #149.1
	.cfi_def_cfa_offset 24
	.cfi_restore 3
        popq      %rbx                                          #149.1
	.cfi_def_cfa_offset 16
	.cfi_restore 15
        popq      %r15                                          #149.1
	.cfi_def_cfa_offset 8
        ret                                                     #149.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	imageTranspose,@function
	.size	imageTranspose,.-imageTranspose
..LNimageTranspose.8:
	.data
# -- End  imageTranspose
	.text
.L_2__routine_start_assignMatrixui16_9:
# -- Begin  assignMatrixui16
	.text
# mark_begin;
       .align    16,0x90
	.globl assignMatrixui16
# --- assignMatrixui16(unsigned short (*)[64])
assignMatrixui16:
# parameter 1: %rdi
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignMatrixui16.75:
..L76:
                                                         #152.1
        xorl      %eax, %eax                                    #154.6
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B10.2:                        # Preds ..B10.4 ..B10.1
                                # Execution count [6.40e+01]
        xorl      %edx, %edx                                    #155.7
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax
..B10.3:                        # Preds ..B10.3 ..B10.2
                                # Execution count [4.10e+03]
        lea       10(%rax,%rdx), %ecx                           #159.20
        movw      %cx, (%rdi,%rdx,2)                            #159.4
        incq      %rdx                                          #155.20
        cmpq      $64, %rdx                                     #155.14
        jl        ..B10.3       # Prob 98%                      #155.14
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax
..B10.4:                        # Preds ..B10.3
                                # Execution count [6.40e+01]
        incl      %eax                                          #154.19
        addq      $128, %rdi                                    #154.19
        cmpl      $64, %eax                                     #154.13
        jl        ..B10.2       # Prob 98%                      #154.13
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B10.5:                        # Preds ..B10.4
                                # Execution count [1.00e+00]
        ret                                                     #162.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignMatrixui16,@function
	.size	assignMatrixui16,.-assignMatrixui16
..LNassignMatrixui16.9:
	.data
# -- End  assignMatrixui16
	.text
.L_2__routine_start_assignMatrixi8_10:
# -- Begin  assignMatrixi8
	.text
# mark_begin;
       .align    16,0x90
	.globl assignMatrixi8
# --- assignMatrixi8(unsigned char (*)[64])
assignMatrixi8:
# parameter 1: %rdi
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignMatrixi8.78:
..L79:
                                                         #165.1
        pushq     %r12                                          #165.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #165.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #165.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        xorl      %eax, %eax                                    #167.6
        movl      %eax, %r12d                                   #167.6
        movq      %rdi, %r13                                    #167.6
                                # LOE rbx rbp r13 r15 r12d
..B11.2:                        # Preds ..B11.5 ..B11.1
                                # Execution count [6.40e+01]
        xorl      %r14d, %r14d                                  #168.7
                                # LOE rbx rbp r13 r14 r15 r12d
..B11.3:                        # Preds ..B11.11 ..B11.2
                                # Execution count [4.10e+03]
#       rand(void)
        call      rand                                          #172.26
                                # LOE rbx rbp r13 r14 r15 eax r12d
..B11.4:                        # Preds ..B11.3
                                # Execution count [4.10e+03]
        andl      $-2147483647, %eax                            #172.33
        jge       ..B11.9       # Prob 50%                      #172.33
                                # LOE rbx rbp r13 r14 r15 eax r12d
..B11.10:                       # Preds ..B11.4
                                # Execution count [4.10e+03]
        subl      $1, %eax                                      #172.33
        orl       $-2, %eax                                     #172.33
        incl      %eax                                          #172.33
                                # LOE rbx rbp r13 r14 r15 eax r12d
..B11.9:                        # Preds ..B11.4 ..B11.10
                                # Execution count [4.10e+03]
        movl      %r14d, %edx                                   #172.4
        imull     %r12d, %edx                                   #172.18
        movzbl    %dl, %edx                                     #172.21
        addl      %edx, %eax                                    #172.33
        andl      $-2147483393, %eax                            #172.36
        jge       ..B11.11      # Prob 50%                      #172.36
                                # LOE rbx rbp r13 r14 r15 eax r12d
..B11.12:                       # Preds ..B11.9
                                # Execution count [4.10e+03]
        subl      $1, %eax                                      #172.36
        incl      %eax                                          #172.36
                                # LOE rbx rbp r13 r14 r15 eax r12d
..B11.11:                       # Preds ..B11.9 ..B11.12
                                # Execution count [4.10e+03]
        movb      %al, (%r14,%r13)                              #172.4
        incq      %r14                                          #168.20
        cmpq      $64, %r14                                     #168.14
        jl        ..B11.3       # Prob 98%                      #168.14
                                # LOE rbx rbp r13 r14 r15 r12d
..B11.5:                        # Preds ..B11.11
                                # Execution count [6.40e+01]
        .byte     15                                            #167.19
        .byte     31                                            #167.19
        .byte     0                                             #167.19
        incl      %r12d                                         #167.19
        addq      $64, %r13                                     #167.19
        cmpl      $64, %r12d                                    #167.13
        jl        ..B11.2       # Prob 98%                      #167.13
                                # LOE rbx rbp r13 r15 r12d
..B11.6:                        # Preds ..B11.5
                                # Execution count [1.00e+00]
	.cfi_restore 14
        popq      %r14                                          #175.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #175.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #175.1
	.cfi_def_cfa_offset 8
        ret                                                     #175.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignMatrixi8,@function
	.size	assignMatrixi8,.-assignMatrixi8
..LNassignMatrixi8.10:
	.data
# -- End  assignMatrixi8
	.text
.L_2__routine_start_assignArrayi32_11:
# -- Begin  assignArrayi32
	.text
# mark_begin;
       .align    16,0x90
	.globl assignArrayi32
# --- assignArrayi32(int *)
assignArrayi32:
# parameter 1: %rdi
..B12.1:                        # Preds ..B12.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_assignArrayi32.93:
..L94:
                                                         #178.1
        movl      $1234, %esi                                   #179.12
        xorl      %ecx, %ecx                                    #180.7
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi
..B12.2:                        # Preds ..B12.2 ..B12.1
                                # Execution count [4.10e+03]
        movl      %ecx, %r10d                                   #184.4
        movl      $274877907, %eax                              #184.17
        imull     %esi, %r10d                                   #184.14
        incl      %esi                                          #185.4
        imull     %r10d                                         #184.17
        movl      %r10d, %r8d                                   #184.17
        sarl      $6, %edx                                      #184.17
        sarl      $31, %r8d                                     #184.17
        subl      %r8d, %edx                                    #184.17
        imull     $-1000, %edx, %r9d                            #184.17
        addl      %r9d, %r10d                                   #184.17
        movl      %r10d, (%rdi,%rcx,4)                          #184.4
        incq      %rcx                                          #180.25
        cmpq      $4096, %rcx                                   #180.14
        jl        ..B12.2       # Prob 99%                      #180.14
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi
..B12.3:                        # Preds ..B12.2
                                # Execution count [1.00e+00]
        ret                                                     #189.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	assignArrayi32,@function
	.size	assignArrayi32,.-assignArrayi32
..LNassignArrayi32.11:
	.data
# -- End  assignArrayi32
	.text
.L_2__routine_start_savefloatMatrixFileForOutPuts_12:
# -- Begin  savefloatMatrixFileForOutPuts
	.text
# mark_begin;
       .align    16,0x90
	.globl savefloatMatrixFileForOutPuts
# --- savefloatMatrixFileForOutPuts(float (*)[64])
savefloatMatrixFileForOutPuts:
# parameter 1: %rdi
..B13.1:                        # Preds ..B13.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_savefloatMatrixFileForOutPuts.96:
..L97:
                                                         #494.56
        pushq     %r12                                          #494.56
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #494.56
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #494.56
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #494.56
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rsi                                          #494.56
	.cfi_def_cfa_offset 48
        movq      %rdi, %r13                                    #494.56
        movl      $.L_2__STRING.1, %edi                         #496.19
        movl      $.L_2__STRING.2, %esi                         #496.19
#       fopen(const char *__restrict__, const char *__restrict__)
        call      fopen                                         #496.19
                                # LOE rax rbx rbp r13 r14 r15
..B13.2:                        # Preds ..B13.1
                                # Execution count [1.00e+00]
        movl      $64, %ecx                                     #497.2
        movq      %rax, %rdi                                    #497.2
        movq      %rax, fileForOutPuts(%rip)                    #496.2
        movl      $.L_2__STRING.3, %esi                         #497.2
        movl      %ecx, %r8d                                    #497.2
        xorl      %eax, %eax                                    #497.2
        movq      programName(%rip), %rdx                       #497.2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #497.2
                                # LOE rbx rbp r13 r14 r15
..B13.3:                        # Preds ..B13.2
                                # Execution count [1.00e+00]
        xorl      %edx, %edx                                    #498.11
        movq      %r13, %r14                                    #499.11
        movq      fileForOutPuts(%rip), %r12                    #499.11
        movl      %edx, %r13d                                   #499.11
                                # LOE rbx rbp r12 r14 r13d
..B13.4:                        # Preds ..B13.8 ..B13.3
                                # Execution count [6.40e+01]
        movl      $il0_peep_printf_format_0, %edi               #499.3
        movq      %r12, %rsi                                    #499.3
        call      fputs                                         #499.3
                                # LOE rbx rbp r12 r14 r13d
..B13.5:                        # Preds ..B13.4
                                # Execution count [6.40e+01]
        xorl      %r15d, %r15d                                  #500.7
                                # LOE rbx rbp r12 r14 r15 r13d
..B13.6:                        # Preds ..B13.7 ..B13.5
                                # Execution count [4.10e+03]
        vxorpd    %xmm0, %xmm0, %xmm0                           #501.4
        movq      %r12, %rdi                                    #501.4
        vcvtss2sd (%r14,%r15,4), %xmm0, %xmm0                   #501.4
        movl      $.L_2__STRING.5, %esi                         #501.4
        movl      %r13d, %edx                                   #501.4
        movl      %r15d, %ecx                                   #501.4
        movl      $1, %eax                                      #501.4
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #501.4
                                # LOE rbx rbp r12 r14 r15 r13d
..B13.7:                        # Preds ..B13.6
                                # Execution count [4.10e+03]
        incq      %r15                                          #500.21
        cmpq      $64, %r15                                     #500.15
        jl        ..B13.6       # Prob 98%                      #500.15
                                # LOE rbx rbp r12 r14 r15 r13d
..B13.8:                        # Preds ..B13.7
                                # Execution count [6.40e+01]
        incl      %r13d                                         #498.23
        addq      $256, %r14                                    #498.23
        cmpl      $64, %r13d                                    #498.17
        jl        ..B13.4       # Prob 98%                      #498.17
                                # LOE rbx rbp r12 r14 r13d
..B13.9:                        # Preds ..B13.8
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_1, %edi               #505.2
        movq      %r12, %rsi                                    #505.2
        call      fputs                                         #505.2
                                # LOE rbx rbp r12 r14 r15
..B13.10:                       # Preds ..B13.9
                                # Execution count [1.00e+00]
        movq      %r12, %rdi                                    #506.2
        addq      $8, %rsp                                      #506.2
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #506.2
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #506.2
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #506.2
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #506.2
	.cfi_def_cfa_offset 8
#       fclose(FILE *)
        jmp       fclose                                        #506.2
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	savefloatMatrixFileForOutPuts,@function
	.size	savefloatMatrixFileForOutPuts,.-savefloatMatrixFileForOutPuts
..LNsavefloatMatrixFileForOutPuts.12:
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
il0_peep_printf_format_0:
	.word	2570
	.byte	0
	.section .rodata.str1.32, "aMS",@progbits,1
	.align 32
	.align 32
il0_peep_printf_format_1:
	.long	707398176
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	170535466
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	1313424938
	.long	1162367817
	.long	707406404
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	705309226
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.word	2592
	.byte	0
	.data
# -- End  savefloatMatrixFileForOutPuts
	.text
.L_2__routine_start_savefloatMatrixFileName_13:
# -- Begin  savefloatMatrixFileName
	.text
# mark_begin;
       .align    16,0x90
	.globl savefloatMatrixFileName
# --- savefloatMatrixFileName(float (*)[64], char *)
savefloatMatrixFileName:
# parameter 1: %rdi
# parameter 2: %rsi
..B14.1:                        # Preds ..B14.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_savefloatMatrixFileName.117:
..L118:
                                                        #509.66
        pushq     %r12                                          #509.66
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #509.66
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #509.66
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #509.66
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rsi                                          #509.66
	.cfi_def_cfa_offset 48
        movq      %rdi, %r13                                    #509.66
        movq      %rsi, %rdi                                    #511.19
        movl      $.L_2__STRING.2, %esi                         #511.19
#       fopen(const char *__restrict__, const char *__restrict__)
        call      fopen                                         #511.19
                                # LOE rax rbx rbp r13 r14 r15
..B14.2:                        # Preds ..B14.1
                                # Execution count [1.00e+00]
        movl      $64, %ecx                                     #512.2
        movq      %rax, %rdi                                    #512.2
        movq      %rax, fileForOutPuts(%rip)                    #511.2
        movl      $.L_2__STRING.3, %esi                         #512.2
        movl      %ecx, %r8d                                    #512.2
        xorl      %eax, %eax                                    #512.2
        movq      programName(%rip), %rdx                       #512.2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #512.2
                                # LOE rbx rbp r13 r14 r15
..B14.3:                        # Preds ..B14.2
                                # Execution count [1.00e+00]
        xorl      %edx, %edx                                    #513.11
        movq      %r13, %r14                                    #514.11
        movq      fileForOutPuts(%rip), %r12                    #514.11
        movl      %edx, %r13d                                   #514.11
                                # LOE rbx rbp r12 r14 r13d
..B14.4:                        # Preds ..B14.8 ..B14.3
                                # Execution count [6.40e+01]
        movl      $il0_peep_printf_format_2, %edi               #514.3
        movq      %r12, %rsi                                    #514.3
        call      fputs                                         #514.3
                                # LOE rbx rbp r12 r14 r13d
..B14.5:                        # Preds ..B14.4
                                # Execution count [6.40e+01]
        xorl      %r15d, %r15d                                  #515.7
                                # LOE rbx rbp r12 r14 r15 r13d
..B14.6:                        # Preds ..B14.7 ..B14.5
                                # Execution count [4.10e+03]
        vxorpd    %xmm0, %xmm0, %xmm0                           #516.4
        movq      %r12, %rdi                                    #516.4
        vcvtss2sd (%r14,%r15,4), %xmm0, %xmm0                   #516.4
        movl      $.L_2__STRING.5, %esi                         #516.4
        movl      %r13d, %edx                                   #516.4
        movl      %r15d, %ecx                                   #516.4
        movl      $1, %eax                                      #516.4
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #516.4
                                # LOE rbx rbp r12 r14 r15 r13d
..B14.7:                        # Preds ..B14.6
                                # Execution count [4.10e+03]
        incq      %r15                                          #515.21
        cmpq      $64, %r15                                     #515.15
        jl        ..B14.6       # Prob 98%                      #515.15
                                # LOE rbx rbp r12 r14 r15 r13d
..B14.8:                        # Preds ..B14.7
                                # Execution count [6.40e+01]
        incl      %r13d                                         #513.23
        addq      $256, %r14                                    #513.23
        cmpl      $64, %r13d                                    #513.17
        jl        ..B14.4       # Prob 98%                      #513.17
                                # LOE rbx rbp r12 r14 r13d
..B14.9:                        # Preds ..B14.8
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_3, %edi               #520.2
        movq      %r12, %rsi                                    #520.2
        call      fputs                                         #520.2
                                # LOE rbx rbp r12 r14 r15
..B14.10:                       # Preds ..B14.9
                                # Execution count [1.00e+00]
        movq      %r12, %rdi                                    #521.2
        addq      $8, %rsp                                      #521.2
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #521.2
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #521.2
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #521.2
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #521.2
	.cfi_def_cfa_offset 8
#       fclose(FILE *)
        jmp       fclose                                        #521.2
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	savefloatMatrixFileName,@function
	.size	savefloatMatrixFileName,.-savefloatMatrixFileName
..LNsavefloatMatrixFileName.13:
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_2:
	.word	2570
	.byte	0
	.section .rodata.str1.32, "aMS",@progbits,1
	.space 29, 0x00 	# pad
	.align 32
il0_peep_printf_format_3:
	.long	707398176
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	170535466
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	1313424938
	.long	1162367817
	.long	707406404
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	705309226
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.word	2592
	.byte	0
	.data
# -- End  savefloatMatrixFileName
	.text
.L_2__routine_start_saveintMatrixFileForOutPuts_14:
# -- Begin  saveintMatrixFileForOutPuts
	.text
# mark_begin;
       .align    16,0x90
	.globl saveintMatrixFileForOutPuts
# --- saveintMatrixFileForOutPuts(int (*)[64])
saveintMatrixFileForOutPuts:
# parameter 1: %rdi
..B15.1:                        # Preds ..B15.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_saveintMatrixFileForOutPuts.138:
..L139:
                                                        #524.52
        pushq     %r12                                          #524.52
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #524.52
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #524.52
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #524.52
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rsi                                          #524.52
	.cfi_def_cfa_offset 48
        movq      %rdi, %r13                                    #524.52
        movl      $.L_2__STRING.1, %edi                         #526.19
        movl      $.L_2__STRING.2, %esi                         #526.19
#       fopen(const char *__restrict__, const char *__restrict__)
        call      fopen                                         #526.19
                                # LOE rax rbx rbp r13 r14 r15
..B15.2:                        # Preds ..B15.1
                                # Execution count [1.00e+00]
        movl      $64, %ecx                                     #527.2
        movq      %rax, %rdi                                    #527.2
        movq      %rax, fileForOutPuts(%rip)                    #526.2
        movl      $.L_2__STRING.3, %esi                         #527.2
        movl      %ecx, %r8d                                    #527.2
        xorl      %eax, %eax                                    #527.2
        movq      programName(%rip), %rdx                       #527.2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #527.2
                                # LOE rbx rbp r13 r14 r15
..B15.3:                        # Preds ..B15.2
                                # Execution count [1.00e+00]
        xorl      %edx, %edx                                    #528.11
        movq      %r13, %r15                                    #529.11
        movq      fileForOutPuts(%rip), %r12                    #529.11
        movl      %edx, %r14d                                   #529.11
                                # LOE rbx rbp r12 r15 r14d
..B15.4:                        # Preds ..B15.8 ..B15.3
                                # Execution count [6.40e+01]
        movl      $il0_peep_printf_format_4, %edi               #529.3
        movq      %r12, %rsi                                    #529.3
        call      fputs                                         #529.3
                                # LOE rbx rbp r12 r15 r14d
..B15.5:                        # Preds ..B15.4
                                # Execution count [6.40e+01]
        xorl      %r13d, %r13d                                  #530.7
                                # LOE rbx rbp r12 r13 r15 r14d
..B15.6:                        # Preds ..B15.7 ..B15.5
                                # Execution count [4.10e+03]
        movq      %r12, %rdi                                    #531.4
        movl      $.L_2__STRING.7, %esi                         #531.4
        movl      %r14d, %edx                                   #531.4
        movl      %r13d, %ecx                                   #531.4
        xorl      %eax, %eax                                    #531.4
        movl      (%r15,%r13,4), %r8d                           #531.4
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #531.4
                                # LOE rbx rbp r12 r13 r15 r14d
..B15.7:                        # Preds ..B15.6
                                # Execution count [4.10e+03]
        incq      %r13                                          #530.21
        cmpq      $64, %r13                                     #530.15
        jl        ..B15.6       # Prob 98%                      #530.15
                                # LOE rbx rbp r12 r13 r15 r14d
..B15.8:                        # Preds ..B15.7
                                # Execution count [6.40e+01]
        incl      %r14d                                         #528.23
        addq      $256, %r15                                    #528.23
        cmpl      $64, %r14d                                    #528.17
        jl        ..B15.4       # Prob 98%                      #528.17
                                # LOE rbx rbp r12 r15 r14d
..B15.9:                        # Preds ..B15.8
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_5, %edi               #535.2
        movq      %r12, %rsi                                    #535.2
        call      fputs                                         #535.2
                                # LOE rbx rbp r12 r14 r15
..B15.10:                       # Preds ..B15.9
                                # Execution count [1.00e+00]
        movq      %r12, %rdi                                    #536.2
        addq      $8, %rsp                                      #536.2
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #536.2
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #536.2
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #536.2
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #536.2
	.cfi_def_cfa_offset 8
#       fclose(FILE *)
        jmp       fclose                                        #536.2
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	saveintMatrixFileForOutPuts,@function
	.size	saveintMatrixFileForOutPuts,.-saveintMatrixFileForOutPuts
..LNsaveintMatrixFileForOutPuts.14:
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_4:
	.word	2570
	.byte	0
	.section .rodata.str1.32, "aMS",@progbits,1
	.space 29, 0x00 	# pad
	.align 32
il0_peep_printf_format_5:
	.long	707398176
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	170535466
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	1313424938
	.long	1162367817
	.long	707406404
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	705309226
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.word	2592
	.byte	0
	.data
# -- End  saveintMatrixFileForOutPuts
	.text
.L_2__routine_start_saveintMatrixFileName_15:
# -- Begin  saveintMatrixFileName
	.text
# mark_begin;
       .align    16,0x90
	.globl saveintMatrixFileName
# --- saveintMatrixFileName(int (*)[64], char *)
saveintMatrixFileName:
# parameter 1: %rdi
# parameter 2: %rsi
..B16.1:                        # Preds ..B16.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_saveintMatrixFileName.159:
..L160:
                                                        #538.62
        pushq     %r12                                          #538.62
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #538.62
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #538.62
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #538.62
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rsi                                          #538.62
	.cfi_def_cfa_offset 48
        movq      %rdi, %r13                                    #538.62
        movq      %rsi, %rdi                                    #540.19
        movl      $.L_2__STRING.2, %esi                         #540.19
#       fopen(const char *__restrict__, const char *__restrict__)
        call      fopen                                         #540.19
                                # LOE rax rbx rbp r13 r14 r15
..B16.2:                        # Preds ..B16.1
                                # Execution count [1.00e+00]
        movl      $64, %ecx                                     #541.2
        movq      %rax, %rdi                                    #541.2
        movq      %rax, fileForOutPuts(%rip)                    #540.2
        movl      $.L_2__STRING.3, %esi                         #541.2
        movl      %ecx, %r8d                                    #541.2
        xorl      %eax, %eax                                    #541.2
        movq      programName(%rip), %rdx                       #541.2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #541.2
                                # LOE rbx rbp r13 r14 r15
..B16.3:                        # Preds ..B16.2
                                # Execution count [1.00e+00]
        xorl      %edx, %edx                                    #542.11
        movq      %r13, %r15                                    #543.11
        movq      fileForOutPuts(%rip), %r12                    #543.11
        movl      %edx, %r14d                                   #543.11
                                # LOE rbx rbp r12 r15 r14d
..B16.4:                        # Preds ..B16.8 ..B16.3
                                # Execution count [6.40e+01]
        movl      $il0_peep_printf_format_6, %edi               #543.3
        movq      %r12, %rsi                                    #543.3
        call      fputs                                         #543.3
                                # LOE rbx rbp r12 r15 r14d
..B16.5:                        # Preds ..B16.4
                                # Execution count [6.40e+01]
        xorl      %r13d, %r13d                                  #544.7
                                # LOE rbx rbp r12 r13 r15 r14d
..B16.6:                        # Preds ..B16.7 ..B16.5
                                # Execution count [4.10e+03]
        movq      %r12, %rdi                                    #545.4
        movl      $.L_2__STRING.7, %esi                         #545.4
        movl      %r14d, %edx                                   #545.4
        movl      %r13d, %ecx                                   #545.4
        xorl      %eax, %eax                                    #545.4
        movl      (%r15,%r13,4), %r8d                           #545.4
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #545.4
                                # LOE rbx rbp r12 r13 r15 r14d
..B16.7:                        # Preds ..B16.6
                                # Execution count [4.10e+03]
        incq      %r13                                          #544.21
        cmpq      $64, %r13                                     #544.15
        jl        ..B16.6       # Prob 98%                      #544.15
                                # LOE rbx rbp r12 r13 r15 r14d
..B16.8:                        # Preds ..B16.7
                                # Execution count [6.40e+01]
        incl      %r14d                                         #542.23
        addq      $256, %r15                                    #542.23
        cmpl      $64, %r14d                                    #542.17
        jl        ..B16.4       # Prob 98%                      #542.17
                                # LOE rbx rbp r12 r15 r14d
..B16.9:                        # Preds ..B16.8
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_7, %edi               #549.2
        movq      %r12, %rsi                                    #549.2
        call      fputs                                         #549.2
                                # LOE rbx rbp r12 r14 r15
..B16.10:                       # Preds ..B16.9
                                # Execution count [1.00e+00]
        movq      %r12, %rdi                                    #550.2
        addq      $8, %rsp                                      #550.2
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #550.2
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #550.2
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #550.2
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #550.2
	.cfi_def_cfa_offset 8
#       fclose(FILE *)
        jmp       fclose                                        #550.2
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	saveintMatrixFileName,@function
	.size	saveintMatrixFileName,.-saveintMatrixFileName
..LNsaveintMatrixFileName.15:
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_6:
	.word	2570
	.byte	0
	.section .rodata.str1.32, "aMS",@progbits,1
	.space 29, 0x00 	# pad
	.align 32
il0_peep_printf_format_7:
	.long	707398176
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	170535466
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	1313424938
	.long	1162367817
	.long	707406404
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.long	705309226
	.long	707406378
	.long	707406378
	.long	707406378
	.long	707406378
	.word	2592
	.byte	0
	.data
# -- End  saveintMatrixFileName
	.bss
	.align 8
	.align 8
	.globl fileForSpeedups
fileForSpeedups:
	.type	fileForSpeedups,@object
	.size	fileForSpeedups,8
	.space 8	# pad
	.align 8
	.globl ttime
ttime:
	.type	ttime,@object
	.size	ttime,8
	.space 8	# pad
	.align 8
	.globl fileForOutPuts
fileForOutPuts:
	.type	fileForOutPuts,@object
	.size	fileForOutPuts,8
	.space 8	# pad
	.data
	.align 8
	.align 8
	.globl programName
programName:
	.quad	.L_2__STRING.0
	.type	programName,@object
	.size	programName,8
	.align 8
	.globl ttbest_rdtsc
ttbest_rdtsc:
	.long	0x5d89ffff,0x01634578
	.type	ttbest_rdtsc,@object
	.size	ttbest_rdtsc,8
	.align 8
	.globl elapsed_rdtsc
elapsed_rdtsc:
	.long	0x0098967f,0x00000000
	.type	elapsed_rdtsc,@object
	.size	elapsed_rdtsc,8
	.align 8
	.globl overal_time
overal_time:
	.long	0xa817c7ff,0x00000004
	.type	overal_time,@object
	.size	overal_time,8
	.section .rodata, "a"
	.align 8
.L_2il0floatpacket.1:
	.long	0x916872b0,0x3fbf7ced
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.2:
	.long	0x88e368f1,0x3ef4f8b5
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x88e368f1,0x3ee4f8b5
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	859918932
	.word	18246
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	1701344266
	.long	1936024096
	.long	1936269428
	.long	1819026720
	.long	1852383332
	.long	1819026720
	.long	543716452
	.long	1919251561
	.long	1869182049
	.long	1851859054
	.long	1814372452
	.long	1914725484
	.long	1952804965
	.long	1869182057
	.long	684910
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,60
	.align 4
.L_2__STRING.10:
	.long	1701603686
	.long	1400008518
	.long	1684366704
	.long	7565429
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,16
	.align 4
.L_2__STRING.11:
	.word	97
	.type	.L_2__STRING.11,@object
	.size	.L_2__STRING.11,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.12:
	.long	539783973
	.long	628646949
	.long	622865508
	.long	174353516
	.byte	0
	.type	.L_2__STRING.12,@object
	.size	.L_2__STRING.12,17
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.13:
	.word	26149
	.byte	0
	.type	.L_2__STRING.13,@object
	.size	.L_2__STRING.13,3
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1701603686
	.long	1332899654
	.long	1968206965
	.word	29556
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,15
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.word	119
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	757101349
	.long	2019829024
	.long	169894949
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,13
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	626737440
	.long	626744676
	.long	1025531236
	.long	1718363424
	.long	663596
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,20
	.align 4
.L_2__STRING.7:
	.long	626737440
	.long	626744676
	.long	1025531236
	.long	744760608
	.word	2592
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,19
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.word	32
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,2
	.data
	.comm mask1,128,32
	.comm t1_rdtsc,8,8
	.comm t2_rdtsc,8,8
	.comm ttotal_rdtsc,8,8
	.comm elapsed,8,8
	.comm mask,128,32
	.comm temp2i16,32,32
	.comm a_tra,16384,32
	.comm a,16384,32
	.section .note.GNU-stack, ""
# End
