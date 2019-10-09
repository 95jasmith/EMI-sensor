/**********************************************************************
Author: Jonah Smith, jsmith95@ksu.edu
	2019
For: Kansas State University

This program is to convert a .bin file into a .h file so the it can be
loaded onto a microcontroller to progam a ICE40 ultra FPGA


***********************************************************************/
#include <stdio.h>
#pragma warning(disable:4996)


int main(void) {

	int i = 0, c;
	printf("#include <stdint.h>\nconst uint8_t ice40image[] = {\n");
	while ((c = getchar()) != EOF)
		printf("%#2.2x%s", c, (++i & 15) ? "," : ",\n");
	printf("};\n#define ICE40IMAGE_LEN %d\n", i);
	return 0;



}
