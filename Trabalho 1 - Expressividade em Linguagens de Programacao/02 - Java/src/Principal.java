import javax.swing.JOptionPane;

import entidades.Aluno;
import entidades.Esporte;

public class Principal {
	static Esporte esporte;
	static Aluno aluno;
	
	static Esporte criaEsporte() {
		Esporte esporte = new Esporte();
		JOptionPane.showMessageDialog(null, "Cadastro de Esporte.");
		esporte.nome = JOptionPane.showInputDialog("Digite o nome do esporte.");
		esporte.cargaDiaria = Integer.parseInt(JOptionPane.showInputDialog("Digite a carga di�ria de "+esporte.nome+" por dia."));
		esporte.diasPorSemana = Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade de dias por semana de "+esporte.nome+"."));
		
		return esporte;
	}
	
	static Aluno criaAluno() {
		Aluno aluno = new Aluno();
		aluno.nome = JOptionPane.showInputDialog("Digite o nome do aluno.");
		aluno.esporte = esporte;
		
		return aluno;
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			esporte = criaEsporte();
			aluno = criaAluno();
			
			// Informa��es de Aluno v�o para o banco de dados
		    // Posteriormente � necess�rio obter as informa��es de volta do banco de dados
		    // e algum erro acontece no banco e o esporte do aluno n�o � recuperado
		    aluno.esporte = null;
		   
		    String mensagem = "";
		    if (aluno == null) {
		    	mensagem += "O aluno " + null + " pratica o esporte: " + null + ".\n" +
			            "A carga di�ria de " + null + " � " + null + ".\n " +
			            "O esporte � realizado " + null + " vezes por semana.";
		    } else {
		    	if (aluno.nome == null) {
		    		mensagem += "O aluno " + null;
		    	} else {
		    		mensagem += "O aluno " + aluno.nome;
		    	}
		    	if (aluno.esporte == null) {
		    		mensagem += " pratica o esporte: " + null + ".\n" +
				            "A carga di�ria de " + null + " � " + null + ".\n " +
				            "O esporte � realizado " + null + " vezes por semana.";
		    	} else {
		    		// Verificar cada um dos atributos de aluno.esporte
		    	}
		    }
		    JOptionPane.showMessageDialog(null, mensagem);
	}

}
