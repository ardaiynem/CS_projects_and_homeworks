// Arda Iynem
// 22002717

#include <iostream>
#include "PuzzleContainer.h"

PuzzleRow::PuzzleRow(int size, int rowindex) {
    head = NULL;
    next = NULL;
    maxSize = size;
    this->rowindex = rowindex;
}

PuzzleRow::~PuzzleRow() {
    while (!isEmpty())
        remove(1);
}

int PuzzleRow::getRowIndex() {
    return rowindex;
}

void PuzzleRow::setNext(PuzzleRow *next) {
    this->next = next;
}

PuzzleRow *PuzzleRow::getNext() {
    return next;
}

bool PuzzleRow::insert(int index, char shape) {
    PuzzlePiece *newPiece = new PuzzlePiece;
    newPiece->shape = shape;
    newPiece->rowindex = rowindex;
    newPiece->colindex = index;
    newPiece->next = NULL;

    PuzzlePiece *cur = head;
    PuzzlePiece *pre = NULL;

    while (cur != NULL && cur->colindex < index) {
        pre = cur;
        cur = cur->next;
    }

    if (pre == NULL) {
        newPiece->next = head;
        head = newPiece;
    }
    else {
        newPiece->next = pre->next;
        pre->next = newPiece;
    }

    return true;
}

bool PuzzleRow::remove(int index) {
    PuzzlePiece *cur = head;
    PuzzlePiece *pre = NULL;

    while (cur != NULL && cur->colindex < index) {
        pre = cur;
        cur = cur->next;
    }

    if (pre == NULL) {
        head = cur->next;
    }
    else {
        pre->next = cur->next;
    }

    delete cur;
    return true;
}

bool PuzzleRow::isEmpty() {
    return head == NULL;
}

char PuzzleRow::getPiece(int index) {
    PuzzlePiece *cur = head;
    while (cur != NULL && cur->colindex <= index) {
        if (cur->colindex == index)
            return cur->shape;

        cur = cur->next;
    }

    return 255;
}

void PuzzleRow::printRow() {
    PuzzlePiece *cur = head;
    for (int i = 1; i <= maxSize; i++) {
        if (cur != NULL && cur->colindex == i) {
            cur = cur->next;
            cout << "X ";
        }
        else {
            cout << "O ";
        }
    }

    cout << endl;
}

bool PuzzleRow::findByShape(char shape, stringstream &out) {
    bool isAny = false;

    PuzzlePiece *cur = head;
    while (cur != NULL) {
        if (cur->shape == shape) {
            out << "(" << cur->rowindex << "," << cur->colindex << "), ";
            isAny = true;
        }

        cur = cur->next;
    }

    return isAny;
}


