#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally
#include "iacaMarks.h"





float  __attribute__(( aligned(32))) a[MAX1][MAX2]  
    ,  __attribute__(( aligned(32))) c_result[MAX1][MAX3] 
    ,  __attribute__(( aligned(32))) b[MAX2][MAX3] ;

int main()
{
	singleCore
	assignMatrixf32(a);
	assignMatrixf32(b);
	int i, j, k;
	float temp;
	programName="MUL1F";

	begin_rdtsc
		for( i=0;i<MAX1;i++){
				for(j=0;j<MAX3;j++){
					temp=0;
					for(k=0;k<MAX2;k++)	{IACA_START
						temp += a[i][k] * b[k][j];
					}IACA_END		
					c_result[i][j]= temp;
				}
			}
	end_rdtsc

	return 0;
}
