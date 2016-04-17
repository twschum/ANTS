#include <iostream>
using namespace std;
#ifdef DNDEBUG
	#define DBG(...)
#else
	#define DBG(...)\
	do{\
	printf("\tDebug: %s::", __FILE__);\
	printf("%s:", __func__);\
	printf("%d ", __LINE__);\
	printf(__VA_ARGS__);\
	cout << endl;\
	}while(0)
#endif