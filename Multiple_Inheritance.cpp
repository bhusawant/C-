#include <iostream>
class square
{
protected:
    int lside, area, peri;

public:
    square() {}
};
class Room1cost
{
protected:
    int R1rate;

public:
    Room1cost() {}
};
class Room2cost
{
protected:
    int R2rate;

public:
    Room2cost() {}
};
class compound : public square, public Room1cost, public Room2cost
{
public:
    compound(int l, int rt1, int rt2)
    {
        lside = l;
        R1rate = rt1;
        R2rate = rt2;
        area = lside * lside;
        peri = 4 * lside;
        std::cout << "The area and perimeter of square shaped room of length of side " << lside << " units are " << area << " sq units and " << peri << " units respectively" << std::endl;
        std::cout << "The cost of room1 is " << area * R1rate << " Rupees and the cost of room2 is " << area * R2rate << " Rupees " << std::endl;
    }
};
int main()
{
    compound(7, 8, 7);
    return 0;
}