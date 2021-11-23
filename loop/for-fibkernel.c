// use for implement fibonacci kernel
int a,b,c;
int main() {
	int i=0;
	a = b = 1;
	for(i=3; i<8000; i++) {
		c = a + b;
		a = b;
		b = c;
	}
	return c;
}