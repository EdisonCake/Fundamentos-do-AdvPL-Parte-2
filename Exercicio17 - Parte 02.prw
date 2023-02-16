#INCLUDE "TOTVS.CH"

User Function Game02()
    // Declaração de variáveis
    local nRandom := 0
    local nGuess  := 0
    local nTry    := 0
    local lGame   := .t.
    local aOpcoes := {"Tentar", "Desistir"}
    local nOpcao  := 0

    // Aqui é sorteado um número aleatório e é solicitado ao usuário para adivinhá-lo.
    nRandom := randomize(0, 100)
    MsgInfo("Foi sorteado um número entre 0 e 100. Acha que consegue adivinhar?", "Atenção!")

    // Novamente, durante o jogo, o usuário tem a opção de desistir caso erre.
    While lGame
        nGuess := val(fwinputbox("Qual número você acha que foi sorteado...?"))

        // Porém, uma mensagem é exibida com base no número de tentativas do mesmo durante o jogo.
        if (nGuess == nRandom)
            if nTry = 0 
                MsgInfo("Você acertou de primeira...", "Tá usando cheat!")
                lGame := .f.
            elseif nTry > 0 .and. nTry <= 5
                MsgInfo("Você é muito bom, acertou em " + cvaltochar(nTry) + " tentativas!", "Muito bom!")
                lGame := .f.
            elseif nTry > 5 .and. nTry <= 9
                MsgInfo("Você é bom, acertou em " + cvaltochar(nTry) + " tentativas!", "Ok!")
                lGame := .f.
            elseif nTry > 9 .and. nTry <= 13
                MsgInfo("Você é mediano, acertou em " + cvaltochar(nTry) + " tentativas!", "Melhore na próxima!")
                lGame := .f.
            elseif nTry > 13
                MsgInfo("Você é muito fraco, acertou em " + cvaltochar(nTry) + " tentativas!", "Devia ter desistido...")
                lGame := .f.
            endif
        else
            nTry++ 

            // Também é exibido ao usuário uma dica, com base no número digitado pelo mesmo.
            if nGuess < nRandom
                nOpcao := Aviso("Errou!", "Você errou. Deseja tentar novamente?" + CRLF + CRLF +;
                                "Aqui vai uma dica... o número sorteado é maior do que o que você digitou! ;)", aOpcoes, 1)

            elseif nGuess > nRandom
                nOpcao := Aviso("Errou!", "Você errou. Deseja tentar novamente?" + CRLF + CRLF +;
                                "Aqui vai uma dica... o número digitado é menor do que o que você digitou! ;)", aOpcoes, 1)
            endif

            if nOpcao == 1
                loop
            elseif nOpcao == 2

                // Se o mesmo optar por desistir, aqui é exibido uma mensagem demonstrando a tristeza do algoritmo em vê-lo desistir, e também é informado qual número foi sorteado. :(
                MsgInfo("Poxa.. Que pena que desistiu..." + CRLF +;
                        "O número sorteado foi " + cvaltochar(nRandom), "Que pena...")
                lGame := .f.
            endif
        endif
        
    End While

    // Por fim, uma mensagem de fim de jogo é exibida.
    MsgInfo("Fim de jogo!")
Return 
