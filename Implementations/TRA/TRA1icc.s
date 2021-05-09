# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.3.199 Build 20190206";
# mark_description "-D _GNU_SOURCE -O3 -xHOST -S -c -o TRA1icc.s";
	.file "TRA1.c"
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
                                                          #12.1
        pushq     %rbp                                          #12.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #12.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #12.1
        subq      $128, %rsp                                    #12.1
        movl      $10330110, %esi                               #12.1
        movl      $3, %edi                                      #12.1
        call      __intel_new_feature_proc_init                 #12.1
                                # LOE rbx r12 r13 r14 r15
..B1.26:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  (%rsp)                                        #12.1
        vpxor     %ymm0, %ymm0, %ymm0                           #13.2
        orl       $32832, (%rsp)                                #12.1
        vldmxcsr  (%rsp)                                        #12.1
        vmovdqu   %ymm0, mask(%rip)                             #13.2
        vmovdqu   %ymm0, 32+mask(%rip)                          #13.2
        vmovdqu   %ymm0, 64+mask(%rip)                          #13.2
        vmovdqu   %ymm0, 96+mask(%rip)                          #13.2
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.26
                                # Execution count [5.00e-01]
        xorl      %edi, %edi                                    #13.2
        movl      $128, %esi                                    #13.2
        movl      $mask, %edx                                   #13.2
        orq       $12, mask(%rip)                               #13.2
        vzeroupper                                              #13.2
..___tag_value_main.6:
#       sched_setaffinity(__pid_t, size_t, const cpu_set_t *)
        call      sched_setaffinity                             #13.2
..___tag_value_main.7:
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        vmovdqu   .L_2il0floatpacket.1(%rip), %ymm0             #14.2
        xorl      %edx, %edx                                    #14.2
        vmovdqu   .L_2il0floatpacket.2(%rip), %ymm9             #14.2
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm1             #14.2
        vpaddd    %ymm0, %ymm9, %ymm8                           #14.2
        vpaddd    %ymm0, %ymm8, %ymm7                           #14.2
        xorl      %eax, %eax                                    #14.2
        vpaddd    %ymm0, %ymm7, %ymm6                           #14.2
        vpaddd    %ymm0, %ymm6, %ymm5                           #14.2
        vpaddd    %ymm0, %ymm5, %ymm4                           #14.2
        vpaddd    %ymm0, %ymm4, %ymm3                           #14.2
        vpaddd    %ymm0, %ymm3, %ymm2                           #14.2
                                # LOE rax rbx r12 r13 r14 r15 edx ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9
..B1.4:                         # Preds ..B1.4 ..B1.3
                                # Execution count [6.40e+01]
        vmovd     %edx, %xmm0                                   #14.2
        incl      %edx                                          #14.2
        vpbroadcastd %xmm0, %ymm0                               #14.2
        vpmulld   %ymm9, %ymm0, %ymm11                          #14.2
        vpshufd   $49, %ymm11, %ymm12                           #14.2
        vpmuldq   %ymm1, %ymm11, %ymm13                         #14.2
        vpmuldq   %ymm1, %ymm12, %ymm14                         #14.2
        vpsrlq    $32, %ymm13, %ymm15                           #14.2
        vpand     .L_2il0floatpacket.5(%rip), %ymm14, %ymm10    #14.2
        vpsrad    $31, %ymm11, %ymm14                           #14.2
        vpor      %ymm10, %ymm15, %ymm12                        #14.2
        vpsrad    $6, %ymm12, %ymm13                            #14.2
        vpsubd    %ymm14, %ymm13, %ymm15                        #14.2
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm15, %ymm10    #14.2
        vpsubd    %ymm10, %ymm11, %ymm11                        #14.2
        vpmulld   %ymm0, %ymm8, %ymm10                          #14.2
        vmovdqu   %ymm11, t(%rax)                               #14.2
        vpshufd   $49, %ymm10, %ymm11                           #14.2
        vpmuldq   %ymm1, %ymm10, %ymm12                         #14.2
        vpmuldq   %ymm1, %ymm11, %ymm13                         #14.2
        vpsrlq    $32, %ymm12, %ymm14                           #14.2
        vpand     .L_2il0floatpacket.5(%rip), %ymm13, %ymm15    #14.2
        vpsrad    $31, %ymm10, %ymm13                           #14.2
        vpor      %ymm15, %ymm14, %ymm11                        #14.2
        vpsrad    $6, %ymm11, %ymm12                            #14.2
        vpsubd    %ymm13, %ymm12, %ymm14                        #14.2
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm14, %ymm15    #14.2
        vpsubd    %ymm15, %ymm10, %ymm10                        #14.2
        vpmulld   %ymm0, %ymm7, %ymm15                          #14.2
        vmovdqu   %ymm10, 32+t(%rax)                            #14.2
        vpshufd   $49, %ymm15, %ymm10                           #14.2
        vpmuldq   %ymm1, %ymm15, %ymm11                         #14.2
        vpmuldq   %ymm1, %ymm10, %ymm12                         #14.2
        vpsrlq    $32, %ymm11, %ymm13                           #14.2
        vpand     .L_2il0floatpacket.5(%rip), %ymm12, %ymm14    #14.2
        vpsrad    $31, %ymm15, %ymm12                           #14.2
        vpor      %ymm14, %ymm13, %ymm10                        #14.2
        vpsrad    $6, %ymm10, %ymm11                            #14.2
        vpsubd    %ymm12, %ymm11, %ymm13                        #14.2
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm13, %ymm14    #14.2
        vpsubd    %ymm14, %ymm15, %ymm15                        #14.2
        vpmulld   %ymm0, %ymm6, %ymm14                          #14.2
        vpshufd   $49, %ymm14, %ymm10                           #14.2
        vmovdqu   %ymm15, 64+t(%rax)                            #14.2
        vpmuldq   %ymm1, %ymm14, %ymm11                         #14.2
        vpmuldq   %ymm1, %ymm10, %ymm12                         #14.2
        vpsrlq    $32, %ymm11, %ymm13                           #14.2
        vpand     .L_2il0floatpacket.5(%rip), %ymm12, %ymm15    #14.2
        vpsrad    $31, %ymm14, %ymm12                           #14.2
        vpor      %ymm15, %ymm13, %ymm10                        #14.2
        vpsrad    $6, %ymm10, %ymm11                            #14.2
        vpsubd    %ymm12, %ymm11, %ymm13                        #14.2
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm13, %ymm15    #14.2
        vpmulld   %ymm0, %ymm5, %ymm13                          #14.2
        vpshufd   $49, %ymm13, %ymm10                           #14.2
        vpsubd    %ymm15, %ymm14, %ymm14                        #14.2
        vpmuldq   %ymm1, %ymm13, %ymm11                         #14.2
        vpmuldq   %ymm1, %ymm10, %ymm12                         #14.2
        vmovdqu   %ymm14, 96+t(%rax)                            #14.2
        vpsrlq    $32, %ymm11, %ymm14                           #14.2
        vpand     .L_2il0floatpacket.5(%rip), %ymm12, %ymm15    #14.2
        vpsrad    $31, %ymm13, %ymm12                           #14.2
        vpor      %ymm15, %ymm14, %ymm10                        #14.2
        vpsrad    $6, %ymm10, %ymm11                            #14.2
        vpsubd    %ymm12, %ymm11, %ymm14                        #14.2
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm14, %ymm15    #14.2
        vpmulld   %ymm0, %ymm4, %ymm12                          #14.2
        vpsubd    %ymm15, %ymm13, %ymm13                        #14.2
        vpshufd   $49, %ymm12, %ymm10                           #14.2
        vmovdqu   %ymm13, 128+t(%rax)                           #14.2
        vpmuldq   %ymm1, %ymm12, %ymm11                         #14.2
        vpmuldq   %ymm1, %ymm10, %ymm13                         #14.2
        vpsrlq    $32, %ymm11, %ymm14                           #14.2
        vpand     .L_2il0floatpacket.5(%rip), %ymm13, %ymm15    #14.2
        vpsrad    $31, %ymm12, %ymm13                           #14.2
        vpor      %ymm15, %ymm14, %ymm10                        #14.2
        vpsrad    $6, %ymm10, %ymm11                            #14.2
        vpsubd    %ymm13, %ymm11, %ymm14                        #14.2
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm14, %ymm15    #14.2
        vpmulld   %ymm0, %ymm3, %ymm11                          #14.2
        vpsubd    %ymm15, %ymm12, %ymm12                        #14.2
        vpshufd   $49, %ymm11, %ymm10                           #14.2
        vmovdqu   %ymm12, 160+t(%rax)                           #14.2
        vpmuldq   %ymm1, %ymm11, %ymm12                         #14.2
        vpmuldq   %ymm1, %ymm10, %ymm13                         #14.2
        vpsrlq    $32, %ymm12, %ymm14                           #14.2
        vpand     .L_2il0floatpacket.5(%rip), %ymm13, %ymm15    #14.2
        vpsrad    $31, %ymm11, %ymm13                           #14.2
        vpor      %ymm15, %ymm14, %ymm10                        #14.2
        vpsrad    $6, %ymm10, %ymm12                            #14.2
        vpsubd    %ymm13, %ymm12, %ymm14                        #14.2
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm14, %ymm15    #14.2
        vpmulld   %ymm2, %ymm0, %ymm10                          #14.2
        vpsubd    %ymm15, %ymm11, %ymm11                        #14.2
        vpshufd   $49, %ymm10, %ymm0                            #14.2
        vmovdqu   %ymm11, 192+t(%rax)                           #14.2
        vpmuldq   %ymm1, %ymm10, %ymm11                         #14.2
        vpmuldq   %ymm1, %ymm0, %ymm0                           #14.2
        vpsrlq    $32, %ymm11, %ymm12                           #14.2
        vpand     .L_2il0floatpacket.5(%rip), %ymm0, %ymm13     #14.2
        vpsrad    $31, %ymm10, %ymm0                            #14.2
        vpor      %ymm13, %ymm12, %ymm14                        #14.2
        vpsrad    $6, %ymm14, %ymm15                            #14.2
        vpsubd    %ymm0, %ymm15, %ymm11                         #14.2
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm11, %ymm12    #14.2
        vpsubd    %ymm12, %ymm10, %ymm10                        #14.2
        vmovdqu   %ymm10, 224+t(%rax)                           #14.2
        addq      $256, %rax                                    #14.2
        cmpl      $64, %edx                                     #14.2
        jb        ..B1.4        # Prob 98%                      #14.2
                                # LOE rax rbx r12 r13 r14 r15 edx ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.72e+00]
        movq      $0x4a817c7ff, %rax                            #19.2
        movq      $.L_2__STRING.8, programName(%rip)            #16.5
        movq      $9999999, elapsed_rdtsc(%rip)                 #19.2
        movq      %rax, overal_time(%rip)                       #19.2
        movq      $0, ttime(%rip)                               #19.2
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.16 ..B1.5
                                # Execution count [2.91e+00]
