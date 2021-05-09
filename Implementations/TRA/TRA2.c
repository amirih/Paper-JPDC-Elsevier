#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally
#include "nmmintrin.h"




int  __attribute__(( aligned(32))) t[MAX2][MAX3] // ={{1,2,3,4,5,6,7,8},{},{},{},{},{8,7,6,5,4,3,2,1}}
	, __attribute__(( aligned(32))) c_tra[MAX3][MAX2] ;



int main()
{
	singleCore
	assignMatrixi32(t);
	int i, j;
	
 	__m128i row0, row1, row2, row3;
	__m128i __t0, __t1, __t2, __t3;
					programName="TRA2";

	//REP_CODE(
	begin_rdtsc
	
		
	
	for( i=0;i<MAX2;i+=4){
		for(j=0;j<MAX3;j+=4){//IACA_START
			
			row0 = _mm_load_si128((__m128i *)&t[i][j]);
			row1 = _mm_load_si128((__m128i *)&t[i+1][j]);
			row2 = _mm_load_si128((__m128i *)&t[i+2][j]);
			row3 = _mm_load_si128((__m128i *)&t[i+3][j]);
		
			__t0 = _mm_unpacklo_epi32(row0, row1);
			__t1 = _mm_unpacklo_epi32(row2, row3);
			__t2 = _mm_unpackhi_epi32(row0, row1);
			__t3 = _mm_unpackhi_epi32(row2, row3);

			/* Assigning transposed values back into I[0-3] */
			row0 = _mm_unpacklo_epi64(__t0, __t1);
			row1 = _mm_unpackhi_epi64(__t0, __t1);
			row2 = _mm_unpacklo_epi64(__t2, __t3);
			row3 = _mm_unpackhi_epi64(__t2, __t3);
			
			_mm_store_si128((__m128i *)&c_tra[j][i], row0);
			_mm_store_si128((__m128i *)&c_tra[j+1][i], row1);
			_mm_store_si128((__m128i *)&c_tra[j+2][i], row2);
			_mm_store_si128((__m128i *)&c_tra[j+3][i], row3);

			

		 }//IACA_END
		}
		
				
		end_rdtsc//)
				printf("%d", c_tra[MAX1/2][MAX2/2]);

	return 0;
}
