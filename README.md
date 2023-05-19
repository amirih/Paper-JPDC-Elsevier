#Paper-JPDC-Elsevier

Hossein Amiri, Asadollah Shahbahrami,
SIMD programming using Intel vector extensions,
Journal of Parallel and Distributed Computing,
Volume 135,
2020,
Pages 83-100,
ISSN 0743-7315,
https://doi.org/10.1016/j.jpdc.2019.09.012.
(https://www.sciencedirect.com/science/article/pii/S074373151830813X)

Abstract: Single instruction multiple data (SIMD) extensions are one of the most significant capabilities of recent General Purpose Processors (GPPs) which improves the performance of applications with less hardware modification. Each GPP vendor such as HP, Sun, Intel, and AMD has its particular Instruction Set Architecture (ISA) and SIMD micro-architecture with different perspectives. Intel expanded SIMD technologies from hardware and software point of view. It has introduced SIMD technologies such as MultiMedia eXtensions (MMX), Streaming SIMD Extensions (SSE), Advanced Vector eXtensions (AVX), Fused Multiply Add (FMA) and AVX-512 sets. During micro-processors developments path, register width has been extended from 64 bits to 512 bits and number of vector registers has been increased from 8 to 32. Wider registers provide more parallelism ways and more registers reduce extra data movement to the cache memory. In order to gain the advantages of SIMD extensions, many programming approaches have been developed. Compiler Automatic Vectorization (CAV) as an implicit vectorization approach, provides simple and easy SIMDization tools. While, performance improvement of CAV is not always granted, most compilers auto-vectorize simple loops. On the other hand, for explicit vectorization, Intrinsic Programming Model (IPM) provides low-level access to vector registers for SIMDizing. However, programming with IPM requires great amount of expertise especially in low-level architecture feature, thus, choosing the suitable instructions and vectorization methodology for mapping to a certain algorithm is important. Moreover, portability, compatibility, scalability and compiler optimization might limit the advantage of IPM. Our goal in this paper is as follows. First, we provide a review of SIMD technology in general and Intel’s SIMD extensions in particular. Second, some SIMD features of Intel SIMD technologies, MMX, SSEs, AVX, and FMA in terms of ISA, vector width, and SIMD programming tools are comparatively discussed. Third, in order to compare the performance of different auto-vectorizers and IPM approaches using Intel C++ compiler (ICC), GNU Compiler Collection (GCC) and Low Level Virtual Machine (LLVM), we map and implement some representative multimedia kernels on AVX and AVX2 extensions. Finally, our experimental results show that although the performance improvement using IPM approach is higher than CAVs, programmer needs more programming efforts and knows different mapping strategists. Therefore, extending auto-vectorizers abilities to generate more efficient vectorized codes is an important issue in different compilers.
Keywords: Intel; SIMD; AVX; AVX-512; Vectorization

### Warning:
* These codes are not cleaned to eliminate functions overhead and others.
* What do I mean about cleaned code? -> a maintainable code, an easy-to-read code, reviewable code.
