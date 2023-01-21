/* *
* Title : Binary Search Trees
* Author : Arda Iynem
* ID : 22002717
* Section : 1
* Assignment : 2
* Description : main.cpp for testing and analysing BST
*/

#include <iostream>
#include "BST.h"
#include "analysis.h"

int main() {
    BST bstDemo;
    int numbers[] = {30, 40, 35, 20, 50, 45, 10, 25, 5, 15};

    for(int number : numbers)
        bstDemo.searchTreeInsert(number);

    std::cout << "Height of the BST after the insertion of given array: ";
    std::cout << bstDemo.getHeight() << std::endl << std::endl;;

    bstDemo.searchTreeDelete(35);
    bstDemo.searchTreeDelete(40);

    std::cout << "Median of the final BST: ";
    std::cout << bstDemo.medianOfBST() << std::endl << std::endl;

    std::cout << "Range Search (Inorder): ";
    bstDemo.rangeSearch(5, 43);
    std::cout << std::endl;

    std::cout << "Height Analysis Starts" << std::endl << std::endl;
    heightAnalysis();

    return 0;
}
