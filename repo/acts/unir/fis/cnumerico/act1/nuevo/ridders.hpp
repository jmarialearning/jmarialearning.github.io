#include <iostream>
#include <cmath>
#include "signo.hpp"
#include "funcion.hpp"
using namespace std;
int ridders(double extinf, double extsup, int unsigned iteraciones){
    double pmedio = (extinf + extsup) / 2;
    for(int its = 1; its <= iteraciones; its++){
        double cuartoPunto = pmedio + (pmedio - extinf) * (signo(f(extinf) - f(extsup)) * f(pmedio)) / sqrt(pow(f(pmedio),2) - f(extinf) * f(extsup));
        if (f(cuartoPunto) * f(pmedio) < 0){
            extinf = pmedio;
            extsup = cuartoPunto;
            if(extinf > extsup){
                swap(extinf,extsup);
            }
        }
        else{
            if (f(extsup) * f(cuartoPunto) < 0){
                extinf = extsup;
                extsup = cuartoPunto;
                if(extinf > extsup){
                    swap(extinf,extsup);
                }
            }
            else{
                if (f(extinf) * f(cuartoPunto) < 0){
                    extsup = cuartoPunto;
                    if(extinf > extsup){
                        swap(extinf,extsup);
                    }
                }
            }
        }
        printf("\nRidders %u: %lf", iteraciones, cuartoPunto);
    }
    return 0;
}