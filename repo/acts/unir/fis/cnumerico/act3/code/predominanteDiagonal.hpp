#ifndef PREDDIAG_H
#define PREDDIAG_H
#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

using Matrix = vector<vector<double>>;
bool predominanteDiagonal(const Matrix &matriz){
    int n = matriz.size();
    // Comprobamos si es una matriz cuadrada.
    for (const auto &fila:matriz){
        if (fila.size() != n){
            return false;
        }
    }
    double sumaDiagonal = 0;
    double sumaNoDiagonal = 0;
    for(int i = 0; i < n; i++){
        for(int j = 0; j<n; j++){
            if (i = j){
                sumaDiagonal +=abs(matriz[i][j]);
            }
            else{
                sumaNoDiagonal += abs(matriz[i][j]);
            }
        }
    }
    // Definir treshold?
    return sumaNoDiagonal < sumaDiagonal; //por treshold?
}
#endif /*PREDDIAG_H*/