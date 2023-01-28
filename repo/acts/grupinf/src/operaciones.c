#include "operaciones.h"
int suma(int num1, int num2)
{
    return num1 + num2;
}
int resta(int num1, int num2)
{
    return num1 + num2;
}
int multi(int num1, int num2)
{
    return num1 * num2;
}
int divi(int num1, int num2)
{
    int resultado = 1;
    if (num2 == 0)
    {
        printf("No se puede dividir por 0. El resultado de la división se ha de ignorar.\n");
    }
    else
    {
        resultado = num1 / num2;
    }
    return resultado;
}
int potencia(int base, int exponente)
{
    int resultado = 1;
    for (int i = 1; i <= exponente; i++)
    {
        printf("%d", base);
        resultado = resultado * base;
    }
    return resultado;
}
int factorial(int num1)
{
    int resultado = 1;
    if (num1 = 0)
    {
        resultado = 1;
    }
    else
    {
        resultado = num1 * factorial(num1 - 1);
    }
    return resultado;
}
int comb(int num1, int num2)
{
    int resultado = factorial(num1) / (factorial(num2) * factorial(num1 - num2));
    return resultado;
}