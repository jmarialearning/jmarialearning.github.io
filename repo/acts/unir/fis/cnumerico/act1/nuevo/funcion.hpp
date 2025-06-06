#ifndef FUNCION_HPP
#define FUNCION_HPP
#include <cmath>
double f(double x){
    return exp(0.75 * x) - 3 * sin(1.25 * x);
}
double df(double x){
    return 0.75 * exp(0.75 * x) - 3.75 * cos(1.25 * x);
}
#endif /*FUCNION_HPP*/