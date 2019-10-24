/* hexembed.c - copyright Lewis Van Winkle */
/* zlib license */

/*Original code from: https://codeplea.com/embedding-files-in-c-programs 
  Code add by Jonah Smith to take in user input and output to a desired output file */

#include <stdio.h>
#include <stdlib.h>
#pragma warning(disable:4996)

int main(int argc, char* argv[]) {
	if (argc < 2) { printf("Usage:\n\thexembed <filename>\n"); return 1; }

	const char* fname = argv[1];
	FILE* fp = fopen(fname, "rb");
	freopen( "FPGAImage.h", "w", stdout);
	if (!fp) {
		fprintf(stderr, "Error opening file: %s.\n", fname);
		return 1;
	}

	fseek(fp, 0, SEEK_END);
	const int fsize = ftell(fp);

	fseek(fp, 0, SEEK_SET);
	unsigned char* b = malloc(fsize);

	fread(b, fsize, 1, fp);
	fclose(fp);

	printf("#ifndef _FPGAIMAGE_H_\n");
	printf("#define	_FPGAIMAGE_H_\n\n");
	printf("/* Embedded file: %s */\n", fname);
	printf("const int FPGAImSize = %d;\n", fsize);
	printf("const unsigned char FPGAIma\[] = {\n");
	getchar();

	int i;
	for (i = 0; i < fsize; ++i) {
		printf("0x%02x%s",
			b[i],
			i == fsize - 1 ? "" : ((i + 1) % 16 == 0 ? ",\n" : ","));
	}
	printf("\n};\n");
	printf("\n#endif");

	free(b);
	getchar();
	return 0;
}