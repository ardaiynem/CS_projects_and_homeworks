/*
* Title: Sorting and Algorithm Efficiency
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 1
* Description: Main file for the sorting algorithm analysis program
*/

#include "sorting.h"

using namespace std;

int main() {
    int arrBubbleSort[] = {40, 25, 29, 56, 37, 27, 24, 32, 79, 12, 35, 38, 23, 31,
                           33, 26};
    int arrMergeSort[] = {40, 25, 29, 56, 37, 27, 24, 32, 79, 12, 35, 38, 23, 31,
                          33, 26};
    int arrQuickSort[] = {40, 25, 29, 56, 37, 27, 24, 32, 79, 12, 35, 38, 23, 31,
                          33, 26};
    int arrSize = 16;


    int insMoveCount = 0;
    int insCompCount = 0;
    int bubbleMoveCount = 0;
    int bubbleCompCount = 0;
    int mergeMoveCount = 0;
    int mergeCompCount = 0;
    int qsMoveCount = 0;
    int qsCompCount = 0;

    cout << "The initial array:" << endl;
    displayArray(arrBubbleSort, arrSize);
    cout << endl;


    cout << "Bubble Sort" << endl;
    bubbleSort(arrBubbleSort, arrSize, bubbleCompCount, bubbleMoveCount);
    displayArray(arrBubbleSort, arrSize);
    cout << "Data move count: " << bubbleMoveCount << endl;
    cout << "Key comparison count: " << bubbleCompCount << endl;
    cout << endl;

    cout << "Merge Sort" << endl;
    mergeSort(arrMergeSort, arrSize, mergeCompCount, mergeMoveCount);
    displayArray(arrMergeSort, arrSize);
    cout << "Data move count: " << mergeMoveCount << endl;
    cout << "Key comparison count: " << mergeCompCount << endl;
    cout << endl;

    cout << "Quick Sort" << endl;
    quickSort(arrQuickSort, arrSize, qsCompCount, qsMoveCount);
    displayArray(arrQuickSort, arrSize);
    cout << "Data move count: " << qsMoveCount << endl;
    cout << "Key comparison count: " << qsCompCount << endl;
    cout << endl;

    performanceAnalysis();

    return 0;
}
