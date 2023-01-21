// Arda Iynem
// 22002717

#include <iostream>
using namespace std;
#include "ParkingSystem.h"

ParkingSystem::ParkingSystem() {
    lotArray_size = 0;
    lotArray_limit = 2;
    lotArray = new Lot*[lotArray_limit]();
}

ParkingSystem::~ParkingSystem() {
    for(int i = 0; i < lotArray_size; i++)
        delete lotArray[i];

    delete[] lotArray;
}

void ParkingSystem::createLot(int id, int rows, int columns) {
    for (int i = 0; i < lotArray_size; i++)
        if (lotArray[i]->getId() == id) {
            cout << "Cannot create the parking lot " << id << ", a lot with this ID already exists" << endl;
            return;
        }

    if (rows > 12 || columns > 12) {
        cout << "Cannot create the parking lot " << id << ", dimensions exceed acceptable bounds" << endl;
        return;
    }

    Lot* tmpLot = new Lot(id, rows, columns);
    addLot(tmpLot);
}

void ParkingSystem::removeLot(int id) {
    for (int i = 0; i < lotArray_size; i++)
        if (lotArray[i]->getId() == id) {
            delete lotArray[i];
            lotArray_size--;

            for (int j = i; j < lotArray_size; j++)
                lotArray[j] = lotArray[j + 1];

            lotArray[lotArray_size] = NULL;
            return;
        }

    cout << "Lot " << id << " is not in the system" << endl;
}

void ParkingSystem::listLots() {
    if (lotArray_size == 0) {
        cout << "No lots to list" << endl;
        return;
    }

    cout << "List of lots:";

    for (int i = 0; i < lotArray_size; i++) {
        cout << endl << "ID: " << lotArray[i]->getId() << ", Dim: (" << lotArray[i]->getRow() << "," << lotArray[i]->getColumn()
        << "), number of empty parking spaces: " << lotArray[i]->getEmptySpace();
    }
}

void ParkingSystem::lotContents(int id) {
    for (int i = 0; i < lotArray_size; i++)
        if (lotArray[i]->getId() == id) {
            lotArray[i]->printLot();
            return;
        }

    cout << "Error, lot " << id << " doesn't exist" << endl;
}

void ParkingSystem::parkCar(int lotId, string location, string carType, int plateNumber) {
    for (int i = 0; i < lotArray_size; i++) {
        if (lotArray[i]->getId() == lotId) {
            for (int j = 0; j < lotArray_size; ++j) {
                if (lotArray[j]->checkPlate(plateNumber) != NULL) {
                    cout << "The car with number plate " << plateNumber << " already exists in the system" << endl;
                    return;
                }
            }

            lotArray[i]->park(location, carType, plateNumber);
            return;
        }
    }

    cout << "Lot " << lotId << " is not in the system" << endl;
}

void ParkingSystem::findCar(int plateNumber) {
    Car* tmpCar;
    for (int i = 0; i < lotArray_size; ++i) {
        tmpCar = lotArray[i]->checkPlate(plateNumber);
        if (tmpCar != NULL) {
            cout << (tmpCar->getType() == "a" ? "Light-duty" : "Heavy-duty") << " car with number plate "
            << plateNumber << " is at location " << tmpCar->getLocation() << ", lot " << lotArray[i]->getId() << endl;
            return;
        }
    }

    cout << "The car with number plate " << plateNumber << " is not in the system" << endl;
}

void ParkingSystem::removeCar(int plateNumber) {
    Car* tmpCar;
    for (int i = 0; i < lotArray_size; ++i) {
        tmpCar = lotArray[i]->checkPlate(plateNumber);

        if (tmpCar != NULL) {
            lotArray[i]->remove(tmpCar);
            return;
        }
    }

    cout << "The car with number plate " << plateNumber << " is not in the system" << endl;
}

void ParkingSystem::addLot(Lot *&newLot) {
    if (lotArray_size < lotArray_limit) {
        lotArray[lotArray_size] = newLot;
        lotArray_size++;
    } else {
        Lot** newArray = new Lot*[lotArray_limit + 10]();
        lotArray_limit += 10;

        for (int i = 0; i < lotArray_size; ++i) {
            newArray[i] = lotArray[i];
        }

        delete [] lotArray;
        newArray[lotArray_size] = newLot;
        lotArray_size++;
        lotArray = newArray;
    }
}

