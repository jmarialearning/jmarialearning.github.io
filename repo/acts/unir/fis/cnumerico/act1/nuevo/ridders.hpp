#include <iostream>
#include <cmath>
#include "signo.hpp"
#include "funcion.hpp"
using namespace std;
int ridders(double extinf, double extsup, int unsigned iteraciones){
    double pmedio = (extinf + extsup) / 2;
    const double epsilon = 1.0e-6;
    for(int its = 1; its <= iteraciones; its++){
        double cuartoPunto = pmedio + (pmedio - extinf) * (signo(f(extinf) - f(extsup)) * f(pmedio)) / sqrt(pow(f(pmedio),2) - f(extinf) * f(extsup));
        double delta = min(fabs(cuartoPunto - extsup), fabs(cuartoPunto - extinf));
        if (epsilon >= delta){
            its +=1;
            return 0;
        }
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
        printf("\nRidders %u: %lf", its, cuartoPunto);
    }
    return 0;
}