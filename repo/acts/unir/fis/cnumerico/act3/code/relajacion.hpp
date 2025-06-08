#ifndef METODO_RELAJACION_H
#define METODO_RELAJACION_H

#include <vector>
#include <cmath>
#include "predominanteDiagonal.hpp"

using namespace std;

using Matrix = vector<vector<double>>;

// Función para el método de relajación
void metodoRelajacion(const Matrix& A, const vector<double>& b, vector<double>& x, double omega, int maxIteraciones, double tolerancia) {
    int n = A.size();
    if (predominanteDiagonal(A) != true){
        printf("Matriz no predominante diagonal.");
        return;
    }
    vector<double> x_nueva(n);

    for (int k = 0; k < maxIteraciones; ++k) {
        double maxError = 0.0;

        for (int i = 0; i < n; ++i) {
            double suma = 0.0;
            for (int j = 0; j < n; ++j) {
                if (j != i) {
                    suma += A[i][j] * x[j];
                }
            }
            x_nueva[i] = (1 - omega) * x[i] + (omega / A[i][i]) * (b[i] - suma);
            maxError = max(maxError, fabs(x_nueva[i] - x[i]));
        }

        x = x_nueva;

        if (maxError < tolerancia) {
            break; //Converge
        }
        printf("Relajación %d: ", k);
        copy(x.begin(),x.end(), ostream_iterator<double>(cout, " "));
        printf("\n");
    }
}

#endif // METODO_RELAJACION_H