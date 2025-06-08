#ifndef JACOBI_H
#define JACOBI_H
#include <iostream>
#include <vector>
#include <cmath>
#include <iterator>
#include "predominanteDiagonal.hpp"

using namespace std;

// Definir alias
using Matrix = vector<vector<double>>;

// Método de Jacobi
vector<double> jacobi(const Matrix& A, const vector<double>& b, int maxits, double tol) {
    int n = A.size();
    if (predominanteDiagonal(A) != true){
        printf("Matriz no predominante diagonal.");
        return {0,0};
    }
    vector<double> x(n, 0.0); // Aproximación inicial
    vector<double> nuevoX(n, 0.0); // Nuevo valor

    for (int k = 0; k < maxits; ++k) {
        for (int i = 0; i < n; ++i) {
            double sum = 0.0;
            for (int j = 0; j < n; ++j) {
                if (i != j) {
                    sum += A[i][j] * x[j];
                }
            }
            nuevoX[i] = (b[i] - sum) / A[i][i];
        }

        // Ver la convergencia
        double errorMax = 0.0;
        for (int i = 0; i < n; ++i) {
            errorMax = max(errorMax, fabs(nuevoX[i] - x[i]));
        }

        x = nuevoX; // Actualizar solución

        if (errorMax < tol) {
            break; // Convergencia conseguida
        }
        printf("Jacobi %d: ", k);
        copy(x.begin(),x.end(), ostream_iterator<double>(cout, " "));
        printf("\n");
    }
    return x;
}
#endif /*JACOBI_H*/