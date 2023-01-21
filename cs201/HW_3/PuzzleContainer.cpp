// Arda Iynem
// 22002717

#include <iostream>
#include "PuzzleContainer.h"

void shapeConverter(unsigned char shape, int& down, int& up, int& right, int& left){
    down = shape%4;
    up = (shape/4)%4;
    right= (shape/16)%4;
    left= shape/64;
}

PuzzleContainer::PuzzleContainer(int h, int w) {
    height = h;
    width = w;
    rowLists = NULL;
}

PuzzleContainer::~PuzzleContainer() {
    while (rowLists != NULL)
        removeRow(1);
}

PuzzleRow *PuzzleContainer::getRow(int index) {
    if ((index < 1) || (index > height) )
        return NULL;
    else {
        PuzzleRow *cur = rowLists;
        while (cur != NULL && cur->getRowIndex() <= index) {
            if (cur->getRowIndex() == index) {
                return cur;
            }

            cur = cur->getNext();
        }

        return NULL;
    }
}

bool PuzzleContainer::insertRow(int index) {
    if ((index < 1) || (index > height) )
        return false;
    else if (getRow(index) != NULL)
        return false;

    PuzzleRow *newRow = new PuzzleRow(width, index);


    PuzzleRow *cur = rowLists;
    PuzzleRow *pre = NULL;

    while (cur != NULL && cur->getRowIndex() < index) {
            pre = cur;
            cur = cur->getNext();
    }

    if (pre == NULL) {
        newRow->setNext(rowLists);
        rowLists = newRow;
    }
    else {
        newRow->setNext(pre->getNext());
        pre->setNext(newRow);
    }

    return true;
}

bool PuzzleContainer::removeRow(int index) {
    PuzzleRow *cur = rowLists;
    PuzzleRow *pre = NULL;

    while (cur != NULL && cur->getRowIndex() < index) {
        pre = cur;
        cur = cur->getNext();
    }

    if (pre == NULL) {
        rowLists = cur->getNext();
    }
    else {
        pre->setNext( cur->getNext());
    }

    delete cur;
    return true;
}

bool PuzzleContainer::addPiece(int row, int col, char shape) {
    if (row < 1 || col < 1 || row > height || col > width) {
        cout << "(" << row << "," << col << ") is out of frame, it cannot be added" << endl;
        return false;
    }

    PuzzleRow *curRow = getRow(row);
    if (curRow != NULL && curRow->getPiece(col) != char(255)) {
        cout << "(" << row << "," << col << ") has been already occupied, it cannot be added" << endl;
        return false;
    }

    int down, up, right, left, key_down, key_up, key_right, key_left, key_tmp;
    shapeConverter(shape, down, up, right, left);

    if (row != 1 && up == 2 || row != height && down == 2 || col != 1 && left == 2 || col != width && right == 2){
        cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
        return false;
    }

    PuzzleRow *preRow = getRow(row - 1);
    PuzzleRow *nextRow = getRow(row + 1);

    if (preRow != NULL) {
        char tmp = preRow->getPiece(col);
        shapeConverter(tmp, key_up, key_tmp ,key_tmp, key_tmp);

        if (key_up != 3 && key_up != 1 - up) {
            cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
            return false;
        }
    }
    else if (row == 1 && up != 2) {
        cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
        return false;
    }

    if (nextRow != NULL) {
        char tmp = nextRow->getPiece(col);
        shapeConverter(tmp, key_tmp, key_down,key_tmp, key_tmp);

        if (key_down != 3 && key_down != 1 - down) {
            cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
            return false;
        }
    }
    else if (row == height && down != 2) {
        cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
        return false;
    }

    if (curRow != NULL) {
        if (col == width) {
            char tmp = curRow->getPiece(col - 1);
            shapeConverter(tmp, key_tmp, key_tmp, key_left, key_tmp);
            if ((key_left != 3 && key_left != 1 - left) || (right != 2)) {
                cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
                return false;
            }
        } else if (col == 1) {
            char tmp = curRow->getPiece(col + 1);
            shapeConverter(tmp, key_tmp, key_tmp, key_tmp, key_right);
            if ((key_right != 3 && key_right != 1- right) || (left != 2)) {
                cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
                return false;
            }

        } else {
            char tmpLeft = curRow->getPiece(col - 1);
            char tmpRight = curRow->getPiece(col + 1);

            shapeConverter(tmpLeft, key_tmp, key_tmp, key_left, key_tmp);
            shapeConverter(tmpRight, key_tmp, key_tmp, key_tmp, key_right);

            if (key_left != 3 && key_left != 1 - left) {
                cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
                return false;
            }

            if (key_right != 3 && key_right != 1 - right) {
                cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
                return false;
            }
        }
    }
    else if (col == width && right != 2) {
        cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
        return false;
    }
    else if (col == 1 && left != 2) {
        cout << "Shape doesn't fit into (" << row << "," << col << "), it cannot be added" << endl;
        return false;
    }
    else {
        insertRow(row);
    }

    PuzzleRow *tmp = getRow(row);
    cout << "A piece is added to (" << row << "," << col << ")" << endl;
    return tmp->insert(col, shape);
}

