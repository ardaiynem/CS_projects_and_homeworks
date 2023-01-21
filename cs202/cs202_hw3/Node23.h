/**
* Title: 2-3 Node
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: 2-3 Node Header
*/

#ifndef CS202_HW3_NODE23_H
#define CS202_HW3_NODE23_H

#include <string>

typedef std::string TreeItemType;

class Node23 {
private:
    TreeItemType smallItem, largeItem, extraItem;
    Node23 *leftChildPtr, *midChildPtr, *rightChildPtr, *parentPtr, *extraPtr;

    friend class Dictionary23Tree;

public:
    Node23();
};


#endif //CS202_HW3_NODE23_H
