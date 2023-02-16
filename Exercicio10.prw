#INCLUDE "TOTVS.CH"

User Function NovoMaiMen()
    // Declaração de variáveis
    local nUser  := 0
    local nMaior := 0
    local nMenor := 0
    local nCount := 0

    // Aqui é solicitado ao usuário um número inicial.
    nUser := val(FwInputBox("Digite um número: "))

    // Aqui o primeiro número é atribuído à ambas as variáveis de menor e maior valor.
    nMaior := nUser
    nMenor := nUser
    
    // Aqui é iniciado um contador finito para receber os últimos quatro números.
    For nCount := 1 to 4
        nUser := Val(FwInputBox("Digite outro número:" + cvaltochar(nCount) + "/4"))

        // E aqui é feita a comparação com o número inicial.
        if nUser > nMaior
            nMaior := nUser
        else
            if nUser < nMenor
                nMenor := nUser
            endif
        endif
    Next

    // Aqui é exibido ao usuário o resultado do menor e maior valor.
    FwAlertInfo("O maior número digitado foi " + cvaltochar(nMaior) + "." + CRLF +;
                "O menor número digitado foi " + cvaltochar(nMenor) + ".", "Maior e Menor")

Return 
