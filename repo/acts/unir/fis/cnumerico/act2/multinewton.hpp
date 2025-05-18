#include <iostream>
#include <cmath>
#include <vector> // Para clase std::vector
#include "funcion.hpp"
using namespace std;
int newtonND(vector <double> aproxInicial, int unsigned iteraciones, double eps){
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
    for(int unsigned i = 1;i<=iteraciones; i++){
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
        double a = fabs(f1(aproxSucesiva[0], aproxSucesiva[1]));
        double b = fabs(f2(aproxSucesiva[0], aproxSucesiva[1]));
        if(a <= eps){
            if (b <= eps){
                return 0;
            }
            else{
                aproxInicial = aproxSucesiva;
                printf("\nNewton %u: (%lf, %lf)",i, aproxSucesiva[0], aproxSucesiva[1]);
            }
        }
        else{
            aproxInicial = aproxSucesiva;
            printf("\nNewton %u: (%lf, %lf)",i, aproxSucesiva[0], aproxSucesiva[1]);
        }
        /*if (f1(aproxSucesiva[0],aproxSucesiva[1]) <= eps && f2(aproxSucesiva[0],aproxSucesiva[1]) <= eps){
            return 0;
        }
        else{
            
        }*/
    }
    return 0;
}
