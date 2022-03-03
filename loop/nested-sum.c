
#define n 10000
int main() {
	int sum = 0;
	for(int i=0;i<n;i++) {
		for(int j=0;j<n;j+=2) {
			sum = (sum + i+j) * j;
		}
	}
	return sum;
}