/*
* Title: Balanced Search Trees
* Author: Arda Iynem
* ID: 22002717
* Section: 1
* Assignment: 4
* Description: Includes essential properties and constructors for 2-3-4 Node
*/

#include "Node234.h"

#define NULL nullptr

Node234::Node234() : size(0), nodeId(-1), smallItem(-1), midItem(-1), largeItem(-1), leftChildPtr(NULL), midLeftChildPtr(NULL), midRightChildPtr(NULL)
, rightChildPtr(NULL) {}

Node234::Node234(int smallItem) :  size(1), smallItem(smallItem), midItem(0), largeItem(0), leftChildPtr(NULL), midLeftChildPtr(NULL),
midRightChildPtr(NULL), rightChildPtr(NULL) {}

Node234::Node234(int smallItem, int midItem) :  size(2), smallItem(smallItem), midItem(midItem), largeItem(0), leftChildPtr(NULL)
, midLeftChildPtr(NULL), midRightChildPtr(NULL), rightChildPtr(NULL) {}

Node234::Node234(int smallItem, int midItem, int largeItem) :  size(3), smallItem(smallItem), midItem(midItem), largeItem(largeItem), leftChildPtr(NULL)
, midLeftChildPtr(NULL), midRightChildPtr(NULL), rightChildPtr(NULL) {}
