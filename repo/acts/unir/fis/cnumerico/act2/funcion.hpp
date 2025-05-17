#ifndef FUNCION_HPP
#define FUNCION_HPP
#include <cmath>
double f1(double x, double y){
    return pow(x,2) + x * pow(y,3) - 9;
}
double f2(double x, double y){
    return 3 *  pow(x,2) * y - pow(y,3) - 4;
}
double df(double x){
    return 2;
}
#endif /*FUNCION_HPP*/