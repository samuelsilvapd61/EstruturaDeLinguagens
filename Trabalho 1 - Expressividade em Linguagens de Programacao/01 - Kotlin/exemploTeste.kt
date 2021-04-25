fun main () {
    var mensagem: String? = "mensagem qualquer"
    mensagem = null

    /*val count: Int
    if (mensagem != null) {
        count = mensagem.length
    } else {
        count = 0
    }
    println(count)

    val count2 = if (mensagem?.length != null) mensagem?.length else 0
    println(count2)
    */

    val count3 = mensagem?.length ?: 0
    println(count3)




}