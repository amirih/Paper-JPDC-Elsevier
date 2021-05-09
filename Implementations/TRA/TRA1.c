#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally



int __attribute__(( aligned(32))) t[MAX1][MAX2]  
, __attribute__(( aligned(32))) c_tra[MAX3][MAX2] ;

//


int main()
{
	singleCore
	assignMatrixi32(t);
	int i, j;
				programName="TRA1";

	//REP_CODE(
	begin_rdtsc
	
		for( i=0;i<MAX2;i++){
			for(j=0;j<MAX3;j++){//IACA_START
				c_tra[j][i] = t[i][j];

			 }//IACA_END
		}
			
		end_rdtsc//)
		printf("%d", c_tra[MAX1/2][MAX2/2]);
	return 0;
}
