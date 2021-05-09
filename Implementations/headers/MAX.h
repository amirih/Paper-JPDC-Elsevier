//libraries
//#include <omp.h>
#include <stdio.h>
#include <time.h>
#include <sched.h> 
//#include <immintrin.h>
#include <x86intrin.h>
//#include <simpleintrin.h>
#define singleCore assignToThisCore12(2,3);// -D _GNU_SOURCE should be added to command line//#define singleCore assignToThisCore(3);// -D _GNU_SOURCE should be added to command line
//isolcpus=2,3 as a kernel parameter.

//loops and iterations:
#define MAX1 512
#define MAX2 MAX1
#define MAX3 MAX1
#define SCALE 1000
#define NUM_LOOP 999999
#define OVERAL_TIME 9999999999
#include <sinusee-utils.h>
//for assigning a core to the program I use this //void assignToThisCore(int core_id1)
cpu_set_t mask;

void assignToThisCore12(int core_id1, int core_id2)
{
	CPU_ZERO(&mask);
	CPU_SET(core_id1, &mask);
	CPU_SET(core_id2, &mask);
	sched_setaffinity(0, sizeof(mask), &mask);
	//clock_gettime(CLOCK_MONOTONIC,&start);
    //__asm__ __volatile__ ( "vzeroupper" : : : );
}



//assign data to matrices :
//assign to a float matrix
void assignMatrixf32(float a[MAX1][MAX2])
{
	int i,j;
	for(i=0; i<MAX1; i++){
		for(j=0; j<MAX2; j++){
			
			//assign a number between 0.00005 and 16781312.00005
			// 2^32 = 4,294,967,296
			a[i][j] = (((i*j) + (i/(j+1)))%SCALE) + 0.123;
		}
	}
	//printf("%f",a[4095][4095]);
}
//assign to an integer matrix
void assignMatrixi32(int a[MAX1][MAX2])
{
	int i,j;
	for(i=0; i<MAX1; i++){
		for(j=0; j<MAX2; j++){
			
			//assign a number between 0 and 16,777,216
			// 2^32 = 4,294,967,296
			a[i][j] = (i*j)%SCALE;
		}
	}
}
//assign to a unsigned short integer matrix 
void assignMatrixi16(short int a[MAX1][MAX2])
{
	int i,j;
	for(i=0; i<MAX1; i++){
		for(j=0; j<MAX2; j++){
			
			//assign a number between 0 and 255
			//2^16 = 65,536
			a[i][j] = ((i*j)%256) + rand()%10;// + rand()%2)%256;
		}
	}
}
//assign to a unsigned short integer matrix 
void assignMatrixui16(unsigned short int a[MAX1][MAX2])
{
	int i,j;
	for(i=0; i<MAX1; i++){
		for(j=0; j<MAX2; j++){
			
			//assign a number between 0 and 255
			//2^16 = 65,536
			a[i][j] = (i*j )%256;
		}
	}
}
//assign to a unsigned char integer matrix
void assignMatrixi8(unsigned char a[MAX1][MAX2])
{
	int i,j;
	for(i=0; i<MAX1; i++){
		for(j=0; j<MAX2; j++){
			
			//assign a number between 0 and 255
			//2^8 = 256
			a[i][j] = ((i*j)%256+ rand()%2)%256;
		}
	}
}
//assign for FIR filter input is an array 
void assignArrayi32(int a[MAX1])
{
	int i , j = 1234;
		for(i=0; i<MAX1*MAX1; i++){
			
			//assign a number between 0 and 5,054,464
			// 2^32 = 4,294,967,296
			a[i] = (i*j)%SCALE;
			j++;
			
		}
	
}
/*int __attribute__(( aligned(16))) temp4[4]  ;
inline int _mm_hadd2_epi32(__m128i a)
{
	_mm_store_si128((__m128i *)&temp4[0] ,a);
	return (temp8[0]+temp8[1]+temp8[2]+temp8[3]);
	
}*/


