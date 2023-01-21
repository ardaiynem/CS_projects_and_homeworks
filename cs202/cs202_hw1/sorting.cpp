/*
* Title: Sorting and Algorithm Efficiency
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 1
* Description: Source file for the sorting, array creating and performance test algorithms
*/

#include "sorting.h"

using namespace std;

// From the textbook
void bubbleSort(int *arr, const int size, int &compCount, int &moveCount) {
    bool sorted = false;

    for (int pass = 1; (pass < size) && !sorted; ++pass) {
        sorted = true;
        for (int index = 0; index < size - pass; ++index) {
            int nextIndex = index + 1;

            if (arr[index] > arr[nextIndex]) { // Key Comparison
                // Swap
                int tmpInt;
                tmpInt = arr[index]; // Data Move
                arr[index] = arr[nextIndex]; // Data Move
                arr[nextIndex] = tmpInt; // Data Move

                moveCount = moveCount + 3;
                sorted = false;
            }
            compCount++;
        }
    }
}

void mergeSort(int *arr, const int size, int &compCount, int &moveCount){
    mergesort( arr, 0, size - 1, compCount, moveCount);
}

// From the textbook
void mergesort( int *arr, int first, int last, int &compCount, int &moveCount) {
    if (first < last) {
        int mid = (first + last) / 2; 	// index of midpoint

        mergesort(arr, first, mid, compCount, moveCount);

        mergesort(arr, mid+1, last, compCount, moveCount);

        merge(arr, first, mid, last, compCount, moveCount);
    }
}

const int MAX_SIZE = 50000;

// From the textbook
void merge( int *arr, int first, int mid, int last, int &compCount, int &moveCount) {
    int tempArray[MAX_SIZE]; 	// temporary array

    int first1 = first; 	// beginning of first subarray
    int last1 = mid; 		// end of first subarray
    int first2 = mid + 1;	// beginning of second subarray
    int last2 = last;		// end of second subarray
    int index = first1; // next available location in tempArray

    for ( ; (first1 <= last1) && (first2 <= last2); ++index) {
        if (arr[first1] < arr[first2]) { // Key Comparison
            tempArray[index] = arr[first1]; // Data Move
            moveCount++;
            ++first1;
        }
        else {
            tempArray[index] = arr[first2]; // Data Move
            moveCount++;
            ++first2;
        }
        compCount++;
    }
    // finish off the first subarray, if necessary
    for (; first1 <= last1; ++first1, ++index){
        tempArray[index] = arr[first1]; // Data Move
        moveCount++;
    }

    // finish off the second subarray, if necessary
    for (; first2 <= last2; ++first2, ++index){
        tempArray[index] = arr[first2]; // Data Move
        moveCount++;
    }

    // copy the result back into the original array
    for (index = first; index <= last; ++index){
        arr[index] = tempArray[index]; // Data Move
        moveCount++;
    }
}

void quickSort(int *arr, const int size, int &compCount, int &moveCount){
    quicksort( arr, 0, size - 1, compCount, moveCount );
}

// From the textbook
void quicksort(int* theArray, int first, int last, int &compCount, int &moveCount) {
    int pivotIndex;

    if (first < last) {
        partition(theArray, first, last, pivotIndex, compCount, moveCount);

        quicksort(theArray, first, pivotIndex - 1, compCount, moveCount);

        quicksort(theArray, pivotIndex + 1, last, compCount, moveCount);
    }
}

// From the textbook
void partition(int* theArray, int first, int last, int &pivotIndex, int &compCount, int &moveCount) {
    int pivot = theArray[first]; // Data Move
    moveCount++;

    int lastS1 = first;
    int firstUnknown = first + 1;

    for (  ; firstUnknown <= last; ++firstUnknown) {
        if (theArray[firstUnknown] < pivot) { // Key Comparison
            ++lastS1;

            int tmpVar;
            tmpVar =  theArray[firstUnknown]; // Data Move
            theArray[firstUnknown] = theArray[lastS1]; // Data Move
            theArray[lastS1] = tmpVar; // Data Move

            moveCount = moveCount + 3;
        }
        compCount++;
    }

    int tmpVar;
    tmpVar =  theArray[first]; // Data Move
    theArray[first] = theArray[lastS1]; // Data Move
    theArray[lastS1] = tmpVar; // Data Move

    moveCount = moveCount + 3;
    pivotIndex = lastS1;
}

