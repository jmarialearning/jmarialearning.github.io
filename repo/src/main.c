#include <stdio.h>
/* Comentario
multilínea
*/
/*int main() {
	printf("Hello");
	return 0;
}*/
int suma(int num1, int num2){
	return 5;
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
int main(){
	int num1 = 3;
	int num2 = 2;
	int n = potencia(num1, num2);
	char caracteres[100] = "Cadena";
	printf("Hola que tal %d y %d. Resultado %d", num1, num2, n);
	printf("\n%s", caracteres);
	return 0;
}
