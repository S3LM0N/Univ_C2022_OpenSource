


#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "copy.h"

int main(void){
	char* str1 = "Hello :)";
	printf("str1 : %s\n", str1);
	char* str2 = copy(str1);
	printf("str2 : %s\n", str2);
	return 0;
}
