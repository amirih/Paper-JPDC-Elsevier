#include <x86intrin.h>
unsigned short int tempi16[16];
// for increamenting a vector by 1
inline __m256i _mm256_inc_epi16(__m256i a)
{
 return _mm256_add_epi16(a, _mm256_set1_epi16(1));
}
// my horizontal addition of epi32
inline int _mm256_hadd2_epi32(__m256i a)
{
	__m256i a_hi;
	a_hi = _mm256_permute2x128_si256(a, a, 1); //maybe it should be 4 
	a = _mm256_hadd_epi32(a, a_hi);
	a = _mm256_hadd_epi32(a, a);
	a = _mm256_hadd_epi32(a, a);
	return _mm256_extract_epi32(a,0);
}
// my horizontal addition of ps
inline float _mm256_hadd2_ps(__m256 p)
{
	__m256 p_hi;
	p_hi = _mm256_permute2f128_ps(p, p, 1); //maybe it should be 4 
	p = _mm256_hadd_ps(p, p_hi);
	p = _mm256_hadd_ps(p, p);
	p = _mm256_hadd_ps(p, p);
	//return _mm256_extract_ps(p,0);
}

// my horizontal addidtion for sad 
inline int _mm_haddsad_si128(__m128i a){
	//_mm_store_si128((__m128i *)&temp8i16[0], a);
	//return (temp8i16[0]+temp8i16[4]);
	 __m128i hsum = _mm_add_epi64(a, _mm_bsrli_si128(a, 8));
 return _mm_cvtsi128_si32(hsum);	
}
inline int _mm256_haddsad_si256(__m256i a){
	_mm256_store_si256((__m256i *)&tempi16[0], a);
	return (tempi16[0]+tempi16[4]+tempi16[8]+tempi16[12]);
}
//forCON3x3
inline __m256i _mm256_hadd3x3_epi16(__m256i a)
{
	__m256i a1, a2, sum_v;

	//a1 = _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 1 * 2);//printVeci162(a1);
	//a2 = _mm256_bsrli_epi128(a1, 2);//printVeci162(a2);
	//a2= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 2 * 2);
	
	//another stack answer start	
 a1 = _mm256_bsrli_epi128(a,2); //Shift 128 bit lanes in t0 right by 2 bytes while shifting in zeros. Fortunately the zeros are in the positions that we don't need
 a2 = _mm256_permutevar8x32_epi32(a,_mm256_set_epi32(7,7,6,5,4,3,2,1)); // Shift right by 4 bytes 
 //__m256i sum = _mm256_add_epi16(_mm256_add_epi16(t0,t1),t2);
	//another stack answer end
	return _mm256_add_epi16(a, _mm256_add_epi16(a1, a2));
}
//forCON5x5
inline __m256i _mm256_hadd5x5_epi16(__m256i a)
{
	__m256i a1, a2, a3, a4, sum_v;
	a1= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 1 * 2);//printVeci162(a1);
	//a2 = _mm256_bsrli_epi128(a1, 2);printVeci162(a2);
	a2= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 2 * 2);//printVeci162(a2);
	a3 = _mm256_bsrli_epi128(a2, 2);//printVeci162(a3);
	//a3= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 3 * 2);
	a4 = _mm256_bsrli_epi128(a3, 2);//printVeci162(a4);
	//a4= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 4 * 2);
	return _mm256_add_epi16(_mm256_add_epi16(_mm256_add_epi16(a1, a2), _mm256_add_epi16(a3, a4)) , a );
}



//TRA 
inline TRAgatherFloat(float a[MAX1][MAX2], float a_tra[MAX2][MAX1])
{
	int vindexm [8]={0, MAX1, MAX1*2, MAX1*3, MAX1*4, MAX1*5, MAX1*6, MAX1*7 };
 	__m256i vindex = _mm256_load_si256((__m256i *) &vindexm[0]);
 	__m256 vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8;
 	int i,j;
	for(i=0; i<MAX1; i+=8){
		for(j=0; j<MAX2; j+=8){//IACA_START


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


		}
	}
}
inline TRAgatherInt(int a[MAX1][MAX2], int a_tra[MAX2][MAX1])
{
	int i,j;
	int vindexm [8]={0, MAX1, MAX1*2, MAX1*3, MAX1*4, MAX1*5, MAX1*6, MAX1*7 };
 	__m256i vindex = _mm256_load_si256((__m256i *) &vindexm[0]);
 	__m256i vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8;
		for(i=0; i<MAX1; i+=8){			
			for(j=0; j<MAX2; j+=8){

				//loading from columns
				vec1 = _mm256_i32gather_epi32 ((int const *)&a[i][j+0],vindex,4);
				vec2 = _mm256_i32gather_epi32 ((int const *)&a[i][j+1],vindex,4);
				vec3 = _mm256_i32gather_epi32 ((int const *)&a[i][j+2],vindex,4);
				vec4 = _mm256_i32gather_epi32 ((int const *)&a[i][j+3],vindex,4);
				vec5 = _mm256_i32gather_epi32 ((int const *)&a[i][j+4],vindex,4);
				vec6 = _mm256_i32gather_epi32 ((int const *)&a[i][j+5],vindex,4);
				vec7 = _mm256_i32gather_epi32 ((int const *)&a[i][j+6],vindex,4);
				vec8 = _mm256_i32gather_epi32 ((int const *)&a[i][j+7],vindex,4);

				//storing to the rows
				_mm256_store_si256((__m256i *)&a_tra[j+0][i], vec1);
				_mm256_store_si256((__m256i *)&a_tra[j+1][i], vec2);
				_mm256_store_si256((__m256i *)&a_tra[j+2][i], vec3);
				_mm256_store_si256((__m256i *)&a_tra[j+3][i], vec4);
				_mm256_store_si256((__m256i *)&a_tra[j+4][i], vec5);
				_mm256_store_si256((__m256i *)&a_tra[j+5][i], vec6);
				_mm256_store_si256((__m256i *)&a_tra[j+6][i], vec7);
				_mm256_store_si256((__m256i *)&a_tra[j+7][i], vec8);

			}
		}
}

inline TRAsse(float a[MAX1][MAX2], float a_tra[MAX2][MAX1])
{
	int i, j;
	__m128 row0, row1, row2, row3;

	for( i=0;i<MAX2;i+=4){
		for(j=0;j<MAX3;j+=4){//IACA_START
		row0 = _mm_load_ps(&a[i][j]);
		row1 = _mm_load_ps(&a[i+1][j]);
		row2 = _mm_load_ps(&a[i+2][j]);
		row3 = _mm_load_ps(&a[i+3][j]);

		_MM_TRANSPOSE4_PS ( row0, row1, row2, row3);

		_mm_store_ps(&a_tra[j ][i], row0);
		_mm_store_ps(&a_tra[j+1][i], row1);
		_mm_store_ps(&a_tra[j+2][i], row2);
		_mm_store_ps(&a_tra[j+3][i], row3);
		}
	}
}
