#INCLUDE "TOTVS.CH"

User Function Game01()
    // Declaração de variáveis
    local nRandom := 0
    local nGuess  := 0
    local lGame   := .t.

    // Aqui um número é sorteado e é solicitado ao usuário a sua adivinhação.
    nRandom := randomize(0, 100)
    MsgInfo("Foi sorteado um número entre 0 e 100. Acha que consegue adivinhar?", "Atenção!")

    // Durante o jogo, o usuário pode desistir de jogar. Porém, o mesmo nunca saberá o número sorteado.
    While lGame
        nGuess := val(fwinputbox("Qual número você acha que foi sorteado...?"))

        if (nGuess == nRandom)
            MsgInfo("Você acertou!", "Parabéns!")
            lGame := .f.
        else
            lGame := MsgYesNo("Opa.. errou... Deseja tentar novamente?", "Errou!")
        endif

    End While

    // Aqui, informa o fim do jogo ao usuário.
    MsgInfo("Fim de jogo!")
Return 