void displayArray( const int* arr, const int size) {
    if (size > 0)
        cout << arr[0] ;

    for ( int i = 1; i < size; i++ ){
        cout << ", " << arr[i] ;
    }

    cout << endl ;
}

void createRandomArrays( int *&arr1, int *&arr2, int *&arr3, const int size){
    arr1 = new int [size];
    arr2 = new int [size];
    arr3 = new int [size];

    for ( int i = 0; i < size; i++ ) {
        arr1[i] = rand() % size;
        arr2[i] = arr1[i];
        arr3[i] = arr1[i];
    }
}

void createAscendingArrays(int *&arr1, int *&arr2, int *&arr3, const int size) {
    arr1 = new int [size];
    arr2 = new int [size];
    arr3 = new int [size];

    int lastNum = 0;

    for ( int i = 0; i < size; i++ ) {
        int randomNum = rand() % 10;
        lastNum += randomNum;

        arr1[i] = lastNum;
        arr2[i] = lastNum;
        arr3[i] = lastNum;
    }
}

void createDescendingArrays(int *&arr1, int *&arr2, int *&arr3, const int size) {
    arr1 = new int [size];
    arr2 = new int [size];
    arr3 = new int [size];

    int lastNum = 0;

    for ( int i = size - 1 ; i >= 0; i-- ) {
        int randomNum = rand() % 10;
        lastNum += randomNum;

        arr1[i] = lastNum;
        arr2[i] = lastNum;
        arr3[i] = lastNum;
    }
}


void performanceAnalysis(){

    cout << "RANDOMLY CREATED ARRAYS" << endl;
    cout << " ===================================== " << endl;
    randomArrayPerformance();

    cout << "ASCENDING ARRAYS" << endl;
    cout << " ===================================== " << endl;
    ascendingArrayPerformance();

    cout << "DESCENDING ARRAYS" << endl;
    cout << " ===================================== " << endl;
    descendingArrayPerformance();

}

