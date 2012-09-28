/*
File:			prog_021
Author:			Ervin Mazlagic
Source origin:	Page 10, ISBN:978-3-8348-0603-1
*/

#include <stdio.h>
#include <stdlib.h>

#define N 41
#define A 0

double f_wert(int a)
{
	return (-100 * a + 2000);
}

int main(void)
{
	double vol_t[N];
	int i = 0;
	FILE *f_ptr = NULL;

	printf("Stock Flow Data!\n");
	f_ptr=fopen("daten/dat.csv", "w+");
	for(i=1; i<N; i++){
		vol_t[i] = A + ((f_wert(0) + f_wert(i)) / 2) * i;
		fprintf(f_ptr, "%i %.41f\n", i, vol_t[i]);
	}
	
	return(EXIT_SUCCESS);

}
