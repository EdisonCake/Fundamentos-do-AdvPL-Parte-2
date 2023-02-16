#INCLUDE 'TOTVS.CH'

User Function NumInt()
    local aNumeros := {}
    local nCount   := 0
    local nNumero  := 0
    local cDiv    := ""

    For nCount := 1 to 4
        nNumero := int(val(fwinputbox("Digite um número:")))
        aAdd(aNumeros, nNumero)

        if (nNumero % 2) = 0
            cDiv += "O número " + cvaltochar(nNumero) + " é divisível por 2." + CRLF
        elseif (nNumero % 3) = 0
            cDiv += "O número " + cvaltochar(nNumero) + " é divisível por 3." + CRLF
        else
            cDiv += "O número " + cvaltochar(nNumero) + " não é divisível nem por 2, nem por 3." + CRLF
        endif
    Next

    MsgInfo(cDiv, "Divisíveis")

Return 
