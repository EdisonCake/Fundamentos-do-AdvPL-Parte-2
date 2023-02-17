#INCLUDE "Totvs.ch"

User Function SomaParImp()
    // Declara��o de vari�veis
    local nLimite := 0
    local nResp   := 0
    local nCount  := 0
    local nSoma   := 0
    local aResp   := {"Pares", "�mpares"}

    // Aqui � solicitado ao usu�rio quantos n�meros naturais deseja somar.
    nLimite := Val(FwInputBox("Quer a somat�ria de quantos n�meros naturais?"))

    // Aqui � solicitado se o usu�rio quer fazer a soma dos pares ou dos �mpares.
    nResp := Aviso("Par ou �mpar?", "Deseja somar os pares ou �mpares?", aResp, 1)

    // Se for escolhido par, � somado na vari�vel de soma.
    if nResp = 1
        For nCount := 1 to (nLimite * 2)
            if nCount % 2 = 0
                nSoma += nCount
            endif
        Next

        // Aqui � exibido ao usu�rio a somat�ria dos n�meros pares.
        MsgInfo("A soma dos " + cvaltochar(nLimite) + " primeiros n�meros pares � " + cvaltochar(nSoma))

    // Sen�o, � somado apenas os �mpares.
    elseif nResp = 2
        For nCount := 1 to (nLimite * 2) step 2
            if nCount % 2 != 0
                nSoma += nCount
            endif
        Next

        // E aqui, � exbida a somat�ria dos n�meros �mpares
        MsgInfo("A soma dos " + cvaltochar(nLimite) + " primeiros n�meros �mpares � " + cvaltochar(nSoma))   
    endif

    // Apenas uma mensagem de gra�a mesmo.
    MsgInfo("Fim da execu��o!", "Fim")
Return 
