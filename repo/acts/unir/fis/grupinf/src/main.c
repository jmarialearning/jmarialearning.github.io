/*Actividad Grupal de Informática*/
// Declaramos las cabeceras que me dejan definir las funciones como fprintf o strcmp, por ejemplo.
#include "operaciones.h"
#include <stdio.h>
// Vamos a hacer las funciones que no están en el main.
int imprime_menu() {
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
int salir_programa() {
	int s = 1; // Salimos del programa y nos aseguramos que no vuelva al while.
	printf("\nAdiós.");
	return 0;
}
int main() {
	int num1, num2, sel; // Operandos y seleccionador (sel)
	int sel_mala = 1; // Incremental para saber cuántos intentos ha fallado el usuario.
	int s = 0; // Flag para saber si se quiere salir.
	printf("\n---Calculadora---\n");
	printf("Este programa le permite realizar operaciones sencillas con dos números enteros.\n");
	printf("Introduzca el primer operando: ");
	scanf("%d", &num1);
	printf("Introduzca el segundo operando: ");
	scanf("%d", &num2);
	imprime_menu();
	while (sel_mala <= 3 && s == 0) {
		printf("Seleccione una opción [1 - 7]:");
		scanf("%d", &sel);
		switch (sel) {
		case 1:
			printf("La suma de %d y %d es %d.\n", num1, num2, suma(num1, num2));
			main();
			break;
		case 2:
			printf("La resta de %d y %d es %d.\n", num1, num2, resta(num1, num2));
			main();
			break;
		case 3:
			printf("La multiplicación de %d y %d es %d.\n", num1, num2,
					multi(num1, num2));
			main();
			break;
		case 4:
			if (num2 == 0) {
				printf("\nNo se puede dividir por 0.\n");
			} else {
				printf("La división de %d y %d es %d.\n", num1, num2,
						divi(num1, num2));
			}
			main();
			break;
		case 5:
			printf("%d elevado a %d es %d.\n", num1, num2, potencia(num1, num2));
			main();
			break;
		case 6:
			printf("%d sobre %d es %d.\n", num1, num2, comb(num1, num2));
			main();
			break;
		case 7:
			s = 1; // Flag para salir actualizado. Una de las dos condiciones del While se incumplirá y, por ende, el bucle entero.
			break;

		default:
			sel_mala++;
			printf("\nSelección errónea, seleccione de nuevo\n");
			imprime_menu();
			break;
		}
	}
	salir_programa();
	return 0;
}
