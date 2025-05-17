#include <iostream>
#include "multinewton.hpp"
int main(){
    newtonND({-10,10},{10,-10},{-3,1},23,1);
    printf("\n\n");
    newtonND({-10,10},{10,-10},{1,1},23,1);
    printf("\n\n");
    newtonND({-10,10},{10,-10},{-1,-1},23,1);
    printf("\n\n");
    newtonND({-10,10},{10,-10},{2,1},23,1);
    printf("\n\n");
}