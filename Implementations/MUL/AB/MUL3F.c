#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally
float __attribute__(( aligned(32))) a[MAX1][MAX2]  
    , __attribute__(( aligned(32))) b[MAX2][MAX3] 
    , __attribute__(( aligned(32))) c_result[MAX1][MAX3] ;

int main()
{
	singleCore
	assignMatrixf32(a);
	assignMatrixf32(b);
	programName="MUL3ABFG";
	//variable for loop
	int i, j,k;
	//variable for gather part 
	int vindexm [8]={0, MAX1, MAX1*2, MAX1*3, MAX1*4, MAX1*5, MAX1*6, MAX1*7 };
 	__m256i vindex = _mm256_load_si256((__m256i *) &vindexm[0]);
 	//		
	float  __attribute__(( aligned(32))) temp8[8];
	__m256  sum0_i;
	begin_rdtsc	
	for( i=0;i<MAX1;i++){
		for(j=0;j<MAX3;j++){
			sum0_i = _mm256_setzero_ps();
			for(k=0;k<MAX2;k+=8){//IACA_START
				sum0_i = _mm256_add_ps(sum0_i , _mm256_mul_ps(_mm256_load_ps(&a[i][k]) , _mm256_i32gather_ps (&b[k][j],vindex,4)));
			}//IACA_END
			_mm256_store_ps(&temp8[0], sum0_i);	
			c_result[i][j] = temp8[0]+temp8[1]+temp8[2]+temp8[3]+temp8[4]+temp8[5]+temp8[6]+temp8[7];

		}
	}
	end_rdtsc
	return 0;
}
