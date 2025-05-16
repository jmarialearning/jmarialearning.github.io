#include <iostream>
#include <cmath>
#include "funcion.hpp"
using namespace std;
int newtonND(double extinf, double extsup, double aproxInicial, int unsigned iteraciones){
    const double epsilon = 1.0e-14;
    // Cambiamos los extremos si procede.
    if (extsup < extinf){
        swap(extinf,extsup);
    }
    // Comprobamos los cambios de signo de la función.
    if (f(extinf) * f(extsup) > 0){
        printf("Los extremos no permiten concluir la existencia de un cambio de signo. Escoge otros.\n");
        return 1;
    }


}
