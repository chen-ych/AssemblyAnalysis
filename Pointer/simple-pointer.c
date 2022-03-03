#include<stdio.h>

int main() {
	int x[2];
	scanf("%d",&x[0]);
	x[1] = x[0] + 2;
	int *y = &x[0];
	int **z = &y;
	
	y = &x[1];
	return (*z)[0] + *y;
}