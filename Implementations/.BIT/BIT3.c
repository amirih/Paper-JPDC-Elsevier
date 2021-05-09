#include <MAX.h>

void printVec8(__m128i vec)
{
    int i;
    char array[16];
    _mm_store_si128( (__m128i *) array, vec);
    for(i=0; i<16; i++){
        printf("%3u , " , array[i]);
    }
    printf("\n");

}

int main()
{
	singleCore
	programName="BIT3";
	__m128i vec = _mm_setr_epi8(0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F); //printf("vec  :"); printVec8(vec);

	__m128i bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7;
	__m128i mask = _mm_set_epi8(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
	char bits[8][16];

	//fisrt separate them and print to check them:
	
	begin_rdtsc
	bit0 = _mm_and_si128(vec , mask);                   //printf("bit0 :"); printVec8(bit0);
	bit1 = _mm_and_si128(_mm_srai_epi16(vec,1) , mask); //printf("bit1 :"); printVec8(bit1);
	bit2 = _mm_and_si128(_mm_srai_epi16(vec,2) , mask); //printf("bit2 :"); printVec8(bit2);
	bit3 = _mm_and_si128(_mm_srai_epi16(vec,3) , mask); //printf("bit3 :"); printVec8(bit3);
	bit4 = _mm_and_si128(_mm_srai_epi16(vec,4) , mask); //printf("bit4 :"); printVec8(bit4);
	bit5 = _mm_and_si128(_mm_srai_epi16(vec,5) , mask); //printf("bit5 :"); printVec8(bit5);
	bit6 = _mm_and_si128(_mm_srai_epi16(vec,6) , mask); //printf("bit6 :"); printVec8(bit6);
	bit7 = _mm_and_si128(_mm_srai_epi16(vec,7) , mask); //printf("bit7 :"); printVec8(bit7);

	//now store them in array
	_mm_store_si128( (__m128i *) bits[0], bit0);
	_mm_store_si128( (__m128i *) bits[1], bit1);
	_mm_store_si128( (__m128i *) bits[2], bit2);
	_mm_store_si128( (__m128i *) bits[3], bit3);
	_mm_store_si128( (__m128i *) bits[4], bit4);
	_mm_store_si128( (__m128i *) bits[5], bit5);
	_mm_store_si128( (__m128i *) bits[6], bit6);
	_mm_store_si128( (__m128i *) bits[7], bit7);
	
	end_rdtsc
	//and now print them all:
	int i, j;
	printf("all bits : \n");
	for(i=0; i<16; i++){
		for( j=7; j>=0; j--){
			printf("%u ", bits[j][i]);
		}
	//printf("\n");
	}

	return 0;
}
