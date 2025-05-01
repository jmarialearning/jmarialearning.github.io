#include <iostream>
#include <cmath>
using namespace std;
int signo(float num){
    if (num > 0){
        return 1;
    }
    if (num < 0){
        return -1;
    }
    return 0;
}
float f(float x){
    return 2*x;
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
    for(iteraciones = 1; iteraciones <= 25; iteraciones++){
        float cuartoPunto = pmedio + (pmedio - extinf) * (signo(f(extinf) - f(extsup)) * f(pmedio));
    }
}