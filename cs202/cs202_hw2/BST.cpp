/* *
* Title : Binary Search Trees
* Author : Arda Iynem
* ID : 22002717
* Section : 1
* Assignment : 2
* Description : Implementation of Binary Search Tree
*/

#include "BST.h"
#include <iostream>

// Similar implementation to textbook
TreeItemType BST::retrieveItem(TreeNode *treePtr, const TreeItemType &item) const {
    if (treePtr == NULL)
        throw std::runtime_error("Node not found!");
    else if (item == treePtr->item)
        return treePtr->item;
    else if (item < treePtr->item)
        return retrieveItem(treePtr->leftChildPtr, item);
    else
        return retrieveItem(treePtr->rightChildPtr, item);
}

// Similar implementation to textbook
void BST::insertItem(TreeNode *&treePtr, const TreeItemType &newItem) {
    if (treePtr == NULL) {
        treePtr = new TreeNode(newItem, NULL, NULL);
        if (treePtr == NULL)
            throw std::runtime_error("Insertion failed!");
    }
    else if (newItem < treePtr->item)
        insertItem(treePtr->leftChildPtr, newItem);
    else
        insertItem(treePtr->rightChildPtr, newItem);
}

// Similar implementation to textbook
void BST::deleteItem(TreeNode *&treePtr, const TreeItemType &item) {
    if (treePtr == NULL)
        throw std::runtime_error("Deletion failed!");
    else if (item == treePtr->item)
        deleteNodeItem(treePtr);
    else if (item < treePtr->item)
        deleteItem(treePtr->leftChildPtr, item);
    else
        deleteItem(treePtr->rightChildPtr, item);
}

// Similar implementation to textbook
void BST::deleteNodeItem(TreeNode *&nodePtr) {
    TreeNode *delPtr;
    TreeItemType replacementItem;

    if ( (nodePtr->leftChildPtr == NULL) &&
         (nodePtr->rightChildPtr == NULL) ) {
        delete nodePtr;
        nodePtr = NULL;
    }
    else if (nodePtr->leftChildPtr == NULL) {
        delPtr = nodePtr;
        nodePtr = nodePtr->rightChildPtr;
        delPtr->rightChildPtr = NULL;
        delete delPtr;
    }
    else if (nodePtr->rightChildPtr == NULL) {
        delPtr = nodePtr;
        nodePtr = nodePtr->leftChildPtr;
        delPtr->leftChildPtr = NULL;
        delete delPtr;
    }
    else {
        processLeftmost(nodePtr->rightChildPtr, replacementItem);
        nodePtr->item = replacementItem;
    }
}

// Similar implementation to textbook
void BST::processLeftmost(TreeNode *&nodePtr, TreeItemType &item) {
    if (nodePtr->leftChildPtr == NULL) {
        item = nodePtr->item;
        TreeNode *delPtr = nodePtr;
        nodePtr = nodePtr->rightChildPtr;
        delPtr->rightChildPtr = NULL;
        delete delPtr;
    }
    else
        processLeftmost(nodePtr->leftChildPtr, item);
}

// Similar implementation to textbook
void BST::copyTree(TreeNode *treePtr, TreeNode *&newTreePtr) const {
    if (treePtr != NULL) {
        newTreePtr = new TreeNode(treePtr->item, NULL, NULL);
        copyTree(treePtr->leftChildPtr, newTreePtr->leftChildPtr);
        copyTree(treePtr->rightChildPtr, newTreePtr->rightChildPtr);
    }
    else
        newTreePtr = NULL;
}

// Similar implementation to textbook
void BST::destroyTree(TreeNode *&treePtr) {
    if (treePtr != NULL){
        destroyTree(treePtr->leftChildPtr);
        destroyTree(treePtr->rightChildPtr);
        delete treePtr;
        treePtr = NULL;
    }
}

BST::BST() : root(NULL) {}

BST::BST(const TreeItemType &rootItem) {
    root = new TreeNode(rootItem, NULL, NULL);
}

BST::BST(const BST &tree) {
    copyTree(tree.root, root);
}

BST::~BST() {
    destroyTree(root);
}

bool BST::isEmpty() const {
    return root;
}

TreeItemType BST::searchTreeRetrieve(TreeItemType anEntry) const {
    return retrieveItem(root, anEntry);
}

