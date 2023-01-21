// Arda Iynem
// 22002717

#ifndef HW_3_PUZZLECONTAINER_H
#define HW_3_PUZZLECONTAINER_H
#include <sstream>
using namespace std;

class PuzzleRow{
private:
    struct PuzzlePiece{
        char shape;
        int rowindex;
        int colindex;
        PuzzlePiece* next;
    };
    PuzzlePiece* head;
    PuzzleRow* next;
    int rowindex;
    int maxSize;

public:
    PuzzleRow( int size, int rowindex);
    ~PuzzleRow();
    int getRowIndex();
    void setNext( PuzzleRow* next );
    PuzzleRow* getNext();
    bool insert( int index, char shape );
    bool remove( int index );
    bool isEmpty();
    char getPiece(int index );
    void printRow();
    // Extra Auxiliary Method
    bool findByShape(char shape, stringstream &out);
};

class PuzzleContainer{
private:
    PuzzleRow* rowLists;
    int height;
    int width;

public:
    PuzzleContainer( int h, int w);
    ~PuzzleContainer();
    PuzzleRow* getRow( int index );
    bool insertRow( int index );
    bool removeRow( int index );
    bool addPiece( int row, int col , char shape );
    bool removePiece(int row, int col);
    int getHeight();
    int getWidth();
    void showPiece(int row, int col);
    void displayContainer();
    void showColumn(int col);
    void showRow(int row);
    void findPiece(char shape);
};
#endif //HW_3_PUZZLECONTAINER_H
