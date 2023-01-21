/**
* Title: BST Trees
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: BST Trees Header
*/


#ifndef CS202_HW3_DICTIONARYBST_H
#define CS202_HW3_DICTIONARYBST_H
#include "TreeNode.h"
#include "DictionarySearchTree.h"

typedef void (*FunctionType)(TreeItemType& anItem, TreeItemType* array, int &nodeCount);

class DictionaryBST : public DictionarySearchTree {
private:
    TreeNode* root;

    void searchHelp( TreeNode* treePtr, std::string word, int& numComparisons, bool& found ) const;

protected:
    TreeItemType retrieveItem(TreeNode *treePtr, const TreeItemType& item) const;

    void insertItem(TreeNode *&treePtr, const TreeItemType& newItem);

    void deleteItem(TreeNode *&treePtr, const TreeItemType& item);
    void deleteNodeItem(TreeNode * &nodePtr);
    void processLeftmost(TreeNode * &nodePtr, TreeItemType& item);

    void destroyTree(TreeNode * &treePtr);

public:
    DictionaryBST(std::string dictionaryFile);
    virtual ~DictionaryBST();


    void searchTreeInsert(const TreeItemType& newItem);
    virtual void insert(std::string word);
    virtual void search( std::string word, int& numComparisons, bool& found ) const;
    virtual void search( std::string queryFile, std::string outputFile ) const;
};


#endif //CS202_HW3_DICTIONARYBST_H
