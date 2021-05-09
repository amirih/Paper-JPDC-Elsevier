#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally
int __attribute__(( aligned(32))) a[MAX1][MAX2]// ={{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17}}
  , __attribute__(( aligned(32))) b[MAX2][MAX3]// ={{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17}}
  , __attribute__(( aligned(32))) c_result[MAX1][MAX3] ;

int main()
{
	singleCore
	assignMatrixi32(a);
	assignMatrixi32(b);
	programName="MUL3ABG";
	//variable for loop
	int i=0, j=0,k=0;
	//variable for gather part 
	int vindexm [8]={0, MAX1, MAX1*2, MAX1*3, MAX1*4, MAX1*5, MAX1*6, MAX1*7 };
 	__m256i vindex = _mm256_load_si256((__m256i *) &vindexm[0]);
 	//		
		int __attribute__(( aligned(32)))temp8[8]  ;
		
		__m256i  sum0_i;
	begin_rdtsc
		for( i=0;i<MAX1;i++){
			for(j=0;j<MAX3;j++){
				sum0_i = _mm256_setzero_si256();
				for(k=0;k<MAX2;k=k+8){//IACA_START
					
					sum0_i = _mm256_add_epi32(
					sum0_i,_mm256_mullo_epi32(
					_mm256_load_si256((__m256i *)&a[i][k]) ,
					 _mm256_i32gather_epi32 ((int const *)&b[k][j],vindex,4)));
		
				}//IACA_END
				//sum_hi = _mm256_permute2x128_si256(sum0_i, sum0_i, 1); //printf("sum0 : ");printVeci32(sum0_i);printf("sumhi : ");printVeci32(sum_hi);
				//sum0_i = _mm256_hadd_epi32(sum0_i, sum_hi); //printf("hadd sum0 : "); printVeci32(sum0_i);
				//sum0_i = _mm256_hadd_epi32(sum0_i, sum0_i);  //printf("sum0 : ");printVeci32(sum0_i);
				//sum0_i = _mm256_hadd_epi32(sum0_i, sum0_i);  //printf("sum0 : ");printVeci32(sum0_i);
				//c_result[i][j] = _mm256_extract_epi32(sum0_i,0);
				c_result[i][j] = _int_hadd_epi32(sum0_i);
				
				//_mm256_store_si256((__m256i *)&temp8[0] , sum0_i);
				//c_result[i][j]= temp8[0]+temp8[1]+temp8[2]+temp8[3]+temp8[4]+temp8[5]+temp8[6]+temp8[7];
				//c_result[i][j] = _mm256_hadd2_epi32(sum0_i);
				//printf("%d",c_result[i][j] );
			}
		}
		end_rdtsc
	return 0;
}
