#include <MAX.h>

#define LEN  MAX1*MAX1 //array size
//for time measure ments

int __attribute__(( aligned(32))) a[LEN] ;
int main(){
	singleCore
	programName="AIC1";
	int i, b, c;
	begin_rdtsc

    // b=1 and c=2 in this case
    b=1;
    c=2;
    a[0]=b;
	for(i=1; i<LEN; i++)
		a[i] = a[i-1] +c;
	end_rdtsc
	return 0;
}
