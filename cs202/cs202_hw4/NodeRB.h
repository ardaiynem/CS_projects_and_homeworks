/*
* Title: Balanced Search Trees
* Author: Arda Iynem
* ID: 22002717
* Section: 1
* Assignment: 4
* Description: Includes essential properties and constructors for RB Node
*/

#ifndef CS202_HW4_NODERB_H
#define CS202_HW4_NODERB_H

typedef int TreeItemType;

class NodeRB {
private:
    TreeItemType item;
    int leftChild, rightChild;
    int color;


    friend class ConvertTree;

public:
    NodeRB();
    NodeRB(int item, int leftChild, int rightChild, int color);
};


#endif //CS202_HW4_NODERB_H