# Begin ASM
# #mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm1
# End ASM
                                # LOE rbx r12 r13 r14 r15
..B1.28:                        # Preds ..B1.6
                                # Execution count [2.91e+00]
        vzeroupper                                              #19.2
        rdtsc                                                   #19.2
        shlq      $32, %rdx                                     #19.2
        orq       %rdx, %rax                                    #19.2
                                # LOE rax rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.28
                                # Execution count [2.91e+00]
        movq      %rax, t1_rdtsc(%rip)                          #19.2
        xorl      %eax, %eax                                    #22.4
        xorl      %edx, %edx                                    #22.4
                                # LOE rax rdx rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.10 ..B1.7
                                # Execution count [1.86e+02]
        xorl      %esi, %esi                                    #21.3
        movq      %rdx, %rcx                                    #23.5
                                # LOE rax rdx rcx rbx rsi r12 r13 r14 r15
..B1.9:                         # Preds ..B1.9 ..B1.8
                                # Execution count [1.19e+04]
        movq      %rsi, %rdi                                    #23.19
        addq      $2, %rsi                                      #21.3
        shlq      $8, %rdi                                      #23.19
        vmovd     256+t(%rdi,%rax,4), %xmm1                     #23.19
        vmovd     t(%rdi,%rax,4), %xmm0                         #23.19
        vpunpckldq %xmm1, %xmm0, %xmm2                          #23.19
        vmovq     %xmm2, c_tra(%rcx)                            #23.5
        addq      $8, %rcx                                      #21.3
        cmpq      $64, %rsi                                     #21.3
        jb        ..B1.9        # Prob 98%                      #21.3
                                # LOE rax rdx rcx rbx rsi r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.86e+02]
        incq      %rax                                          #22.4
        addq      $256, %rdx                                    #22.4
        cmpq      $64, %rax                                     #22.4
        jb        ..B1.8        # Prob 98%                      #22.4
                                # LOE rax rdx rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [2.91e+00]
        rdtsc                                                   #28.3
        shlq      $32, %rdx                                     #28.3
        orq       %rdx, %rax                                    #28.3
                                # LOE rax rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [2.91e+00]
        movq      %rax, t2_rdtsc(%rip)                          #28.3
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.12
                                # Execution count [2.91e+00]
# Begin ASM
# #mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm2
# End ASM
                                # LOE rbx r12 r13 r14 r15
..B1.30:                        # Preds ..B1.31
                                # Execution count [2.91e+00]
        movq      t2_rdtsc(%rip), %rdx                          #28.3
        subq      t1_rdtsc(%rip), %rdx                          #28.3
        movq      ttbest_rdtsc(%rip), %rsi                      #28.3
        movq      %rdx, ttotal_rdtsc(%rip)                      #28.3
        cmpq      %rsi, %rdx                                    #28.3
        jge       ..B1.14       # Prob 50%                      #28.3
                                # LOE rdx rbx rsi r12 r13 r14 r15
..B1.13:                        # Preds ..B1.30
                                # Execution count [1.45e+00]
        movq      elapsed_rdtsc(%rip), %rcx                     #28.3
        movq      %rcx, %rax                                    #28.3
        negq      %rax                                          #28.3
        movq      %rdx, %rsi                                    #28.3
        addq      $9999999, %rax                                #28.3
        movq      %rdx, ttbest_rdtsc(%rip)                      #28.3
        movq      %rax, elapsed(%rip)                           #28.3
        jmp       ..B1.15       # Prob 100%                     #28.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15
..B1.14:                        # Preds ..B1.30
                                # Execution count [1.45e+00]
        movq      elapsed_rdtsc(%rip), %rcx                     #28.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15
..B1.15:                        # Preds ..B1.13 ..B1.14
                                # Execution count [2.91e+00]
        movq      ttime(%rip), %rax                             #28.3
        addq      %rdx, %rax                                    #28.3
        movq      %rax, ttime(%rip)                             #28.3
        testq     %rcx, %rcx                                    #28.3
        je        ..B1.18       # Prob 50%                      #28.3
                                # LOE rax rcx rbx rsi r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15
                                # Execution count [1.45e+00]
        decq      %rcx                                          #28.3
        movq      %rcx, elapsed_rdtsc(%rip)                     #28.3
        cmpq      overal_time(%rip), %rax                       #28.3
        jl        ..B1.6        # Prob 82%                      #28.3
        jmp       ..B1.19       # Prob 100%                     #28.3
                                # LOE rcx rbx rsi r12 r13 r14 r15
..B1.18:                        # Preds ..B1.15
                                # Execution count [1.45e+00]
        movq      $-1, elapsed_rdtsc(%rip)                      #28.3
        movq      $-1, %rcx                                     #28.3
                                # LOE rcx rbx rsi r12 r13 r14 r15
..B1.19:                        # Preds ..B1.16 ..B1.18
                                # Execution count [1.00e+00]
        negq      %rcx                                          #28.3
        movl      $.L_2__STRING.9, %edi                         #28.3
        addq      $9999999, %rcx                                #28.3
        xorl      %eax, %eax                                    #28.3
        movq      elapsed(%rip), %rdx                           #28.3
..___tag_value_main.8:
#       printf(const char *__restrict__, ...)
        call      printf                                        #28.3
..___tag_value_main.9:
                                # LOE rbx r12 r13 r14 r15
..B1.20:                        # Preds ..B1.19
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.10, %edi                        #28.3
        movl      $.L_2__STRING.11, %esi                        #28.3
#       fopen(const char *__restrict__, const char *__restrict__)
        call      fopen                                         #28.3
                                # LOE rax rbx r12 r13 r14 r15
..B1.21:                        # Preds ..B1.20
                                # Execution count [1.00e+00]
        movl      $64, %ecx                                     #28.3
        movq      %rax, %rdi                                    #28.3
        movq      %rax, fileForSpeedups(%rip)                   #28.3
        movl      $.L_2__STRING.12, %esi                        #28.3
        movl      %ecx, %r8d                                    #28.3
        xorl      %eax, %eax                                    #28.3
        movq      programName(%rip), %rdx                       #28.3
        movq      ttbest_rdtsc(%rip), %r9                       #28.3
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #28.3
                                # LOE rbx r12 r13 r14 r15
..B1.22:                        # Preds ..B1.21
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.13, %edi                        #29.3
        xorl      %eax, %eax                                    #29.3
        movl      8320+c_tra(%rip), %esi                        #29.3
..___tag_value_main.10:
#       printf(const char *__restrict__, ...)
        call      printf                                        #29.3
..___tag_value_main.11:
                                # LOE rbx r12 r13 r14 r15
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #30.9
        movq      %rbp, %rsp                                    #30.9
        popq      %rbp                                          #30.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #30.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
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
        pushq     %rbp                                          #65.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #65.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #65.1
        pushq     %rbx                                          #65.1
        subq      $24, %rsp                                     #65.1
        xorl      %esi, %esi                                    #67.2
        vmovdqu   .L_2il0floatpacket.1(%rip), %ymm11            #71.4
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm5             #71.67
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm4             #71.58
        vmovdqu   .L_2il0floatpacket.2(%rip), %ymm3             #71.4
        vmovdqu   .L_2il0floatpacket.7(%rip), %ymm2             #71.32
        vmovupd   .L_2il0floatpacket.11(%rip), %ymm14           #71.46
        vmovupd   .L_2il0floatpacket.12(%rip), %ymm8            #71.37
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
                                # LOE rdi r12 r13 r14 r15 esi xmm4 xmm5 ymm2 ymm3 ymm8 ymm11 ymm14
..B3.2:                         # Preds ..B3.4 ..B3.1
                                # Execution count [6.40e+01]
        vxorpd    %xmm13, %xmm13, %xmm13                        #71.56
        vmovd     %esi, %xmm0                                   #67.19
        vcvtsi2sd %esi, %xmm13, %xmm13                          #71.56
        vfmadd213sd %xmm5, %xmm4, %xmm13                        #71.46
        xorl      %ebx, %ebx                                    #68.3
        vmovdqa   %ymm3, %ymm10                                 #71.4
        vmovdqa   %ymm2, %ymm9                                  #71.32
        vbroadcastsd %xmm13, %ymm13                             #71.46
        vpbroadcastd %xmm0, %ymm12                              #67.19
                                # LOE rbx rdi r12 r13 r14 r15 esi ymm8 ymm9 ymm10 ymm11 ymm12 ymm13 ymm14
..B3.3:                         # Preds ..B3.3 ..B3.2
                                # Execution count [4.10e+03]
        vpmulld   %ymm12, %ymm10, %ymm3                         #71.19
        vmovdqa   %ymm12, %ymm0                                 #71.32
        vmovdqa   %ymm9, %ymm1                                  #71.32
        vpaddd    %ymm3, %ymm12, %ymm15                         #71.22
