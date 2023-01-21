/* *
* Title : Binary Search Trees
* Author : Arda Iynem
* ID : 22002717
* Section : 1
* Assignment : 2
* Description : Implementation of heightAnalysis function
*/

#include <cstdlib>
#include <iostream>
#include "analysis.h"
#include "BST.h"

void heightAnalysis() {
    const int ARRAY_SIZE = 30000;

    // Declare array and tree
    int* arrayRandom = new int[ARRAY_SIZE];
    BST tree;

    // Insert array with random numbers
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        arrayRandom[i] = rand();
    }

    std::cout << "Part d - Analysis of BST Height (Part 1 - Insertion)" << std::endl;
    std::cout << "-----------------------------------------------------" << std::endl;
    printf("%-20s%-15s\n", "Tree Size", "Tree Height");
    std::cout << "-----------------------------------------------------" << std::endl;

    // Insert BST with random array elements
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        tree.searchTreeInsert(arrayRandom[i]);

        if (((i + 1) % 1500) == 0)
            printf("%-20d%-15d\n", i + 1, tree.getHeight());
    }

    // Shuffle the array
    for ( int i = 0; i < ARRAY_SIZE; ++i){
        int a = rand() % ARRAY_SIZE;
        int b = rand() % ARRAY_SIZE;

        int tmp = arrayRandom[a];
        arrayRandom[a] = arrayRandom[b];
        arrayRandom[b] = tmp;
    }

    // Empty lines for better view
    std::cout << "\n\n\n";

    std::cout << "Part d - Analysis of BST Height (Part 2 - Deletion)" << std::endl;
    std::cout << "-----------------------------------------------------" << std::endl;
    printf("%-20s%-15s\n", "Tree Size", "Tree Height");
    std::cout << "-----------------------------------------------------" << std::endl;

    // Delete in elements in shuffled array from BST in order
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        tree.searchTreeDelete(arrayRandom[i]);

        if (((i + 1) % 1500) == 0)
            printf("%-20d%-15d\n",(30000 - (i + 1)), tree.getHeight());
    }
}