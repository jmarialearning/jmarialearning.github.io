#include <iostream>
#include <unistd.h>
#include "muller.hpp"
#include "ridders.hpp"
using namespace std;
int main(){
    muller(0,1,1000);
    printf("\n\n");
    ridders(0,1,1000);
    printf("\n\n");
    return 0;
}