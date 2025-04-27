#include <iostream>
#include <cmath>
using namespace std;
/*
Muller. Argumentos:
    a y b son los extremos del intervalo.
    f es una función con tres argumentos:
        punto a evaluar
        referencia al valor en el punto
        referencia a la primera derivada en el punto
    c es el punto candidato
    its son las iteraciones
    error implica el error del proceso
*/
void muller(double &a, double &b, void *f(double, double &, double &), double &c, int &its, int &error){
    //Declaramos la precisión que queremos.
    const double precision = 1.0e-14;
    const double maxits = 200; // Número máximo de iteraciones que haremos.
    // Si a es mayor a b, los cambiamos para que a sea el extremo con menor x.
    if (a > b){
        swap(a,b);
    }
    // Hemos de conseguir un punto medio entre a y b.
    double c = (a+b)/2;
    // Con a, b y c podemos sacar una parábola que pase por esos 3 puntos.
    // y = px^2+qx+r debe pasar por a, b y c.
}
