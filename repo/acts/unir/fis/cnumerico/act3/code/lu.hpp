#ifndef LU_H
#define LU_H
#include <iostream>
#include <vector>
#include <utility>
#include <stdexcept>

using namespace std;

// Alias para una matriz
using Matrix = vector<vector<double>>;

// Función para realizar la descomposición LU
pair<Matrix, Matrix> descompLU(const Matrix& A) {
    int n = A.size();
    if (n == 0 || A[0].size() != n) {
        throw invalid_argument("La matriz debe ser cuadrada.");
    }
    // Inicializar L y U
    Matrix L(n, vector<double>(n, 0));
    Matrix U(n, vector<double>(n, 0));

    for (int i = 0; i < n; i++) {
        // U es la matriz superior
        for (int j = i; j < n; j++) {
            U[i][j] = A[i][j];
            for (int k = 0; k < i; k++) {
                U[i][j] -= L[i][k] * U[k][j];
            }
        }
         // Verificar si el elemento diagonal de U es cero
        if (U[i][i] == 0) {
            throw runtime_error("La matriz no es factorizable (cero en la diagonal de U).");
        }
        // L es la matriz inferior
        for (int j = i; j < n; j++) {
            if (i == j) {
                L[i][i] = 1; // Diagonal de L es 1
            } else {
                L[j][i] = A[j][i];
                for (int k = 0; k < i; k++) {
                    L[j][i] -= L[j][k] * U[k][i];
                }
                L[j][i] /= U[i][i];
            }
        }
    }

    return make_pair(L, U);
}
// Función para la sustitución hacia adelante
vector<double> sustitucionAdelante(const Matrix& L, const vector<double>& b) {
    int n = L.size();
    vector<double> y(n);

    for (int i = 0; i < n; i++) {
        y[i] = b[i];
        for (int j = 0; j < i; j++) {
            y[i] -= L[i][j] * y[j];
        }
    }
    return y;
}

// Función para la sustitución hacia atrás
vector<double> sustitucionAtras(const Matrix& U, const vector<double>& y) {
    int n = U.size();
    vector<double> x(n);

    for (int i = n - 1; i >= 0; i--) {
        x[i] = y[i];
        for (int j = i + 1; j < n; j++) {
            x[i] -= U[i][j] * x[j];
        }
        x[i] /= U[i][i];
    }
    return x;
}

// Función para resolver Ax = b usando la descomposición LU
vector<double> resolverLU(const vector<vector<double>>& A, const vector<double>& b) {
    // Realizar la descomposición LU
    auto [L, U] = descompLU(A);

    // Paso 1: Resolver Ly = b
    vector<double> y = sustitucionAdelante(L, b);
    
    // Paso 2: Resolver Ux = y
    vector<double> x = sustitucionAtras(U, y);
    printf("LU: ");
        copy(x.begin(),x.end(), ostream_iterator<double>(cout, " "));
        printf("\n");
    return x; // Retornar la solución final
}
#endif /*LU_H*/