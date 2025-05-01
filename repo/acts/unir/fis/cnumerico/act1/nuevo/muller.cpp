#include <iostream>
#include <cmath>
using namespace std;
// funcion
float f(float x){
    return 2*x;
}
int signo(float num){
    if (num > 0){
        return 1;
    }
    if (num < 0){
        return -1;
    }
    return 0;
}
int main(){
    int iteraciones;
    float extinf, extsup;
    printf("Extremo inferior: ");
    scanf("%f", &extinf);
    printf("Extremo superior: ");
    scanf("%f", &extsup);
    float pmedio = (extinf + extsup) / 2;
    printf("\nExtremo inferior: %f", extinf);
    printf("\nExtremo superior: %f", extsup);
    printf("\nPunto medio: %f", pmedio);
    printf("\nValores de la función en esos puntos: %f, %f y %f", f(extinf), f(extsup), f(pmedio));
    if(f(extinf)*f(extsup) > 0){
        printf("\nModifica los  extremos para que haya un cambio de signo entre ellos.\n");
        return 1;
    }
    for (iteraciones = 1; iteraciones <=25; iteraciones++){
        if(extinf > extsup){
        //swap(extinf,extsup);
    }
    float c = f(pmedio);
    float gamma = (pmedio - extinf) / (extsup - pmedio);
    float a = (gamma * f(extsup) - (1 + gamma) * f(pmedio) + f(extinf)) / (gamma * (1 + gamma) * pow(extsup - pmedio,2));
    float b = (f(extsup) - f(extinf) - a * pow(extsup - pmedio, 2)) / (extsup - pmedio);
    float xr = pmedio - (2 * c) / (b + signo(b) * sqrt(pow(b,2) - 4 * a * c));
    if (xr > pmedio){
        extinf = pmedio;
        pmedio = (extinf + extsup) / 2;
    }
    if (xr < pmedio){
        extsup = pmedio;
        pmedio = (extinf + extsup) / 2;
    }
    printf("\n%f", xr);
    }
    return 0;
}