inline __m256i _mm256_hadd3x31_epi16(__m256i a)
{
	__m256i a1, a2, sum_v;	
	a1 = _mm256_bsrli_epi128(a,2); //Shift 128 bit lanes in to right by 2 bytes while shifting in zeros. Fortunately the zeros are in the positions that we don't need
	a2 = _mm256_permutevar8x32_epi32(a,_mm256_set_epi32(7,7,6,5,4,3,2,1)); // Shift right by 4 bytes
	return _mm256_add_epi16(a, _mm256_add_epi16(a1, a2));
}
inline __m256i _mm256_hadd3x32_epi16(__m256i a)
{
	__m256i a1, a2, sum_v;
	
	a1 = _mm256_bslli_epi128(a,2);//printVeci16(a1); //shift a to left 1 
	a2 = _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 1 * 2); // Shift right by 1 

	return _mm256_add_epi16(a, _mm256_add_epi16(a1, a2));
}
inline __m256i _mm256_hadd3x33_epi16(__m256i a)
{
	__m256i a1, a2, sum_v;

	a1 = _mm256_alignr_epi8( a, _mm256_permute2x128_si256(a, a, 1), 7*2);//printVeci162(a1);
	a2 = _mm256_alignr_epi8( a, _mm256_permute2x128_si256(a, a, 1), 6*2);//printVeci162(a2);
	//a2 = _mm256_bsrli_epi128(a1, 2);//printVeci162(a2);
	//a2= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 2 * 2);
	
	//another stack answer start	
	//a1 = _mm256_bsrli_epi128(a,2); //Shift 128 bit lanes in t0 right by 2 bytes while shifting in zeros. Fortunately the zeros are in the positions that we don't need
	//a2 = _mm256_permutevar8x32_epi32(a,_mm256_set_epi32(7,7,6,5,4,3,2,1)); // Shift right by 4 bytes 
	//__m256i sum = _mm256_add_epi16(_mm256_add_epi16(t0,t1),t2);
	//another stack answer end
	return _mm256_add_epi16(a, _mm256_add_epi16(a1, a2));
}

/*int t[16] ;
inline __m256i _mm256_div_epi16 (__m256i a , int b){
	
	
	_mm256_store_si256((__m256i *)&t[0] , a);
	t[0]/=b; t[1]/=b; t[2]/=b; t[3]/=b; t[4]/=b; t[5]/=b; t[6]/=b; t[7]/=b;
	t[8]/=b; t[9]/=b; t[10]/=b; t[11]/=b; t[12]/=b; t[13]/=b; t[14]/=b; t[15]/=b;
	return _mm256_load_si256((__m256i *)&t[0]);
	
		
}*/
inline __m256i _mm256_div_epi16 (const __m256i va, const int b)
{
    __m256i vb = _mm256_set1_epi16(32768 / b);
    return _mm256_mulhrs_epi16(va, vb);
}
//__m256i ones =_mm256_set1_epi32(0xffffffff);
 /*inline __m256i _mm256_not_si256 (__m256i a){	 
	 return  _mm256_xor_si256 (a, _mm256_cmpeq_epi32(a,a));	 
 }*/
 inline __m256i _mm256_not_si256 (__m256i a){	 
	 //return  _mm256_xor_si256 (a, _mm256_set1_epi32(0xffffffff));
	 return  _mm256_xor_si256 (a, _mm256_cmpeq_epi32(a,a));	 
 }
// my horizontal addidtion for sad 
short int temp2i16[16] __attribute__(( aligned(32))) ;
inline int _mm_haddsad_si128(__m128i a){
	//_mm_store_si128((__m128i *)&temp8i16[0], a);
	//return (temp8i16[0]+temp8i16[4]);
	 __m128i hsum = _mm_add_epi64(a, _mm_bsrli_si128(a, 8));
 return _mm_cvtsi128_si32(hsum);	
}
inline int _mm256_haddsad_si256(__m256i a){
	_mm256_store_si256((__m256i *)&temp2i16[0], a);
	return (temp2i16[0]+temp2i16[4]+temp2i16[8]+temp2i16[12]);
}

