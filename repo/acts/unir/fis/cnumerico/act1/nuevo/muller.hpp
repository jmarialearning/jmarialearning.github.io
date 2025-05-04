#include <iostream>
#include <cmath>
#include "signo.hpp"
#include "funcion.hpp"
using namespace std;
int muller(double extinf, double extsup, int unsigned iteraciones){
    const double epsilon = 1.0e-6;
    double pmedio = (extinf + extsup) / 2;
    printf("\nExtremo inferior: %lf", extinf);
    printf("\nExtremo superior: %lf", extsup);
    printf("\nPunto medio: %lf", pmedio);
    printf("\nValores de la función en esos puntos: %lf, %lf y %lf", f(extinf), f(extsup), f(pmedio));
    if(f(extinf)*f(extsup) > 0){
        printf("\nModifica los  extremos para que haya un cambio de signo entre ellos.\n");
        return 1;
    }
    for (int its = 1; its <=iteraciones; its++){
        if(extinf > extsup){
        swap(extinf,extsup);
    }
    double c = f(pmedio);
    double gamma = (pmedio - extinf) / (extsup - pmedio);
    double a = (gamma * f(extsup) - (1 + gamma) * f(pmedio) + f(extinf)) / (gamma * (1 + gamma) * pow(extsup - pmedio,2));
    double b = (f(extsup) - f(extinf) - a * pow(extsup - pmedio, 2)) / (extsup - pmedio);
    double xr = pmedio - ((2 * c) / (b + signo(b) * sqrt(pow(b,2) - 4 * a * c)));
    double delta = min(fabs(xr - extsup), fabs(xr - extinf));
    if (epsilon >= delta){
        return 0; 
    }
    if (xr > pmedio){
        extinf = pmedio;
        pmedio = xr;
    }
    if (xr < pmedio){
        extsup = pmedio;
        pmedio = xr;
    }
    printf("\nMuller %u: %lf", its, xr);
    }
    return 0;
}