#include <MAX.h>

#define LEN  MAX1*MAX1 //array size
//for time measure ments

float a[LEN];
int main(){
	programName="AIC1F";
	int i;
	float  b, c;
	begin_rdtsc

    // b=1 and c=2 in this case
    b=1.01;
    c=2.01;
    a[0]=b;
	for(i=1; i<LEN; i++)
		a[i] = a[i-1] +c;
	end_rdtsc
	return 0;
}
