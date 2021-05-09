#include "MAX.h"


float __attribute__(( aligned(32))) a_tra[MAX2][MAX1], __attribute__(( aligned(32))) a[MAX1][MAX2] ;/*= {{1.01,1.02,1.03,1.04,1.05,1.06,1.07,1.08,1.09,1.10,1.11,1.12,1.13,1.14,1.15,1.16},
																		{2.01,2.02,2.03,2.04,2.05,2.06,2.07,2.08,2.09,2.10,2.11,2.12,2.13,2.14,2.15,2.16},
																		{3.01,3.02,3.03,3.04,3.05,3.06,3.07,3.08,3.09,3.10,3.11,3.12,3.13,3.14,3.15,3.16},
																		{4.01,4.02,4.03,4.04,4.05,4.06,4.07,4.08,4.09,4.10,4.11,4.12,4.13,4.14,4.15,4.16},
																		{5.01,5.02,5.03,5.04,5.05,5.06,5.07,5.08,5.09,5.10,5.11,5.12,5.13,5.14,5.15,5.16},
																		{6.01,6.02,6.03,6.04,6.05,6.06,6.07,6.08,6.09,6.10,6.11,6.12,6.13,6.14,6.15,6.16},
																		{7.01,7.02,7.03,7.04,7.05,7.06,7.07,7.08,7.09,7.10,7.11,7.12,7.13,7.14,7.15,7.16},
																		{8.01,8.02,8.03,8.04,8.05,8.06,8.07,8.08,8.09,8.10,8.11,8.12,8.13,8.14,8.15,8.16},
																		{9.01,9.02,9.03,9.04,9.05,9.06,9.07,9.08,9.09,9.10,9.11,9.12,9.13,7.14,9.15,9.16},
																		{10.1,10.2,10.3,10.4,10.5,10.6,10.7,10.8,10.9,10.10,10.11,10.12,10.13,10.14,10.15,10.16},
																		{11.1,11.2,11.3,11.4,11.5,11.6,11.7,11.8,11.9,11.10,11.11,11.12,11.13,11.14,11.15,11.16},
																		{12.1,12.2,12.3,12.4,12.5,12.6,12.7,12.8,12.9,12.10,12.11,12.12,12.13,12.14,12.15,12.16},
																		{13.1,13.2,13.3,13.4,13.5,13.6,13.7,13.8,13.9,13.10,13.11,13.12,13.13,13.14,13.15,13.16},
																		{14.1,14.2,14.3,14.4,14.5,14.6,14.7,14.8,14.9,14.10,14.11,14.12,14.13,14.14,14.15,14.16},
																		{15.1,15.2,15.3,15.4,15.5,15.6,15.7,15.8,15.9,15.10,15.11,15.12,15.13,15.14,15.15,15.16},
																		{16.1,16.2,16.3,16.4,16.5,16.6,16.7,16.8,16.9,16.10,16.11,16.12,16.13,16.14,16.15,16.16}};
*/
int main()
{
	singleCore
	programName="TRA3FG";
	//this program variable
	assignMatrixf32(a);
	//for variables
	int i,j;//, ii=0,jj=0;
 	// variables for vector section
 	int vindexm [8]={0, MAX1, MAX1*2, MAX1*3, MAX1*4, MAX1*5, MAX1*6, MAX1*7 };
 	__m256i vindex = _mm256_load_si256((__m256i *) &vindexm[0]);
 	__m256 vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8;
 	 // tw next line are used for testing 
 	//a[MAX1/2-12][MAX2/3-14]=1234;
 	//printf("this elemet should be is %f ",a[MAX1/2-12][MAX2/3-14]);
 	begin_rdtsc
		//put your code here 
		for(i=0; i<MAX1;  i+=8){
			
			//jj=0;
			
			
			for(j=0; j<MAX2;  j+=8){//IACA_START
				//printf(" i=%d\n", ii);
				//printf(" j=%d\n", jj);
				//jj++;
				
				//loading from columns
				vec1 = _mm256_i32gather_ps (&a[i][j+0],vindex,4);
				vec2 = _mm256_i32gather_ps (&a[i][j+1],vindex,4);
				vec3 = _mm256_i32gather_ps (&a[i][j+2],vindex,4);
				vec4 = _mm256_i32gather_ps (&a[i][j+3],vindex,4);
				vec5 = _mm256_i32gather_ps (&a[i][j+4],vindex,4);
				vec6 = _mm256_i32gather_ps (&a[i][j+5],vindex,4);
				vec7 = _mm256_i32gather_ps (&a[i][j+6],vindex,4);
				vec8 = _mm256_i32gather_ps (&a[i][j+7],vindex,4);
				
				//storing to the rows
				_mm256_store_ps(&a_tra[j+0][i], vec1);
				_mm256_store_ps(&a_tra[j+1][i], vec2);
				_mm256_store_ps(&a_tra[j+2][i], vec3);
				_mm256_store_ps(&a_tra[j+3][i], vec4);
				_mm256_store_ps(&a_tra[j+4][i], vec5);
				_mm256_store_ps(&a_tra[j+5][i], vec6);
				_mm256_store_ps(&a_tra[j+6][i], vec7);
				_mm256_store_ps(&a_tra[j+7][i], vec8);

				
				//printVecps(vec1);printf("\n");
				//printVecps(vec2);printf("\n");
				//printVecps(vec3);printf("\n");
				//printVecps(vec4);printf("\n");
				//printVecps(vec5);printf("\n");
				//printVecps(vec6);printf("\n");
				//printVecps(vec7);printf("\n");
				//printVecps(vec8);printf("\n");
			}//IACA_END//ii++;
		}
	end_rdtsc
			printf("%f", a_tra[MAX1/2][MAX2/2]);

	return 0;
}
