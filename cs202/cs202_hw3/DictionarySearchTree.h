//
// Created by innsolit on 30/11/2022.
/**
* Title: DictionarySearch Trees
* Author: Arda İynem
* ID: 22002717
* Section: 1
* Assignment: 3
* Description: DictionarySearch Tree Header
*/

#ifndef CS202_HW3_DICTIONARYSEARCHTREE_H
#define CS202_HW3_DICTIONARYSEARCHTREE_H
#include <string>
#include <fstream>
#include <iostream>

class DictionarySearchTree {
public:
//Constructor that constructs the dictionary from the input file
    DictionarySearchTree( std::string dictionaryFile );
//Destructor
    virtual ~DictionarySearchTree();
//Inserts the given word into the dictionary
    virtual void insert( std::string word );
//Searches the given word in the dictionary, and returns the number
//of comparisons made and whether the word is found or not
    virtual void search( std::string word, int& numComparisons, bool& found ) const;
//Searches all words in the query file in the dictionary, and
//summarizes the results in the output file
    virtual void search( std::string queryFile, std::string outputFile ) const;
};


#endif //CS202_HW3_DICTIONARYSEARCHTREE_H
