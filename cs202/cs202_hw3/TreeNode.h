/**
* Title: Tree Node
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: Tree Node Header
*/

#ifndef CS202_HW3_TREENODE_H
#define CS202_HW3_TREENODE_H


#include <cstring>
#include <string>

typedef std::string TreeItemType;

class TreeNode {
private:
    TreeItemType item;       // data portion
    TreeNode *leftChildPtr;  // pointer to left child
    TreeNode *rightChildPtr; // pointer to right child

    friend class DictionaryBST;

public:
    TreeNode();
    TreeNode(const TreeItemType& nodeItem, TreeNode *left = NULL, TreeNode *right = NULL);
};


#endif //CS202_HW3_TREENODE_H
