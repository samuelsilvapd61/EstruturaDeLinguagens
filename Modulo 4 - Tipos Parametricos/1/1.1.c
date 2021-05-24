#include<stdio.h>

typedef struct Base {
	float altura;
	int idade;
} Base;

enum CLASSE {Guerreiro, Mago, Sacerdote};

typedef struct Personagem {
	enum CLASSE sub;
	Base status;
	union {
		struct { int forca; }; // Guerreiro
		struct { float magia; }; // Mago
		struct { int resistencia; }; // Sacerdote
	};
} Personagem;

void main () {
	Personagem p = { Guerreiro, {1.8, 23}, 5};
	
	printf("Guerreiro - : %f - Idade: %d - Forca: %d", p.status.altura, p.status.idade, p.forca);
	printf("\n");
	
	return 0;
}