..___tag_value_assignImagef32.24:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #71.37
..___tag_value_assignImagef32.25:
        vpaddd    %ymm0, %ymm15, %ymm2                          #71.32
        vpaddd    %ymm11, %ymm9, %ymm9                          #71.32
        vpshufd   $49, %ymm2, %ymm4                             #71.37
        vpmuldq   %ymm8, %ymm2, %ymm5                           #71.37
        vpmuldq   %ymm8, %ymm4, %ymm6                           #71.37
        vpsrlq    $32, %ymm5, %ymm7                             #71.37
        vpand     .L_2il0floatpacket.5(%rip), %ymm6, %ymm3      #71.37
        vpsrad    $31, %ymm2, %ymm6                             #71.37
        vpor      %ymm3, %ymm7, %ymm4                           #71.37
        vpsrad    $6, %ymm4, %ymm5                              #71.37
        vpsubd    %ymm6, %ymm5, %ymm7                           #71.37
        vpmulld   .L_2il0floatpacket.13(%rip), %ymm7, %ymm15    #71.37
        vpsubd    %ymm15, %ymm2, %ymm2                          #71.37
        vcvtdq2pd %xmm2, %ymm3                                  #71.37
        vextracti128 $1, %ymm2, %xmm2                           #71.37
        vaddpd    %ymm3, %ymm13, %ymm4                          #71.58
        vcvtdq2pd %xmm2, %ymm2                                  #71.37
        vaddpd    %ymm2, %ymm13, %ymm5                          #71.58
        vextracti128 $1, %ymm10, %xmm2                          #71.44
        vcvtdq2pd %xmm10, %ymm3                                 #71.44
        vpaddd    %ymm11, %ymm10, %ymm10                        #71.4
        vcvtdq2pd %xmm2, %ymm2                                  #71.44
        vfmadd231pd %ymm14, %ymm3, %ymm4                        #71.67
        vfmadd231pd %ymm14, %ymm2, %ymm5                        #71.67
        vcvtpd2ps %ymm4, %xmm2                                  #71.67
        vcvtpd2ps %ymm5, %xmm3                                  #71.67
        vinsertf128 $1, %xmm3, %ymm2, %ymm2                     #71.67
        vmovups   %ymm2, (%rdi,%rbx,4)                          #71.4
        addq      $8, %rbx                                      #68.3
        cmpq      $64, %rbx                                     #68.3
        jb        ..B3.3        # Prob 98%                      #68.3
                                # LOE rbx rdi r12 r13 r14 r15 esi ymm8 ymm9 ymm10 ymm11 ymm12 ymm13 ymm14
..B3.4:                         # Preds ..B3.3
                                # Execution count [6.40e+01]
        incl      %esi                                          #67.2
        addq      $272, %rdi                                    #67.2
        vmovdqu   .L_2il0floatpacket.7(%rip), %ymm2             #
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm4             #
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm5             #
        vmovdqu   .L_2il0floatpacket.2(%rip), %ymm3             #
        cmpl      $64, %esi                                     #67.2
        jb        ..B3.2        # Prob 98%                      #67.2
                                # LOE rdi r12 r13 r14 r15 esi xmm4 xmm5 ymm2 ymm3 ymm8 ymm11 ymm14
..B3.5:                         # Preds ..B3.4
                                # Execution count [1.00e+00]
        vzeroupper                                              #74.1
        addq      $24, %rsp                                     #74.1
	.cfi_restore 3
        popq      %rbx                                          #74.1
        movq      %rbp, %rsp                                    #74.1
        popq      %rbp                                          #74.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
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
..___tag_value_assignMatrixf32.30:
..L31:
                                                         #77.1
        pushq     %rbp                                          #77.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #77.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #77.1
        pushq     %r12                                          #77.1
        subq      $344, %rsp                                    #77.1
        movq      %rdi, %rax                                    #77.1
        vmovdqu   .L_2il0floatpacket.1(%rip), %ymm15            #84.4
        xorl      %esi, %esi                                    #79.2
        vmovdqu   .L_2il0floatpacket.2(%rip), %ymm10            #84.4
        vmovdqu   .L_2il0floatpacket.7(%rip), %ymm9             #84.30
        vpaddd    %ymm15, %ymm10, %ymm8                         #84.4
        vpaddd    %ymm15, %ymm9, %ymm4                          #84.30
        vmovupd   .L_2il0floatpacket.14(%rip), %ymm10           #84.30
        vpaddd    %ymm15, %ymm8, %ymm14                         #84.4
        vpaddd    %ymm15, %ymm4, %ymm3                          #84.30
        vmovdqu   %ymm8, 256(%rsp)                              #84.30[spill]
        vmovdqu   %ymm4, 128(%rsp)                              #84.30[spill]
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm8             #84.30
        vmovdqu   %ymm3, 224(%rsp)                              #84.30[spill]
        vpaddd    %ymm15, %ymm14, %ymm13                        #84.4
        vpaddd    %ymm15, %ymm3, %ymm2                          #84.30
        vpaddd    %ymm15, %ymm13, %ymm12                        #84.4
        vpaddd    %ymm15, %ymm2, %ymm1                          #84.30
        vmovdqu   %ymm2, 160(%rsp)                              #84.30[spill]
        vpaddd    %ymm15, %ymm12, %ymm11                        #84.4
        vpaddd    %ymm15, %ymm1, %ymm0                          #84.30
        vmovdqu   %ymm1, 192(%rsp)                              #84.30[spill]
        vpaddd    %ymm15, %ymm11, %ymm6                         #84.4
        vpaddd    %ymm15, %ymm0, %ymm7                          #84.30
        vmovdqu   %ymm0, 96(%rsp)                               #84.30[spill]
        vpaddd    %ymm15, %ymm6, %ymm5                          #84.4
        vpaddd    %ymm15, %ymm7, %ymm15                         #84.30
        vmovdqu   %ymm7, 32(%rsp)                               #84.30[spill]
        vmovdqu   %ymm6, 288(%rsp)                              #84.30[spill]
        vmovdqu   %ymm5, 64(%rsp)                               #84.30[spill]
        vmovdqu   %ymm15, (%rsp)                                #84.30[spill]
        xorl      %edi, %edi                                    #79.2
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
        movq      %rax, %r12                                    #84.30
                                # LOE rbx rdi r12 r13 r14 r15 esi ymm8 ymm10 ymm11 ymm12 ymm13 ymm14
..B4.2:                         # Preds ..B4.2 ..B4.1
                                # Execution count [6.40e+01]
        vmovdqu   .L_2il0floatpacket.7(%rip), %ymm1             #84.30
        vmovd     %esi, %xmm2                                   #79.19
        vpbroadcastd %xmm2, %ymm9                               #79.19
        incl      %esi                                          #79.2
        vmovdqa   %ymm9, %ymm0                                  #84.30
        vpmulld   .L_2il0floatpacket.2(%rip), %ymm9, %ymm15     #84.19
..___tag_value_assignMatrixf32.46:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #84.35
..___tag_value_assignMatrixf32.47:
        vpaddd    %ymm0, %ymm15, %ymm15                         #84.30
        vpshufd   $49, %ymm15, %ymm4                            #84.35
        vpmuldq   %ymm8, %ymm15, %ymm3                          #84.35
        vpmuldq   %ymm8, %ymm4, %ymm8                           #84.35
        vpsrlq    $32, %ymm3, %ymm5                             #84.35
        vpand     .L_2il0floatpacket.5(%rip), %ymm8, %ymm6      #84.35
        vpsrad    $31, %ymm15, %ymm8                            #84.35
        vpor      %ymm6, %ymm5, %ymm7                           #84.35
        vpsrad    $6, %ymm7, %ymm1                              #84.35
        vpsubd    %ymm8, %ymm1, %ymm2                           #84.35
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm2, %ymm3      #84.35
        vpsubd    %ymm3, %ymm15, %ymm4                          #84.35
        vmovdqa   %ymm9, %ymm0                                  #84.30
        vextracti128 $1, %ymm4, %xmm5                           #84.35
        vcvtdq2pd %xmm4, %ymm6                                  #84.35
        vcvtdq2pd %xmm5, %ymm7                                  #84.35
        vaddpd    %ymm6, %ymm10, %ymm1                          #84.44
        vaddpd    %ymm7, %ymm10, %ymm15                         #84.44
        vcvtpd2ps %ymm1, %xmm8                                  #84.44
        vmovdqu   128(%rsp), %ymm1                              #84.30[spill]
        vcvtpd2ps %ymm15, %xmm2                                 #84.44
        vpmulld   256(%rsp), %ymm9, %ymm15                      #84.19[spill]
        vinsertf128 $1, %xmm2, %ymm8, %ymm8                     #84.44
        vmovups   %ymm8, (%rdi,%r12)                            #84.4
..___tag_value_assignMatrixf32.50:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #84.35
..___tag_value_assignMatrixf32.51:
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm3             #84.35
        vpaddd    %ymm0, %ymm15, %ymm7                          #84.30
        vpshufd   $49, %ymm7, %ymm2                             #84.35
        vpmuldq   %ymm3, %ymm7, %ymm8                           #84.35
        vpmuldq   %ymm3, %ymm2, %ymm4                           #84.35
        vpsrlq    $32, %ymm8, %ymm5                             #84.35
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm6      #84.35
        vpsrad    $31, %ymm7, %ymm8                             #84.35
        vpor      %ymm6, %ymm5, %ymm1                           #84.35
        vpsrad    $6, %ymm1, %ymm15                             #84.35
        vmovdqu   224(%rsp), %ymm1                              #84.30[spill]
        vpsubd    %ymm8, %ymm15, %ymm8                          #84.35
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm8, %ymm8      #84.35
        vpsubd    %ymm8, %ymm7, %ymm7                           #84.35
        vmovdqa   %ymm9, %ymm0                                  #84.30
        vpmulld   %ymm9, %ymm14, %ymm15                         #84.19
        vextracti128 $1, %ymm7, %xmm8                           #84.35
        vcvtdq2pd %xmm7, %ymm2                                  #84.35
        vcvtdq2pd %xmm8, %ymm8                                  #84.35
        vaddpd    %ymm2, %ymm10, %ymm2                          #84.44
        vaddpd    %ymm8, %ymm10, %ymm8                          #84.44
        vcvtpd2ps %ymm2, %xmm2                                  #84.44
        vcvtpd2ps %ymm8, %xmm8                                  #84.44
        vinsertf128 $1, %xmm8, %ymm2, %ymm8                     #84.44
        vmovups   %ymm8, 32(%rdi,%r12)                          #84.4
