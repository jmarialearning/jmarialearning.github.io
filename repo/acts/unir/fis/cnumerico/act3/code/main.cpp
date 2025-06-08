#include <iostream>
#include "jacobi.hpp"
#include "lu.hpp"
#include "gaussSeidel.hpp"
#include "relajacion.hpp"
#include "predominanteDiagonal.hpp"
using namespace std;
int main(){
    Matrix A = {
        {-4,1,0,1,0,0,0,0,0},
        {1,-4,1,0,1,0,0,0,0},
        {0,1,-4,0,0,1,0,0,0},
        {1,0,0,-4,1,0,1,0,0},
        {0,1,0,1,-4,1,0,1,0},
        {0,0,1,0,1,-4,0,0,1},
        {0,0,0,1,0,0,-4,1,0},
        {0,0,0,0,1,0,1,-4,1},
        {0,0,0,0,0,1,0,1,-4}
    };
    vector<double> b = {-120,0,-30,-70,0,-20,-290,-170,-160};
    vector<double> xinicialrel = {0,0,0,0,0,0,0,0,0};
    const double tolerancia = 1e-10;
    jacobi(A,b,100, tolerancia);
    printf("\n\n");
    gaussSeidel(A,b,100,tolerancia);
    printf("\n\n");
    metodoRelajacion(A,b,xinicialrel,1.1,100,tolerancia);
    printf("\n\n");
    resolverLU(A,b);
    return 0;
}