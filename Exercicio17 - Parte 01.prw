#INCLUDE "TOTVS.CH"

User Function Game01()
    // Declara��o de vari�veis
    local nRandom := 0
    local nGuess  := 0
    local nOpcao  := 0
    local aOpcao  := {"Tentar", "Sair"}
    local lGame   := .t.

    // Aqui um n�mero � sorteado e � solicitado ao usu�rio a sua adivinha��o.
    nRandom := randomize(0, 100)
    MsgInfo("Foi sorteado um n�mero entre 0 e 100. Acha que consegue adivinhar?", "Aten��o!")

    // Durante o jogo, o usu�rio pode desistir de jogar e o n�mero sorteado ser� exibido.
    While lGame
        nGuess := val(fwinputbox("Qual n�mero voc� acha que foi sorteado...?"))

        if (nGuess == nRandom)
            MsgInfo("Voc� acertou!", "Parab�ns!")
            lGame := .f.
        else

            if nGuess < nRandom
                nOpcao := Aviso("Errou!", "O n�mero sorteado � maior que esse..." + CRLF + CRLF +;
                                "Deseja tentar novamente?", aOpcao, 1)
            else
                nOpcao := Aviso("Errou!", "O n�mero sorteado � menor que esse..." + CRLF + CRLF +;
                                "Deseja tentar novamente?", aOpcao, 1)
            endif

                if nOpcao = 1
                    loop
                else
                    MsgStop("Ok. O n�mero sorteado era " + cvaltochar(nRandom) + ".", "Voc� foi fraco.")
                    lGame := .f.
                endif

        endif

    End While

    // Aqui, informa o fim do jogo ao usu�rio.
    MsgInfo("Fim de jogo!")
Return 
