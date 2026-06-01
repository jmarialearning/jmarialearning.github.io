#include <stdio.h>
#include <math.h>
unsigned int factorial(unsigned int n){
    unsigned int resultado = 1;
    for (int i = 1; i<=n;i++){
        resultado *= i;
    }
    return resultado;
}
int main(){
    double radio = 0.09f;
    double alpha = 0.88e-6 * 86400;
    double tiempoUso = 100.0f;
    double resultadoSuma = 0;
    for (int n = 1; n<=15; n++){
        double fracPeq = (pow(radio,2*n))/(pow((4*alpha*tiempoUso),n));
        double signo = pow(-1, n);
        double numerador = signo * fracPeq;
        double denominador = n * factorial(n);
        double fraccion = numerador / denominador;
        resultadoSuma += fraccion;
        printf("\nLa suma da: %lf",resultadoSuma);
    }
    double numeroPi = 2*acos(0.0);
    double logaritmo = log(pow(radio,2)/(4*alpha*tiempoUso));
    double gamma = 0.5772156f;
    double resParentesis = gamma + logaritmo + resultadoSuma;
    double lambda = 2.0f;
    double coeficiente = 1/(4 * numeroPi * lambda);
    double resistenciaCaptador = coeficiente * resParentesis;
    printf("\nLa resistencia es: %lf", resistenciaCaptador);
    return 0;

}
