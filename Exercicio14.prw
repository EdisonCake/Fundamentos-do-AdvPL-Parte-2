#INCLUDE "Totvs.ch"

User Function SomaParImp()
    local nUser   := 0
    local nLimite := 0
    local nResp   := 0
    local nCount  := 0
    local nSoma   := 0
    local aResp   := {"Pares", "Ímpares"}

    nLimite := Val(FwInputBox("Quer a somatória de quantos números naturais?"))

    nResp := Aviso("Par ou Ímpar?", "Deseja somar os pares ou ímpares?", aResp, 1)

    if nResp = 1
        For nCount := 1 to nLimite
            if nCount % 2 = 0
                nSoma += nCount
            endif
        Next

        MsgInfo("A soma dos " + cvaltochar(nLimite) + " primeiros números pares é " + cvaltochar(nSoma))

    elseif nResp = 2
        For nCount := 1 to nLimite
            if nCount % 2 != 0
                nSoma += nCount
            endif
        Next

        MsgInfo("A soma dos " + cvaltochar(nLimite) + " primeiros números ímpares é " + cvaltochar(nSoma))   
    endif

    Msg


Return 
