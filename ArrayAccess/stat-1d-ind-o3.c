// fibonacci indirect access static variable 
int main(){
	static int a[600],i;
	a[0]=1,a[1]=1;
	for(i=2;i<600;i++) {
		a[i]=a[i-1]+a[i-2];
	}
	return a[5];
}