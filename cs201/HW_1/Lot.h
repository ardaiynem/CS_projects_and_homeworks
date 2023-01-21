// Arda Iynem
// 22002717

#ifndef HW_1_LOT_H
#define HW_1_LOT_H

#include "Car.h"

class Lot{
public:
    Lot(const int& id, const int& rows, const int& columns);
    ~Lot();

    int getId() const;
    int getRow() const;
    int getColumn() const;
    int getEmptySpace() const;
    Car* checkPlate(int& plateNum) const;
    void park(const string& location, const string& type, const int& plateNum);
    void remove(Car*& tmpCar);
    void printLot() const;

private:
    string rowLetter;
    int id;
    int rows;
    int columns;
    int emptySpace;
    Car*** carArray;
};
#endif //HW_1_LOT_H
