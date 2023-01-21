/* *
* Title : Binary Search Trees
* Author : Arda Iynem
* ID : 22002717
* Section : 1
* Assignment : 2
* Description : Prototypes of Binary Search Tree functions and class definition
*/

#ifndef CS202_HW2_BST_H
#define CS202_HW2_BST_H
#include "TreeNode.h"

typedef void (*FunctionType)(TreeItemType& anItem, TreeItemType* array, int &nodeCount);

class BST {
private:
    TreeNode* root;

    // Private helper functions for public functions
    void rangePrint(TreeNode *treePtr, int a, int b);
    int getHeight(TreeNode* treePtr); // Overloaded getHeight(); for recursion
    void preorder(TreeNode* treePtr, FunctionType visit, TreeItemType* array, int &nodeCount);
    void inorder(TreeNode* treePtr, FunctionType visit, TreeItemType* array, int &nodeCount);
    void postorder(TreeNode* treePtr, FunctionType visit, TreeItemType* array, int &nodeCount);

protected:
    TreeItemType retrieveItem(TreeNode *treePtr, const TreeItemType& item) const;

    void insertItem(TreeNode *&treePtr, const TreeItemType& newItem);

    void deleteItem(TreeNode *&treePtr, const TreeItemType& item);
    void deleteNodeItem(TreeNode * &nodePtr);
    void processLeftmost(TreeNode * &nodePtr, TreeItemType& item);

    void copyTree(TreeNode *treePtr, TreeNode* & newTreePtr) const; // Recursive
    void destroyTree(TreeNode * &treePtr); // Recursive

public:
    BST();
    BST(const TreeItemType& rootItem);
    BST(const BST& tree);
    ~BST();

    bool isEmpty() const;

    TreeItemType searchTreeRetrieve(TreeItemType anEntry) const;
    void searchTreeInsert(const TreeItemType& newItem);
    void searchTreeDelete(const TreeItemType& anEntry);

    void preorderTraverse(FunctionType visit, TreeItemType* array, int &nodeCount);
    void inorderTraverse(FunctionType visit, TreeItemType* array, int &nodeCount);
    void postorderTraverse(FunctionType visit, TreeItemType* array, int &nodeCount);

    BST& operator=(const BST& rhs);

    void insert(int key);
    void deleteKey(int key);
    int getHeight();
    double medianOfBST();
    void rangeSearch(int a, int b);

};

#endif //CS202_HW2_BST_H
