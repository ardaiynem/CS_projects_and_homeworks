/**
* Title: AVL Trees
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: AVL Trees Source
*/

#include "DictionaryAVLTree.h"

void DictionaryAVLTree::leftRotate(NodeAVL* parentNode) {
    NodeAVL* childNode = parentNode->rightChildPtr;
    parentNode->rightChildPtr = childNode->leftChildPtr;

    if (childNode->leftChildPtr != NULL) {
        childNode->leftChildPtr->parentPtr = parentNode;
    }

    childNode->parentPtr = parentNode->parentPtr;

    if (parentNode->parentPtr == NULL) {
        this->root = childNode;
    }
    else if (parentNode == parentNode->parentPtr->leftChildPtr) {
        parentNode->parentPtr->leftChildPtr = childNode;
    }
    else {
        parentNode->parentPtr->rightChildPtr = childNode;
    }
    
    childNode->leftChildPtr = parentNode;
    parentNode->parentPtr = childNode;

    // update the balance factor
    parentNode->balanceFactor = parentNode->balanceFactor - 1 - std::max(0, childNode->balanceFactor);
    childNode->balanceFactor = childNode->balanceFactor - 1 + std::min(0, parentNode->balanceFactor);
}

void DictionaryAVLTree::rightRotate(NodeAVL* parentNode) {
    NodeAVL* childNode = parentNode->leftChildPtr;
    parentNode->leftChildPtr = childNode->rightChildPtr;

    if (childNode->rightChildPtr != NULL) {
        childNode->rightChildPtr->parentPtr = parentNode;
    }

    childNode->parentPtr = parentNode->parentPtr;

    if (parentNode->parentPtr == NULL) {
        this->root = childNode;
    }
    else if (parentNode == parentNode->parentPtr->rightChildPtr) {
        parentNode->parentPtr->rightChildPtr = childNode;
    }
    else {
        parentNode->parentPtr->leftChildPtr = childNode;
    }

    childNode->rightChildPtr = parentNode;
    parentNode->parentPtr = childNode;

    // update the balance factor
    parentNode->balanceFactor = parentNode->balanceFactor + 1 - std::min(0, childNode->balanceFactor);
    childNode->balanceFactor = childNode->balanceFactor + 1 + std::max(0, parentNode->balanceFactor);
}

void DictionaryAVLTree::balance(NodeAVL* node) {
    // bf = h(rs)- h(ls)
    if (node->balanceFactor > 0) {
        if (node->rightChildPtr->balanceFactor < 0) {
            rightRotate(node->rightChildPtr);
            leftRotate(node);
        }
        else {
            leftRotate(node);
        }
    }
    else if (node->balanceFactor < 0) {
        if (node->leftChildPtr->balanceFactor > 0) {
            leftRotate(node->leftChildPtr);
            rightRotate(node);
        }
        else {
            rightRotate(node);
        }
    }
}

void DictionaryAVLTree::updateBalance(NodeAVL *node) {
    if (node->balanceFactor < -1 || node->balanceFactor > 1) {
        balance(node);
        return;
    }

    if (node->parentPtr != NULL) {
        if (node == node->parentPtr->leftChildPtr) {
            node->parentPtr->balanceFactor -= 1;
        }

        if (node == node->parentPtr->rightChildPtr) {
            node->parentPtr->balanceFactor += 1;
        }

        if (node->parentPtr->balanceFactor != 0) {
            updateBalance(node->parentPtr);
        }
    }
}

void DictionaryAVLTree::deleteItem(NodeAVL *&treePtr, const TreeItemType &item) {
    if (treePtr == NULL){}
        //throw std::runtime_error("Deletion failed!");
    else if (item == treePtr->item)
        deleteNode(treePtr);
    else if (item < treePtr->item)
        deleteItem(treePtr->leftChildPtr, item);
    else
        deleteItem(treePtr->rightChildPtr, item);
}

void DictionaryAVLTree::deleteNode(NodeAVL *&nodePtr) {
    NodeAVL *delPtr;
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

    updateBalance(nodePtr);
}

void DictionaryAVLTree::processLeftmost(NodeAVL *&nodePtr, TreeItemType &item) {
    if (nodePtr->leftChildPtr == NULL) {
        item = nodePtr->item;
        NodeAVL *delPtr = nodePtr;
        nodePtr = nodePtr->rightChildPtr;
        delPtr->rightChildPtr = NULL;
        delete delPtr;
    }
    else
        processLeftmost(nodePtr->leftChildPtr, item);
}

void DictionaryAVLTree::insertNode(NodeAVL *&treePtr, NodeAVL *parentPtr, const TreeItemType &newItem) {
// PART 1: Ordinary BST insert
    if (treePtr == NULL) {
        treePtr = new NodeAVL();
        treePtr->item = newItem;
        treePtr->parentPtr = parentPtr;

        // PART 2: Update balance
        updateBalance(treePtr);
    }
    else if (newItem < treePtr->item) {
        parentPtr = treePtr;
        insertNode(treePtr->leftChildPtr, parentPtr, newItem);
    }
    else {
        parentPtr = treePtr;
        insertNode(treePtr->rightChildPtr, parentPtr, newItem);
    }
}

void DictionaryAVLTree::search(std::string word, int &numComparisons, bool &found) const {
    searchHelp(root, word, numComparisons, found);
}

void DictionaryAVLTree::search(std::string queryFile, std::string outputFile) const {
    std::fstream infile;
    std::fstream outfile;
    int queryNum = 0;
    int maxComp = 0;
    int totalComp = 0;

    outfile.open(outputFile,std::ios::out);  // open a file to perform write operation using file object
    if(outfile.is_open()) //checking whether the file is open
    {

        infile.open(queryFile,std::ios::in); //open a file to perform read operation using file object
        if (infile.is_open()){   //checking whether the file is open
            std::string line;
            while(getline(infile, line)){ //read data from file object and put it into string.
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
            infile.close(); //close the file object.
        }
    }
}

DictionaryAVLTree::DictionaryAVLTree(std::string dictionaryFile) : DictionarySearchTree(dictionaryFile) {
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

void DictionaryAVLTree::insert(std::string word) {
    insertNode(root, NULL, word);
}

void DictionaryAVLTree::searchHelp(NodeAVL *treePtr, std::string word, int &numComparisons, bool &found) const {
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

void DictionaryAVLTree::destroyTree(NodeAVL *&treePtr) {
    if (treePtr != NULL){
        destroyTree(treePtr->leftChildPtr);
        destroyTree(treePtr->rightChildPtr);
        delete treePtr;
        treePtr = NULL;
    }
}

DictionaryAVLTree::~DictionaryAVLTree() {
    destroyTree(root);
}


