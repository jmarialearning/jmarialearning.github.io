#ifndef SIGNO_HPP
#define SIGNO_HPP
    int signo(float num){
        if (num > 0){
            return 1;
        }   
        if (num < 0){
            return -1;
        }
        return 0;
    }
#endif /*SIGNO_HPP*/