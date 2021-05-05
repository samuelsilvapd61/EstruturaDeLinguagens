#include<stdio.h>
#include<stdlib.h>

struct inteiro {
	int valor;
	struct inteiro * prox;
};

void exibe (struct inteiro * i) {
	while (i != NULL) {
		printf("%d ", i->valor);
		i = i->prox;
	}
}

int main () {
	struct inteiro i4 = {4, NULL};
	struct inteiro i3 = {3, &i4};
	struct inteiro i2 = {2, &i3};
	struct inteiro i1 = {1, &i2};
	
	struct inteiro lista;
	lista.prox = &i1;
	
	exibe(lista.prox);

	return 0;
}
