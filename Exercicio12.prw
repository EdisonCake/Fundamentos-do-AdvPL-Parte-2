#INCLUDE 'TOTVS.CH'

User Function Multi3()
    // Declara��o de vari�veis
    local nCount  := 0
    local cConcat := ""

    // Aqui � iniciado um la�o de repeti��o finito de 1 at� 100.
    For nCount := 1 to 100

        // Se o n�mero atual do contador for divis�vel por 3 sem restos, � concatenada a informa��o com quebra de linha ao final.
        if (nCount % 3 = 0)
            cConcat += "O n�mero " + cvaltochar(nCount) + " � m�ltiplo de 3." + CRLF
        endif
    Next

    // Aqui � exibido ao usu�rio a informa��o concatenada.
    FwAlertInfo(cConcat)

Return 
