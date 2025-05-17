#ifndef MATRIXMATH_HPP
#define MATRIXMATH_HPP
#include <iostream>
#include <vector>
#include <stdexcept>
using Matrix = std::vector<std::vector<double>>;

// Función para multiplicar dos matrices
Matrix productoMatrices(const Matrix& A, const Matrix& B) {
    if (A.empty() || B.empty()) {
        throw std::invalid_argument("Las matrices no pueden estar vacías.");
    }

    size_t nA = A.size();    // Número de filas de A
    size_t mA = A[0].size(); // Número de columnas de A
    size_t nB = B.size();    // Número de filas de B
    size_t mB = B[0].size(); // Número de columnas de B

    // Validar dimensiones de las filas internas (todas las filas deben tener la misma longitud)
    for (size_t i = 1; i < nA; ++i) {
        if (A[i].size() != mA) {
            throw std::invalid_argument("La matriz A tiene filas de diferentes longitudes.");
        }
    }
    for (size_t i = 1; i < nB; ++i) {
        if (B[i].size() != mB) {
            throw std::invalid_argument("La matriz B tiene filas de diferentes longitudes.");
        }
    }

    // Condición para la multiplicación de matrices:
    // El número de columnas de A debe ser igual al número de filas de B
    if (mA != nB) {
        throw std::invalid_argument("El número de columnas de la primera matriz debe ser igual al número de filas de la segunda matriz.");
    }

    // La matriz resultante C tendrá nA filas y mB columnas
    Matrix C(nA, std::vector<double>(mB, 0.0));

    // Algoritmo de multiplicación
    for (size_t i = 0; i < nA; ++i) {      // Iterar sobre las filas de A (y C)
        for (size_t j = 0; j < mB; ++j) {  // Iterar sobre las columnas de B (y C)
            for (size_t k = 0; k < mA; ++k) { // Iterar sobre las columnas de A / filas de B
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    return C;
}
const double EPSILON = 1e-9;
Matrix inversaMatriz(const Matrix& A) {
    if (A.empty()) {
        throw std::invalid_argument("La matriz de entrada no puede estar vacía.");
    }

    size_t n = A.size(); // Número de filas
    if (n == 0) { // Aunque A no esté vacía, A[0] podría no existir si n=0 (caso raro)
         throw std::invalid_argument("La matriz de entrada no tiene filas.");
    }
    size_t m = A[0].size(); // Número de columnas

    // Validar que todas las filas tengan la misma longitud
    for (size_t i = 0; i < n; ++i) {
        if (A[i].size() != m) {
            throw std::invalid_argument("La matriz no es rectangular (filas de diferentes longitudes).");
        }
    }

    if (n != m) {
        throw std::invalid_argument("La inversa solo está definida para matrices cuadradas (n filas = m columnas).");
    }

    // Crear una copia de la matriz A para no modificar la original directamente en esta fase
    // y la matriz identidad para aumentarla.
    // La matriz aumentada tendrá n filas y 2*n columnas.
    Matrix aumentada(n, std::vector<double>(2 * n));

    for (size_t i = 0; i < n; ++i) {
        for (size_t j = 0; j < n; ++j) {
            aumentada[i][j] = A[i][j]; // Copiar A a la parte izquierda
        }
        aumentada[i][i + n] = 1.0; // Crear la identidad en la parte derecha
        // Los otros elementos de la parte derecha ya son 0.0 por la inicialización del vector.
    }

    // Proceso de eliminación de Gauss-Jordan
    for (size_t i = 0; i < n; ++i) {
        // --- Pivoteo parcial ---
        // Encontrar la fila con el mayor elemento (en valor absoluto) en la columna actual i,
        // comenzando desde la fila i.
        size_t max_fila = i;
        for (size_t k = i + 1; k < n; ++k) {
            if (std::abs(aumentada[k][i]) > std::abs(aumentada[max_fila][i])) {
                max_fila = k;
            }
        }

        // Intercambiar la fila actual (i) con la fila del pivote máximo (max_fila)
        if (max_fila != i) {
            std::swap(aumentada[i], aumentada[max_fila]);
        }

        // --- Comprobar singularidad ---
        // Si el elemento pivote es cercano a cero, la matriz es singular (o numéricamente singular)
        double pivote = aumentada[i][i];
        if (std::abs(pivote) < EPSILON) {
            throw std::runtime_error("La matriz es singular y no tiene inversa (pivote cercano a cero).");
        }

        // --- Normalización de la fila pivote ---
        // Dividir toda la fila pivote por el elemento pivote para hacerlo 1
        for (size_t j = i; j < 2 * n; ++j) {
            aumentada[i][j] /= pivote;
        }

        // --- Eliminación en otras filas ---
        // Hacer cero los demás elementos en la columna actual i
        for (size_t k = 0; k < n; ++k) {
            if (k != i) {
                double factor = aumentada[k][i];
                for (size_t j = i; j < 2 * n; ++j) {
                    aumentada[k][j] -= factor * aumentada[i][j];
                }
            }
        }
    }

    // Extraer la matriz inversa (la parte derecha de la matriz aumentada)
    Matrix inversa(n, std::vector<double>(n));
    for (size_t i = 0; i < n; ++i) {
        for (size_t j = 0; j < n; ++j) {
            inversa[i][j] = aumentada[i][j + n];
        }
    }

    return inversa;
}
std::vector<double> matrixColumnToVector(const Matrix& colMatrix) {
    if (colMatrix.empty()) {
        // Podrías devolver un vector vacío o lanzar un error dependiendo de la necesidad
        // Lanzar un error es más seguro si esperas un vector no vacío
        throw std::runtime_error("La matriz de entrada está vacía.");
    }

    size_t num_rows = colMatrix.size();
    std::vector<double> result_vector;
    result_vector.reserve(num_rows); // Optimización: reservar espacio

    for (size_t i = 0; i < num_rows; ++i) {
        // Verificar que cada fila tenga exactamente un elemento (estructura de vector columna)
        if (colMatrix[i].size() != 1) {
            throw std::runtime_error("La matriz de entrada no es un vector columna válido (alguna fila no tiene exactamente 1 elemento).");
        }
        result_vector.push_back(colMatrix[i][0]);
    }

    return result_vector;
}
std::vector<double> restarVectores(const std::vector<double>& vec1, const std::vector<double>& vec2) {
    // Los vectores deben tener el mismo tamaño para poder restarse elemento a elemento
    if (vec1.size() != vec2.size()) {
        throw std::runtime_error("Los vectores deben tener el mismo tamaño para la resta.");
    }

    size_t size = vec1.size();
    std::vector<double> result_vector;
    result_vector.reserve(size); // Optimización: reservar espacio

    for (size_t i = 0; i < size; ++i) {
        result_vector.push_back(vec1[i] - vec2[i]);
    }

    return result_vector;
}
#endif /*MATRIXMATH_HPP*/