#INCLUDE 'TOTVS.CH'

// FOi escolhido o FOR pela quest�o de ser um la�o finito.

User Function MultiN()
    // Declara��o de vari�veis
    local nCount    := 0
    local cConcat   := ""
    local nUser     := 0
    local nLimite   := 0

    // Aqui � solicitado ao usu�rio qual o multiplicador e at� onde quer visualizar.
    nUser := val(fwinputbox("Digite um n�mero: "))
    nLimite := val(fwinputbox("Digite um limite: "))

    // Aqui � iniciado um la�o de repeti��o finito de 1 at� o n�mero estipulado pelo usu�rio.
    For nCount := 1 to nLimite

        // Se o n�mero atual do contador for divis�vel por 3 sem restos, � concatenada a informa��o com quebra de linha ao final.
        if (nCount % nUser = 0)
            cConcat += "O n�mero " + cvaltochar(nCount) + " � m�ltiplo de " + cvaltochar(nUser) + "." + CRLF
        endif
    Next

    // Aqui � exibido ao usu�rio a informa��o concatenada.
    FwAlertInfo(cConcat)
Return 
