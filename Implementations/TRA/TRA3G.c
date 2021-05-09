#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally
#include "immintrin.h"



int  __attribute__(( aligned(32))) A[MAX2][MAX3] 
	, __attribute__(( aligned(32))) A_T[MAX3][MAX2] ;



int main()
{
	singleCore
	assignMatrixi32(A);
	int i, j;
		// variables for vector section
 	int vindexm [8]={0, MAX1, MAX1*2, MAX1*3, MAX1*4, MAX1*5, MAX1*6, MAX1*7 };
 	__m256i vindex = _mm256_load_si256((__m256i *) &vindexm[0]);
 	__m256i vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8;
 					programName="TRA3G";

 	//REP_CODE(
 	begin_rdtsc

		
	for(i=0; i<MAX1;  i+=8){
			for(j=0; j<MAX2;  j+=8){//IACA_START
				
				//loading from columns
				vec1 = _mm256_i32gather_epi32 ((int const *)&A[i][j+0],vindex,4);
				vec2 = _mm256_i32gather_epi32 ((int const *)&A[i][j+1],vindex,4);
				vec3 = _mm256_i32gather_epi32 ((int const *)&A[i][j+2],vindex,4);
				vec4 = _mm256_i32gather_epi32 ((int const *)&A[i][j+3],vindex,4);
				vec5 = _mm256_i32gather_epi32 ((int const *)&A[i][j+4],vindex,4);
				vec6 = _mm256_i32gather_epi32 ((int const *)&A[i][j+5],vindex,4);
				vec7 = _mm256_i32gather_epi32 ((int const *)&A[i][j+6],vindex,4);
				vec8 = _mm256_i32gather_epi32 ((int const *)&A[i][j+7],vindex,4);
				
				//storing to the rows
				_mm256_store_si256((__m256i *)&A_T[j+0][i], vec1);
				_mm256_store_si256((__m256i *)&A_T[j+1][i], vec2);
				_mm256_store_si256((__m256i *)&A_T[j+2][i], vec3);
				_mm256_store_si256((__m256i *)&A_T[j+3][i], vec4);
				_mm256_store_si256((__m256i *)&A_T[j+4][i], vec5);
				_mm256_store_si256((__m256i *)&A_T[j+5][i], vec6);
				_mm256_store_si256((__m256i *)&A_T[j+6][i], vec7);
				_mm256_store_si256((__m256i *)&A_T[j+7][i], vec8);

				
			}//IACA_END//ii++;
		}
				
		end_rdtsc//)
				printf("%d", A_T[MAX1/2][MAX2/2]);

	return 0;
}
