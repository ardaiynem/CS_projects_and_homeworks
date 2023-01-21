/**
* Title: BST Trees
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: BST Trees Source
*/

#include <stdexcept>
#include "DictionaryBST.h"

// Similar implementation to textbook
TreeItemType DictionaryBST::retrieveItem(TreeNode *treePtr, const TreeItemType &item) const {
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
void DictionaryBST::insertItem(TreeNode *&treePtr, const TreeItemType &newItem) {
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
void DictionaryBST::deleteItem(TreeNode *&treePtr, const TreeItemType &item) {
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
void DictionaryBST::deleteNodeItem(TreeNode *&nodePtr) {
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
void DictionaryBST::processLeftmost(TreeNode *&nodePtr, TreeItemType &item) {
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
void DictionaryBST::destroyTree(TreeNode *&treePtr) {
    if (treePtr != NULL){
        destroyTree(treePtr->leftChildPtr);
        destroyTree(treePtr->rightChildPtr);
        delete treePtr;
        treePtr = NULL;
    }
}

DictionaryBST::DictionaryBST(std::string dictionaryFile) : DictionarySearchTree(dictionaryFile) {
    root = NULL;

    std::fstream newfile;

    newfile.open(dictionaryFile,std::ios::in); //open a file to perform read operation using file object
    if (newfile.is_open()){   //checking whether the file is open
        std::string line;
        while(getline(newfile, line)){ //read data from file object and put it into string.
            insert(line);
        }
        newfile.close(); //close the file object.
    }
}

void DictionaryBST::searchTreeInsert(const TreeItemType &newItem) {
    insertItem(root, newItem);
}

void DictionaryBST::searchHelp(TreeNode *treePtr, std::string word, int &numComparisons, bool &found) const {
    if (treePtr == NULL)
        return;

    int compRes = word.compare(treePtr->item);
    numComparisons++;

    if (compRes == 0)
        found = true;
    else if(compRes < 0)
        searchHelp(treePtr->leftChildPtr,word, numComparisons, found);
    else
        searchHelp(treePtr->rightChildPtr,word, numComparisons, found);
}

void DictionaryBST::insert(std::string word) {
    searchTreeInsert(word);
}

void DictionaryBST::search(std::string word, int &numComparisons, bool &found) const {
    searchHelp(root, word, numComparisons, found);
}

void DictionaryBST::search(std::string queryFile, std::string outputFile) const {
    std::fstream infile;
    std::fstream outfile;
    int queryNum = 0;
    int maxComp = 0;
    int totalComp = 0;

    outfile.open(outputFile,std::ios::out);
    if(outfile.is_open())
    {
        infile.open(queryFile,std::ios::in);
        if (infile.is_open()){
            std::string line;
            while(getline(infile, line)){
                int numComp = 0;
                bool isFound = false;

                search(line, numComp, isFound);
                outfile << line << " " << isFound << " " << numComp << "\n";
                ++queryNum;
                totalComp += numComp;
                if (numComp > maxComp)
                    maxComp = numComp;
            }
            outfile << "# of queries: " << queryNum << "\n";
            outfile << "Maximum # of comparisons: " << maxComp << "\n";
            outfile << "Average # of comparisons: " << ((double) totalComp) / queryNum <<  "\n";
            infile.close();
        }
    }
}

DictionaryBST::~DictionaryBST() {
    destroyTree(root);
}

