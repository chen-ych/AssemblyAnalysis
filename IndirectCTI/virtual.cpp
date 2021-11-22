#include<cstdio>
using namespace std;

class Base {
    public:
    int a,b;
    int f(int x) {
        return 1;
    }
    virtual int g(int x) {
        return 2;
    }
};

class Dervive : public Base {
    public:
    virtual int g(int x) {
        return 3;
    }
};

int main() {
    Base * ptrB, * ptrD;
    ptrB = new Base();
    ptrD = new Dervive();
    int a = ptrB->g(5);
    int b = ptrD->g(6);
    printf("%d %d\n",a,b);
}