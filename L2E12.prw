#INCLUDE 'TOTVS.CH'

User Function Multi3()
    // Declaração de variáveis
    local nCount  := 0
    local cConcat := ""

    // Aqui é iniciado um laço de repetição finito de 1 até 100.
    For nCount := 1 to 100

        // Se o número atual do contador for divisível por 3 sem restos, é concatenada a informação com quebra de linha ao final.
        if (nCount % 3 = 0)
            cConcat += "O número " + cvaltochar(nCount) + " é múltiplo de 3." + CRLF
        endif
    Next

    // Aqui é exibido ao usuário a informação concatenada.
    FwAlertInfo(cConcat)

Return 
