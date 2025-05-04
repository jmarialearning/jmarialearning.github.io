#include <iostream>
#include "muller.hpp"
#include "ridders.hpp"
#include "regula_falsi.hpp"
#include "biseccion.hpp"
#include "newton_raphson.hpp"
using namespace std;
int main(){
    muller(0,1,1000);
    printf("\n\n");
    ridders(0,1,1000);
    printf("\n\n");
    regula_falsi(0,1,0,1000);
    printf("\n\n");
    biseccion(0,1,0,1000);
    printf("\n\n");
    newton(0,1,0,20);
    return 0;
}