


int (*f[3])(int,int) ;


int f1(int x,int y) {
	return x+y+1;
}
int f2(int x,int y) {
	return x+y+2;
}

int f3(int x,int y) {
	return x+y+3;
}

int main() {
	f[0] = f1;
	f[1] = f2;
	f[2] = f3;
	int i;
	scanf("%d",&i);
	return (f[i])(1,2);
}