/* *
* Title : Binary Search Trees
* Author : Arda Iynem
* ID : 22002717
* Section : 1
* Assignment : 2
* Description : Prototypes of TreeNode functions and class definition
*/

#ifndef CS202_HW2_TREENODE_H
#define CS202_HW2_TREENODE_H
#include <cstddef>

typedef int TreeItemType;

class TreeNode {
private:
    TreeItemType item;       // data portion
    TreeNode *leftChildPtr;  // pointer to left child
    TreeNode *rightChildPtr; // pointer to right child

    friend class BST;

public:
    TreeNode();
    TreeNode(const TreeItemType& nodeItem, TreeNode *left = NULL, TreeNode *right = NULL);
};

#endif //CS202_HW2_TREENODE_H
