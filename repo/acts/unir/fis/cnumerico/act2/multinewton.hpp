#include <iostream>
#include <cmath>
#include <vector> // Para clase std::vector
#include "funcion.hpp"
using namespace std;
int newtonND(vector <double> extinf, vector <double> extsup, vector <double> aproxInicial, int unsigned iteraciones, double eps){
    const double epsilon = eps;
    // Cambiamos los extremos si procede.
    /*if (extsup < extinf){
        swap(extinf,extsup);
    }*/
    // Comprobamos los cambios de signo de la función.
    /*if (f(extinf) * f(extsup) > 0){
        printf("Los extremos no permiten concluir la existencia de un cambio de signo. Escoge otros.\n");
        return 1;
    }*/
    if (extinf[0] > extsup[0]){
        swap(extinf, extsup);
    }
    // Calcular matriz jacobiana.
    double x = aproxInicial[0];
    double y = aproxInicial[1];
    vector <double> funcion = {f1(x,y),f2(x,y)};
    double jacobiana[2][2] = {2 * x + pow(y,3), 3 * pow(y,2) * x,6 * x * y, 3 * pow(x,2) - 3 * pow(y,2)};
    double jacobianaInvertida[2][2] = {0,0,0,0};
    vector <double> aproxSucesiva = aproxInicial - jacobianaInvertida /* * */ funcion;
    aproxInicial = aproxSucesiva;
    return 0;
}
