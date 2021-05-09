
#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally



float __attribute__(( aligned(16))) t[MAX1][MAX2]  
	, __attribute__(( aligned(16))) c_tra[MAX3][MAX2] ;


int main()
{
	singleCore
	programName="TRA2F";
	assignMatrixf32(t);
	int i, j;
	begin_rdtsc
		__m128 row0, row1, row2, row3;
		for( i=0;i<MAX2;i+=4)
		  for(j=0;j<MAX3;j+=4){//IACA_START
			row0 = _mm_load_ps(&t[i][j]);
			row1 = _mm_load_ps(&t[i+1][j]);
			row2 = _mm_load_ps(&t[i+2][j]);
			row3 = _mm_load_ps(&t[i+3][j]);
			
			_MM_TRANSPOSE4_PS ( row0, row1, row2, row3);
			
			_mm_store_ps(&c_tra[j  ][i], row0);
			_mm_store_ps(&c_tra[j+1][i], row1);
			_mm_store_ps(&c_tra[j+2][i], row2);
			_mm_store_ps(&c_tra[j+3][i], row3);
		

		 }//IACA_END
		end_rdtsc
				printf("%f", c_tra[MAX1/2][MAX2/2]);

	return 0;
}

