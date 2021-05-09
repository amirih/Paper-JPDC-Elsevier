

#include "MAX.h" //this header is for assigning MAX values and NUM_LOOP globally





float __attribute__(( aligned(32))) a[MAX1][MAX2]  
    , __attribute__(( aligned(32))) t[MAX2][MAX3] 
    , __attribute__(( aligned(32))) c_result[MAX1][MAX3] 
    , __attribute__(( aligned(32))) c_tra[MAX3][MAX2] ;


int main()
{
	singleCore
	assignMatrixf32(a);
	assignMatrixf32(t);
	programName="MUL3F";
	int i, j,k;
	// variables for vector section
 	int vindexm [8]={0, MAX1, MAX1*2, MAX1*3, MAX1*4, MAX1*5, MAX1*6, MAX1*7 };
 	__m256i vindex = _mm256_load_si256((__m256i *) &vindexm[0]);
 	__m256 vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8;
 	begin_rdtsc
 	//put your code here 
		for(i=0; i<MAX1;  i+=8){
			for(j=0; j<MAX2;  j+=8){//				
				//loading from columns
				vec1 = _mm256_i32gather_ps (&t[i][j+0],vindex,4);
				vec2 = _mm256_i32gather_ps (&t[i][j+1],vindex,4);
				vec3 = _mm256_i32gather_ps (&t[i][j+2],vindex,4);
				vec4 = _mm256_i32gather_ps (&t[i][j+3],vindex,4);
				vec5 = _mm256_i32gather_ps (&t[i][j+4],vindex,4);
				vec6 = _mm256_i32gather_ps (&t[i][j+5],vindex,4);
				vec7 = _mm256_i32gather_ps (&t[i][j+6],vindex,4);
				vec8 = _mm256_i32gather_ps (&t[i][j+7],vindex,4);
				
				//storing to the rows
				_mm256_store_ps(&c_tra[j+0][i], vec1);
				_mm256_store_ps(&c_tra[j+1][i], vec2);
				_mm256_store_ps(&c_tra[j+2][i], vec3);
				_mm256_store_ps(&c_tra[j+3][i], vec4);
				_mm256_store_ps(&c_tra[j+4][i], vec5);
				_mm256_store_ps(&c_tra[j+5][i], vec6);
				_mm256_store_ps(&c_tra[j+6][i], vec7);
				_mm256_store_ps(&c_tra[j+7][i], vec8);

			}//IACA_END//ii++;
		}
			
	float temp4[8];
	__m256  sum0_i;
	for( i=0;i<MAX1;i++){
		for(j=0;j<MAX3;j++){
			sum0_i = _mm256_setzero_ps();
			for(k=0;k<MAX2;k+=8){
				sum0_i = _mm256_add_ps(sum0_i , _mm256_mul_ps(_mm256_load_ps(&a[i][k]) , _mm256_load_ps(&c_tra[j][k])));
			}
			_mm256_store_ps(&temp4[0], sum0_i);	
			c_result[i][j] = temp4[0]+temp4[1]+temp4[2]+temp4[3]+temp4[4]+temp4[5]+temp4[6]+temp4[7];

		}
	}
	end_rdtsc
	return 0;
}
