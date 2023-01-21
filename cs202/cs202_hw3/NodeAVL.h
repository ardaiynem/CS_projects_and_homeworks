/**
* Title: AVL Node
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: AVL Node Header
*/

#ifndef CS202_HW3_NODEAVL_H
#define CS202_HW3_NODEAVL_H

#include <string>

typedef std::string TreeItemType;

class NodeAVL {
private:
    TreeItemType item;       // data portion
    NodeAVL *leftChildPtr;  // pointer to left child
    NodeAVL *rightChildPtr; // pointer to right child
    NodeAVL *parentPtr; // pointer to right child

    int balanceFactor;

    friend class DictionaryAVLTree;

public:
    NodeAVL();
    //NodeAVL(const TreeItemType& nodeItem, NodeAVL *left = NULL, NodeAVL *right = NULL);
};


#endif //CS202_HW3_NODEAVL_H
