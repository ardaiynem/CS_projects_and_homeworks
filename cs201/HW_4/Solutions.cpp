// Arda Iynem 22002717

#include "Solutions.h"

void fantabulous(string list, int length) {
    int amount;

    amount = 0;
    for (int start = 0; start < length - 1; ++start) {
        for (int end = 1; end < length; ++end) {
            Stack< pair<int, int> > intStack;

            pair<int, int> elementArr[length];
            pair<int, int> secondBest;

            int counter = 0;
            string tmp;
            for (int i = 0; i < list.length(); ++i) {
                if (list[i] == ',') {
                    stringstream tmpStream;
                    int tmpInt;
                    tmpStream << tmp;
                    tmpStream >> tmpInt;
                    elementArr[counter].first = tmpInt;
                    elementArr[counter].second = counter;
                    tmp = "";
                    counter++;
                }
                else {
                    tmp += list[i];
                    if (i == list.length() - 1) {
                        stringstream tmpStream;
                        int tmpInt;
                        tmpStream << tmp;
                        tmpStream >> tmpInt;
                        elementArr[counter].first = tmpInt;
                        elementArr[counter].second = counter;
                    }
                }
            }

            pair<int, int> stackTop;
            secondBest.first = -1;
            secondBest.second = 0;
            for (int i = start; i < end + 1; ++i) {
                if (intStack.isEmpty())
                    intStack.push(elementArr[i]);
                else if (intStack.getTop(stackTop) && stackTop.first < elementArr[i].first) {
                    if (secondBest.first < stackTop.first)
                        secondBest = stackTop;
                    intStack.pop();
                    intStack.push(elementArr[i]);
                }
                else if (intStack.getTop(stackTop) && stackTop.first > elementArr[i].first) {
                    if (secondBest.first < elementArr[i].first)
                        secondBest = elementArr[i];
                }
            }

            intStack.getTop(stackTop);
            if (stackTop.second > secondBest.second && secondBest.first != -1)
                amount++;
        }
    }
    cout << "The number of Fantabulous subsequences: " << amount << endl;
}

void subset(string intervals, int length) {
    Stack< pair<int, int> > intervalStack;

    pair<int, int> intervalArr[length / 2];
    pair<int, int> intervalArrReversed[length / 2];

    int counter = 0;
    string tmp;
    for (int i = 0; i < intervals.length(); ++i) {
        if (intervals[i] == ',') {
            stringstream tmpStream;
            int tmpInt;
            tmpStream << tmp;
            tmpStream >> tmpInt;

            if (counter % 2 == 0)
                intervalArr[counter / 2].first = tmpInt;
            else
                intervalArr[counter / 2].second = tmpInt;
            tmp = "";
            counter++;
        }
        else {
            tmp += intervals[i];
            if (i == intervals.length() - 1) {
                stringstream tmpStream;
                int tmpInt;
                tmpStream << tmp;
                tmpStream >> tmpInt;

                if (counter % 2 == 0)
                    intervalArr[counter / 2].first = tmpInt;
                else
                    intervalArr[counter / 2].second = tmpInt;
            }
        }

    }

    intervalStack.push(intervalArr[0]);

    for (int i = 1 ; i < length / 2; i++)
    {
        pair<int, int> stackTop;
        intervalStack.getTop(stackTop);
        pair<int, int> top = stackTop;

        if (top.second < intervalArr[i].first)
            intervalStack.push(intervalArr[i]);

        else if (top.second < intervalArr[i].second)
        {
            top.second = intervalArr[i].second;
            intervalStack.pop();
            intervalStack.push(top);
        }
    }

    cout << "Joined subset: ";
    int count = 0;
    while (!intervalStack.isEmpty())
    {
        pair<int, int> stackTop;
        intervalStack.getTop(stackTop);
        intervalArrReversed[count] = stackTop;
        intervalStack.pop();
        ++count;
    }

    for(int i = count - 1; i >= 0; i--)
        cout << "(" << intervalArrReversed[i].first << ":" << intervalArrReversed[i].second << ((i == 0) ? ")" : "), ");
    cout << endl;
    return;
}

