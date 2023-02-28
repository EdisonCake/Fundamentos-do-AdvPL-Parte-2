#INCLUDE "TOTVS.CH"

User Function Aleatorio()
    // Declaração de variáveis
    local nNum   := 0
    local cNum   := ''
    local nCount := 0

    // Aqui é iniciado um contador de 1 até 50 com a variável numérica recebendo a função Randomize().
    For nCount := 1 to 50
        nNum := Randomize(10, 99)

        // O bloco condicional define a concatenação do número gerado.
        if nCount < 50
            cNum += cvaltochar(nNum) + ", "
        else
            cNum += cvaltochar(nNum) + "."
        endif
    Next

    // Aqui é informado ao usuário os 50 números gerados aleatoriamente.
    MsgInfo(cNum, "Numeros For")

    // O contador e a variável de concatenação são redefinidas aqui para um novo teste.
    nCount:= 1
    cNum := ''

    // Enquanto o contador não for igual a 50, é realizado novamente o uso da função Randomize() e é atribuido novamente à variável que recebe a concatenação.
    While nCount <= 50
        nNum := Randomize(10, 99)

        if nCount < 50
            cNum += cvaltochar(nNum) + ", "
        else
            cNum += cvaltochar(nNum) + "."
        endif

        nCount++
    End while

    // Por fim, é exibido ao usuário novamente.
    MsgInfo(cNum, "Numeros While")

Return 
