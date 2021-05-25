#include<stdio.h>

// Cada personagem tem Altura e Idade
typedef struct Base {
	float altura;
	int idade;
} Base;


// O personagem e:
// Um Guerreiro que tem forca
// Um Mago que tem magia
// Um Sacerdote que tem reza
enum CLASSE {Guerreiro, Mago, Sacerdote};

typedef struct Personagem {
	enum CLASSE sub;
	Base status;
	union {
		struct { int forca; }; // Guerreiro
		struct { float magia; }; // Mago
		struct { int reza; }; // Sacerdote
	};
} Personagem;

int main () {
	Personagem p1 = { Guerreiro, {1.8, 23}, {.forca=50}};
	Personagem p2 = { Mago, {1.6, 46}, {.magia=80}};
	
	printf("Guerreiro - Altura: %f - Idade: %d - Forca: %d", p1.status.altura, p1.status.idade, p1.forca);
	printf("\n");
	printf("Mago - Altura: %f - Idade: %d - Magia: %f", p2.status.altura, p2.status.idade, p2.magia);
	
	return 0;
}
