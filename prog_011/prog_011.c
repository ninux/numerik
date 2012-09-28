/* 
File:			prog_011.c
Author:			Ervin Mazlagic
Source origin:	Page 4, ISBN: 978-3-8348-0603-1
*/

#include <stdio.h>
#include <stdlib.h>

#define dx 0.01

int main(void)
{
	int i = 0;
	float squarenum[400];
	FILE *f_ptr = NULL;

	f_ptr = fopen("daten/dat.csv", "w+");

	for(i=0; i<400; i++){
		squarenum[i] = ( -2 + i * dx ) * ( -2 + i * dx );
		fprintf(f_ptr, "%f %.2f\n", -2+i*dx, squarenum[i]);
	}

	fclose(f_ptr);

	return(EXIT_SUCCESS);
}
