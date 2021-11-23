// fibonacci, heap variable indirect access
#include<stdlib.h>
int main() {
	int* a,*i;
	a = malloc(sizeof(int) * 600);
	i = malloc(sizeof(int));
	a[0]=1,a[1]=1;
	for(*i=2;*i<600;*i++) {
		a[*i]=a[*i-1]+a[*i-2];
	}
	return a[5];
}
