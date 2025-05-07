#include <iostream>
#include <cmath>
using namespace std;
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
double funcion(double x){
    return pow(x,3) - 9 * pow(x,2) + 26 * x - 24; // Esa es la función que se utiliza.
}
void Muller(double extremoInferior, double extremoSuperior, int iteraciones){
    // Si extremoInferior es más grande que extremoSuperior, se intercambian los valores.
    for(int i = 0; i < iteraciones; i++){
    if (extremoInferior > extremoSuperior){
        swap(extremoInferior,extremoSuperior);
    }
    //El tercer punto para calcular la parabola lo sacamos con el punto medio entre los extremos.
    double puntoMedio = (extremoInferior + extremoSuperior) * 0.5;
    // A partir de aqui gestionamos la parabola y = ax^2+bx+c.
    double constanteComun = (extremoInferior - extremoSuperior) / (puntoMedio - extremoInferior);
    double coeficienteCuadratico = (constanteComun * funcion(puntoMedio) - funcion(extremoInferior) * (1 + constanteComun) + funcion(extremoSuperior)) / (constanteComun * pow(puntoMedio-extremoInferior,2) * (1 + constanteComun));
    double coeficienteLineal = (funcion(puntoMedio) - funcion(extremoInferior) - coeficienteCuadratico * pow(puntoMedio - extremoInferior,2)) / (puntoMedio - extremoInferior);
    double terminoIndependiente = funcion(extremoInferior);
    // Ahora sacamos los ceros de la parabola.
    double coordCero = extremoInferior - (2 * terminoIndependiente) / (coeficienteLineal + signo(coeficienteLineal) * sqrt(pow(coeficienteLineal,2) - 4 * coeficienteCuadratico * terminoIndependiente));
    // Descartamos un punto inicial según donde quede el cero.
    if (coordCero > extremoInferior){
        extremoSuperior = puntoMedio;
        puntoMedio = coordCero;
    }
    if (coordCero < extremoInferior){
        puntoMedio = coordCero;
        swap(extremoInferior, extremoSuperior);
    }
    printf("\n%f\t%f\t%f\t%f\n", coeficienteCuadratico, coeficienteLineal, terminoIndependiente, coordCero);
    }
}

int main(){
    double extremoSuperior;
    double extremoInferior;
    int iteraciones;
    printf("Extremo inferior: ");
    scanf("%f", &extremoInferior);
    printf("\nExtremo Superior: ");
    scanf("%f", &extremoSuperior);
    printf("\nIteraciones: ");
    scanf("%d", &iteraciones);
    Muller(extremoInferior, extremoSuperior, iteraciones);
}
