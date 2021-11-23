// 1d array indirect access global variable
int a[6], i=4, j=5;
int main() {
	a[1] = 5;
	a[i] = 2;
	a[i-3] = 8;
	a[j] = 3;
	return a[1] + a[i];
}