void BST::searchTreeInsert(const TreeItemType &newItem) {
    insertItem(root, newItem);
}

void BST::searchTreeDelete(const TreeItemType &anEntry) {
    deleteItem(root, anEntry);
}

void BST::preorderTraverse(FunctionType visit, TreeItemType* array, int &nodeCount) {
    preorder(root, visit, array, nodeCount);
}

void BST::inorderTraverse(FunctionType visit, TreeItemType* array, int &nodeCount) {
    inorder(root, visit, array, nodeCount);
}

void BST::postorderTraverse(FunctionType visit, TreeItemType* array, int &nodeCount) {
    postorder(root, visit, array, nodeCount);
}

// Similar implementation to textbook
void BST::preorder(TreeNode *treePtr, FunctionType visit, TreeItemType * array, int &nodeCount) {
    if (treePtr != NULL) {
        visit(treePtr->item, array, nodeCount);
        preorder(treePtr->leftChildPtr, visit, array, nodeCount);
        preorder(treePtr->rightChildPtr, visit, array, nodeCount);
    }
}

// Similar implementation to textbook
void BST::inorder(TreeNode *treePtr, FunctionType visit, TreeItemType* array, int &nodeCount) {
    if (treePtr != NULL) {
        inorder(treePtr->leftChildPtr, visit, array, nodeCount);
        visit(treePtr->item, array, nodeCount);
        inorder(treePtr->rightChildPtr, visit, array, nodeCount);
    }
}

// Similar implementation to textbook
void BST::postorder(TreeNode *treePtr, FunctionType visit, TreeItemType* array, int &nodeCount) {
    if (treePtr != NULL) {
        postorder(treePtr->leftChildPtr, visit, array, nodeCount);
        postorder(treePtr->rightChildPtr, visit, array, nodeCount);
        visit(treePtr->item, array, nodeCount);
    }
}

// Similar implementation to textbook
BST &BST::operator=(const BST &rhs) {
    if (&rhs == this)
        return *this;

    if (!isEmpty())
        destroyTree(root);
    copyTree(rhs.root, root);

    return *this;
}

void BST::insert(int key) {
    searchTreeInsert(key);
}

void BST::deleteKey(int key) {
    searchTreeDelete(key);
}

// Uses an overloaded getHeight method to utilize recursion
int BST::getHeight() {
    return getHeight(root);
}

// Overloaded getHeight method called by getHeight()
int BST::getHeight(TreeNode* treePtr) {
    if (treePtr == NULL)
        return 0;

    int leftTreeHeight = getHeight(treePtr->leftChildPtr);
    int rightTreeHeight = getHeight(treePtr->rightChildPtr);
    int max = (leftTreeHeight < rightTreeHeight) ? rightTreeHeight : leftTreeHeight;

    return max + 1;
}

// Function pointed by Function Pointer in traversal. Required by medianOfBST
void addKeyToArray(TreeItemType& anItem, TreeItemType* array, int& nodeCount) {
    array[nodeCount] = anItem;
    nodeCount++;
}

// Calculates median by help of traversal functions
double BST::medianOfBST() {
    const int MAX_NODE = 1000;
    int* arrayValues = new int[MAX_NODE]{};
    int nodeCount = 0;

    inorderTraverse(addKeyToArray, arrayValues, nodeCount);

    if (nodeCount == 0)
        return 0;
    else if (nodeCount % 2)
        return arrayValues[nodeCount / 2];
    else
        return ((arrayValues[nodeCount / 2 - 1] + arrayValues[nodeCount / 2]) / 2.0);
}

// Calls rangePrint to utilize recursion
void BST::rangeSearch(int a, int b) {
    rangePrint(root, a, b);
    std::cout << std::endl;
}

// Helper function for rangeSearch
void BST::rangePrint(TreeNode *treePtr, int a, int b) {
    if (treePtr != NULL) {
        // Inorder
        if (treePtr->item > a)
            rangePrint(treePtr->leftChildPtr, a, b);
        if (treePtr->item > a && treePtr->item < b)
            std::cout << treePtr->item << "  ";
        if (treePtr->item < b)
            rangePrint(treePtr->rightChildPtr, a, b);
    }
}