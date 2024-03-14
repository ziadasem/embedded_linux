#include "binary_search.h"

int cmp( const void* a,const  void* b ){
	return (*(int*)a - *(int*)b) ;
}

u_int binary_search(u_int  n, int* arr, int key){
	if (n == 0){
		return -1 ;
	}
		
	int start = 0 ;
        int end = n- 1 ;
	int middle ;
	while(start <= end){ //0 1 2 6 7 10 12 32 100 100
		middle =  ( end + start) / 2 ;
	
		if (arr[middle] == key){
			return middle ;
		}else if (key < arr[middle] ){ 
			end = middle -1;
		}else{
			start = middle+1;
		}
	}
	return -1 ;

}

void execute_test_case(int* arr, int n , int test_cases[][2], int m, char group_name){
	for (int i = 0 ; i <m -1 ; i++) {	
			
		u_int key = test_cases[i][0] ;
		u_int output = binary_search(n , arr, key);	
		if (output != test_cases[i][1]){
			printf("test case %d fail at %c expected %d, found %d\n",
					i, group_name, test_cases[i][1], output);
		}	
	}
}


int main(){
	int n ;
	printf("please enter the length of the ordered list \n");
	scanf("%d", &n);
	int* arr = calloc(sizeof(int), n);
	for (int i = 0; i < n ; i++){
		int temp ;
		scanf("%d",&temp);
		arr[i] = temp ;
	}
	int key ;
	printf("enter the key \n"); 
	scanf("%d", &key); 
	/*int a1 [10] = {0, 1 , 2 , 6 , 7 , 10, 12, 32, 100, 100}; 
	int test_cases_a1[7][2] = { {0,0} , {2, 2} , {12,6} , {0,0} , {99, -1} , 	{-1, -1} , {50, -1} };

	int a2[0] = {};
	int test_cases_a2[3][2] = { {0, -1} , {1,-1} , {2,-1}} ;

	int a3[7] = {-5 , -6 , -12 , 0 , -6 , -5 , -9 };
	int test_cases_a3[4][2] = { {0, 3} , {-5,-0} , {2,-1}, {-4,-1}} ;
	execute_test_case(a1, 10, test_cases_a1 , 7 , 'a');
	execute_test_case(a2, 0, test_cases_a2 , 3 , 'b');
	execute_test_case(a3, 7, test_cases_a3 , 4 , 'c');
	*/
	
	u_int output = binary_search(n , arr, key);	
	printf("\n index is %d", output);
	return 0 ;
}