..___tag_value_assignMatrixf32.53:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #84.35
..___tag_value_assignMatrixf32.54:
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm3             #84.35
        vpaddd    %ymm0, %ymm15, %ymm6                          #84.30
        vpshufd   $49, %ymm6, %ymm2                             #84.35
        vpmuldq   %ymm3, %ymm6, %ymm8                           #84.35
        vpmuldq   %ymm3, %ymm2, %ymm4                           #84.35
        vpsrlq    $32, %ymm8, %ymm5                             #84.35
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm1      #84.35
        vpsrad    $31, %ymm6, %ymm8                             #84.35
        vpor      %ymm1, %ymm5, %ymm7                           #84.35
        vmovdqu   160(%rsp), %ymm1                              #84.30[spill]
        vpsrad    $6, %ymm7, %ymm15                             #84.35
        vpsubd    %ymm8, %ymm15, %ymm8                          #84.35
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm8, %ymm8      #84.35
        vpsubd    %ymm8, %ymm6, %ymm6                           #84.35
        vmovdqa   %ymm9, %ymm0                                  #84.30
        vpmulld   %ymm9, %ymm13, %ymm15                         #84.19
        vextracti128 $1, %ymm6, %xmm8                           #84.35
        vcvtdq2pd %xmm6, %ymm2                                  #84.35
        vcvtdq2pd %xmm8, %ymm8                                  #84.35
        vaddpd    %ymm2, %ymm10, %ymm2                          #84.44
        vaddpd    %ymm8, %ymm10, %ymm8                          #84.44
        vcvtpd2ps %ymm2, %xmm2                                  #84.44
        vcvtpd2ps %ymm8, %xmm8                                  #84.44
        vinsertf128 $1, %xmm8, %ymm2, %ymm8                     #84.44
        vmovups   %ymm8, 64(%rdi,%r12)                          #84.4
..___tag_value_assignMatrixf32.56:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #84.35
..___tag_value_assignMatrixf32.57:
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm3             #84.35
        vpaddd    %ymm0, %ymm15, %ymm5                          #84.30
        vpshufd   $49, %ymm5, %ymm2                             #84.35
        vpmuldq   %ymm3, %ymm5, %ymm8                           #84.35
        vpmuldq   %ymm3, %ymm2, %ymm4                           #84.35
        vpsrlq    $32, %ymm8, %ymm1                             #84.35
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm6      #84.35
        vpsrad    $31, %ymm5, %ymm8                             #84.35
        vpor      %ymm6, %ymm1, %ymm7                           #84.35
        vmovdqu   192(%rsp), %ymm1                              #84.30[spill]
        vpsrad    $6, %ymm7, %ymm15                             #84.35
        vpsubd    %ymm8, %ymm15, %ymm8                          #84.35
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm8, %ymm8      #84.35
        vpsubd    %ymm8, %ymm5, %ymm5                           #84.35
        vmovdqa   %ymm9, %ymm0                                  #84.30
        vpmulld   %ymm9, %ymm12, %ymm15                         #84.19
        vextracti128 $1, %ymm5, %xmm8                           #84.35
        vcvtdq2pd %xmm5, %ymm2                                  #84.35
        vcvtdq2pd %xmm8, %ymm8                                  #84.35
        vaddpd    %ymm2, %ymm10, %ymm2                          #84.44
        vaddpd    %ymm8, %ymm10, %ymm8                          #84.44
        vcvtpd2ps %ymm2, %xmm2                                  #84.44
        vcvtpd2ps %ymm8, %xmm8                                  #84.44
        vinsertf128 $1, %xmm8, %ymm2, %ymm8                     #84.44
        vmovups   %ymm8, 96(%rdi,%r12)                          #84.4
..___tag_value_assignMatrixf32.59:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #84.35
..___tag_value_assignMatrixf32.60:
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm3             #84.35
        vpaddd    %ymm0, %ymm15, %ymm4                          #84.30
        vpshufd   $49, %ymm4, %ymm2                             #84.35
        vpmuldq   %ymm3, %ymm4, %ymm8                           #84.35
        vpmuldq   %ymm3, %ymm2, %ymm1                           #84.35
        vpsrlq    $32, %ymm8, %ymm5                             #84.35
        vpand     .L_2il0floatpacket.5(%rip), %ymm1, %ymm6      #84.35
        vpsrad    $31, %ymm4, %ymm8                             #84.35
        vmovdqu   96(%rsp), %ymm1                               #84.30[spill]
        vpor      %ymm6, %ymm5, %ymm7                           #84.35
        vpsrad    $6, %ymm7, %ymm15                             #84.35
        vpsubd    %ymm8, %ymm15, %ymm8                          #84.35
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm8, %ymm8      #84.35
        vpsubd    %ymm8, %ymm4, %ymm4                           #84.35
        vmovdqa   %ymm9, %ymm0                                  #84.30
        vpmulld   %ymm9, %ymm11, %ymm15                         #84.19
        vextracti128 $1, %ymm4, %xmm8                           #84.35
        vcvtdq2pd %xmm4, %ymm2                                  #84.35
        vcvtdq2pd %xmm8, %ymm8                                  #84.35
        vaddpd    %ymm2, %ymm10, %ymm2                          #84.44
        vaddpd    %ymm8, %ymm10, %ymm8                          #84.44
        vcvtpd2ps %ymm2, %xmm2                                  #84.44
        vcvtpd2ps %ymm8, %xmm8                                  #84.44
        vinsertf128 $1, %xmm8, %ymm2, %ymm8                     #84.44
        vmovups   %ymm8, 128(%rdi,%r12)                         #84.4
..___tag_value_assignMatrixf32.62:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #84.35
..___tag_value_assignMatrixf32.63:
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm1             #84.35
        vpaddd    %ymm0, %ymm15, %ymm3                          #84.30
        vpshufd   $49, %ymm3, %ymm2                             #84.35
        vpmuldq   %ymm1, %ymm3, %ymm8                           #84.35
        vpmuldq   %ymm1, %ymm2, %ymm4                           #84.35
        vpsrlq    $32, %ymm8, %ymm5                             #84.35
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm6      #84.35
        vpsrad    $31, %ymm3, %ymm8                             #84.35
        vmovdqu   32(%rsp), %ymm1                               #84.30[spill]
        vpor      %ymm6, %ymm5, %ymm7                           #84.35
        vpsrad    $6, %ymm7, %ymm15                             #84.35
        vpsubd    %ymm8, %ymm15, %ymm8                          #84.35
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm8, %ymm8      #84.35
        vpsubd    %ymm8, %ymm3, %ymm3                           #84.35
        vmovdqa   %ymm9, %ymm0                                  #84.30
        vpmulld   288(%rsp), %ymm9, %ymm15                      #84.19[spill]
        vextracti128 $1, %ymm3, %xmm8                           #84.35
        vcvtdq2pd %xmm3, %ymm2                                  #84.35
        vcvtdq2pd %xmm8, %ymm8                                  #84.35
        vaddpd    %ymm2, %ymm10, %ymm2                          #84.44
        vaddpd    %ymm8, %ymm10, %ymm8                          #84.44
        vcvtpd2ps %ymm2, %xmm2                                  #84.44
        vcvtpd2ps %ymm8, %xmm8                                  #84.44
        vinsertf128 $1, %xmm8, %ymm2, %ymm8                     #84.44
        vmovups   %ymm8, 160(%rdi,%r12)                         #84.4
..___tag_value_assignMatrixf32.66:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #84.35
..___tag_value_assignMatrixf32.67:
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm3             #84.35
        vpaddd    %ymm0, %ymm15, %ymm8                          #84.30
        vpshufd   $49, %ymm8, %ymm1                             #84.35
        vpmuldq   %ymm3, %ymm8, %ymm2                           #84.35
        vpmuldq   %ymm3, %ymm1, %ymm4                           #84.35
        vpsrlq    $32, %ymm2, %ymm5                             #84.35
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm6      #84.35
        vpsrad    $31, %ymm8, %ymm2                             #84.35
        vmovdqu   (%rsp), %ymm1                                 #84.30[spill]
        vpor      %ymm6, %ymm5, %ymm7                           #84.35
        vpsrad    $6, %ymm7, %ymm15                             #84.35
        vpsubd    %ymm2, %ymm15, %ymm2                          #84.35
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm2, %ymm2      #84.35
        vpsubd    %ymm2, %ymm8, %ymm8                           #84.35
        vmovdqa   %ymm9, %ymm0                                  #84.30
        vpmulld   64(%rsp), %ymm9, %ymm15                       #84.19[spill]
        vcvtdq2pd %xmm8, %ymm2                                  #84.35
        vextracti128 $1, %ymm8, %xmm8                           #84.35
        vaddpd    %ymm2, %ymm10, %ymm2                          #84.44
        vcvtdq2pd %xmm8, %ymm8                                  #84.35
        vcvtpd2ps %ymm2, %xmm2                                  #84.44
        vaddpd    %ymm8, %ymm10, %ymm8                          #84.44
        vcvtpd2ps %ymm8, %xmm8                                  #84.44
        vinsertf128 $1, %xmm8, %ymm2, %ymm8                     #84.44
        vmovups   %ymm8, 192(%rdi,%r12)                         #84.4
