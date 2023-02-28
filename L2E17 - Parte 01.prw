#INCLUDE "TOTVS.CH"

User Function Game01()
    // Declaração de variáveis
    local nRandom := 0
    local nGuess  := 0
    local nOpcao  := 0
    local aOpcao  := {"Tentar", "Sair"}
    local lGame   := .t.

    // Aqui um número é sorteado e é solicitado ao usuário a sua adivinhação.
    nRandom := randomize(0, 100)
    MsgInfo("Foi sorteado um número entre 0 e 100. Acha que consegue adivinhar?", "Atenção!")

    // Durante o jogo, o usuário pode desistir de jogar e o número sorteado será exibido.
    While lGame
        nGuess := val(fwinputbox("Qual número você acha que foi sorteado...?"))

        if (nGuess == nRandom)
            MsgInfo("Você acertou!", "Parabéns!")
            lGame := .f.
        else

            if nGuess < nRandom
                nOpcao := Aviso("Errou!", "O número sorteado é maior que esse..." + CRLF + CRLF +;
                                "Deseja tentar novamente?", aOpcao, 1)
            else
                nOpcao := Aviso("Errou!", "O número sorteado é menor que esse..." + CRLF + CRLF +;
                                "Deseja tentar novamente?", aOpcao, 1)
            endif

                if nOpcao = 1
                    loop
                else
                    MsgStop("Ok. O número sorteado era " + cvaltochar(nRandom) + ".", "Você foi fraco.")
                    lGame := .f.
                endif

        endif

    End While

    // Aqui, informa o fim do jogo ao usuário.
    MsgInfo("Fim de jogo!")
Return 
