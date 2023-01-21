/*
* Title: Balanced Search Trees
* Author: Arda Iynem
* ID: 22002717
* Section: 1
* Assignment: 4
* Description: Convert Tree has member functions and data members allowing to create a 2-3-4 Tree from an RB Tree Input
*/

#include <fstream>
#include <sstream>
#include <iostream>
#include "ConvertTree.h"

// Constructor: Initializes RB Array from the text file input
ConvertTree::ConvertTree(const std::string& fileName) : root(NULL), nodeCount(0) {
    std::ifstream newFile;
    bool firstLine = true;

    newFile.open(fileName, std::ios::in);
    if (newFile.is_open()) {
        std::string line;
        int arrIndex = 0;
        while (getline(newFile, line)) {
            std::istringstream ss(line);

            if (firstLine) {
                std::string del;
                int counter = 0;

                while (getline(ss, del, ' ')) {
                    std::stringstream tmpSs;
                    int tmpInt;
                    tmpSs << del;
                    tmpSs >> tmpInt;

                    if (!counter) {
                        arrRB = new NodeRB*[tmpInt];
                        sizeArr = tmpInt;
                    }
                    else
                    {
                        rootId = tmpInt;
                    }
                    ++counter;
                }
            }
            else {
                std::string del;
                int counter = 0;

                while (getline(ss, del, ' ')) {
                    std::stringstream tmpSs;
                    int tmpInt;
                    tmpSs << del;
                    tmpSs >> tmpInt;

                    switch (counter) {
                        case 0:
                            arrRB[arrIndex] = new NodeRB;
                            arrRB[arrIndex]->item = tmpInt;
                            break;
                        case 1:
                            arrRB[arrIndex]->leftChild = tmpInt;
                            break;
                        case 2:
                            arrRB[arrIndex]->rightChild = tmpInt;
                            break;
                        case 3:
                            arrRB[arrIndex]->color = tmpInt;
                            break;
                        default: ;
                    }
                    ++counter;
                }
                ++arrIndex;
            }
            firstLine = false;
        }
    }
    newFile.close();
}

// Prints array (Test Function)
void ConvertTree::printArr() {
    for (int i = 0; i < sizeArr; ++i) {
        std::cout << arrRB[i]->item << " " << arrRB[i]->leftChild << " " << arrRB[i]->rightChild << " " << arrRB[i]->color
        << std::endl;
    }
}

// Finds the node with the matching key
NodeRB *ConvertTree::findNodeFromArr(int item) {
    for (int i = 0; i < sizeArr; ++i) {
        if (item == arrRB[i]->item)
            return arrRB[i];
    }
    return NULL;
}

