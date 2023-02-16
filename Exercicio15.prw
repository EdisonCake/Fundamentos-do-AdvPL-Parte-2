#INCLUDE 'TOTVS.CH'

User Function Fibo2()
    // Declara��o de vari�veis
    local nUser     := 0
    local nCount    := 0
    local cConcat   := ""

    // Mais uam declara��o de vari�veis, s� que separada mesmo.
    local nAnterior := 0
    local nAtual    := 1
    local nProximo  := 1

    // Aqui � solicitado ao usu�rio quantos n�meros deseja visualizar da sequ�ncia de Fibonacci.
    nUser := val(fwinputbox("Quantos n�meros deseja fazer a exibi��o?"))

    // Aqui � iniciado um la�o de repeti��o finito para fazer a soma.
    For nCount := 1 to nUser

        // Aqui, � feito um bloco condicional para concatena��o.
        if nCount < nUser
            cConcat += cvaltochar(nProximo) + ", "
        else
            cConcat += cvaltochar(nProximo) + "."
        endif

        // Aqui � feita a troca dos valores nas vari�veis.
        nProximo    := (nAtual + nAnterior)
        nAnterior   := nAtual
        nAtual      := nProximo
    Next

    // E por fim, � informado ao usu�rio a sequ�ncia com base nos par�metros estabelecidos anteriormente.
    FwAlertSuccess(cConcat, "Sequ�ncia de Fibonacci")

Return
