#include<stdio.h>
#include<stdlib.h>

typedef struct Inteiro {
	int valor;
	struct inteiro * prox;
} Inteiro;

void exibe (Inteiro * i) {
	while (i != NULL) {
		printf("%d ", i->valor);
		i = i->prox;
	}
}

int main () {
	Inteiro* i1 = malloc(sizeof(Inteiro));
	Inteiro* i2 = malloc(sizeof(Inteiro));
	Inteiro* i3 = malloc(sizeof(Inteiro));
	Inteiro* i4 = malloc(sizeof(Inteiro));
	
	i4->prox = NULL;
	i4->valor = 4;
	i3->prox = i4;
	i3->valor = 3;
	i2->prox = i3;
	i2->valor = 2;
	i1->prox = i2;
	i1->valor = 1;
	
	Inteiro* lista = malloc(sizeof(Inteiro));
	lista->prox = i1;
	
	exibe(lista->prox);

	return 0;
}
