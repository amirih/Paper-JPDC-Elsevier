//libraries
#include <stdio.h>
#include <time.h>
#include <sched.h> 
//#include <immintrin.h>
#include <x86intrin.h>
//#include <simpleintrin.h>
#define singleCore assignToThisCore(2,3);// -D _GNU_SOURCE should be added to command line//#define singleCore assignToThisCore(3);// -D _GNU_SOURCE should be added to command line

//loops and iterations:
#define MAX1 128
#define MAX2 MAX1
#define MAX3 MAX1
#define SCALE 1000
#define NUM_LOOP 100000000
#define OVERAL_TIME 59999999999
#include <sinusee-utils.h>

//for assigning a core to the program I use this //void assignToThisCore(int core_id1)
cpu_set_t mask;
inline void assignToThisCore(int core_id1, int core_id2)
{
	CPU_ZERO(&mask);
	CPU_SET(core_id1, &mask);
	CPU_SET(core_id2, &mask);
	sched_setaffinity(0, sizeof(mask), &mask);

}
/*
// my horizontal addidtion for sad 
short int tempi16[16] __attribute__(( aligned(32))) ;
inline int _mm_haddsad_si128(__m128i a){
	//_mm_store_si128((__m128i *)&temp8i16[0], a);
	//return (temp8i16[0]+temp8i16[4]);
	 __m128i hsum = _mm_add_epi64(a, _mm_bsrli_si128(a, 8));
 return _mm_cvtsi128_si32(hsum);	
}
inline int _mm256_haddsad_si256(__m256i a){
	_mm256_store_si256((__m256i *)&tempi16[0], a);
	return (tempi16[0]+tempi16[4]+tempi16[8]+tempi16[12]);
}

 * FROM STACK godbot
 * 
 * #include <x86intrin.h>

void add(int* a, int* b, int* c, int N) {
    #pragma omp parallel for schedule(static)
    for(int i = 0; i < N/4; i++) {
        __m128i v1 = _mm_load_si128((__m128i*)&a[4*i]);
        __m128i v2 = _mm_load_si128((__m128i*)&b[4*i]);
        _mm_stream_si128((__m128i*)&c[4*i], _mm_add_epi32(v1,v2));
    }
}
* */
