#INCLUDE 'TOTVS.CH'

User Function NumeroInt()
    // Declaração de variáveis.
    local aNumeros := {}
    local nCount   := 0
    local nNumero  := 0
    local cDiv    := ""

    // Aqui é iniciado um laço de repetição finito para preencher um array com quatro números inteiros.
    For nCount := 1 to 4

        // Indepentente do usuário digitar um número inteiro ou não, será adicionado mesmo assim.
        nNumero := int(val(fwinputbox("Digite um número:")))
        aAdd(aNumeros, nNumero)

        // Se o número for divisível por 2 ou por 3 será adicionado um comentário na variável de concatenação.
        // Senão, será concatenado que o número não é divisível nem por um e nem por outro.
        if (nNumero % 2) = 0
            cDiv += "O número " + cvaltochar(nNumero) + " é divisível por 2." + CRLF
        elseif (nNumero % 3) = 0
            cDiv += "O número " + cvaltochar(nNumero) + " é divisível por 3." + CRLF
        else
            cDiv += "O número " + cvaltochar(nNumero) + " não é divisível nem por 2, nem por 3." + CRLF
        endif
    Next

    // Aqui, é exibido ao usuário a mensagem concatenada.
    MsgInfo(cDiv, "Divisíveis")

Return 
