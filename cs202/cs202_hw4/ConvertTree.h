//
// Created by innsolit on 12/12/2022.
//

#ifndef CS202_HW4_CONVERTTREE_H
#define CS202_HW4_CONVERTTREE_H

/*
* Title: Balanced Search Trees
* Author: Arda Iynem
* ID: 22002717
* Section: 1
* Assignment: 4
* Description: Convert Tree has member functions and data members allowing to create a 2-3-4 Tree from an RB Tree Input
*/

#include <string>
#include "NodeRB.h"
#include "Node234.h"

class ConvertTree {
private:
    NodeRB** arrRB;
    int sizeArr;

    void traverseOut(Node234* ptr, std::ofstream& ss);

public:
    NodeRB* findNodeFromArr(int item);
    int rootId;
    int nodeCount;
    Node234* root;
    void build(Node234* parentPtr, NodeRB* rbNode);
    void printTree(Node234* ptr);
    void outResult(const std::string& fileName);

    ConvertTree(const std::string& fileName);
    void printArr();
};




#endif //CS202_HW4_CONVERTTREE_H
