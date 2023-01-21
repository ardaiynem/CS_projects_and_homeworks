//
// Created by innsolit on 30/11/2022.
//

#ifndef CS202_HW3_DICTIONARYAVLTREE_H
#define CS202_HW3_DICTIONARYAVLTREE_H


#include <string>
#include "NodeAVL.h"
/**
* Title: AVL Trees
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: AVL Trees Header
*/

#include "DictionarySearchTree.h"

class DictionaryAVLTree : public DictionarySearchTree {
private:
    NodeAVL* root;

    void leftRotate(NodeAVL* node);
    void rightRotate(NodeAVL* node);
    void balance(NodeAVL* node);

    void deleteNode(NodeAVL *&nodePtr);
    void processLeftmost(NodeAVL *&nodePtr, TreeItemType &item);
    void updateBalance(NodeAVL* node);
    void insertNode(NodeAVL *&treePtr, NodeAVL *parentPtr, const TreeItemType &newItem);

    void searchHelp( NodeAVL* treePtr, std::string word, int& numComparisons, bool& found ) const;
    void destroyTree(NodeAVL * &treePtr);
protected:
public:
    DictionaryAVLTree(std::string dictionaryFile);
    virtual ~DictionaryAVLTree();
    virtual void insert(std::string word);
    virtual void search( std::string word, int& numComparisons, bool& found ) const;
    virtual void search( std::string queryFile, std::string outputFile ) const;

    void deleteItem(NodeAVL *&treePtr, const TreeItemType &item);
};


#endif //CS202_HW3_DICTIONARYAVLTREE_H
