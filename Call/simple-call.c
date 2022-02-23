

int f(int x) {
	int d;
	scanf("%d\n",&d);
	return x+d;
}

int g(int x,int y, int z) {
	int d;
	scanf("%d\n",&d);
	return x + y -z *d;
}

int main() {
	int b = 7;
	b = f(b);
	b = g(b+1,b-2,b*3);
	return b;
}