// Arda Iynem
// 22002717

#ifndef HW_1_CAR_H
#define HW_1_CAR_H

#include <string>

using namespace std;

class Car{
public:
    Car(const int& plateNum, const string& type, const int& lot, const string& location);
    ~Car();

    int getPlateNum() const;
    string getType() const;
    string getLocation() const;

private:
    int plateNum;
    string type;
    int lot;
    string location;
};
#endif //HW_1_CAR_H
