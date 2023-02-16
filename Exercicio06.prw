#INCLUDE 'TOTVS.CH'

User Function NumeroInt()
    // Declara��o de vari�veis.
    local aNumeros := {}
    local nCount   := 0
    local nNumero  := 0
    local cDiv    := ""

    // Aqui � iniciado um la�o de repeti��o finito para preencher um array com quatro n�meros inteiros.
    For nCount := 1 to 4

        // Indepentente do usu�rio digitar um n�mero inteiro ou n�o, ser� adicionado mesmo assim.
        nNumero := int(val(fwinputbox("Digite um n�mero:")))
        aAdd(aNumeros, nNumero)

        // Se o n�mero for divis�vel por 2 ou por 3 ser� adicionado um coment�rio na vari�vel de concatena��o.
        // Sen�o, ser� concatenado que o n�mero n�o � divis�vel nem por um e nem por outro.
        if (nNumero % 2) = 0
            cDiv += "O n�mero " + cvaltochar(nNumero) + " � divis�vel por 2." + CRLF
        elseif (nNumero % 3) = 0
            cDiv += "O n�mero " + cvaltochar(nNumero) + " � divis�vel por 3." + CRLF
        else
            cDiv += "O n�mero " + cvaltochar(nNumero) + " n�o � divis�vel nem por 2, nem por 3." + CRLF
        endif
    Next

    // Aqui, � exibido ao usu�rio a mensagem concatenada.
    MsgInfo(cDiv, "Divis�veis")

Return 
