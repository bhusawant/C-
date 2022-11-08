#include <iostream>
class sphere
{
protected:
    int radius, surfaceArea, Volume;
public:
    sphere(){}
    sphere(int r) // Declaration and Definition of Parameterised constructor
    {
        radius = r;
    }
    void calSurfaceArea(){
        int s = surfaceArea;
        surfaceArea = 4 * 3.14 * radius * radius;
    }
    void calVolume(){
        int v = Volume;
        Volume = (4/3) * 3.14 * radius * radius * radius;
    }
    void show() // Declaration and Definition of method 
    {
        std::cout << "The surface area of sphere is " << surfaceArea << " square units and the volume of sphere is " << Volume << " cube units" << std::endl;
    }
};

class tennis_Ball : public sphere
{
protected:
    int radius, surfaceArea, Volume;
public:
    tennis_Ball(int r) // Declaration and Definition of Parameterised constructor
    {
        radius = r;
    }
    void calSurfaceArea(){
        int s = surfaceArea;
        surfaceArea = 4 * 3.14 * radius * radius;
    }
    void calVolume(){
        int v = Volume;
        Volume = (4/3) * 3.14 * radius * radius * radius;
    }
    void show() // Declaration and Definition of method 
    {
        std::cout << "The surface area of tennis ball is " << surfaceArea << " square units and the volume of tennis ball is " << Volume << " cube units" << std::endl;
    }
};

int main()
{
    sphere s(6);
    s.calSurfaceArea();
    s.calVolume();
    s.show();
    tennis_Ball t(8);
    t.calSurfaceArea();
    t.calVolume();
    t.show();

    return 0;
}
