#include <stdio.h>
#include <x86intrin.h>


int main()
{
	double a[4] = {1.01, 2.02, 3.03, 4.04}, d[4]={0};
	printf("[3] %lf, [2] %lf, [1] %lf , [0] %lf\n", a[3], a[2], a[1], a[0]);

	const int S8 = 0b00110110;
	
	__m256d a_vec, d_vec;
	
	a_vec = _mm256_load_pd(&a[0]);
	
	d_vec = _mm256_permute4x64_pd (a_vec, S8 );
	_mm256_store_pd(&d[0], d_vec);
	
	printf("[3] %lf, [2] %lf, [1] %lf , [0] %lf\n", d[3], d[2], d[1], d[0]);
	
	
	
	
	


	return 0;
}