..___tag_value_assignMatrixf32.70:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #84.35
..___tag_value_assignMatrixf32.71:
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm8             #84.35
        vpaddd    %ymm0, %ymm15, %ymm2                          #84.30
        vpshufd   $49, %ymm2, %ymm0                             #84.35
        vpsrad    $31, %ymm2, %ymm7                             #84.35
        vpmuldq   %ymm8, %ymm2, %ymm9                           #84.35
        vpmuldq   %ymm8, %ymm0, %ymm1                           #84.35
        vpsrlq    $32, %ymm9, %ymm3                             #84.35
        vpand     .L_2il0floatpacket.5(%rip), %ymm1, %ymm4      #84.35
        vpor      %ymm4, %ymm3, %ymm5                           #84.35
        vpsrad    $6, %ymm5, %ymm6                              #84.35
        vpsubd    %ymm7, %ymm6, %ymm9                           #84.35
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm9, %ymm15     #84.35
        vpsubd    %ymm15, %ymm2, %ymm2                          #84.35
        vextracti128 $1, %ymm2, %xmm0                           #84.35
        vcvtdq2pd %xmm2, %ymm1                                  #84.35
        vcvtdq2pd %xmm0, %ymm3                                  #84.35
        vaddpd    %ymm1, %ymm10, %ymm4                          #84.44
        vaddpd    %ymm3, %ymm10, %ymm5                          #84.44
        vcvtpd2ps %ymm4, %xmm6                                  #84.44
        vcvtpd2ps %ymm5, %xmm7                                  #84.44
        vinsertf128 $1, %xmm7, %ymm6, %ymm9                     #84.44
        vmovups   %ymm9, 224(%rdi,%r12)                         #84.4
        addq      $256, %rdi                                    #79.2
        cmpl      $64, %esi                                     #79.2
        jb        ..B4.2        # Prob 98%                      #79.2
                                # LOE rbx rdi r12 r13 r14 r15 esi ymm8 ymm10 ymm11 ymm12 ymm13 ymm14
..B4.3:                         # Preds ..B4.2
                                # Execution count [1.00e+00]
        vzeroupper                                              #88.1
        addq      $344, %rsp                                    #88.1
	.cfi_restore 12
        popq      %r12                                          #88.1
        movq      %rbp, %rsp                                    #88.1
        popq      %rbp                                          #88.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
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
..___tag_value_assignImagei32.76:
..L77:
                                                         #90.1
        pushq     %rbp                                          #90.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #90.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #90.1
        pushq     %r12                                          #90.1
        subq      $312, %rsp                                    #90.1
        movq      %rdi, %rax                                    #90.1
        vmovdqu   .L_2il0floatpacket.1(%rip), %ymm15            #96.4
        xorl      %esi, %esi                                    #92.2
        vmovdqu   .L_2il0floatpacket.2(%rip), %ymm9             #96.4
        vmovdqu   .L_2il0floatpacket.7(%rip), %ymm8             #96.30
        vpaddd    %ymm15, %ymm9, %ymm14                         #96.4
        vpaddd    %ymm15, %ymm8, %ymm4                          #96.30
        vmovupd   .L_2il0floatpacket.16(%rip), %ymm8            #92.2
        vpaddd    %ymm15, %ymm14, %ymm13                        #96.4
        vpaddd    %ymm15, %ymm4, %ymm3                          #96.30
        vmovdqu   %ymm4, 128(%rsp)                              #92.2[spill]
        vpaddd    %ymm15, %ymm13, %ymm12                        #96.4
        vpaddd    %ymm15, %ymm3, %ymm2                          #96.30
        vmovdqu   %ymm3, 160(%rsp)                              #92.2[spill]
        vpaddd    %ymm15, %ymm12, %ymm6                         #96.4
        vpaddd    %ymm15, %ymm2, %ymm1                          #96.30
        vmovdqu   %ymm2, (%rsp)                                 #92.2[spill]
        vpaddd    %ymm15, %ymm6, %ymm11                         #96.4
        vpaddd    %ymm15, %ymm1, %ymm0                          #96.30
        vmovdqu   %ymm1, 96(%rsp)                               #92.2[spill]
        vmovdqu   %ymm6, 256(%rsp)                              #92.2[spill]
        vpaddd    %ymm15, %ymm11, %ymm10                        #96.4
        vpaddd    %ymm15, %ymm0, %ymm7                          #96.30
        vmovdqu   %ymm0, 32(%rsp)                               #92.2[spill]
        vpaddd    %ymm15, %ymm10, %ymm5                         #96.4
        vpaddd    %ymm15, %ymm7, %ymm15                         #96.30
        vmovdqu   %ymm7, 224(%rsp)                              #92.2[spill]
        vmovdqu   %ymm5, 64(%rsp)                               #92.2[spill]
        vmovdqu   %ymm15, 192(%rsp)                             #92.2[spill]
        xorl      %edi, %edi                                    #92.2
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
        movq      %rax, %r12                                    #92.2
                                # LOE rbx rdi r12 r13 r14 r15 esi ymm8 ymm10 ymm11 ymm12 ymm13 ymm14
..B5.2:                         # Preds ..B5.2 ..B5.1
                                # Execution count [6.40e+01]
        vmovdqu   .L_2il0floatpacket.7(%rip), %ymm1             #96.30
        vmovd     %esi, %xmm2                                   #92.19
        vpbroadcastd %xmm2, %ymm9                               #92.19
        incl      %esi                                          #92.2
        vmovdqa   %ymm9, %ymm0                                  #96.30
        vpmulld   .L_2il0floatpacket.2(%rip), %ymm9, %ymm15     #96.19
..___tag_value_assignImagei32.91:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #96.4
..___tag_value_assignImagei32.92:
        vpaddd    %ymm0, %ymm15, %ymm15                         #96.30
        vpshufd   $49, %ymm15, %ymm4                            #96.4
        vpsrad    $31, %ymm15, %ymm2                            #96.4
        vpmuldq   %ymm8, %ymm15, %ymm3                          #96.4
        vpmuldq   %ymm8, %ymm4, %ymm8                           #96.4
        vpsrlq    $32, %ymm3, %ymm5                             #96.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm8, %ymm6      #96.4
        vpor      %ymm6, %ymm5, %ymm7                           #96.4
        vpaddd    %ymm15, %ymm7, %ymm1                          #96.4
        vpsrad    $7, %ymm1, %ymm8                              #96.4
        vmovdqu   128(%rsp), %ymm1                              #96.30[spill]
        vpsubd    %ymm2, %ymm8, %ymm3                           #96.4
        vpmulld   .L_2il0floatpacket.17(%rip), %ymm3, %ymm4     #96.4
        vpsubd    %ymm4, %ymm15, %ymm5                          #96.4
        vmovdqa   %ymm9, %ymm0                                  #96.30
        vmovdqu   %ymm5, (%rdi,%r12)                            #96.4
        vpmulld   %ymm9, %ymm14, %ymm15                         #96.19
..___tag_value_assignImagei32.94:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #96.4
..___tag_value_assignImagei32.95:
        vmovupd   .L_2il0floatpacket.16(%rip), %ymm8            #96.4
        vpaddd    %ymm0, %ymm15, %ymm7                          #96.30
        vpshufd   $49, %ymm7, %ymm1                             #96.4
        vpsrad    $31, %ymm7, %ymm15                            #96.4
        vpmuldq   %ymm8, %ymm7, %ymm6                           #96.4
        vpmuldq   %ymm8, %ymm1, %ymm2                           #96.4
        vpsrlq    $32, %ymm6, %ymm3                             #96.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm2, %ymm4      #96.4
        vpor      %ymm4, %ymm3, %ymm5                           #96.4
        vpaddd    %ymm7, %ymm5, %ymm6                           #96.4
        vpsrad    $7, %ymm6, %ymm1                              #96.4
        vpsubd    %ymm15, %ymm1, %ymm8                          #96.4
        vmovdqu   160(%rsp), %ymm1                              #96.30[spill]
        vpmulld   .L_2il0floatpacket.17(%rip), %ymm8, %ymm8     #96.4
        vpsubd    %ymm8, %ymm7, %ymm7                           #96.4
        vmovdqa   %ymm9, %ymm0                                  #96.30
        vmovdqu   %ymm7, 32(%rdi,%r12)                          #96.4
        vpmulld   %ymm9, %ymm13, %ymm15                         #96.19
..___tag_value_assignImagei32.97:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #96.4
..___tag_value_assignImagei32.98:
        vmovupd   .L_2il0floatpacket.16(%rip), %ymm3            #96.4
        vpaddd    %ymm0, %ymm15, %ymm6                          #96.30
        vpshufd   $49, %ymm6, %ymm2                             #96.4
        vpmuldq   %ymm3, %ymm6, %ymm8                           #96.4
        vpmuldq   %ymm3, %ymm2, %ymm4                           #96.4
        vpsrlq    $32, %ymm8, %ymm5                             #96.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm1      #96.4
        vpsrad    $31, %ymm6, %ymm3                             #96.4
        vpor      %ymm1, %ymm5, %ymm7                           #96.4
        vmovdqu   (%rsp), %ymm1                                 #96.30[spill]
        vpaddd    %ymm6, %ymm7, %ymm8                           #96.4
        vpsrad    $7, %ymm8, %ymm2                              #96.4
        vpsubd    %ymm3, %ymm2, %ymm4                           #96.4
        vpmulld   .L_2il0floatpacket.17(%rip), %ymm4, %ymm5     #96.4
        vpsubd    %ymm5, %ymm6, %ymm6                           #96.4
        vmovdqa   %ymm9, %ymm0                                  #96.30
        vmovdqu   %ymm6, 64(%rdi,%r12)                          #96.4
        vpmulld   %ymm9, %ymm12, %ymm15                         #96.19
..___tag_value_assignImagei32.100:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #96.4
..___tag_value_assignImagei32.101:
        vmovupd   .L_2il0floatpacket.16(%rip), %ymm3            #96.4
        vpaddd    %ymm0, %ymm15, %ymm5                          #96.30
        vpshufd   $49, %ymm5, %ymm2                             #96.4
        vpmuldq   %ymm3, %ymm5, %ymm8                           #96.4
        vpmuldq   %ymm3, %ymm2, %ymm4                           #96.4
        vpsrlq    $32, %ymm8, %ymm1                             #96.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm6      #96.4
        vpsrad    $31, %ymm5, %ymm3                             #96.4
        vpor      %ymm6, %ymm1, %ymm7                           #96.4
        vpaddd    %ymm5, %ymm7, %ymm8                           #96.4
        vpsrad    $7, %ymm8, %ymm2                              #96.4
        vpsubd    %ymm3, %ymm2, %ymm4                           #96.4
        vpmulld   .L_2il0floatpacket.17(%rip), %ymm4, %ymm1     #96.4
        vpsubd    %ymm1, %ymm5, %ymm5                           #96.4
        vmovdqu   96(%rsp), %ymm1                               #96.30[spill]
        vmovdqu   %ymm5, 96(%rdi,%r12)                          #96.4
        vmovdqa   %ymm9, %ymm0                                  #96.30
        vpmulld   256(%rsp), %ymm9, %ymm15                      #96.19[spill]
