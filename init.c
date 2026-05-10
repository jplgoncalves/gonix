#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Bem-vindo ao Gonix!\n");
    printf("O teu sistema operativo minimalista está a correr.\n");
    
    // Um SO nunca pode fechar o processo init
    while(1) {
        sleep(60);
    }
    return 0;
}