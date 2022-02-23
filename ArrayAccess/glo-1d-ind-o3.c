// fibonacci 1d array indirect access
int j=3,a[600]={1,2,3},i;
int main() {
	a[0]=1,a[1]=1;
	j = 7;
	for(i=2;i<600;i++) {
	    a[i]=a[i-1]+a[i-2];
    }
    return a[5];
}