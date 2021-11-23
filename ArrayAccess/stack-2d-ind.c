// 2d array indirect access
int main() {
 int a[3][5], i=1,j=2;
 a[i][i+j] = i-j;
 a[2][i] = j;
 a[j][1] = 2+j;
 return a[1][2];
}