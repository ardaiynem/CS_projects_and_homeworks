// Arda Iynem
// 22002717

#ifndef HW_1_PARKINGSYSTEM_H
#define HW_1_PARKINGSYSTEM_H

#include <string>
#include "Lot.h"

using namespace std;

class ParkingSystem{
public:
    ParkingSystem();
    ~ParkingSystem();

    void createLot(int id, int rows, int columns);
    void removeLot(int id);
    void listLots();
    void lotContents(int id);
    void parkCar(int lotId, string location, string carType, int plateNumber);
    void findCar(int plateNumber);
    void removeCar(int plateNumber);

private:
    void addLot(Lot*& newLot);
    Lot** lotArray;
    int lotArray_size;
    int lotArray_limit;
};
#endif //HW_1_PARKINGSYSTEM_H
