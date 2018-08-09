#include "fun1.h"

extern "C"{
#include "fun2.h"
}

int main()
{
	int x=0;
	return fun1(x)+fun2(x);
}
