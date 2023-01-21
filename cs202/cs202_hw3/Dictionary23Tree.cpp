/**
* Title: 2-3 Trees
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: 2-3 Trees Source
*/

#include "Dictionary23Tree.h"

void Dictionary23Tree::insertNode(Node23 *&treePtr, Node23 *parent, const TreeItemType &newItem) {
    if( treePtr == NULL) {
        treePtr = new Node23;
        treePtr->smallItem = newItem;
        return;
    }

    if (treePtr->leftChildPtr == NULL && treePtr->midChildPtr == NULL && treePtr->rightChildPtr == NULL) {
        if (treePtr->largeItem.empty()) {
            if(treePtr->smallItem.compare(newItem) == 1) {
                treePtr->largeItem = treePtr->smallItem;
                treePtr->smallItem = newItem;
            }
            else
                treePtr->largeItem = newItem;
        }
        else {
            if (treePtr->smallItem.compare(newItem) == 1) {
                treePtr->extraItem = treePtr->largeItem;
                treePtr->largeItem = treePtr->smallItem;
                treePtr->smallItem = newItem;
            }
            else if (treePtr->largeItem.compare(newItem) == -1) {
                treePtr->extraItem = newItem;
            }
            else {
                treePtr->extraItem = treePtr->largeItem;
                treePtr->largeItem = newItem;
            }

            split(treePtr);
        }
    }
    else if (treePtr->rightChildPtr == NULL) {
        parent = treePtr;
        if (treePtr->smallItem.compare(newItem) > 0) {
            insertNode(treePtr->leftChildPtr, parent, newItem);
        }
        else {
            insertNode(treePtr->midChildPtr, parent, newItem);
        }
    }
    else {
        parent = treePtr;
        if (treePtr->smallItem.compare(newItem) > 0) {
            insertNode(treePtr->leftChildPtr, parent, newItem);
        }
        else if (treePtr->largeItem.compare(newItem) < 0) {
            insertNode(treePtr->rightChildPtr, parent, newItem);
        }
        else {
            insertNode(treePtr->midChildPtr, parent, newItem);
        }
    }

}

void Dictionary23Tree::split(Node23 *treePtr) {
    if (treePtr == NULL | treePtr->extraItem.empty())
        return;

    Node23* parent;
    Node23* n1 = new Node23;
    Node23* n2 = new Node23;

    if (treePtr == root) {
        parent = new Node23;
    } else {
        parent = treePtr->parentPtr;
    }

    n1->smallItem = treePtr->smallItem;
    n2->smallItem = treePtr->extraItem;

    n1->leftChildPtr = treePtr->leftChildPtr;
    n1->midChildPtr = treePtr->midChildPtr;
    n2->leftChildPtr = treePtr->rightChildPtr;
    n2->midChildPtr = treePtr->extraPtr;

    n1->parentPtr = parent;
    n2->parentPtr = parent;

    treePtr->midChildPtr->parentPtr = n1;

    std::string newItem = treePtr->largeItem;

    if (parent->smallItem.empty()) {
        parent->smallItem = newItem;

        parent->leftChildPtr = n1;
        parent->midChildPtr = n2;

        root = parent;
    }
    else if (parent->largeItem.empty()) {
        if (treePtr == parent->leftChildPtr) {
            parent->largeItem = treePtr->smallItem;
            parent->smallItem = newItem;

            parent->rightChildPtr = parent->midChildPtr;
            parent->leftChildPtr = n1;
            parent->midChildPtr = n2;

        }
        else {
            parent->largeItem = newItem;

            parent->midChildPtr = n1;
            parent->rightChildPtr = n2;
        }
    }
    else {
        if (treePtr == parent->leftChildPtr) {
            parent->extraItem = parent->largeItem;
            parent->largeItem = parent->smallItem;
            parent->smallItem = newItem;

            parent->extraPtr = parent->rightChildPtr;
            parent->rightChildPtr = parent->midChildPtr;
            parent->midChildPtr = n2;
            parent->leftChildPtr = n1;
        }
        else if (treePtr == parent->rightChildPtr) {
            parent->extraItem = newItem;

            parent->extraPtr = n2;
            parent->rightChildPtr = n1;
        }
        else {
            parent->extraItem = parent->largeItem;
            parent->largeItem = newItem;

            parent->extraPtr = parent->rightChildPtr;
            parent->rightChildPtr = n2;
            parent->midChildPtr = n1;
        }
    }

    treePtr->leftChildPtr = NULL;
    treePtr->midChildPtr = NULL;treePtr->rightChildPtr = NULL;
    treePtr->extraPtr = NULL;
    treePtr->parentPtr = NULL;
    delete treePtr;

    split(parent);
}

Dictionary23Tree::Dictionary23Tree(std::string dictionaryFile) : DictionarySearchTree(dictionaryFile) {
    root = NULL;

    std::fstream newfile;

    newfile.open(dictionaryFile,std::ios::in);
    if (newfile.is_open()){
        std::string line;
        while(getline(newfile, line)){
            insert(line);
        }
        newfile.close();
    }
}

void Dictionary23Tree::insert(std::string word) {
    insertNode(root, NULL, word);
}

void Dictionary23Tree::search(std::string word, int &numComparisons, bool &found) const {
    searchHelp(root, word, numComparisons, found);
}

void Dictionary23Tree::search(std::string queryFile, std::string outputFile) const {
    std::fstream infile;
    std::fstream outfile;
    int queryNum = 0;
    int maxComp = 0;
    int totalComp = 0;

    outfile.open(outputFile,std::ios::out);
    if (outfile.is_open())
    {

        infile.open(queryFile,std::ios::in);
        if (infile.is_open()) {
            std::string line;
            while(getline(infile, line)) {
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

void Dictionary23Tree::searchHelp(Node23 *treePtr, std::string word, int &numComparisons, bool &found) const {
    if (treePtr == NULL)
        return;


    if(treePtr->largeItem.empty()) {
        int smallComp = word.compare(treePtr->smallItem);
        numComparisons++;

        if(smallComp == 0)
            found = true;
        else if(smallComp < 0)
            searchHelp( treePtr->leftChildPtr,word, numComparisons, found);
        else
            searchHelp(treePtr->midChildPtr, word, numComparisons, found);
    }
    else {
        int smallComp = word.compare(treePtr->smallItem);
        numComparisons++;

        if(smallComp == 0)
            found = true;
        else if(smallComp < 0)
            searchHelp( treePtr->leftChildPtr,word, numComparisons, found);
        else {
            int largeComp = word.compare(treePtr->largeItem);
            numComparisons++;

            if(largeComp == 0)
                found = true;
            else if(largeComp < 0)
                searchHelp( treePtr->midChildPtr,word, numComparisons, found);
            else
                searchHelp(treePtr->rightChildPtr,word,  numComparisons, found);
        }
    }
}

void Dictionary23Tree::destroyTree(Node23 *&treePtr) {
    if (treePtr != NULL){
        destroyTree(treePtr->leftChildPtr);
        destroyTree(treePtr->midChildPtr);
        destroyTree(treePtr->rightChildPtr);
        delete treePtr;
        treePtr = NULL;
    }
}

Dictionary23Tree::~Dictionary23Tree() {
    destroyTree(root);
}


