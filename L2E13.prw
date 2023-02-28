#INCLUDE 'TOTVS.CH'

// FOi escolhido o FOR pela questão de ser um laço finito.

User Function MultiN()
    // Declaração de variáveis
    local nCount    := 0
    local cConcat   := ""
    local nUser     := 0
    local nLimite   := 0

    // Aqui é solicitado ao usuário qual o multiplicador e até onde quer visualizar.
    nUser := val(fwinputbox("Digite um número: "))
    nLimite := val(fwinputbox("Digite um limite: "))

    // Aqui é iniciado um laço de repetição finito de 1 até o número estipulado pelo usuário.
    For nCount := 1 to nLimite

        // Se o número atual do contador for divisível por 3 sem restos, é concatenada a informação com quebra de linha ao final.
        if (nCount % nUser = 0)
            cConcat += "O número " + cvaltochar(nCount) + " é múltiplo de " + cvaltochar(nUser) + "." + CRLF
        endif
    Next

    // Aqui é exibido ao usuário a informação concatenada.
    FwAlertInfo(cConcat)
Return 