void randomArrayPerformance(){
    int *arr4K1, *arr4K2, *arr4K3,
        *arr8K1, *arr8K2, *arr8K3,
        *arr12K1, *arr12K2, *arr12K3,
        *arr16K1, *arr16K2, *arr16K3,
        *arr20K1, *arr20K2, *arr20K3,
        *arr24K1, *arr24K2, *arr24K3,
        *arr28K1, *arr28K2, *arr28K3,
        *arr32K1, *arr32K2, *arr32K3,
        *arr36K1, *arr36K2, *arr36K3,
        *arr40K1, *arr40K2, *arr40K3,
        *arr44K1, *arr44K2, *arr44K3,
        *arr48K1, *arr48K2, *arr48K3;


    createRandomArrays( arr4K1, arr4K2, arr4K3, 4000);
    createRandomArrays( arr8K1, arr8K2, arr8K3,  8000);
    createRandomArrays( arr12K1, arr12K2, arr12K3, 12000);
    createRandomArrays( arr16K1, arr16K2, arr16K3,  16000);
    createRandomArrays( arr20K1, arr20K2, arr20K3, 20000);
    createRandomArrays( arr24K1, arr24K2, arr24K3,  24000);
    createRandomArrays( arr28K1, arr28K2, arr28K3, 28000);
    createRandomArrays( arr32K1, arr32K2, arr32K3, 32000);
    createRandomArrays( arr36K1, arr36K2, arr36K3,  36000);
    createRandomArrays( arr40K1, arr40K2, arr40K3,  40000);
    createRandomArrays( arr44K1, arr44K2, arr44K3, 44000);
    createRandomArrays( arr48K1, arr48K2, arr48K3, 48000);


    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Bubble Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K1, "bubble");
    performanceDisplayer( 8000, arr8K1, "bubble");
    performanceDisplayer( 12000, arr12K1, "bubble");
    performanceDisplayer( 16000, arr16K1, "bubble");
    performanceDisplayer( 20000, arr20K1, "bubble");
    performanceDisplayer( 24000, arr24K1, "bubble");
    performanceDisplayer( 28000, arr28K1, "bubble");
    performanceDisplayer( 32000, arr32K1, "bubble");
    performanceDisplayer( 36000, arr36K1, "bubble");
    performanceDisplayer( 40000, arr40K1, "bubble");
    performanceDisplayer( 44000, arr44K1, "bubble");
    performanceDisplayer( 48000, arr48K1, "bubble");

    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Merge Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K2, "merge");
    performanceDisplayer( 8000, arr8K2, "merge");
    performanceDisplayer( 12000, arr12K2, "merge");
    performanceDisplayer( 16000, arr16K2, "merge");
    performanceDisplayer( 20000, arr20K2, "merge");
    performanceDisplayer( 24000, arr24K2, "merge");
    performanceDisplayer( 28000, arr28K2, "merge");
    performanceDisplayer( 32000, arr32K2, "merge");
    performanceDisplayer( 36000, arr36K2, "merge");
    performanceDisplayer( 40000, arr40K2, "merge");
    performanceDisplayer( 44000, arr44K2, "merge");
    performanceDisplayer( 48000, arr48K2, "merge");

    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Quick Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K3, "quick");
    performanceDisplayer( 8000, arr8K3, "quick");
    performanceDisplayer( 12000, arr12K3, "quick");
    performanceDisplayer( 16000, arr16K3, "quick");
    performanceDisplayer( 20000, arr20K3, "quick");
    performanceDisplayer( 24000, arr24K3, "quick");
    performanceDisplayer( 28000, arr28K3, "quick");
    performanceDisplayer( 32000, arr32K3, "quick");
    performanceDisplayer( 36000, arr36K3, "quick");
    performanceDisplayer( 40000, arr40K3, "quick");
    performanceDisplayer( 44000, arr44K3, "quick");
    performanceDisplayer( 48000, arr48K3, "quick");
}

