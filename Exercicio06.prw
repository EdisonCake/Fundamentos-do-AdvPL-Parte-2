#INCLUDE 'TOTVS.CH'

User Function NumInt()
    local aNumeros := {}
    local nCount   := 0
    local nNumero  := 0
    local cDiv    := ""

    For nCount := 1 to 4
        nNumero := int(val(fwinputbox("Digite um n�mero:")))
        aAdd(aNumeros, nNumero)

        if (nNumero % 2) = 0
            cDiv += "O n�mero " + cvaltochar(nNumero) + " � divis�vel por 2." + CRLF
        elseif (nNumero % 3) = 0
            cDiv += "O n�mero " + cvaltochar(nNumero) + " � divis�vel por 3." + CRLF
        else
            cDiv += "O n�mero " + cvaltochar(nNumero) + " n�o � divis�vel nem por 2, nem por 3." + CRLF
        endif
    Next

    MsgInfo(cDiv, "Divis�veis")

Return 
