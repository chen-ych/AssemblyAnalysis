// static variable 1d array access
int main() {
	static int a[6], i=4, j=5;
	a[1] = 5;
	a[i] = 2;
	a[i-3] = 8;
	a[j] = 3;
	return a[1] + a[i];
}