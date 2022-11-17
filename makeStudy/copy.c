

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* copy(char* str){
	int len = strlen(str)+1;
	char* dist = malloc(sizeof(char)*len);
	for(int i=0; i < len-1 ; i ++){
		dist[i] = str[i];
	}
}


