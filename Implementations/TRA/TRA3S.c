#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally



int  __attribute__(( aligned(32))) t[MAX2][MAX3] 
	, __attribute__(( aligned(32))) c_tra[MAX3][MAX2] ;



int main()
{
	singleCore
	int i, j;
	programName="TRA3S";
	assignMatrixi32(t);
	
	__m256i row0, row1, row2, row3, row4, row5, row6, row7;
	__m256i __t0, __t1, __t2, __t3, __t4, __t5, __t6, __t7; //w
	__m256i __tt0, __tt1, __tt2, __tt3, __tt4, __tt5, __tt6, __tt7; //x
	begin_rdtsc
	
	for( i=0;i<MAX2;i+=8){
		for(j=0;j<MAX3;j+=8){//IACA_START
			
			row0 = _mm256_load_si256((__m256i *)&t[i][j]);
			row1 = _mm256_load_si256((__m256i *)&t[i+1][j]);
			row2 = _mm256_load_si256((__m256i *)&t[i+2][j]);
			row3 = _mm256_load_si256((__m256i *)&t[i+3][j]);
			row4 = _mm256_load_si256((__m256i *)&t[i+4][j]);
			row5 = _mm256_load_si256((__m256i *)&t[i+5][j]);
			row6 = _mm256_load_si256((__m256i *)&t[i+6][j]);
			row7 = _mm256_load_si256((__m256i *)&t[i+7][j]);

			
			__m256i va1 = _mm256_permute4x64_epi64(row0, _MM_SHUFFLE(3, 1, 2, 0));
			__m256i vb1 = _mm256_permute4x64_epi64(row1, _MM_SHUFFLE(3, 1, 2, 0));
			__t0 = _mm256_unpacklo_epi32(va1, vb1);
			__t1 = _mm256_unpackhi_epi32(va1, vb1);
			
			__m256i va2 = _mm256_permute4x64_epi64(row2, _MM_SHUFFLE(3, 1, 2, 0));
			__m256i vb2 = _mm256_permute4x64_epi64(row3, _MM_SHUFFLE(3, 1, 2, 0));
			__t2 = _mm256_unpacklo_epi32(va2, vb2);
			__t3 = _mm256_unpackhi_epi32(va2, vb2);
			
			__m256i va3 = _mm256_permute4x64_epi64(row4, _MM_SHUFFLE(3, 1, 2, 0));
			__m256i vb3 = _mm256_permute4x64_epi64(row5, _MM_SHUFFLE(3, 1, 2, 0));
			__t4 = _mm256_unpacklo_epi32(va3, vb3);
			__t5 = _mm256_unpackhi_epi32(va3, vb3);
			
			 va3 = _mm256_permute4x64_epi64(row6, _MM_SHUFFLE(3, 1, 2, 0));
			 vb3 = _mm256_permute4x64_epi64(row7, _MM_SHUFFLE(3, 1, 2, 0));
			__t6 = _mm256_unpacklo_epi32(va3, vb3);
			__t7 = _mm256_unpackhi_epi32(va3, vb3);
			
			 __m256i va4 = _mm256_permute4x64_epi64(__t0, _MM_SHUFFLE(3, 1, 2, 0));
			 __m256i vb4 = _mm256_permute4x64_epi64(__t2, _MM_SHUFFLE(3, 1, 2, 0));
			__tt0 = _mm256_unpacklo_epi64(va4, vb4);
			__tt1 = _mm256_unpackhi_epi64(va4, vb4);
			
			__m256i va5 = _mm256_permute4x64_epi64(__t1, _MM_SHUFFLE(3, 1, 2, 0));
			__m256i vb5 = _mm256_permute4x64_epi64(__t3, _MM_SHUFFLE(3, 1, 2, 0));
			__tt2 = _mm256_unpacklo_epi64(va5, vb5);
			__tt3 = _mm256_unpackhi_epi64(va5, vb5);
			
			__m256i va6 = _mm256_permute4x64_epi64(__t4, _MM_SHUFFLE(3, 1, 2, 0));
			__m256i vb6 = _mm256_permute4x64_epi64(__t6, _MM_SHUFFLE(3, 1, 2, 0));
			__tt4 = _mm256_unpacklo_epi64(va6, vb6);
			__tt5 = _mm256_unpackhi_epi64(va6, vb6);
			
			__m256i va7 = _mm256_permute4x64_epi64(__t5, _MM_SHUFFLE(3, 1, 2, 0));
			__m256i vb7 = _mm256_permute4x64_epi64(__t7, _MM_SHUFFLE(3, 1, 2, 0));
			__tt6 = _mm256_unpacklo_epi64(va7, vb7);
			__tt7 = _mm256_unpackhi_epi64(va7, vb7);
			
			row0 = _mm256_permute2x128_si256(__tt0, __tt4, _MM_SHUFFLE(0, 2, 0, 0));
			row1 = _mm256_permute2x128_si256(__tt0, __tt4, _MM_SHUFFLE(0, 3, 0, 1));
			
			row2 = _mm256_permute2x128_si256(__tt1, __tt5, _MM_SHUFFLE(0, 2, 0, 0));
			row3 = _mm256_permute2x128_si256(__tt1, __tt5, _MM_SHUFFLE(0, 3, 0, 1));
			
			row4 = _mm256_permute2x128_si256(__tt2, __tt6, _MM_SHUFFLE(0, 2, 0, 0));
			row5 = _mm256_permute2x128_si256(__tt2, __tt6, _MM_SHUFFLE(0, 3, 0, 1));
			
			row6 = _mm256_permute2x128_si256(__tt3, __tt7, _MM_SHUFFLE(0, 2, 0, 0));
			row7 = _mm256_permute2x128_si256(__tt3, __tt7, _MM_SHUFFLE(0, 3, 0, 1));
			

			_mm256_store_si256((__m256i *)&c_tra[j][i], row0);
			_mm256_store_si256((__m256i *)&c_tra[j+1][i], row1);
			_mm256_store_si256((__m256i *)&c_tra[j+2][i], row2);
			_mm256_store_si256((__m256i *)&c_tra[j+3][i], row3);
			_mm256_store_si256((__m256i *)&c_tra[j+4][i], row4);
			_mm256_store_si256((__m256i *)&c_tra[j+5][i], row5);
			_mm256_store_si256((__m256i *)&c_tra[j+6][i], row6);
			_mm256_store_si256((__m256i *)&c_tra[j+7][i], row7);
			

		 }//IACA_END
		}
		
				
		end_rdtsc
	return 0;
}
