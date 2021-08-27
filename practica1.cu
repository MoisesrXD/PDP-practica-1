//---------------------------------
// PROGRAMA BASICO EN C 
//--------------------------------
// Moises Roman Delgadillo Perez
// 27/08/2021
//--------------------------------
//Input and output libraries 
#include<stdio.h>
#include<stdlib.h>
//Predefinitons
#define N 512 
#define Real double
//--------------------------------
//Array addition function
//c = a + b
//--------------------------------
void host_add(int* a, int* b, int* c) {
	for (int idx = 0;idx<N;idx++)
		c[idx] = a[idx] + b[idx];
}
//--------------------------------
//Array filling
//--------------------------------
void fill_array(int* data) {
	for (int idx = 0; idx < N; idx++)
		data[idx] = idx;
}
//--------------------------------
//Data output 
//--------------------------------
void print_output(int* a, int* b, int* c) {
	for (int idx = 0; idx < N; idx++)
	printf("\n %d + %d = %d", a[idx], b[idx], c[idx]);
	printf("\n");
}
//--------------------------------
//Main function
//--------------------------------
int main(void) {
	//Array integers
	int* a, * b, * c;
	//Array memory size
	int size = N * sizeof(int);
	//request and memory filling for arrays
	a = (int*)malloc(size); fill_array(a);
	b = (int*)malloc(size); fill_array(b);
	c = (int*)malloc(size);
	//Calling function addition
	host_add(a, b, c);
	//Writing result in screen 
	print_output(a, b, c);
	//Memory release
	free(a); free(b); free(c);
	//Program success
	return 0;
}
