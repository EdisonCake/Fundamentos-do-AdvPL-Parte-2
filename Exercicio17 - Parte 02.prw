#INCLUDE "TOTVS.CH"

User Function Game02()
    // Declara��o de vari�veis
    local nRandom := 0
    local nGuess  := 0
    local nTry    := 0
    local lGame   := .t.
    local aOpcoes := {"Tentar", "Desistir"}
    local nOpcao  := 0

    // Aqui � sorteado um n�mero aleat�rio e � solicitado ao usu�rio para adivinh�-lo.
    nRandom := randomize(0, 100)
    MsgInfo("Foi sorteado um n�mero entre 0 e 100. Acha que consegue adivinhar?", "Aten��o!")

    // Novamente, durante o jogo, o usu�rio tem a op��o de desistir caso erre.
    While lGame
        nGuess := val(fwinputbox("Qual n�mero voc� acha que foi sorteado...?"))

        // Por�m, uma mensagem � exibida com base no n�mero de tentativas do mesmo durante o jogo.
        if (nGuess == nRandom)
            if nTry = 0 
                MsgInfo("Voc� acertou de primeira...", "T� usando cheat!")
                lGame := .f.
            elseif nTry > 0 .and. nTry <= 5
                MsgInfo("Voc� � muito bom, acertou em " + cvaltochar(nTry) + " tentativas!", "Muito bom!")
                lGame := .f.
            elseif nTry > 5 .and. nTry <= 9
                MsgInfo("Voc� � bom, acertou em " + cvaltochar(nTry) + " tentativas!", "Ok!")
                lGame := .f.
            elseif nTry > 9 .and. nTry <= 13
                MsgInfo("Voc� � mediano, acertou em " + cvaltochar(nTry) + " tentativas!", "Melhore na pr�xima!")
                lGame := .f.
            elseif nTry > 13
                MsgInfo("Voc� � muito fraco, acertou em " + cvaltochar(nTry) + " tentativas!", "Devia ter desistido...")
                lGame := .f.
            endif
        else
            nTry++ 

            // Tamb�m � exibido ao usu�rio uma dica, com base no n�mero digitado pelo mesmo.
            if nGuess < nRandom
                nOpcao := Aviso("Errou!", "Voc� errou. Deseja tentar novamente?" + CRLF + CRLF +;
                                "Aqui vai uma dica... o n�mero sorteado � maior do que o que voc� digitou! ;)", aOpcoes, 1)

            elseif nGuess > nRandom
                nOpcao := Aviso("Errou!", "Voc� errou. Deseja tentar novamente?" + CRLF + CRLF +;
                                "Aqui vai uma dica... o n�mero digitado � menor do que o que voc� digitou! ;)", aOpcoes, 1)
            endif

            if nOpcao == 1
                loop
            elseif nOpcao == 2

                // Se o mesmo optar por desistir, aqui � exibido uma mensagem demonstrando a tristeza do algoritmo em v�-lo desistir, e tamb�m � informado qual n�mero foi sorteado. :(
                MsgInfo("Poxa.. Que pena que desistiu..." + CRLF +;
                        "O n�mero sorteado foi " + cvaltochar(nRandom), "Que pena...")
                lGame := .f.
            endif
        endif
        
    End While

    // Por fim, uma mensagem de fim de jogo � exibida.
    MsgInfo("Fim de jogo!")
Return 
