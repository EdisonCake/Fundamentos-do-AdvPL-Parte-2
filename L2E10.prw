#INCLUDE "TOTVS.CH"

User Function NovoMaiMen()
    // Declara��o de vari�veis
    local nUser  := 0
    local nMaior := 0
    local nMenor := 0
    local nCount := 0

    // Aqui � solicitado ao usu�rio um n�mero inicial.
    nUser := val(FwInputBox("Digite um n�mero: "))

    // Aqui o primeiro n�mero � atribu�do � ambas as vari�veis de menor e maior valor.
    nMaior := nUser
    nMenor := nUser
    
    // Aqui � iniciado um contador finito para receber os �ltimos quatro n�meros.
    For nCount := 1 to 4
        nUser := Val(FwInputBox("Digite outro n�mero:" + cvaltochar(nCount) + "/4"))

        // E aqui � feita a compara��o com o n�mero inicial.
        if nUser > nMaior
            nMaior := nUser
        else
            if nUser < nMenor
                nMenor := nUser
            endif
        endif
    Next

    // Aqui � exibido ao usu�rio o resultado do menor e maior valor.
    FwAlertInfo("O maior n�mero digitado foi " + cvaltochar(nMaior) + "." + CRLF +;
                "O menor n�mero digitado foi " + cvaltochar(nMenor) + ".", "Maior e Menor")

Return 
