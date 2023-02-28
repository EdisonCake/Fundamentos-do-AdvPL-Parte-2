#INCLUDE 'TOTVS.CH'

User Function Fibo2()
    // Declaração de variáveis
    local nUser     := 0
    local nCount    := 0
    local cConcat   := ""

    // Mais uam declaração de variáveis, só que separada mesmo.
    local nAnterior := 0
    local nAtual    := 1
    local nProximo  := 1

    // Aqui é solicitado ao usuário quantos números deseja visualizar da sequência de Fibonacci.
    nUser := val(fwinputbox("Quantos números deseja fazer a exibição?"))

    // Aqui é iniciado um laço de repetição finito para fazer a soma.
    For nCount := 1 to nUser

        // Aqui, é feito um bloco condicional para concatenação.
        if nCount < nUser
            cConcat += cvaltochar(nProximo) + ", "
        else
            cConcat += cvaltochar(nProximo) + "."
        endif

        // Aqui é feita a troca dos valores nas variáveis.
        nProximo    := (nAtual + nAnterior)
        nAnterior   := nAtual
        nAtual      := nProximo
    Next

    // E por fim, é informado ao usuário a sequência com base nos parâmetros estabelecidos anteriormente.
    FwAlertSuccess(cConcat, "Sequência de Fibonacci")

Return
