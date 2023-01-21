// Arda Iynem
// 22002717

#include "Car.h"
#include <iostream>

Car::Car(const int& plateNum, const string& type, const int& lot, const string& location) {
    this->plateNum = plateNum;
    this->type = type;
    this->lot = lot;
    this->location = location;

    cout << (type == "a" ? "Light-duty" : "Heavy-duty") << " car with number plate " <<
         plateNum << " has been parked at location " << location <<", lot " << lot << endl;
}

Car::~Car() {
    cout << (type == "a" ? "Light-duty" : "Heavy-duty") << " car with number plate " <<
         plateNum << " car has been removed from slot " << location <<", lot " << lot << endl;
}

int Car::getPlateNum() const {
    return plateNum;
}

string Car::getType() const {
    return type;
}

string Car::getLocation() const {
    return location;
}


