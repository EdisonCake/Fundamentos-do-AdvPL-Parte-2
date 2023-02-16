#INCLUDE 'TOTVS.CH'

User Function DoisInteiros()
    // Declara��o de vari�veis
    local nA        := 0
    local nB        := 0
    local nSquare   := 0
    local nDif      := 0
    local lResp     := .F.

    // Aqui � solicitado ambos os valores, e atrav�s da fun��o int() � atribu�do o valor inteiro diretamente.
    nA := int(val(fwinputbox("Digite um valor: ")))
    nB := int(val(fwinputbox("Digite outro valor: ")))

    // Aqui s�o calculadas a diferen�a e o valor ao quadrado da diferen�a.
    nDif := nA - nB
    nSquare := (nDif ^ 2)

    // E � informado ao usu�rio os valores diretamente.
    FwAlertInfo("O quadrado da diferen�a entre " + cvaltochar(nA) + " e " + cvaltochar(nB) + " � " + cvaltochar(nSquare), "Quadrado da Diferen�a")

    // Aqui � perguntado ao usu�rio se o mesmo deseja ver a explica��o da conta realizada.
    lResp := MsgYesNo("Deseja ver uma explica��o?")

    // Se sim, � informado toda a a��o executada, se n�o, o programa encerra.
    if lResp = .f.
        MsgInfo("Certo! At� a pr�xima!", "Encerrando.")
    else
        FwAlertInfo("Diferen�a: " + cvaltochar(nA) + " - " + cvaltochar(nB) + " = " + cvaltochar(nDif) + "." + CRLF +;
                    "Quadrado: " + cvaltochar(nDif) + "� = " + cvaltochar(nSquare) + ".", "Explica��o")
    endif  

Return 
