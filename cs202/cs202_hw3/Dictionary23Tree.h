//
/**
* Title: 2-3 Trees
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: 2-3 Trees Header
*/


#ifndef CS202_HW3_DICTIONARY23TREE_H
#define CS202_HW3_DICTIONARY23TREE_H

#include "Node23.h"
#include "DictionarySearchTree.h"

class Dictionary23Tree : public DictionarySearchTree {
private:
    Node23* root;

    void insertNode(Node23 *&treePtr, Node23 *parent, const TreeItemType &newItem);
    void split(Node23 *treePtr);

    void searchHelp( Node23* treePtr, std::string word, int& numComparisons, bool& found ) const;
    void destroyTree(Node23 * &treePtr);
protected:
public:
    Dictionary23Tree(std::string dictionaryFile);
    virtual ~Dictionary23Tree();
    virtual void insert(std::string word);
    virtual void search( std::string word, int& numComparisons, bool& found ) const;
    virtual void search( std::string queryFile, std::string outputFile ) const;

    //void deleteItem(Node23 *&treePtr, const TreeItemType &item);
};


#endif //CS202_HW3_DICTIONARY23TREE_H
