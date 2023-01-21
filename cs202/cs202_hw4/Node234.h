/*
* Title: Balanced Search Trees
* Author: Arda Iynem
* ID: 22002717
* Section: 1
* Assignment: 4
* Description: Includes essential properties and constructors for 2-3-4 Node
*/

#ifndef CS202_HW4_NODE234_H
#define CS202_HW4_NODE234_H


typedef int TreeItemType;

class Node234 {
private:
    int size;
    int nodeId;
    TreeItemType smallItem, midItem, largeItem;
    Node234 *leftChildPtr, *midLeftChildPtr, *midRightChildPtr, *rightChildPtr;

    friend class ConvertTree;

public:
    Node234();
    Node234(int smallItem);
    Node234(int smallItem, int midItem);
    Node234(int smallItem, int midItem, int largeItem);
};


#endif //CS202_HW4_NODE234_H
