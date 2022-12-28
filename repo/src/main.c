#include <stdio.h>
int producto(int num1, int num2){
    return num1 * num2;
}
int suma(int num1, int num2){
    return num1 + num2;
}
int potencia(int base, int exponente){
    int aux = 1;
    for(int i = 1; i <= exponente; i++){
        aux = aux * base;
    }
    return aux;
}
int factorial(int n){
    if (n == 0){
        return 1;
    }
    else{
        return producto(n,factorial(n-1));
    }
}
int division(int num1, int num2){
    if(num2 != 0){
        return num1/num2;
    }
    else{
        return 0; //Está mal...
    }
}
int main (){
int num_numeros, numero1, numero2;
printf("Cuántas parejas de números quieres operar?\n");
scanf("%d",&num_numeros);
for (int i =0 ; i < num_numeros; i++)
{
printf("Escribe el primer número y el segundo\n");
scanf("%d %d",&numero1,&numero2);
printf("El resultado de las operaciones es el siguiente %d*%d=%d, %d+%d=%d,%d!=%d , %d^%d=%d, %d/%d=%d\n",
numero1, numero2, producto(numero1,numero2),
numero1, numero2, suma(numero1,numero2),
numero1, factorial(numero1),
numero1, numero2, potencia(numero1,numero2),
numero1, numero2, division(numero1,numero2));
}
return 0;
}
