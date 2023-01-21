// Arda Iynem 22002717

#ifndef HW_4_SOLUTIONS_H
#define HW_4_SOLUTIONS_H
#include <string>
#include <iostream>
#include <sstream>

using namespace std;

void fantabulous(string list, int length);

void subset(string intervals, int length);

string infix2prefix(string expression);

int precedence(char c);

void evaluatePrefix(string expression);

template <class T>
class Stack {
public:
    Stack();

    bool push(T newItem);

    bool pop(T& stackTop);

    bool pop();

    bool getTop(T& stackTop);

    bool isEmpty() const;
private:
    static int const MAX_STACK = 50;

    int top;

    T items[MAX_STACK];
};

#endif //HW_4_SOLUTIONS_H
