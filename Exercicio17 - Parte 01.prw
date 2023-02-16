#INCLUDE "TOTVS.CH"

User Function Game01()
    // Declara��o de vari�veis
    local nRandom := 0
    local nGuess  := 0
    local lGame   := .t.

    // Aqui um n�mero � sorteado e � solicitado ao usu�rio a sua adivinha��o.
    nRandom := randomize(0, 100)
    MsgInfo("Foi sorteado um n�mero entre 0 e 100. Acha que consegue adivinhar?", "Aten��o!")

    // Durante o jogo, o usu�rio pode desistir de jogar. Por�m, o mesmo nunca saber� o n�mero sorteado.
    While lGame
        nGuess := val(fwinputbox("Qual n�mero voc� acha que foi sorteado...?"))

        if (nGuess == nRandom)
            MsgInfo("Voc� acertou!", "Parab�ns!")
            lGame := .f.
        else
            lGame := MsgYesNo("Opa.. errou... Deseja tentar novamente?", "Errou!")
        endif

    End While

    // Aqui, informa o fim do jogo ao usu�rio.
    MsgInfo("Fim de jogo!")
Return 