void ascendingArrayPerformance(){
    int *arr4K1, *arr4K2, *arr4K3,
        *arr8K1, *arr8K2, *arr8K3,
        *arr12K1, *arr12K2, *arr12K3,
        *arr16K1, *arr16K2, *arr16K3,
        *arr20K1, *arr20K2, *arr20K3,
        *arr24K1, *arr24K2, *arr24K3,
        *arr28K1, *arr28K2, *arr28K3,
        *arr32K1, *arr32K2, *arr32K3,
        *arr36K1, *arr36K2, *arr36K3,
        *arr40K1, *arr40K2, *arr40K3,
        *arr44K1, *arr44K2, *arr44K3,
        *arr48K1, *arr48K2, *arr48K3;


    createAscendingArrays( arr4K1, arr4K2, arr4K3, 4000);
    createAscendingArrays( arr8K1, arr8K2, arr8K3,  8000);
    createAscendingArrays( arr12K1, arr12K2, arr12K3, 12000);
    createAscendingArrays( arr16K1, arr16K2, arr16K3,  16000);
    createAscendingArrays( arr20K1, arr20K2, arr20K3, 20000);
    createAscendingArrays( arr24K1, arr24K2, arr24K3,  24000);
    createAscendingArrays( arr28K1, arr28K2, arr28K3, 28000);
    createAscendingArrays( arr32K1, arr32K2, arr32K3, 32000);
    createAscendingArrays( arr36K1, arr36K2, arr36K3,  36000);
    createAscendingArrays( arr40K1, arr40K2, arr40K3,  40000);
    createAscendingArrays( arr44K1, arr44K2, arr44K3, 44000);
    createAscendingArrays( arr48K1, arr48K2, arr48K3, 48000);


    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Bubble Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K1, "bubble");
    performanceDisplayer( 8000, arr8K1, "bubble");
    performanceDisplayer( 12000, arr12K1, "bubble");
    performanceDisplayer( 16000, arr16K1, "bubble");
    performanceDisplayer( 20000, arr20K1, "bubble");
    performanceDisplayer( 24000, arr24K1, "bubble");
    performanceDisplayer( 28000, arr28K1, "bubble");
    performanceDisplayer( 32000, arr32K1, "bubble");
    performanceDisplayer( 36000, arr36K1, "bubble");
    performanceDisplayer( 40000, arr40K1, "bubble");
    performanceDisplayer( 44000, arr44K1, "bubble");
    performanceDisplayer( 48000, arr48K1, "bubble");

    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Merge Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K2, "merge");
    performanceDisplayer( 8000, arr8K2, "merge");
    performanceDisplayer( 12000, arr12K2, "merge");
    performanceDisplayer( 16000, arr16K2, "merge");
    performanceDisplayer( 20000, arr20K2, "merge");
    performanceDisplayer( 24000, arr24K2, "merge");
    performanceDisplayer( 28000, arr28K2, "merge");
    performanceDisplayer( 32000, arr32K2, "merge");
    performanceDisplayer( 36000, arr36K2, "merge");
    performanceDisplayer( 40000, arr40K2, "merge");
    performanceDisplayer( 44000, arr44K2, "merge");
    performanceDisplayer( 48000, arr48K2, "merge");

    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Quick Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K3, "quick");
    performanceDisplayer( 8000, arr8K3, "quick");
    performanceDisplayer( 12000, arr12K3, "quick");
    performanceDisplayer( 16000, arr16K3, "quick");
    performanceDisplayer( 20000, arr20K3, "quick");
    performanceDisplayer( 24000, arr24K3, "quick");
    performanceDisplayer( 28000, arr28K3, "quick");
    performanceDisplayer( 32000, arr32K3, "quick");
    performanceDisplayer( 36000, arr36K3, "quick");
    performanceDisplayer( 40000, arr40K3, "quick");
    performanceDisplayer( 44000, arr44K3, "quick");
    performanceDisplayer( 48000, arr48K3, "quick");
}

