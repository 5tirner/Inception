#include <iostream>
#include <cmath>
#include <ostream>
#include <vector>
class fix
{
    private:
        int a;
        int fract = 8;
    public:
        fix();
        fix(int k)
        {
            this->a = k << this->fract;
        }
        fix(float k)
        {
            this->a = k * pow(2, this->fract); 
        }
        int getint()
        {
            return (this->a >> this->fract);
        }
        float getfloat()
        {
            return ((float)this->a / pow(2, this->fract));
        }
};
void floatToBinary(float a)
{
    std::vector<int> vec;
    std::vector<int> vec2;
    int i = 512, check = 0;
    while (1)
    {
        if ((int)a == 0) break;
        if (a >= i) check = 1;
        if (check == 1)
        {
            if (a >= i)
            {
                vec.push_back(1);
                a -= i;
            }
            else vec.push_back(0);
        }
        i /= 2;
    }
    int shift = vec.size() - 1;
    vec.erase(vec.begin());
    i = 0; float h = 0.5;
    while (i < 23)
    {
        if (a >= h)
        {
            vec2.push_back(1);
            a -= h;
        }
        else vec2.push_back(0);
        h /= 2; i++;
    }
    int exponent = 127 + shift;
    std::vector<int> vec3;
    i = 128, check = 0;
    while (exponent)
    {
        if (exponent >= i) check = 1;
        if (check == 1)
        {
            if (exponent >= i)
            {
                vec3.push_back(1);
                exponent -= i;
            }
            else vec3.push_back(0);
        }
        i /= 2;
    }
    i = -1;
    std::cout << "Mantissa: " << std::endl;
    while (++i < vec.size())
        std::cout << vec[i] << " ";
    i = -1;
    while (++i < vec2.size())
        std::cout << vec2[i] << " ";
    std::cout << std::endl;
    std::cout << "Exponent: " << std::endl;
    i = -1;
    while (++i < vec3.size())
        std::cout << vec3[i] << " ";
    std::cout << std::endl;
}
int main()
{
    fix obj(2147483647);
    std::cout << obj.getint() << std::endl;
    fix obj2(1.39f);
    std::cout << obj2.getfloat() << std::endl;
    floatToBinary(1.39f);
    std::cout << "---------------------" << std::endl;
    floatToBinary((int)(1.39f * pow(2, 8)) );
   // floatToBinary(129.387f);
}