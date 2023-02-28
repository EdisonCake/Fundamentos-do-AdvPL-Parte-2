#INCLUDE 'TOTVS.CH'

User Function Numeros()
    // Declaração de variáveis
    local nUser     := 0
    local nUser2    := 0
    local nSoma     := 0
    local nDif      := 0
    local nProd     := 0
    local nQuo      := 0
    
    // Aqui é solicitado ao usuário ambos os números a serem utilizados nas operações
    nUser   := val(fwinputbox("Digite um número:"))
    nUser2  := val(FwInputBox("Agora, mais um número:"))

    // Aqui, as operações são feitas e cada valor atribuído à sua variável correspondente.
    nSoma := nUser + nUser2
    nDif  := nUser - nUser2
    nProd := nUser * nUser2
    nQuo  := nUser / nUser2

    // Aqui é exibido ao usuário as operações realizadas.
    FwAlertInfo("A soma entre os dois valores é " + cvaltochar(nsoma) + CRLF+ ;
                "A diferença entre ambos os valores é " + cvaltochar(nDif) + CRLF +;
                "O produto de ambos os valores é " + cvaltochar(nProd) + CRLF +;
                "O quociente de ambos os valores é " + cvaltochar(nQuo),"Operações")

    // Por fim, uma mensagem de encerramento do programa.
    MsgInfo("Fim do programa.", "Fim")

Return 