int precedence(char c)
{
    if (c == '*' || c == '/')
        return 2;
    else if (c == '+' || c == '-')
        return 1;
    else
        return -1;
}

string infix2prefix(string expression) {
    Stack<char> charStack;
    string tmpReversed;
    string output;
    string outputReversed;

    for (int i = expression.length() - 1; i >= 0 ; --i) {
        tmpReversed += expression[i];
    }

    for (int i = 0; i < tmpReversed.length(); ++i) {
        if (isdigit(tmpReversed[i]))
            output += tmpReversed[i];
        else if (tmpReversed[i] == ')')
            charStack.push(')');
        else if (tmpReversed[i] == '(') {
            char stackTop;
            while (charStack.getTop(stackTop) && stackTop != ')') {
                if (stackTop == '+' || stackTop == '-' || stackTop == '*' || stackTop == '/') {
                    output += stackTop;
                    charStack.pop();
                }
            }

            charStack.pop();
        }
        else if (tmpReversed[i] == '+' || tmpReversed[i] == '-' || tmpReversed[i] == '*' || tmpReversed[i] == '/') {
            if (charStack.isEmpty()) {
                charStack.push(tmpReversed[i]);
            }
            else {
                char stackTop;
                if ((charStack.getTop(stackTop)) && (precedence(tmpReversed[i]) > precedence(stackTop))) {
                    charStack.push(tmpReversed[i]);
                }
                else if ((charStack.getTop(stackTop)) && (precedence(tmpReversed[i]) == precedence(stackTop))) {
                    charStack.push(tmpReversed[i]);
                }
                else {
                    while ((charStack.getTop(stackTop)) && (precedence(tmpReversed[i]) < precedence(stackTop))) {
                        output += stackTop;
                        charStack.pop();
                    }
                    charStack.push(tmpReversed[i]);
                }
            }
        }

    }

    while (!charStack.isEmpty()) {
        char stackTop;
        charStack.getTop(stackTop);
        output += stackTop;
        charStack.pop();

    }

    for (int i = output.length() - 1; i >= 0 ; --i) {
        outputReversed += output[i];
    }

    return "Prefix form of " + expression + " is " + outputReversed;
}

void evaluatePrefix(string expression) {
    Stack<double> doubleStack;

    for (int i = expression.length() - 1; i >= 0; i--) {

        if (isdigit(expression[i]))
            doubleStack.push(expression[i] - '0');
        else {
            double stackTop;
            double o1 = doubleStack.getTop(stackTop) ? stackTop : 0;
            doubleStack.pop();
            double o2 = doubleStack.getTop(stackTop) ? stackTop : 0;
            doubleStack.pop();

            if (expression[i] == '+')
                doubleStack.push(o1 + o2);
            else if (expression[i] == '-')
                doubleStack.push(o1 - o2);
            else if (expression[i] == '*')
                doubleStack.push(o1 * o2);
            else if (expression[i] == '/')
                doubleStack.push(o1 / o2);
        }
    }

    double tmpTop;
    cout << "Result of " << expression << " is: " << (doubleStack.getTop(tmpTop) ? tmpTop : 0) << endl;
}

template <class T> Stack<T>::Stack(): top(-1){}

template <class T> bool Stack<T>::push(T newItem)
{
    if (top >= MAX_STACK-1)
        return false;

    else{
        ++top;
        items[top] = newItem;
        return true;
    }
}

template <class T> bool Stack<T>::isEmpty() const
{
    return top < 0;
}


template <class T> bool Stack<T>::pop(T& stackTop)
{
    if (isEmpty())
        return false;

    else {
        stackTop = items[top];
        --top;
        return true;
    }
}

template <class T> bool Stack<T>::pop()
{
    if (isEmpty())
        return false;

    else {
        --top;
        return true;
    }
}

template <class T> bool Stack<T>::getTop(T& stackTop)
{
    if (isEmpty())
        return false;

    else {
        stackTop = items[top];
        return true;
    }
}