void descendingArrayPerformance(){
    int *arr4K1, *arr4K2, *arr4K3,
        *arr8K1, *arr8K2, *arr8K3,
        *arr12K1, *arr12K2, *arr12K3,
        *arr16K1, *arr16K2, *arr16K3,
        *arr20K1, *arr20K2, *arr20K3,
        *arr24K1, *arr24K2, *arr24K3,
        *arr28K1, *arr28K2, *arr28K3,
        *arr32K1, *arr32K2, *arr32K3,
        *arr36K1, *arr36K2, *arr36K3,
        *arr40K1, *arr40K2, *arr40K3,
        *arr44K1, *arr44K2, *arr44K3,
        *arr48K1, *arr48K2, *arr48K3;


    createDescendingArrays( arr4K1, arr4K2, arr4K3, 4000);
    createDescendingArrays( arr8K1, arr8K2, arr8K3,  8000);
    createDescendingArrays( arr12K1, arr12K2, arr12K3, 12000);
    createDescendingArrays( arr16K1, arr16K2, arr16K3,  16000);
    createDescendingArrays( arr20K1, arr20K2, arr20K3, 20000);
    createDescendingArrays( arr24K1, arr24K2, arr24K3,  24000);
    createDescendingArrays( arr28K1, arr28K2, arr28K3, 28000);
    createDescendingArrays( arr32K1, arr32K2, arr32K3, 32000);
    createDescendingArrays( arr36K1, arr36K2, arr36K3,  36000);
    createDescendingArrays( arr40K1, arr40K2, arr40K3,  40000);
    createDescendingArrays( arr44K1, arr44K2, arr44K3, 44000);
    createDescendingArrays( arr48K1, arr48K2, arr48K3, 48000);


    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Bubble Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K1, "bubble");
    performanceDisplayer( 8000, arr8K1, "bubble");
    performanceDisplayer( 12000, arr12K1, "bubble");
    performanceDisplayer( 16000, arr16K1, "bubble");
    performanceDisplayer( 20000, arr20K1, "bubble");
    performanceDisplayer( 24000, arr24K1, "bubble");
    performanceDisplayer( 28000, arr28K1, "bubble");
    performanceDisplayer( 32000, arr32K1, "bubble");
    performanceDisplayer( 36000, arr36K1, "bubble");
    performanceDisplayer( 40000, arr40K1, "bubble");
    performanceDisplayer( 44000, arr44K1, "bubble");
    performanceDisplayer( 48000, arr48K1, "bubble");

    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Merge Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K2, "merge");
    performanceDisplayer( 8000, arr8K2, "merge");
    performanceDisplayer( 12000, arr12K2, "merge");
    performanceDisplayer( 16000, arr16K2, "merge");
    performanceDisplayer( 20000, arr20K2, "merge");
    performanceDisplayer( 24000, arr24K2, "merge");
    performanceDisplayer( 28000, arr28K2, "merge");
    performanceDisplayer( 32000, arr32K2, "merge");
    performanceDisplayer( 36000, arr36K2, "merge");
    performanceDisplayer( 40000, arr40K2, "merge");
    performanceDisplayer( 44000, arr44K2, "merge");
    performanceDisplayer( 48000, arr48K2, "merge");

    cout << "-----------------------------------------------------" << endl;
    cout << "Analysis of Quick Sort" << endl;
    printf("%-10s %-12s %-15s %s\n", "Array Size", "Elapsed Time (ms)", "compCount", "moveCount");

    performanceDisplayer( 4000, arr4K3, "quick");
    performanceDisplayer( 8000, arr8K3, "quick");
    performanceDisplayer( 12000, arr12K3, "quick");
    performanceDisplayer( 16000, arr16K3, "quick");
    performanceDisplayer( 20000, arr20K3, "quick");
    performanceDisplayer( 24000, arr24K3, "quick");
    performanceDisplayer( 28000, arr28K3, "quick");
    performanceDisplayer( 32000, arr32K3, "quick");
    performanceDisplayer( 36000, arr36K3, "quick");
    performanceDisplayer( 40000, arr40K3, "quick");
    performanceDisplayer( 44000, arr44K3, "quick");
    performanceDisplayer( 48000, arr48K3, "quick");
}

void performanceDisplayer(int arrSize, int* arr, string sortMethod){
    double timeElapsed = 0;
    int compCount = 0, moveCount = 0;

    if ( sortMethod == "bubble"){
        clock_t startTime = clock();
        bubbleSort(arr, arrSize, compCount, moveCount);
        timeElapsed = 1000 * double(clock() - startTime ) / CLOCKS_PER_SEC;

        printf("%-10d %-17.0f %-15u %u\n", arrSize, timeElapsed, compCount, moveCount);
    }
    else if ( sortMethod == "merge"){
        clock_t startTime = clock();
        mergeSort(arr, arrSize, compCount, moveCount);
        timeElapsed = 1000 * double(clock() - startTime ) / CLOCKS_PER_SEC;
        printf("%-10d %-17.0f %-15u %u\n", arrSize, timeElapsed, compCount, moveCount);
    }
    else if ( sortMethod == "quick"){
        clock_t startTime = clock();
        quickSort(arr, arrSize, compCount, moveCount);
        timeElapsed = 1000 * double(clock() - startTime ) / CLOCKS_PER_SEC;
        printf("%-10d %-17.0f %-15u %u\n", arrSize, timeElapsed, compCount, moveCount);
    }
    else{
        cout << "Error: no matching sort type" << endl;
    }
}