//#include "iacaMarks.h"

//recycle bin
//#define MAX1 192
//#define MAX1 224

//#define MAX1 384
//#define MAX1 448

//#define MAX1 672

//#define MAX1 1600

//#define MAX1 128
//#define MAX1 256
//#define MAX1 512
//#define MAX1 1152
//#define MAX1 1888
//#define MAX1 2016

//FIR 
//#define MAX1 4096*4096

//#define MAX1 128
//#define MAX1 1024
//getting time
//long int numbytes;
//unsigned long long time_program[5];


/*
unsigned cyc_hi = 0 ;
unsigned cyc_lo = 0 ;
void access_counter(unsigned *hi, unsigned *lo)
{
	asm("rdtsc; mov %%edx,%0;mov %%eax,%1"
		 : "=r" (*hi),"=r" (*lo)
*///	 : /*no input */
/*		 : "%edx" , "%eax");
}

void start_counter()
{
	access_counter(&cyc_hi,&cyc_lo);
}
 
 unsigned long long get_counter()
{
	unsigned ncyc_hi,ncyc_lo;
	unsigned hi, lo, borrow;
	unsigned long long temp, result_cycle = 0;

	access_counter(&ncyc_hi,&ncyc_lo);
	lo= ncyc_lo - cyc_lo;
	borrow = cyc_lo > ncyc_lo;
	temp = (unsigned long long )(hi);
	temp = (temp <<= 32);
	result_cycle = (temp +(unsigned long long) lo);
	if (result_cycle < 0)
	{
		printf("error : counter retures nrg. value: %llu\n", result_cycle);
	}
	return result_cycle;
}

float timedifference_msec(struct timeval t0, struct timeval t1)
	{
		return (t1.tv_sec - t0.tv_sec) * 1000.0f + (t1.tv_usec - t0.tv_usec) / 1000.0f;
	}
*/
/*
 * #define begin_rdtsc\
					do{\
						t1_rdtsc=_rdtsc();
			
	#define end_rdtsc\
						t2_rdtsc=_rdtsc();\
						ttotal_rdtsc=t2_rdtsc-t1_rdtsc;\
						if (ttotal_rdtsc<ttbest_rdtsc){\
							ttbest_rdtsc = ttotal_rdtsc;\
							elapsed=(do_while-elapsed_rdtsc);}\
						ttime+=ttotal_rdtsc;\
					}while (elapsed_rdtsc-- && (ttime<overal_time));\
					printf("\nthe best is %lld in %lldth iteration and %lld repetitions\n", ttbest_rdtsc, elapsed, (do_while-elapsed_rdtsc));



#define REP_CODE(X)	X X  X X  X X  X X X  X X  X X  X X X  X X  X X  X X X  X X  X X  X X X  X X  X X  X X X  X X  X X  X 

*/
/* want to change the do_while to for 
 * long long t1_rdtsc, t2_rdtsc, ttotal_rdtsc[do_while], ttbest_rdtsc = 99999999999999999, elapsed,  elapsed_rdtsc=do_while, overal_time = OVERAL_TIME, ttime=0;
int ii=0;
	#define begin_rdtsc\
					do{\
						t1_rdtsc=_rdtsc();
			
	#define end_rdtsc\
						t2_rdtsc=_rdtsc();\
						ttotal_rdtsc[ii]=t2_rdtsc-t1_rdtsc;\
					}while (ii++<do_while);\	
					for(ii=0; ii<do_while; ii++){\
						if (ttotal_rdtsc[ii]<ttbest_rdtsc){\
							ttbest_rdtsc = ttotal_rdtsc[ii];}}\				
					printf("\nthe best is %lld in %lldth iteration anpetitions\n", ttbest_rdtsc, elapsed_rdtsc);
					* */
