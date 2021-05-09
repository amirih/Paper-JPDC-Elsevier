#include <x86intrin.h>
//temporal array for printing vectors
unsigned short int temp8i16[8];
unsigned short int tempi16[16];
int tempi32[8];
unsigned long long int tempu64[4];
float tempps[8];



//print a integer vector 
void printVeci16(__m256i vec)
{
	_mm256_store_si256((__m256i *)&tempi16[0], vec);
	printf("[0]=%2u, [1]=%2u, [2]=%2u, [3]=%2u, [4]=%2u, [5]=%2u, [6]=%2u, [7]=%2u,... [8]=%2u, [9]=%2u, [10]=%2u, [11]=%2u, [12]=%2u, [13]=%2u, [14]=%2u, [15]=%2u \n\n",
	 tempi16[0],tempi16[1],tempi16[2],tempi16[3],tempi16[4],tempi16[5],tempi16[6], tempi16[7],tempi16[8],tempi16[9],tempi16[10],tempi16[11],tempi16[12],tempi16[13],tempi16[14],tempi16[15] ) ;

}
void printVeci162(__m256i vec)
{
	_mm256_store_si256((__m256i *)&tempi16[0], vec);
	printf("[0]=%u, [1]=%u, [2]=%u, [3]=%u, [4]=%u, [5]=%u, [6]=%u, [7]=%u,... [8]=%u, [9]=%u, [10]=%u, [11]=%u, [12]=%u, [13]=%u, [14]=%u, [15]=%u \n\n",tempi16[0],tempi16[1],tempi16[2],tempi16[3],tempi16[4],tempi16[5],tempi16[6], tempi16[7],tempi16[8],tempi16[9],tempi16[10],tempi16[11],tempi16[12],tempi16[13],tempi16[14],tempi16[15] ) ;

}
void printVeci16s(__m128i vec) 
{
	_mm_store_si128((__m256i *)&tempi16[0], vec);
	printf("[0]= %u, [1]=%u, [2]=%u, [3]=%u, [4]=%u, [5]=%u, [6]=%u, [7]=%u  \n\n",
	 tempi16[0],tempi16[1],tempi16[2],tempi16[3],tempi16[4],tempi16[5],tempi16[6], tempi16[7] ) ;

}
void printVeci32(__m256i vec)
{
	_mm256_store_si256((__m256i *)&tempi32[0], vec);
	printf("[0]= %d, [1]=%d, [2]=%d, [3]=%d, [4]=%d, [5]=%d, [6]=%d, [7]=%d \n\n",
	 tempi32[0],tempi32[1],tempi32[2],tempi32[3],tempi32[4],tempi32[5],tempi32[6],
	 tempi32[7]) ;

}
void printVecu64(__m256i vec)
{
	_mm256_store_si256((__m256i *)&tempu64[0], vec);
	printf("[0]= %u, [1]=%u, [2]=%u, [3]=%u \n\n", tempu64[0],tempu64[1],tempu64[2],tempu64[3]) ;

}
//print a float vector 
void printVecps(__m256 vec)
{
	_mm256_store_ps(&tempps[0], vec);
	printf(", [0]=%3.2f, [1]=%3.2f, [2]=%3.2f, [3]=%3.2f, [4]=%3.2f, [5]=%3.2f, [6]=%3.2f, [7]=%3.2f \n",
	tempps[0],tempps[1],tempps[2],tempps[3],tempps[4],tempps[5],tempps[6],tempps[7]) ;

}
//print a float matrix
void printMatrixf(float a[MAX1][MAX2])
{
	int i,j;
	printf("The matrix is :\n" );
	for(i=0; i<MAX1; i++){
		
		for(j=0; j<MAX2; j++){
			printf("%f , ", a[i][j]);
			
		}
		printf("\n");
	}
}
//print an integer matrix
void printMatrixi(int a[MAX1][MAX2])
{
	int i,j;
	printf("The matrix is :\n" );
	for(i=0; i<MAX1; i++){
		
		for(j=0; j<MAX2; j++){
			printf("%3d , ", a[i][j]);
			
		}
		printf("\n");
	}
}
//print an integer matrix
void printMatrixsui(unsigned short int a[MAX1][MAX2])
{
	int i,j;
	printf("The matrix is :\n" );
	for(i=0; i<MAX1; i++){
		
		for(j=0; j<MAX2; j++){
			printf("%3d , ", a[i][j]);
			
		}
		printf("\n");
	}
}
void printVec128i32(__m128i vec)
{
	_mm_store_si128((__m128i *)&tempi32[0], vec);
	printf("[0]= %d, [1]=%d, [2]=%d, [3]=%d, \n\n",
	 tempi32[0],tempi32[1],tempi32[2],tempi32[3]) ;

}


