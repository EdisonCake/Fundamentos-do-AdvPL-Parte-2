#INCLUDE 'TOTVS.CH'

User Function DoisInteiros()
    // Declaração de variáveis
    local nA        := 0
    local nB        := 0
    local nSquare   := 0
    local nDif      := 0
    local lResp     := .F.

    // Aqui é solicitado ambos os valores, e através da função int() é atribuído o valor inteiro diretamente.
    nA := int(val(fwinputbox("Digite um valor: ")))
    nB := int(val(fwinputbox("Digite outro valor: ")))

    // Aqui são calculadas a diferença e o valor ao quadrado da diferença.
    nDif := nA - nB
    nSquare := (nDif ^ 2)

    // E é informado ao usuário os valores diretamente.
    FwAlertInfo("O quadrado da diferença entre " + cvaltochar(nA) + " e " + cvaltochar(nB) + " é " + cvaltochar(nSquare), "Quadrado da Diferença")

    // Aqui é perguntado ao usuário se o mesmo deseja ver a explicação da conta realizada.
    lResp := MsgYesNo("Deseja ver uma explicação?")

    // Se sim, é informado toda a ação executada, se não, o programa encerra.
    if lResp = .f.
        MsgInfo("Certo! Até a próxima!", "Encerrando.")
    else
        FwAlertInfo("Diferença: " + cvaltochar(nA) + " - " + cvaltochar(nB) + " = " + cvaltochar(nDif) + "." + CRLF +;
                    "Quadrado: " + cvaltochar(nDif) + "² = " + cvaltochar(nSquare) + ".", "Explicação")
    endif  

Return 
