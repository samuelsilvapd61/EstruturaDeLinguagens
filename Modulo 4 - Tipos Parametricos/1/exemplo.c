#include<stdio.h>

enum MEMBRO {PROFESSOR, ALUNO};
struct Membro {
	enum MEMBRO sub;
	union {
		struct { int alunos; int aulas; }; // PROFESSOR
		struct { int periodo; float cr; }; // ALUNO
	};
};

void main () {
	struct Membro m = { ALUNO, {5, 6.8} };
	
	printf("Periodo: %d - CR: %d", m.periodo, m.cr);
	
	return 0;
}
