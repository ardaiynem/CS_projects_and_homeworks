// Arda Iynem
// 22002717

#include "Lot.h"
#include <string>
#include <iostream>
#include <sstream>

Lot::Lot(const int& id, const int& rows, const int& columns) {
    this->id = id;
    this->rows = rows;
    this->columns = columns;
    this->emptySpace = rows * columns;
    rowLetter  = "ABCDEFGHIJKL";

    carArray = new Car**[rows];

    for ( int i = 0; i < rows; i++ )
        carArray[i] = new Car*[columns]();

    cout << "Parking lot with ID " << id << " and dimensions (" << rows
    << "," << columns <<") has been added to the system" << endl;
}

Lot::~Lot() {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; ++j) {
            if (carArray[i][j] != NULL && carArray[i][j]->getType() == "b") {
                carArray[i + 1][j] = NULL;
            }
            delete carArray[i][j];
        }
    }

    for (int i = 0; i < rows; ++i) {
        delete [] carArray[i];
    }

    delete [] carArray;
    cout << "Lot " << id << " has been successfully removed from the system" << endl;
}

int Lot::getId() const {
    return id;
}

int Lot::getRow() const {
    return rows;
}

int Lot::getColumn() const {
    return columns;
}

int Lot::getEmptySpace() const {
    return emptySpace;
}

Car* Lot::checkPlate(int& plateNum) const {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; ++j) {
            if (carArray[i][j] != NULL && carArray[i][j]->getPlateNum() == plateNum) {
                return carArray[i][j];
            }
        }
    }

    return NULL;
}

void Lot::park(const string& location, const string& type, const int& plateNum) {
    char strRow = location[0];
    stringstream tmpStream;
    int tmpRow;
    int tmpColumn;

    tmpStream << location.substr(1, location.length());
    tmpRow = 0;
    while (strRow != rowLetter[tmpRow]) {
        tmpRow++;

        if(tmpRow == rows) {
            cout << "Invalid location, corresponding row number exceeds the bounds!" << endl;
            return;
        }
    }

    tmpStream >> tmpColumn;
    tmpColumn--;
    if (tmpColumn > columns - 1) {
        cout << "Invalid location, corresponding column number exceeds the bounds!" << endl;
        return;
    }

    if (carArray[tmpRow][tmpColumn] == NULL) {
        if (type == "a") {
            carArray[tmpRow][tmpColumn] = new Car(plateNum, type, id, location);
            emptySpace--;
            return;
        }

        if (tmpRow != 0 && carArray[tmpRow - 1][tmpColumn] == NULL) {
            Car* tmpCar = new Car(plateNum, type, id, location);
            carArray[tmpRow - 1][tmpColumn] = tmpCar;
            carArray[tmpRow][tmpColumn] = tmpCar;
            emptySpace-= 2;
            return;
        }

        cout << "Cannot park " << (type == "a" ? "light-duty" : "heavy-duty") << " car with number plate " <<
             plateNum << " at location " << location << ", not enough space" << endl;
        return;
    }

    cout << "Cannot park " << (type == "a" ? "light-duty" : "heavy-duty") << " car with number plate " <<
         plateNum << " at location " << location <<", already occupied" << endl;
}

void Lot::remove(Car*& tmpCar) {
    int tmpRow;
    int tmpColumn;
    stringstream tmpStream;

    string location = tmpCar->getLocation();
    char strRow = location[0];
    tmpStream << location.substr(1, location.length());

    tmpStream >> tmpColumn;
    tmpColumn--;
    tmpRow = 0;
    while (strRow != rowLetter[tmpRow]) {
        tmpRow++;
    }

    carArray[tmpRow][tmpColumn] = NULL;
    emptySpace++;

    if (tmpCar->getType() == "b") {
        carArray[tmpRow - 1][tmpColumn] = NULL;
        emptySpace++;
    }

    delete tmpCar;
}

void Lot::printLot() const {
    cout << "ID: " << id << ", (" << rows << "," << columns << "), empty slots: " << emptySpace << ", parked cars: ";

    if (emptySpace == rows * columns)
        cout << "no cars parked" << endl;
    else {
        string parkedCars;
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; ++j) {
                if (carArray[i][j] != NULL) {
                    stringstream tmpStream;
                    tmpStream << carArray[i][j]->getPlateNum();
                    if (carArray[i][j]->getType() == "a") {
                        parkedCars.append( tmpStream.str() + ", ");
                    } else if (i == rows - 1 ||  carArray[i][j] != carArray[i + 1][j]) {
                        parkedCars.append(tmpStream.str() + ", ");
                    }
                }
            }
        }

        parkedCars.erase(parkedCars.length() - 2,2);
        cout << parkedCars << endl;
    }

    cout << endl;
    cout << "  ";

    for (int i = 1; i <  columns + 1; i++) {
        cout << " " << i;
    }

    cout << endl;

    for (int i = 0; i <  rows; i++) {
        cout << rowLetter[i] << "  ";
        for (int j = 0; j <  columns; j++) {
            cout << ((carArray[i][j] != NULL) ? carArray[i][j]->getType() : "+") << " ";
            if (j > 8)
                cout << " ";
        }

        cout << endl;
    }
}


