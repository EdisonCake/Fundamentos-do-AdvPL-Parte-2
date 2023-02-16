#INCLUDE "Totvs.ch"

User Function SomaParImp()
    local nUser   := 0
    local nLimite := 0
    local nResp   := 0
    local nCount  := 0
    local nSoma   := 0
    local aResp   := {"Pares", "�mpares"}

    nLimite := Val(FwInputBox("Quer a somat�ria de quantos n�meros naturais?"))

    nResp := Aviso("Par ou �mpar?", "Deseja somar os pares ou �mpares?", aResp, 1)

    if nResp = 1
        For nCount := 1 to nLimite
            if nCount % 2 = 0
                nSoma += nCount
            endif
        Next

        MsgInfo("A soma dos " + cvaltochar(nLimite) + " primeiros n�meros pares � " + cvaltochar(nSoma))

    elseif nResp = 2
        For nCount := 1 to nLimite
            if nCount % 2 != 0
                nSoma += nCount
            endif
        Next

        MsgInfo("A soma dos " + cvaltochar(nLimite) + " primeiros n�meros �mpares � " + cvaltochar(nSoma))   
    endif

    Msg


Return 
