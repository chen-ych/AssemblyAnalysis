// heap array & variable access indirectly 
#include<stdlib.h>
int main() {
	int * a = malloc(6*sizeof(int)),
	* i = malloc(sizeof(int)),
	* j = malloc(sizeof(int));
	*i = 4;
	*j = 5;
	a[1] = 5;
	a[*i] = 2;
	a[*i-3] = 8;
	a[*j] = 3;
	return a[1] + a[*i];
}