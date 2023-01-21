/*
* Title: Balanced Search Trees
* Author: Arda Iynem
* ID: 22002717
* Section: 1
* Assignment: 4
* Description: main makes the required function calls for tree conversion operation
*/

#include <iostream>
#include "ConvertTree.h"

int main(int argc, char** argv) {
    ConvertTree convertTree(argv[1]);
    convertTree.build(convertTree.root , convertTree.findNodeFromArr(convertTree.rootId));
    convertTree.outResult(argv[2]);
    return 0;
}
