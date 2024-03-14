#ifndef _BINARY_SEARCH_
#define _BINARY_SEARCH_

#include <stdlib.h>
#include <stdio.h>

typedef unsigned int u_int;

int cmp( const void* a,const  void* b );
u_int binary_search(u_int  n, int* arr, int key);
void execute_test_case(int* arr, int n , int test_cases[][2], int m, char group_name);

#endif
