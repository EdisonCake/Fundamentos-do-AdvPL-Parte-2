#INCLUDE "Totvs.ch"

User Function SomaParImp()
    // Declaração de variáveis
    local nLimite := 0
    local nResp   := 0
    local nCount  := 0
    local nSoma   := 0
    local aResp   := {"Pares", "Ímpares"}

    // Aqui é solicitado ao usuário quantos números naturais deseja somar.
    nLimite := Val(FwInputBox("Quer a somatória de quantos números naturais?"))

    // Aqui é solicitado se o usuário quer fazer a soma dos pares ou dos ímpares.
    nResp := Aviso("Par ou Ímpar?", "Deseja somar os pares ou ímpares?", aResp, 1)

    // Se for escolhido par, é somado na variável de soma.
    if nResp = 1
        For nCount := 1 to (nLimite * 2)
            if nCount % 2 = 0
                nSoma += nCount
            endif
        Next

        // Aqui é exibido ao usuário a somatória dos números pares.
        MsgInfo("A soma dos " + cvaltochar(nLimite) + " primeiros números pares é " + cvaltochar(nSoma))

    // Senão, é somado apenas os ímpares.
    elseif nResp = 2
        For nCount := 1 to (nLimite * 2) step 2
            if nCount % 2 != 0
                nSoma += nCount
            endif
        Next

        // E aqui, é exbida a somatória dos números ímpares
        MsgInfo("A soma dos " + cvaltochar(nLimite) + " primeiros números ímpares é " + cvaltochar(nSoma))   
    endif

    // Apenas uma mensagem de graça mesmo.
    MsgInfo("Fim da execução!", "Fim")
Return 
