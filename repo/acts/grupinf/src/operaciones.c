#include "operaciones.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int suma(int num1, int num2)
{
    return num1 + num2;
}
int resta(int num1, int num2)
{
    return num1 - num2;
}
int multi(int num1, int num2)
{
    return num1 * num2;
}
int divi(int num1, int num2)
{
    int resultado = num1 / num2;
    return resultado;
}
int potencia(int base, int exponente)
{
    int resultado = 1;
    for (int i = 1; i <= exponente; i++)
    {
        resultado = resultado * base;
    }
    return resultado;
}
int factorial(int num1)
{
    int resultado = 1;
    if (num1 == 0)
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
    int fn1 = factorial(num1);
    int fn2 = factorial(num2);
    int fnr = factorial(resta(num1,num2));
	int resultado = fn1 / (fn2 * fnr);
    return resultado;
}

