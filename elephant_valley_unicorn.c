#include <stdio.h>
#include <stdlib.h>

// Start of Project Build 

/* 
Change Log 
-Added Header Files
-Changed Variable Name
-Added Function Definitions
-Added new code to main function 
*/


//Declaring Global Variables 
int x = 10;
int y = 5;

// Declaring Function 
int addTwoFunction(int a, int b);
int subTwoFunction(int a, int b);

int main(){
	
	//Defining Variables 
	int num1 = 20;
	int num2 = 15;
	
	//Printing Addition Result 
	printf("Addition Result: %d\n", addTwoFunction(num1, num2));
	
	//Printing Subtraction Result 
	printf("Subtraction Result: %d\n", subTwoFunction(num1, num2));
	
	return 0;
}

//Function Definitions

int addTwoFunction(int a, int b){
	int result = a + b;
	return result;
}

int subTwoFunction(int a, int b){
	int result = a - b;
	return result;
} 

// End of Project Build