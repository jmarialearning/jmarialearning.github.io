#include <iostream>
#include "multinewton.hpp"
int main(){
    newtonND({-3,1},23,1e-12);
    printf("\n\n");
    newtonND({1,1},23,1e-12);
    printf("\n\n");
    newtonND({-1,-1},23,1e-12);
    printf("\n\n");
    newtonND({2,1},23,1e-12);
    printf("\n\n");
}