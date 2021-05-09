

#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally




float __attribute__(( aligned(32))) t[MAX1][MAX2]  
, __attribute__(( aligned(32))) c_tra[MAX3][MAX2] ;


int main()
{
	programName="TRA3FS";//that means transpose using 256 bit registers float and shuffle instructions are used

	singleCore
	assignMatrixf32(t);
	int i, j;

	begin_rdtsc
		
		__m256 row0, row1, row2, row3, row4, row5, row6, row7;
		__m256 __t0, __t1, __t2, __t3, __t4, __t5, __t6, __t7; 
		__m256 __tt0, __tt1, __tt2, __tt3, __tt4, __tt5, __tt6, __tt7; 
		for( i=0;i<MAX2;i+=8){
			for(j=0;j<MAX3;j+=8){//IACA_START
				
				row0 = _mm256_load_ps(&t[i][j]);   
				row1 = _mm256_load_ps(&t[i+1][j]); 
				row2 = _mm256_load_ps(&t[i+2][j]);
				row3 = _mm256_load_ps(&t[i+3][j]); 
				row4 = _mm256_load_ps(&t[i+4][j]); 
				row5 = _mm256_load_ps(&t[i+5][j]); 
				row6 = _mm256_load_ps(&t[i+6][j]); 
				row7 = _mm256_load_ps(&t[i+7][j]); 

			__t0 = _mm256_unpacklo_ps(row0, row1); 
			__t1 = _mm256_unpackhi_ps(row0, row1); 
			__t2 = _mm256_unpacklo_ps(row2, row3);
			__t3 = _mm256_unpackhi_ps(row2, row3); 
			__t4 = _mm256_unpacklo_ps(row4, row5);
			__t5 = _mm256_unpackhi_ps(row4, row5); 
			__t6 = _mm256_unpacklo_ps(row6, row7); 
			__t7 = _mm256_unpackhi_ps(row6, row7); 
			 
			 
			__tt0 = _mm256_shuffle_ps(__t0, __t2, _MM_SHUFFLE(1, 0, 1, 0)); 
			__tt1 = _mm256_shuffle_ps(__t0, __t2, _MM_SHUFFLE(3, 2, 3, 2)); 
			__tt2 = _mm256_shuffle_ps(__t1, __t3, _MM_SHUFFLE(1, 0, 1, 0));
			__tt3 = _mm256_shuffle_ps(__t1, __t3, _MM_SHUFFLE(3, 2, 3, 2)); 
			__tt4 = _mm256_shuffle_ps(__t4, __t6, _MM_SHUFFLE(1, 0, 1, 0)); 
			__tt5 = _mm256_shuffle_ps(__t4, __t6, _MM_SHUFFLE(3, 2, 3, 2)); 
			__tt6 = _mm256_shuffle_ps(__t5, __t7, _MM_SHUFFLE(1, 0, 1, 0)); 
			__tt7 = _mm256_shuffle_ps(__t5, __t7, _MM_SHUFFLE(3, 2, 3, 2)); 
		
			 
			row0 = _mm256_permute2f128_ps(__tt0, __tt4, 0x20); 
			
			
			row1 = _mm256_permute2f128_ps(__tt1, __tt5, 0x20); 
			row2 = _mm256_permute2f128_ps(__tt2, __tt6, 0x20); 
			row3 = _mm256_permute2f128_ps(__tt3, __tt7, 0x20); 
			row4 = _mm256_permute2f128_ps(__tt0, __tt4, 0x31); 
			row5 = _mm256_permute2f128_ps(__tt1, __tt5, 0x31); 
			row6 = _mm256_permute2f128_ps(__tt2, __tt6, 0x31); 
			row7 = _mm256_permute2f128_ps(__tt3, __tt7, 0x31); 
			 
				_mm256_store_ps(&c_tra[j][i], row0);
				_mm256_store_ps(&c_tra[j+1][i], row1);
				_mm256_store_ps(&c_tra[j+2][i], row2);
				_mm256_store_ps(&c_tra[j+3][i], row3);
				_mm256_store_ps(&c_tra[j+4][i], row4);
				_mm256_store_ps(&c_tra[j+5][i], row5);
				_mm256_store_ps(&c_tra[j+6][i], row6);
				_mm256_store_ps(&c_tra[j+7][i], row7);
				

			 }//IACA_END
			}
	end_rdtsc
			printf("%f", c_tra[MAX1/2][MAX2/2]);

	return 0;
}

