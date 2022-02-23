
int f(int a0,int a1,int a2,int a3, int a4,int a5,int a6,int a7, int a8, int a9,int a10) {
	int d;
	scanf("%d",&d);
	d = f(a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,d);
	return a10 + a9 + a8 + a7 +d ;
}
int main() {
	int b = 15;
	return f(0,1,2,3,4,5,b,7,8,9,10);
}