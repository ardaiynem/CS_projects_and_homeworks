/*
* Title: Balanced Search Trees
* Author: Arda Iynem
* ID: 22002717
* Section: 1
* Assignment: 4
* Description: Includes essential properties and constructors for RB Node
*/

#include "NodeRB.h"

NodeRB::NodeRB() : item(0), leftChild(0), rightChild(0), color(0) {}

NodeRB::NodeRB(int item, int leftChild, int rightChild, int color) : item(item), leftChild(leftChild), rightChild(rightChild)
, color(color) {};
