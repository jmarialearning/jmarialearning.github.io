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
double f(double x){
        return 1*pow(x,3) + 2;
    }
int signo(double num){
    if (num > 0){
        return 1;
    }
    else{
        if (num < 0){
            return -1;
        }
        else{
            return 0;
        }
    }
}
void muller(double a, double b, int its){
    // Si a es mayor a b, los cambiamos para que a sea el extremo con menor x.
    if (a > b){
        swap(a,b);
    }
    for(int i = 0;i <= its;i++){
    // Hemos de conseguir un punto medio entre a y b.
    double c = (a+b)/2;
    // Con a, b y c podemos sacar una parábola que pase por esos 3 puntos.
    // y = px^2+qx+r debe pasar por a, b y c.
    double gamma = (a-c)/(b-a);
    double p = (gamma*f(b)-(1+gamma)*f(a)+f(c))/(gamma*pow((b-a),2)*(1+gamma));
    double r = f(a);
    double q = (f(b)-f(a)-p*pow(b-a,2))/(b-a);

    double solucion = a - (2*r)/(q+signo(q)*sqrt(pow(q,2)-4*p*r));
    // Ya tenemos la solución. Veamos como se distribuye.
    if (solucion > a){
        c = b;
        b = solucion;
    }
    else{
        if (solucion < a){
            // Por seguridad.
            double c2 = c;
            double a2 = a;
            b = solucion;
            c2 = a;
            a2 = c;
        }
    }
    printf("%f, %f y %f",f(a),f(b),f(c));
    }
}
