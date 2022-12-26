#include <stdio.h>
/* Comentario
multilínea
*/
/*int main() {
	printf("Hello");
	return 0;
}*/
/*Aquí definimos las funciones para sumar y multiplicar 2 números 
así como la que eleva un número a otro*/
int suma(int num1, int num2){
	return num1 + num2;
}
int producto(int num1, int num2){
	return num1*num2;
}
int potencia(int base, int exponente){
	int aux = 1;
	for(int i = 1; i <= exponente; i++){
		aux = aux*base;
	}
	return aux;
}
//Inicializamos el método main.
int main(){
	/*Ponemos valores a las variables que trabajarán y declaramos
	las que devolverán los resultados.
	*/
	int num1 = 3;
	int num2 = 2;
	int res_pot = potencia(num1, num2);
	int res_suma = suma(num1, num2);
	int res_multi = producto(num1, num2);
	/*Una cadena, para ver como funcionan y cómo se utiliza su especificación de
	formato, %s.*/
	char caracteres[100] = "Cadena";
	printf("Hola mundo");
	/*Simplemente para que quede algo impreso por pantalla y comprobemos,
	visualmente	que todo ejecuta como es debido.*/
	printf("\nResultados de las operaciones.");
	printf("\nSuma de %d y %d es %d", num1, num2, res_suma);
	printf("\nProducto de %d y %d es %d", num1, num2, res_multi);
	printf("\n%d elevado a %d es %d", num1, num2, res_pot);
	printf("\n%s", caracteres);
	printf("\nY hasta aqui nuestro programa.");/* No se pueden poner tildes a no
	ser que se ponga antes el comando "chcp 1252"...
	*/
	return 0;
}
