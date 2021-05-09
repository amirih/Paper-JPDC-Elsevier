#include <MAX.h>
/*
//Private helper function
static void print_128_bitsH(__m128i val, int depth)
{
    if (depth > 0)
        print_128_bitsH(val >> 1, depth - 1);
    printf("%d", (int)(val & 1));
}

// Print 128 bits, from most significant to least significant
void print_128_bits(__m128i val)
{
    print_128_bitsH(val, 128);
    printf("\n");
}
//another solution
for(int j = 0; j < CHAR_BIT, j++) printf("%hhu", (bytearray[i] & (1 << j)) ? 1 : 0);
*/
//another solution
int main()
{
	__m128i toPrint;
	char * bytearray = (char *) &toPrint;
	begin_rdtsc
	for(int i = 0; i < 16; i++) printf("%02hhx", bytearray[i]);
	end_rdtsc
	return 0;
}
