/*
* Title: Sorting and Algorithm Efficiency
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 1
* Description: Header file for the sorting, array creating and performance test algorithms
*/

#include <iostream>
#ifndef CS202_HW1_SORTING_H
#define CS202_HW1_SORTING_H

void bubbleSort(int *arr, const int size, int &compCount, int &moveCount);

void mergeSort(int *arr, const int size, int &compCount, int &moveCount);

void quickSort(int *arr, const int size, int &compCount, int &moveCount);

void displayArray(const int *arr, const int size);

void createRandomArrays(int *&arr1, int *&arr2, int *&arr3, const int size);

void createAscendingArrays(int *&arr1, int *&arr2, int *&arr3, const int size);

void createDescendingArrays(int *&arr1, int *&arr2, int *&arr3, const int size);


void mergesort( int *arr, int first, int last, int &compCount, int &moveCount);

void merge( int *arr, int first, int mid, int last, int &compCount, int &moveCount);

void quicksort(int* theArray, int first, int last, int &compCount, int &moveCount);

void partition(int* theArray, int first, int last, int &pivotIndex , int &compCount, int &moveCount);


void performanceAnalysis();

void randomArrayPerformance();

void ascendingArrayPerformance();

void descendingArrayPerformance();

void performanceDisplayer(int arrSize, int* arr, std::string sortMethod);

#endif //CS202_HW1_SORTING_H
