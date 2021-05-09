#include <MAX.h>
//#include <iacaMarks.h>


#define LEN MAX1*MAX1  //array size
//for time measure ments

int __attribute__(( aligned(32))) a[LEN];
int main(){
	
	singleCore
	programName="AIC3";
	int i, b, c;
    begin_rdtsc

    // b=1 and c=2 in this case
    b=1;
    c=2;
    i = 0;
    a[i++] = b;//0 --> a[0] = 1
    //step 1:
    //solving dependencies vectorization factor is 8
    a[i++] = a[0] + 1*c; //1  --> a[1] = 1 + 2  = 3
    a[i++] = a[0] + 2*c; //2  --> a[2] = 1 + 4  = 5
    a[i++] = a[0] + 3*c; //3  --> a[3] = 1 + 6  = 7
    a[i++] = a[0] + 4*c; //4  --> a[4] = 1 + 8  = 9
    a[i++] = a[0] + 5*c; //5  --> a[5] = 1 + 10 = 11
    a[i++] = a[0] + 6*c; //6  --> a[6] = 1 + 12 = 13
    a[i++] = a[0] + 7*c; //7  --> a[7] = 1 + 14 = 15
    // vectorization factor reached
    // 8 *c will work for all 
    //loading the results to an vector
    __m256i dep1;
    //__m256i  dep2; //  dep = { 1,   3,  5, 7,  9,  11, 13, 15 }
    __m256i coeff = _mm256_set1_epi32(8*c); //coeff = { 16, 16, 16, 16, 16, 16, 16, 16 }

    for(; i<LEN-1; i+=8){// IACA_START

        dep1 = _mm256_load_si256((__m256i *) &a[i-8]);
        dep1 = _mm256_add_epi32(dep1, coeff);
        _mm256_store_si256((__m256i *) &a[i], dep1);    

        //dep2 = _mm256_load_si256((__m256i *) &a[i]);
        //dep2 = _mm256_add_epi32(dep2, coeff);
        //_mm256_store_si256((__m256i *) &a[i+8], dep2);  

    }//IACA_END
    end_rdtsc
	return 0;
}
