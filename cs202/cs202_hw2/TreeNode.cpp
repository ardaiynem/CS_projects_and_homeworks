/* *
* Title : Binary Search Trees
* Author : Arda Iynem
* ID : 22002717
* Section : 1
* Assignment : 2
* Description : Implementation of Tree Node
*/
#include "TreeNode.h"

TreeNode::TreeNode() {}

TreeNode::TreeNode(const TreeItemType &nodeItem, TreeNode *left, TreeNode *right)
: item(nodeItem), leftChildPtr(left), rightChildPtr(right) {}



