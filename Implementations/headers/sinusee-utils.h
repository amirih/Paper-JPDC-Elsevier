//#include <time.h>

#include <sched.h>
#include <stdio.h>
#include <x86intrin.h>
#define do_while NUM_LOOP
FILE *fileForSpeedups = NULL;
char *programName=" ";
// simplifications and declarations
#define SINGLECORE1 assignToThisCores(2,3);//isolcpus=2,3 should be added to grub loader and  -D _GNU_SOURCE should be added to command line//#define singleCore assignToThisCore(3);// -D _GNU_SOURCE should be added to command line

// for assigning a core to the program I use this //void assignToThisCore(int core_id1)
cpu_set_t mask1;

inline void assignToThisCores(int core_id1, int core_id2)
{
	CPU_ZERO(&mask1);
	CPU_SET(core_id1, &mask1);
	CPU_SET(core_id2, &mask1);
	sched_setaffinity(0, sizeof(mask1), &mask1);
	//clock_gettime(CLOCK_MONOTONIC,&start);
    //__asm__ __volatile__ ( "vzeroupper" : : : ); // it is hear because of that bug which dirtied the AVX registers
}
long long t1_rdtsc, t2_rdtsc, ttotal_rdtsc, ttbest_rdtsc = 99999999999999999, elapsed,  elapsed_rdtsc=do_while, overal_time = OVERAL_TIME, ttime=0;

#define begin_rdtsc\
					elapsed_rdtsc=do_while;\
					overal_time = OVERAL_TIME;\
					ttime=0;\
					do{\
						asm("#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm1");\
						t1_rdtsc=_rdtsc();
			
	#define end_rdtsc\
						t2_rdtsc=_rdtsc();\
						asm("#mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm2");\
						ttotal_rdtsc=t2_rdtsc-t1_rdtsc;\
						if (ttotal_rdtsc<ttbest_rdtsc){\
							ttbest_rdtsc = ttotal_rdtsc;\
							elapsed=(do_while-elapsed_rdtsc);}\
						ttime+=ttotal_rdtsc;\
					}while (elapsed_rdtsc-- && (ttime<overal_time));\
					printf("\nthe best is %lld in %lldth iteration and %lld repetitions\n", ttbest_rdtsc, elapsed, (do_while-elapsed_rdtsc));\
					fileForSpeedups = fopen ( "fileForSpeedups", "a");\
						fprintf(fileForSpeedups, "%s, %dx%d, %lld\n", programName, MAX1,MAX2, ttbest_rdtsc);

/*
//#define REP_CODE(X)  X \
long long t1_rdtsc, t2_rdtsc, ttotal_rdtsc[do_while], ttbest_rdtsc = 99999999999999999, elapsed,  elapsed_rdtsc=do_while, overal_time = OVERAL_TIME, ttime=0;
int ii=0;
	#define begin_rdtsc\
					do{\
						asm("#mmmmmmmmmmmmmmm");\
						t1_rdtsc=_rdtsc();
			
	#define end_rdtsc\
						t2_rdtsc=_rdtsc();\
						asm("#mmmmmmmmmmmmmmmm");\
						ttotal_rdtsc[ii]=t2_rdtsc-t1_rdtsc;\
					}while (ii++<do_while);\	
					for(ii=0; ii<do_while; ii++){\
						if (ttotal_rdtsc[ii]<ttbest_rdtsc){\
							ttbest_rdtsc = ttotal_rdtsc[ii];}}\				
					printf("the best is, %lld , in %lld iteration", ttbest_rdtsc, elapsed_rdtsc);



*/

/*
long long t1_rdtsc, t2_rdtsc, ttotal_rdtsc[do_while], ttbest_rdtsc = 99999999999999999;//, elapsed,  elapsed_rdtsc=do_while, overal_time = OVERAL_TIME, ttime=0;
int ii=0,jj=0;
#define REP_CODE(X)  X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X  best_rdtsc

	#define begin_rdtsc\
						t1_rdtsc=_rdtsc();
			
	#define end_rdtsc\
						t2_rdtsc=_rdtsc();\
						ttotal_rdtsc[ii++]=t2_rdtsc-t1_rdtsc;\
						printf("%lld\n",ttotal_rdtsc[ii-1]);
						
	#define best_rdtsc\		
						for(jj=0; jj<ii; jj++){\
						if (ttotal_rdtsc[jj]<ttbest_rdtsc){\
							ttbest_rdtsc = ttotal_rdtsc[jj];}}\	
					printf("\nthe best is %lld in %dth iteration anpetitions\n", ttbest_rdtsc, ii-1);



/*
 * 	int jj=0;\
						for(jj=0;jj<NUM_LOOP;jj++){\
 * 						

 * 				
						
 * 
 * 
 * 
 */
