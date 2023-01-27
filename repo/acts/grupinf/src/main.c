/*Actividad Grupal de Informática*/
// Declaramos las cabeceras que me dejan definir las funciones como fprintf o strcmp, por ejemplo.
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <string.h>
// Vamos a hacer las funciones de las operaciones

int imprime_menu()
{
    printf("\n---Menú---\n");
    printf("(1) Suma.\n");
    printf("(2) Resta.\n");
    printf("(3) Multiplicación.\n");
    printf("(4) División.\n");
    printf("(5) Potencia.\n");
    printf("(6) Combinatorio.\n");
    printf("(7) Salir.\n");
    return 0;
}
int salir_programa()
{
    printf("\nAdiós.");
    return 0;
}
int main()
{
    int num1, num2, sel;
    int sel_mala = 0;
    printf("\n---Calculadora---\n");
    printf("Este programa le permite realizar operaciones sencillas con dos números enteros.\n");
    printf("Introduzca el primer operando: ");
    scanf("%d", &num1);
    printf("Introduzca el segundo operando: ");
    scanf("%d", &num2);
    imprime_menu();
    printf("Seleccione una opción [1 - 7]:");
    scanf("%d", &sel);
    switch (sel)
    {
    case 1:
        printf("La suma de %d y %d es %d.", num1, num2, suma(num1, num2));
        break;
    case 2:
        printf("La resta de %d y %d es %d.", num1, num2, resta(num1, num2));
        break;
    case 3:
        printf("La multiplicación de %d y %d es %d.", num1, num2, multi(num1, num2));
        break;
    case 4:
        printf("La división de %d y %d es %d.", num1, num2, divi(num1, num2));
        break;
    case 5:
        printf("%d elevado a %d es %d.", num1, num2, potencia(num1, num2));
        break;
    case 6:
        printf("%d sobre %d es %d.", num1, num2, comb(num1, num2));
        break;
    case 7:
        salir_programa();
        break;

    default:
        sel_mala++;
        imprime_menu();
        break;
    }
}