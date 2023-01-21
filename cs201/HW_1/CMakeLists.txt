cmake_minimum_required(VERSION 3.21)
project(HW_1)

set(CMAKE_CXX_STANDARD 14)

add_executable(HW_1 main.cpp ParkingSystem.h ParkingSystem.cpp Lot.cpp Lot.h Car.cpp Car.h)
