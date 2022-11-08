#include <iostream>
class weight
{
private:
int val;
public:
    weight()
    { 
        val = 0;
    }
    weight(int a)
    {
        val = a;
    }
    void show()
    {
     std::cout << "The value is " << val << std::endl; 
    }

    void operator++()
    {
        // val = val++;
        val = ++val;
    }
    void operator--()
    {
        // val = val--;
        val = --val;
    }
    weight operator+(weight x)
    {
        return (val + x.val);
    }
    weight operator-(weight x)
    {
        return (val - x.val);
    }
};
int main()
{
weight d(5), c(3), b;
std::cout << "After the difference of two weights :\n";
b = c - d;
b.show();
std::cout << "After the sum of two weights :\n";
b = c + d;
b.show();
d.show();
std::cout << "After incrementing the weight :\n";
++d;
d.show();
std::cout << "After decrementing the weight :\n";
--d;
d.show();
return 0;
}