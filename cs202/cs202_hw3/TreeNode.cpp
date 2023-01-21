/**
* Title: Tree Node
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: Tree Node Header
*/

#include "TreeNode.h"

TreeNode::TreeNode() : item(""), leftChildPtr(NULL), rightChildPtr(NULL) {}

TreeNode::TreeNode(const TreeItemType &nodeItem, TreeNode *left, TreeNode *right)
        : item(nodeItem), leftChildPtr(left), rightChildPtr(right) {}