bool PuzzleContainer::removePiece(int row, int col) {
    if (row < 1 || col < 1 || row > height || col > width) {
        cout << "(" << row << "," << col << ") is out of frame, it cannot be removed" << endl;
        return false;
    }

    PuzzleRow *curRow = getRow(row);

    if (curRow == NULL || curRow->getPiece(col) == char(255)){
        cout << "There is no piece on (" << row << "," << col << "), it cannot be removed" << endl;
        return false;
    }
    else {
        bool result = curRow->remove(col);
        if (curRow->isEmpty()) {
            removeRow(row);
        }

        cout << "The piece on (" << row << "," << col << ") is removed" << endl;
        return result;
    }
}

int PuzzleContainer::getHeight() {
    return height;
}

int PuzzleContainer::getWidth() {
    return width;
}

void PuzzleContainer::showPiece(int row, int col) {
    if (row < 1 || col < 1 || row > height || col > width) {
        cout << "(" << row << "," << col << ") is out of frame, it cannot be shown" << endl;
        return;
    }

    PuzzleRow *curRow = getRow(row);

    if (curRow == NULL || curRow->getPiece(col) == char(255)){
        cout << "There is no piece on (" << row << "," << col << "), it cannot be shown" << endl;
        return;
    }
    else {
        char piece = curRow->getPiece(col);
        cout << "Piece on (" << row << "," << col << ") as following:" << endl;

        string types[3] = { "Hole", "Knob",
                             "Border" };
        int down, up, right, left;
        shapeConverter(piece, down, up, right, left);

        cout << "Down: " << types[down] << endl;
        cout << "Up: " << types[up] << endl;
        cout << "Right: " << types[right] << endl;
        cout << "Left: " << types[left] << endl;

    }
}

void PuzzleContainer::displayContainer() {
    cout << "Container " << height << "x" << width << ":" << endl << " ";

    for (int i = 0; i < width; ++i) {
        cout << " " << i + 1;
    }

    cout << endl;

    PuzzleRow *cur = rowLists;
    for (int i = 0; i < height; ++i) {
        cout << i + 1 << " ";

        if (cur != NULL && cur->getRowIndex() == i + 1) {
            cur->printRow();
            cur = cur->getNext();
        }
        else {
            for (int i = 0; i < width; ++i) {
                cout << "O ";
            }

            cout << endl;
        }
    }
}

void PuzzleContainer::showColumn(int col) {
    if (col < 1 || col > width) {
        cout << "Column " << col << " is out of border" << endl;
        return;
    }

    cout << "Column " << col << ":" << endl;
    PuzzleRow *cur = rowLists;
    for (int i = 0; i < height; ++i) {
        if (cur != NULL && cur->getRowIndex() == i + 1) {
            if (cur->getPiece(col) == char(255))
                cout << "O";
            else
                cout << "X";

            cout << endl;

            cur = cur->getNext();
        }
        else {
            cout << "O" << endl;
        }
    }
}

void PuzzleContainer::showRow(int row) {
    if (row < 1 || row > height) {
        cout << "Row " << row << " is out of border" << endl;
        return;
    }

    cout << "Row " << row << ":" << endl;

    PuzzleRow *tmpRow = getRow(row);
    if (tmpRow != NULL) {
        tmpRow->printRow();
    }
    else {
        for (int i = 0; i < width; ++i) {
            cout << "O ";
        }

        cout << endl;
    }
}

void PuzzleContainer::findPiece(char shape) {
    PuzzleRow *cur = rowLists;
    bool isFound = false;
    stringstream tmpOut;

    while (cur != NULL) {
        if (cur->findByShape(shape, tmpOut)) {
            isFound = true;
        }

        cur = cur->getNext();
    }

    if (isFound) {
        string out = tmpOut.str();
        cout << out.erase(out.length() - 2, 1) << "contain the piece that has shape" << endl;

    }
    else
        cout << "There is no piece that has shape" << endl;


    string types[3] = { "Hole", "Knob",
                        "Border" };
    int down, up, right, left;
    shapeConverter(shape, down, up, right, left);

    cout << "Down: " << types[down] << endl;
    cout << "Up: " << types[up] << endl;
    cout << "Right: " << types[right] << endl;
    cout << "Left: " << types[left] << endl;
}
