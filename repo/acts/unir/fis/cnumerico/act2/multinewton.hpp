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
    // Calcular matriz jacobiana.
    for(int unsigned i = 0;i<=iteraciones; i++){
        double x = aproxInicial[0];
        double y = aproxInicial[1];
        vector <double> funcion = {f1(x,y),f2(x,y)};
        Matrix jacobiana = {
            {2 * x + pow(y,3), 3 * pow(y,2) * x},
            {6 * x * y, 3 * pow(x,2) - 3 * pow(y,2)}
        };
        Matrix jacobianaInvertida = inversaMatriz(jacobiana);
        Matrix funcionEx = {
            {pow(x,2) + x * pow(y,3) - 9},
            {3 *  pow(x,2) * y - pow(y,3) - 4}
        };
        Matrix productoRes = productoMatrices(jacobianaInvertida, funcionEx);
        vector <double> productoResEx = matrizAVector(productoRes);
        vector <double> aproxSucesiva = restarVectores(aproxInicial,productoResEx);
        aproxInicial = aproxSucesiva;
        printf("\n%lf", aproxSucesiva[0]);
        printf("\n%lf", aproxSucesiva[1]);
    }
    return 0;
}
