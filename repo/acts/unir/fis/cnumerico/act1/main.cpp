// Cálculo numérico. Crear dos funciones llamadas _muller_ y _ridders_ para trabajar con estos metodos.
#include <iostream>
#include "muller.h"
#include "ridders.h"
#include <conio.h>
using namespace std;
int main(){
    cout << "Hola\n\n";
    double a,b;
    int its;
    printf("Extremo inferior: ");
    scanf("%f", &a);
    printf("\nExtremo superior: ");
    scanf("%f", &b);
    printf("\nIteraciones del método de Muller: ");
    scanf("%d", &its);
    muller(a,b,its);
}