..___tag_value_assignImagei32.103:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #96.4
..___tag_value_assignImagei32.104:
        vmovupd   .L_2il0floatpacket.16(%rip), %ymm3            #96.4
        vpaddd    %ymm0, %ymm15, %ymm4                          #96.30
        vpshufd   $49, %ymm4, %ymm2                             #96.4
        vpmuldq   %ymm3, %ymm4, %ymm8                           #96.4
        vpmuldq   %ymm3, %ymm2, %ymm1                           #96.4
        vpsrlq    $32, %ymm8, %ymm5                             #96.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm1, %ymm6      #96.4
        vpsrad    $31, %ymm4, %ymm3                             #96.4
        vpor      %ymm6, %ymm5, %ymm7                           #96.4
        vpaddd    %ymm4, %ymm7, %ymm8                           #96.4
        vpsrad    $7, %ymm8, %ymm2                              #96.4
        vpsubd    %ymm3, %ymm2, %ymm1                           #96.4
        vpmulld   .L_2il0floatpacket.17(%rip), %ymm1, %ymm5     #96.4
        vmovdqu   32(%rsp), %ymm1                               #96.30[spill]
        vpsubd    %ymm5, %ymm4, %ymm4                           #96.4
        vmovdqa   %ymm9, %ymm0                                  #96.30
        vmovdqu   %ymm4, 128(%rdi,%r12)                         #96.4
        vpmulld   %ymm9, %ymm11, %ymm15                         #96.19
..___tag_value_assignImagei32.107:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #96.4
..___tag_value_assignImagei32.108:
        vmovupd   .L_2il0floatpacket.16(%rip), %ymm1            #96.4
        vpaddd    %ymm0, %ymm15, %ymm3                          #96.30
        vpshufd   $49, %ymm3, %ymm2                             #96.4
        vpmuldq   %ymm1, %ymm3, %ymm8                           #96.4
        vpmuldq   %ymm1, %ymm2, %ymm4                           #96.4
        vpsrlq    $32, %ymm8, %ymm5                             #96.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm6      #96.4
        vpsrad    $31, %ymm3, %ymm1                             #96.4
        vpor      %ymm6, %ymm5, %ymm7                           #96.4
        vpaddd    %ymm3, %ymm7, %ymm8                           #96.4
        vpsrad    $7, %ymm8, %ymm2                              #96.4
        vpsubd    %ymm1, %ymm2, %ymm4                           #96.4
        vmovdqu   224(%rsp), %ymm1                              #96.30[spill]
        vpmulld   .L_2il0floatpacket.17(%rip), %ymm4, %ymm5     #96.4
        vpsubd    %ymm5, %ymm3, %ymm3                           #96.4
        vmovdqa   %ymm9, %ymm0                                  #96.30
        vmovdqu   %ymm3, 160(%rdi,%r12)                         #96.4
        vpmulld   %ymm9, %ymm10, %ymm15                         #96.19
..___tag_value_assignImagei32.110:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #96.4
..___tag_value_assignImagei32.111:
        vmovupd   .L_2il0floatpacket.16(%rip), %ymm3            #96.4
        vpaddd    %ymm0, %ymm15, %ymm8                          #96.30
        vpshufd   $49, %ymm8, %ymm1                             #96.4
        vpmuldq   %ymm3, %ymm8, %ymm2                           #96.4
        vpmuldq   %ymm3, %ymm1, %ymm4                           #96.4
        vpsrlq    $32, %ymm2, %ymm5                             #96.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm4, %ymm6      #96.4
        vpsrad    $31, %ymm8, %ymm3                             #96.4
        vpor      %ymm6, %ymm5, %ymm7                           #96.4
        vpaddd    %ymm8, %ymm7, %ymm2                           #96.4
        vpsrad    $7, %ymm2, %ymm1                              #96.4
        vpsubd    %ymm3, %ymm1, %ymm4                           #96.4
        vmovdqu   192(%rsp), %ymm1                              #96.30[spill]
        vpmulld   .L_2il0floatpacket.17(%rip), %ymm4, %ymm5     #96.4
        vpsubd    %ymm5, %ymm8, %ymm8                           #96.4
        vmovdqa   %ymm9, %ymm0                                  #96.30
        vmovdqu   %ymm8, 192(%rdi,%r12)                         #96.4
        vpmulld   64(%rsp), %ymm9, %ymm15                       #96.19[spill]
..___tag_value_assignImagei32.113:
        call      *__svml_idiv8_l9@GOTPCREL(%rip)               #96.4
..___tag_value_assignImagei32.114:
        vmovupd   .L_2il0floatpacket.16(%rip), %ymm8            #96.4
        vpaddd    %ymm0, %ymm15, %ymm2                          #96.30
        vpshufd   $49, %ymm2, %ymm0                             #96.4
        vpmuldq   %ymm8, %ymm2, %ymm9                           #96.4
        vpmuldq   %ymm8, %ymm0, %ymm1                           #96.4
        vpsrlq    $32, %ymm9, %ymm3                             #96.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm1, %ymm4      #96.4
        vpsrad    $31, %ymm2, %ymm9                             #96.4
        vpor      %ymm4, %ymm3, %ymm5                           #96.4
        vpaddd    %ymm2, %ymm5, %ymm6                           #96.4
        vpsrad    $7, %ymm6, %ymm7                              #96.4
        vpsubd    %ymm9, %ymm7, %ymm15                          #96.4
        vpmulld   .L_2il0floatpacket.17(%rip), %ymm15, %ymm0    #96.4
        vpsubd    %ymm0, %ymm2, %ymm2                           #96.4
        vmovdqu   %ymm2, 224(%rdi,%r12)                         #96.4
        addq      $272, %rdi                                    #92.2
        cmpl      $64, %esi                                     #92.2
        jb        ..B5.2        # Prob 98%                      #92.2
                                # LOE rbx rdi r12 r13 r14 r15 esi ymm8 ymm10 ymm11 ymm12 ymm13 ymm14
