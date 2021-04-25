import javax.swing.JOptionPane

var aluno: Aluno? = null
var esporte: Esporte? = null

fun main() {

    esporte = criarEsporte()
    aluno = criarAluno()
    aluno?.esporte = esporte

    // Informações de Aluno vão para o banco de dados
    // Posteriormente é necessário obter as informações de volta do banco de dados
    // e algum erro acontece no banco e o esporte do aluno não é recuperado
    aluno?.esporte = null

    JOptionPane.showMessageDialog(null, "O aluno ${aluno?.nome} " +
            "pratica o esporte: ${aluno?.esporte?.nome}.\n" +
            "A carga diária de ${aluno?.esporte?.nome} é ${aluno?.esporte?.cargaDiaria}.\n " +
            "O esporte é realizado ${aluno?.esporte?.diasPorSemana} vezes por semana.")
}

class Aluno {
    var nome: String? = null
    var esporte: Esporte? = null
}

class Esporte () {
    var nome: String? = null
    var cargaDiaria: Int? = null
    var diasPorSemana: Int? = null
}

fun criarEsporte (): Esporte {
    val esporte: Esporte = Esporte()
    JOptionPane.showMessageDialog(null, "Cadastro de Esporte.")
    esporte.nome = JOptionPane.showInputDialog("Digite o nome do Esporte: ")
    esporte.cargaDiaria = Integer.parseInt(JOptionPane.showInputDialog("Digite a carga diária de "+esporte.nome+" por dia."))
    esporte.diasPorSemana = Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade de dias por semana de "+esporte.nome+"."))

    return esporte
}

fun criarAluno(): Aluno {
    val aluno: Aluno = Aluno()
    aluno.nome = JOptionPane.showInputDialog("Digite o nome do aluno.")
    aluno.esporte = esporte

    return aluno
}
