// Calculo numerico: Tema 4 / newton_raphson.h

#include <iostream>
#include <cmath>
#include <algorithm>
#include "funcion.hpp"
#include "signo.hpp"
using namespace std;

int newton(double extinf, double extsup, double apxinicial, int unsigned iteraciones){
	if(extinf > extsup){
		swap(extinf,extsup);
	}
	if (extinf * extsup > 0){
		printf("Los extremos deben tener signos distintos para poder evaluar.");
		return 1;
	}
	double valorApxInicial = f(apxinicial);
	double valorDerInicial = df(apxinicial);
	const double eps = 1.0e-6;
	double aproximacion = apxinicial;
	for(int i = 1; i<=iteraciones; i++){
		double valAprox = f(aproximacion);
		double DerAprox = df(aproximacion);
		double xr = aproximacion - f(aproximacion) / df(aproximacion);
		aproximacion = xr;
		double delta = min(fabs(xr - extsup), fabs(xr - extinf));
		if(delta<=eps){
			break;
			return 0;
		}
		else{
			printf("\nNewton %u: %lf", i, xr);
		}
	}
	return 0;
}