..B5.3:                         # Preds ..B5.2
                                # Execution count [1.00e+00]
        vzeroupper                                              #99.1
        addq      $312, %rsp                                    #99.1
	.cfi_restore 12
        popq      %r12                                          #99.1
        movq      %rbp, %rsp                                    #99.1
        popq      %rbp                                          #99.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
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
..___tag_value_assignMatrixi32.120:
..L121:
                                                        #103.1
        xorl      %edx, %edx                                    #105.2
        vmovdqu   .L_2il0floatpacket.1(%rip), %ymm0             #110.4
        xorl      %eax, %eax                                    #105.2
        vmovdqu   .L_2il0floatpacket.2(%rip), %ymm9             #110.4
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm1             #110.4
        vpaddd    %ymm0, %ymm9, %ymm8                           #110.4
        vpaddd    %ymm0, %ymm8, %ymm7                           #110.4
        vpaddd    %ymm0, %ymm7, %ymm6                           #110.4
        vpaddd    %ymm0, %ymm6, %ymm5                           #110.4
        vpaddd    %ymm0, %ymm5, %ymm4                           #110.4
        vpaddd    %ymm0, %ymm4, %ymm3                           #110.4
        vpaddd    %ymm0, %ymm3, %ymm2                           #110.4
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9
..B6.2:                         # Preds ..B6.2 ..B6.1
                                # Execution count [6.40e+01]
        vmovd     %edx, %xmm0                                   #105.19
        incl      %edx                                          #105.2
        vpbroadcastd %xmm0, %ymm0                               #105.19
        vpmulld   %ymm9, %ymm0, %ymm11                          #110.17
        vpshufd   $49, %ymm11, %ymm12                           #110.4
        vpmuldq   %ymm1, %ymm11, %ymm13                         #110.4
        vpmuldq   %ymm1, %ymm12, %ymm14                         #110.4
        vpsrlq    $32, %ymm13, %ymm15                           #110.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm14, %ymm10    #110.4
        vpsrad    $31, %ymm11, %ymm14                           #110.4
        vpor      %ymm10, %ymm15, %ymm12                        #110.4
        vpsrad    $6, %ymm12, %ymm13                            #110.4
        vpsubd    %ymm14, %ymm13, %ymm15                        #110.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm15, %ymm10    #110.4
        vpsubd    %ymm10, %ymm11, %ymm11                        #110.4
        vpmulld   %ymm0, %ymm8, %ymm10                          #110.17
        vmovdqu   %ymm11, (%rax,%rdi)                           #110.4
        vpshufd   $49, %ymm10, %ymm11                           #110.4
        vpmuldq   %ymm1, %ymm10, %ymm12                         #110.4
        vpmuldq   %ymm1, %ymm11, %ymm13                         #110.4
        vpsrlq    $32, %ymm12, %ymm14                           #110.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm13, %ymm15    #110.4
        vpsrad    $31, %ymm10, %ymm13                           #110.4
        vpor      %ymm15, %ymm14, %ymm11                        #110.4
        vpsrad    $6, %ymm11, %ymm12                            #110.4
        vpsubd    %ymm13, %ymm12, %ymm14                        #110.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm14, %ymm15    #110.4
        vpsubd    %ymm15, %ymm10, %ymm10                        #110.4
        vpmulld   %ymm0, %ymm7, %ymm15                          #110.17
        vmovdqu   %ymm10, 32(%rax,%rdi)                         #110.4
        vpshufd   $49, %ymm15, %ymm10                           #110.4
        vpmuldq   %ymm1, %ymm15, %ymm11                         #110.4
        vpmuldq   %ymm1, %ymm10, %ymm12                         #110.4
        vpsrlq    $32, %ymm11, %ymm13                           #110.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm12, %ymm14    #110.4
        vpsrad    $31, %ymm15, %ymm12                           #110.4
        vpor      %ymm14, %ymm13, %ymm10                        #110.4
        vpsrad    $6, %ymm10, %ymm11                            #110.4
        vpsubd    %ymm12, %ymm11, %ymm13                        #110.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm13, %ymm14    #110.4
        vpsubd    %ymm14, %ymm15, %ymm15                        #110.4
        vpmulld   %ymm0, %ymm6, %ymm14                          #110.17
        vpshufd   $49, %ymm14, %ymm10                           #110.4
        vmovdqu   %ymm15, 64(%rax,%rdi)                         #110.4
        vpmuldq   %ymm1, %ymm14, %ymm11                         #110.4
        vpmuldq   %ymm1, %ymm10, %ymm12                         #110.4
        vpsrlq    $32, %ymm11, %ymm13                           #110.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm12, %ymm15    #110.4
        vpsrad    $31, %ymm14, %ymm12                           #110.4
        vpor      %ymm15, %ymm13, %ymm10                        #110.4
        vpsrad    $6, %ymm10, %ymm11                            #110.4
        vpsubd    %ymm12, %ymm11, %ymm13                        #110.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm13, %ymm15    #110.4
        vpmulld   %ymm0, %ymm5, %ymm13                          #110.17
        vpshufd   $49, %ymm13, %ymm10                           #110.4
        vpsubd    %ymm15, %ymm14, %ymm14                        #110.4
        vpmuldq   %ymm1, %ymm13, %ymm11                         #110.4
        vpmuldq   %ymm1, %ymm10, %ymm12                         #110.4
        vmovdqu   %ymm14, 96(%rax,%rdi)                         #110.4
        vpsrlq    $32, %ymm11, %ymm14                           #110.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm12, %ymm15    #110.4
        vpsrad    $31, %ymm13, %ymm12                           #110.4
        vpor      %ymm15, %ymm14, %ymm10                        #110.4
        vpsrad    $6, %ymm10, %ymm11                            #110.4
        vpsubd    %ymm12, %ymm11, %ymm14                        #110.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm14, %ymm15    #110.4
        vpmulld   %ymm0, %ymm4, %ymm12                          #110.17
        vpsubd    %ymm15, %ymm13, %ymm13                        #110.4
        vpshufd   $49, %ymm12, %ymm10                           #110.4
        vmovdqu   %ymm13, 128(%rax,%rdi)                        #110.4
        vpmuldq   %ymm1, %ymm12, %ymm11                         #110.4
        vpmuldq   %ymm1, %ymm10, %ymm13                         #110.4
        vpsrlq    $32, %ymm11, %ymm14                           #110.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm13, %ymm15    #110.4
        vpsrad    $31, %ymm12, %ymm13                           #110.4
        vpor      %ymm15, %ymm14, %ymm10                        #110.4
        vpsrad    $6, %ymm10, %ymm11                            #110.4
        vpsubd    %ymm13, %ymm11, %ymm14                        #110.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm14, %ymm15    #110.4
        vpmulld   %ymm0, %ymm3, %ymm11                          #110.17
        vpsubd    %ymm15, %ymm12, %ymm12                        #110.4
        vpshufd   $49, %ymm11, %ymm10                           #110.4
        vmovdqu   %ymm12, 160(%rax,%rdi)                        #110.4
        vpmuldq   %ymm1, %ymm11, %ymm12                         #110.4
        vpmuldq   %ymm1, %ymm10, %ymm13                         #110.4
        vpsrlq    $32, %ymm12, %ymm14                           #110.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm13, %ymm15    #110.4
        vpsrad    $31, %ymm11, %ymm13                           #110.4
        vpor      %ymm15, %ymm14, %ymm10                        #110.4
        vpsrad    $6, %ymm10, %ymm12                            #110.4
        vpsubd    %ymm13, %ymm12, %ymm14                        #110.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm14, %ymm15    #110.4
        vpmulld   %ymm2, %ymm0, %ymm10                          #110.17
        vpsubd    %ymm15, %ymm11, %ymm11                        #110.4
        vpshufd   $49, %ymm10, %ymm0                            #110.4
        vmovdqu   %ymm11, 192(%rax,%rdi)                        #110.4
        vpmuldq   %ymm1, %ymm10, %ymm11                         #110.4
        vpmuldq   %ymm1, %ymm0, %ymm0                           #110.4
        vpsrlq    $32, %ymm11, %ymm12                           #110.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm0, %ymm13     #110.4
        vpsrad    $31, %ymm10, %ymm0                            #110.4
        vpor      %ymm13, %ymm12, %ymm14                        #110.4
        vpsrad    $6, %ymm14, %ymm15                            #110.4
        vpsubd    %ymm0, %ymm15, %ymm11                         #110.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm11, %ymm12    #110.4
        vpsubd    %ymm12, %ymm10, %ymm10                        #110.4
        vmovdqu   %ymm10, 224(%rax,%rdi)                        #110.4
        addq      $256, %rax                                    #105.2
        cmpl      $64, %edx                                     #105.2
        jb        ..B6.2        # Prob 98%                      #105.2
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9
..B6.3:                         # Preds ..B6.2
                                # Execution count [1.00e+00]
        vzeroupper                                              #113.1
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
..___tag_value_assignMatrixi16.123:
..L124:
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
..___tag_value_assignImagei16.138:
..L139:
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
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_imageTranspose.153:
..L154:
                                                        #140.1
        pushq     %rbx                                          #140.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        movq      %rdi, %r9                                     #140.1
        xorl      %edi, %edi                                    #143.2
        movq      %r9, %rsi                                     #143.2
        xorl      %r8d, %r8d                                    #143.2
                                # LOE rbp rsi rdi r8 r9 r12 r13 r14 r15
..B9.2:                         # Preds ..B9.10 ..B9.1 ..B9.8 ..B9.3
                                # Execution count [6.40e+01]
        incq      %rdi                                          #143.2
        addq      $268, %rsi                                    #143.2
        cmpq      $64, %rdi                                     #143.2
        jae       ..B9.13       # Prob 1%                       #143.2
                                # LOE rbp rsi rdi r8 r9 r12 r13 r14 r15
..B9.3:                         # Preds ..B9.2
                                # Execution count [6.30e+01]
        testq     %rdi, %rdi                                    #144.14
        jle       ..B9.2        # Prob 50%                      #144.14
                                # LOE rbp rsi rdi r8 r9 r12 r13 r14 r15
..B9.4:                         # Preds ..B9.3
                                # Execution count [5.76e+01]
        movslq    %edi, %rbx                                    #144.3
        cmpq      $8, %rbx                                      #144.3
        jl        ..B9.12       # Prob 10%                      #144.3
                                # LOE rbx rbp rsi rdi r8 r9 r12 r13 r14 r15
..B9.5:                         # Preds ..B9.4
                                # Execution count [5.76e+01]
        movl      %ebx, %ecx                                    #144.3
        movq      %r8, %r10                                     #144.3
        andl      $-8, %ecx                                     #144.3
        movq      %rsi, %rdx                                    #144.3
        movslq    %ecx, %rcx                                    #144.3
        lea       (%r9,%rdi,4), %rax                            #146.14
        vmovups   .L_2il0floatpacket.18(%rip), %ymm0            #146.14
        .align    16,0x90
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r10 r12 r13 r14 r15 ymm0
..B9.6:                         # Preds ..B9.6 ..B9.5
                                # Execution count [3.20e+02]
        vmovups   (%rdx), %ymm3                                 #145.11
        addq      $8, %r10                                      #144.3
        vxorps    %ymm2, %ymm2, %ymm2                           #146.14
        vpcmpeqd  %ymm1, %ymm1, %ymm1                           #146.14
        vgatherdps %ymm1, (%rax,%ymm0,4), %ymm2                 #146.14
        vmovups   %ymm2, (%rdx)                                 #146.4
        addq      $32, %rdx                                     #144.3
        vextractf128 $1, %ymm3, %xmm4                           #147.4
        vmovss    %xmm3, (%rax)                                 #147.4
        vmovss    %xmm4, 1072(%rax)                             #147.4
        vextractps $1, %xmm3, 268(%rax)                         #147.4
        vextractps $2, %xmm3, 536(%rax)                         #147.4
        vextractps $3, %xmm3, 804(%rax)                         #147.4
        vextractps $1, %xmm4, 1340(%rax)                        #147.4
        vextractps $2, %xmm4, 1608(%rax)                        #147.4
        vextractps $3, %xmm4, 1876(%rax)                        #147.4
        addq      $2144, %rax                                   #144.3
        cmpq      %rcx, %r10                                    #144.3
        jb        ..B9.6        # Prob 82%                      #144.3
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r10 r12 r13 r14 r15 ymm0
..B9.8:                         # Preds ..B9.6 ..B9.12
                                # Execution count [6.40e+01]
        imulq     $268, %rcx, %rdx                              #144.3
        cmpq      %rbx, %rcx                                    #144.3
        jae       ..B9.2        # Prob 9%                       #144.3
                                # LOE rdx rcx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15
..B9.9:                         # Preds ..B9.8
                                # Execution count [5.76e+01]
        lea       (%r9,%rdi,4), %r10                            #146.14
        addq      %r10, %rdx                                    #146.14
        lea       (%rsi,%rcx,4), %rax                           #145.11
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15
..B9.10:                        # Preds ..B9.10 ..B9.9
                                # Execution count [3.20e+02]
        movl      (%rdx), %r10d                                 #146.14
        incq      %rcx                                          #144.3
        movl      (%rax), %r11d                                 #145.11
        movl      %r10d, (%rax)                                 #146.4
        addq      $4, %rax                                      #144.3
        movl      %r11d, (%rdx)                                 #147.4
        addq      $268, %rdx                                    #144.3
        cmpq      %rbx, %rcx                                    #144.3
        jb        ..B9.10       # Prob 82%                      #144.3
        jmp       ..B9.2        # Prob 100%                     #144.3
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15
..B9.12:                        # Preds ..B9.4
                                # Execution count [5.76e+00]: Infreq
        movq      %r8, %rcx                                     #144.3
        jmp       ..B9.8        # Prob 100%                     #144.3
                                # LOE rcx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15
