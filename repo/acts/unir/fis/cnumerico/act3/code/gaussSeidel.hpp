#include <vector>
#include <cmath>

using namespace std;

// Definir un alias para la matriz
using Matrix = vector<vector<double>>;

// Función para realizar el método de Gauss-Seidel
vector<double> gaussSeidel(const Matrix& A, const vector<double>& b, int maxIteraciones, double tolerancia) {
    int n = A.size(); // Tamaño de la matriz
    vector<double> x(n, 0.0); // Suposición inicial

    for (int k = 0; k < maxIteraciones; ++k) {
        vector<double> x_nuevo = x; // Crear una copia de la solución actual

        for (int i = 0; i < n; ++i) {
            double suma = 0.0;
            for (int j = 0; j < n; ++j) {
                if (i != j) {
                    suma += A[i][j] * x_nuevo[j]; // Usar los valores actualizados
                }
            }
            x_nuevo[i] = (b[i] - suma) / A[i][i]; // Calcular el nuevo valor
        }

        // Comprobar la convergencia
        double errorMaximo = 0.0;
        for (int i = 0; i < n; ++i) {
            errorMaximo = max(errorMaximo, fabs(x_nuevo[i] - x[i]));
        }

        x = x_nuevo; // Actualizar la solución

        if (errorMaximo < tolerancia) {
            break; // Converge
        }
    }

    return x; // Retornar la solución
}