// Builds an 2-3-4 Tree from the RB Node Array
void ConvertTree::build(Node234* parentPtr, NodeRB* rbNode) {
    // Base condition
    if (rbNode != NULL) {
        NodeRB* nodeRb = findNodeFromArr(rbNode->item);

        // If Black Node
        if (nodeRb->color == 1) {

            Node234* newNode = new Node234();
            newNode->smallItem = nodeRb->item;
            newNode->nodeId = nodeCount++;
            ++(newNode->size);

            // If Root
            if (parentPtr == NULL) {
                root = newNode;
                parentPtr = newNode;
            }
            else {
                // If 2-Node Parent
                if (parentPtr->size == 1) {
                    if (parentPtr->smallItem > nodeRb->item) {
                        parentPtr->leftChildPtr = newNode;
                    }
                    else {
                        parentPtr->midLeftChildPtr = newNode;
                    }
                }
                // If 3-Node Parent
                else if (parentPtr->size == 2) {
                    if (parentPtr->smallItem > nodeRb->item) {
                        parentPtr->leftChildPtr = newNode;
                    }
                    else if (parentPtr->midItem > nodeRb->item) {
                        parentPtr->midLeftChildPtr = newNode;
                    }
                    else {
                        parentPtr->midRightChildPtr = newNode;
                    }
                }
                // If 3-Node Parent
                else if (parentPtr->size == 3) {
                    if (parentPtr->smallItem > nodeRb->item) {
                        parentPtr->leftChildPtr = newNode;
                    }
                    else if (parentPtr->midItem > nodeRb->item) {
                        parentPtr->midLeftChildPtr = newNode;
                    }
                    else if (parentPtr->largeItem > nodeRb->item) {
                        parentPtr->midRightChildPtr = newNode;
                    }
                    else {
                        parentPtr->rightChildPtr = newNode;
                    }
                }
            }

            parentPtr = newNode;
        }
        // If Red Node
        else {
            // If 2 Node Parent
            if (parentPtr->size == 1) {
                if (parentPtr->smallItem < nodeRb->item) {
                    parentPtr->midItem = nodeRb->item;
                }
                else {
                    parentPtr->midItem = parentPtr->smallItem;
                    parentPtr->smallItem = nodeRb->item;
                }

                ++(parentPtr->size);
            }
            // If 3 Node Parent
            else if (parentPtr->size == 2) {
                if (parentPtr->smallItem > nodeRb->item) {
                    parentPtr->largeItem = parentPtr->midItem;
                    parentPtr->midItem = parentPtr->smallItem;
                    parentPtr->smallItem = nodeRb->item;
                }
                else if (parentPtr->midItem < nodeRb->item) {
                    parentPtr->largeItem = nodeRb->item;
                }
                else {
                    parentPtr->largeItem = parentPtr->midItem;
                    parentPtr->midItem = nodeRb->item;
                }
                ++(parentPtr->size);
            }
        }

        // Recursion
        build(parentPtr, findNodeFromArr(nodeRb->leftChild));
        build(parentPtr, findNodeFromArr(nodeRb->rightChild));
    }
}

// Prints 2-3-4 Tree (Test Function)
void ConvertTree::printTree(Node234* ptr) {
    if (ptr != NULL) {
        if (ptr->size == 1) {
            std::cout << "NODE ID: " << ptr->nodeId << "  Size 1 -- " << ptr->smallItem << std::endl;
        }
        else if (ptr->size == 2) {
            std::cout << "NODE ID: " << ptr->nodeId << "  Size 2 -- " << ptr->smallItem << " ___ " << ptr->midItem << std::endl;
        }
        else if (ptr->size == 3) {
            std::cout << "NODE ID: " << ptr->nodeId << "  Size 3 -- " << ptr->smallItem << " ___ " << ptr->midItem << " ___ "
            << ptr->largeItem << std::endl;
        }

        printTree(ptr->leftChildPtr);
        printTree(ptr->midLeftChildPtr);
        printTree(ptr->midRightChildPtr);
        printTree(ptr->rightChildPtr);
    }
}

// Saves the result to the output text file
void ConvertTree::outResult(const std::string &fileName) {
    std::ofstream outfile;

    outfile.open(fileName,std::ios::out);
    if (outfile.is_open())
    {

        outfile << nodeCount << " " << 0 << "\n";
        traverseOut(root, outfile);
    }
    outfile.close();
}

// Traverses and prints the nodes (Test Function)
void ConvertTree::traverseOut(Node234 *ptr, std::ofstream& file) {
    if (ptr != NULL) {
        int ptrLeft = (ptr->leftChildPtr == NULL ? -1 : ptr->leftChildPtr->nodeId);
        int ptrMidLeft = (ptr->midLeftChildPtr == NULL ? -1 : ptr->midLeftChildPtr->nodeId);
        int ptrMidRight = (ptr->midRightChildPtr == NULL ? -1 : ptr->midRightChildPtr->nodeId);
        int ptrRight = (ptr->rightChildPtr == NULL ? -1 : ptr->rightChildPtr->nodeId);

        file << ptr->nodeId << " " << ptr->smallItem << " " << ptr->midItem << " " << ptr->largeItem << " "
             << ptrLeft << " " << ptrMidLeft << " " << ptrMidRight << " " << ptrRight << "\n";

        traverseOut(ptr->leftChildPtr, file);
        traverseOut(ptr->midLeftChildPtr, file);
        traverseOut(ptr->midRightChildPtr, file);
        traverseOut(ptr->rightChildPtr, file);
    }
}