..B9.13:                        # Preds ..B9.2
                                # Execution count [1.00e+00]: Infreq
        vzeroupper                                              #149.1
	.cfi_restore 3
        popq      %rbx                                          #149.1
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
..___tag_value_assignMatrixui16.160:
..L161:
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
..___tag_value_assignMatrixi8.163:
..L164:
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
..___tag_value_assignArrayi32.178:
..L179:
                                                        #178.1
        movq      %rdi, %r8                                     #180.3
        andq      $31, %r8                                      #180.3
        testl     %r8d, %r8d                                    #180.3
        je        ..B12.6       # Prob 50%                      #180.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B12.2:                        # Preds ..B12.1
                                # Execution count [1.00e+00]
        xorl      %ecx, %ecx                                    #180.3
        xorl      %esi, %esi                                    #180.3
        testl     $3, %r8d                                      #180.3
        jne       ..B12.9       # Prob 10%                      #180.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d
..B12.3:                        # Preds ..B12.2
                                # Execution count [1.00e+00]
        negl      %r8d                                          #180.3
        addl      $32, %r8d                                     #180.3
        shrl      $2, %r8d                                      #180.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d
..B12.4:                        # Preds ..B12.4 ..B12.3
                                # Execution count [4.10e+03]
        movl      $274877907, %eax                              #184.17
        lea       1234(%rcx), %r9d                              #184.4
        imull     %ecx, %r9d                                    #184.14
        incl      %ecx                                          #180.3
        imull     %r9d                                          #184.17
        movl      %r9d, %r10d                                   #184.17
        sarl      $6, %edx                                      #184.17
        sarl      $31, %r10d                                    #184.17
        subl      %r10d, %edx                                   #184.17
        imull     $-1000, %edx, %r11d                           #184.17
        addl      %r11d, %r9d                                   #184.17
        movl      %r9d, (%rdi,%rsi,4)                           #184.4
        incq      %rsi                                          #180.3
        cmpl      %r8d, %ecx                                    #180.3
        jb        ..B12.4       # Prob 99%                      #180.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d
..B12.6:                        # Preds ..B12.4 ..B12.1
                                # Execution count [1.00e+00]
        movl      %r8d, %ecx                                    #180.3
        lea       1234(%r8), %eax                               #184.4
        negl      %ecx                                          #180.3
        vmovd     %r8d, %xmm3                                   #184.4
        andl      $7, %ecx                                      #180.3
        negl      %ecx                                          #180.3
        vmovd     %eax, %xmm0                                   #184.4
        addl      $4096, %ecx                                   #180.3
        vpbroadcastd %xmm0, %ymm2                               #184.4
        movl      %ecx, %eax                                    #180.3
        vpbroadcastd %xmm3, %ymm4                               #184.4
        vpaddd    .L_2il0floatpacket.19(%rip), %ymm2, %ymm0     #184.4
        vpaddd    .L_2il0floatpacket.19(%rip), %ymm4, %ymm3     #184.4
        vmovdqu   .L_2il0floatpacket.1(%rip), %ymm1             #184.4
        vmovupd   .L_2il0floatpacket.4(%rip), %ymm2             #184.4
        movl      %r8d, %r8d                                    #180.3
                                # LOE rax rbx rbp rdi r8 r12 r13 r14 r15 ecx ymm0 ymm1 ymm2 ymm3
..B12.7:                        # Preds ..B12.7 ..B12.6
                                # Execution count [4.10e+03]
        vpmulld   %ymm3, %ymm0, %ymm13                          #184.14
        vpshufd   $49, %ymm13, %ymm4                            #184.4
        vpsrad    $31, %ymm13, %ymm11                           #184.4
        vpaddd    %ymm1, %ymm0, %ymm0                           #184.4
        vpaddd    %ymm1, %ymm3, %ymm3                           #184.4
        vpmuldq   %ymm2, %ymm13, %ymm5                          #184.4
        vpmuldq   %ymm2, %ymm4, %ymm6                           #184.4
        vpsrlq    $32, %ymm5, %ymm7                             #184.4
        vpand     .L_2il0floatpacket.5(%rip), %ymm6, %ymm8      #184.4
        vpor      %ymm8, %ymm7, %ymm9                           #184.4
        vpsrad    $6, %ymm9, %ymm10                             #184.4
        vpsubd    %ymm11, %ymm10, %ymm12                        #184.4
        vpmulld   .L_2il0floatpacket.6(%rip), %ymm12, %ymm14    #184.4
        vpsubd    %ymm14, %ymm13, %ymm15                        #184.4
        vmovdqu   %ymm15, (%rdi,%r8,4)                          #184.4
        addq      $8, %r8                                       #180.3
        cmpq      %rax, %r8                                     #180.3
        jb        ..B12.7       # Prob 99%                      #180.3
                                # LOE rax rbx rbp rdi r8 r12 r13 r14 r15 ecx ymm0 ymm1 ymm2 ymm3
..B12.8:                        # Preds ..B12.7
                                # Execution count [9.00e-01]
        cmpl      $4096, %ecx                                   #180.3
        jae       ..B12.12      # Prob 0%                       #180.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 ecx
..B12.9:                        # Preds ..B12.8 ..B12.2
                                # Execution count [1.00e+00]
        movl      %ecx, %r8d                                    #184.4
        lea       1234(%rcx), %esi                              #184.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 ecx esi
..B12.10:                       # Preds ..B12.10 ..B12.9
                                # Execution count [4.10e+03]
        movl      %esi, %r9d                                    #184.14
        movl      $274877907, %eax                              #184.17
        imull     %ecx, %r9d                                    #184.14
        incl      %ecx                                          #180.3
        imull     %r9d                                          #184.17
        movl      %r9d, %r10d                                   #184.17
        incl      %esi                                          #180.3
        sarl      $6, %edx                                      #184.17
        sarl      $31, %r10d                                    #184.17
        subl      %r10d, %edx                                   #184.17
        imull     $-1000, %edx, %r11d                           #184.17
        addl      %r11d, %r9d                                   #184.17
        movl      %r9d, (%rdi,%r8,4)                            #184.4
        incq      %r8                                           #180.3
        cmpl      $4096, %ecx                                   #180.3
        jb        ..B12.10      # Prob 99%                      #180.3
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 ecx esi
..B12.12:                       # Preds ..B12.10 ..B12.8
                                # Execution count [1.00e+00]
        vzeroupper                                              #189.1
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
..___tag_value_savefloatMatrixFileForOutPuts.181:
..L182:
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
..___tag_value_savefloatMatrixFileName.202:
..L203:
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
..___tag_value_saveintMatrixFileForOutPuts.223:
..L224:
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
..___tag_value_saveintMatrixFileName.244:
..L245:
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
	.align 32
	.align 32
.L_2il0floatpacket.1:
	.long	0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,32
	.align 32
.L_2il0floatpacket.2:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,32
	.align 32
.L_2il0floatpacket.3:
	.long	0x000003e8,0x000003e8,0x000003e8,0x000003e8,0x000003e8,0x000003e8,0x000003e8,0x000003e8
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,32
	.align 32
.L_2il0floatpacket.4:
	.long	0x10624dd3,0x10624dd3,0x10624dd3,0x10624dd3,0x10624dd3,0x10624dd3,0x10624dd3,0x10624dd3
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,32
	.align 32
.L_2il0floatpacket.5:
	.long	0x00000000,0xffffffff,0x00000000,0xffffffff,0x00000000,0xffffffff,0x00000000,0xffffffff
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,32
	.align 32
.L_2il0floatpacket.6:
	.long	0x000003e8,0x000003e8,0x000003e8,0x000003e8,0x000003e8,0x000003e8,0x000003e8,0x000003e8
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,32
	.align 32
.L_2il0floatpacket.7:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,32
	.align 32
.L_2il0floatpacket.10:
	.long	0x000000e6,0x000000e6,0x000000e6,0x000000e6,0x000000e6,0x000000e6,0x000000e6,0x000000e6
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,32
	.align 32
.L_2il0floatpacket.11:
	.long	0x88e368f1,0x3ee4f8b5,0x88e368f1,0x3ee4f8b5,0x88e368f1,0x3ee4f8b5,0x88e368f1,0x3ee4f8b5
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,32
	.align 32
.L_2il0floatpacket.12:
	.long	0x473c1ab7,0x473c1ab7,0x473c1ab7,0x473c1ab7,0x473c1ab7,0x473c1ab7,0x473c1ab7,0x473c1ab7
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,32
	.align 32
.L_2il0floatpacket.13:
	.long	0x000000e6,0x000000e6,0x000000e6,0x000000e6,0x000000e6,0x000000e6,0x000000e6,0x000000e6
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,32
	.align 32
.L_2il0floatpacket.14:
	.long	0x916872b0,0x3fbf7ced,0x916872b0,0x3fbf7ced,0x916872b0,0x3fbf7ced,0x916872b0,0x3fbf7ced
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,32
	.align 32
.L_2il0floatpacket.15:
	.long	0x000000ff,0x000000ff,0x000000ff,0x000000ff,0x000000ff,0x000000ff,0x000000ff,0x000000ff
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,32
	.align 32
.L_2il0floatpacket.16:
	.long	0x80808081,0x80808081,0x80808081,0x80808081,0x80808081,0x80808081,0x80808081,0x80808081
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,32
	.align 32
.L_2il0floatpacket.17:
	.long	0x000000ff,0x000000ff,0x000000ff,0x000000ff,0x000000ff,0x000000ff,0x000000ff,0x000000ff
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,32
	.align 32
.L_2il0floatpacket.18:
	.long	0x00000000,0x00000043,0x00000086,0x000000c9,0x0000010c,0x0000014f,0x00000192,0x000001d5
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,32
	.align 32
.L_2il0floatpacket.19:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.19,@object
	.size	.L_2il0floatpacket.19,32
	.align 8
.L_2il0floatpacket.8:
	.long	0x916872b0,0x3fbf7ced
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,8
	.align 8
.L_2il0floatpacket.9:
	.long	0x88e368f1,0x3ef4f8b5
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	826364500
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,5
	.space 3, 0x00 	# pad
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
	.word	25637
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
	.comm t,16384,32
	.comm c_tra,16384,32
	.section .note.GNU-stack, ""
# End
