#INCLUDE 'TOTVS.CH'

User Function Numeros()
    // Declara��o de vari�veis
    local nUser     := 0
    local nUser2    := 0
    local nSoma     := 0
    local nDif      := 0
    local nProd     := 0
    local nQuo      := 0
    
    // Aqui � solicitado ao usu�rio ambos os n�meros a serem utilizados nas opera��es
    nUser   := val(fwinputbox("Digite um n�mero:"))
    nUser2  := val(FwInputBox("Agora, mais um n�mero:"))

    // Aqui, as opera��es s�o feitas e cada valor atribu�do � sua vari�vel correspondente.
    nSoma := nUser + nUser2
    nDif  := nUser - nUser2
    nProd := nUser * nUser2
    nQuo  := nUser / nUser2

    // Aqui � exibido ao usu�rio as opera��es realizadas.
    FwAlertInfo("A soma entre os dois valores � " + cvaltochar(nsoma) + CRLF+ ;
                "A diferen�a entre ambos os valores � " + cvaltochar(nDif) + CRLF +;
                "O produto de ambos os valores � " + cvaltochar(nProd) + CRLF +;
                "O quociente de ambos os valores � " + cvaltochar(nQuo),"Opera��es")

    // Por fim, uma mensagem de encerramento do programa.
    MsgInfo("Fim do programa.", "Fim")

Return 
