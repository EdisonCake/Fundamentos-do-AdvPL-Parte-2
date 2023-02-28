#INCLUDE "TOTVS.CH"

User Function Aleatorio()
    // Declara��o de vari�veis
    local nNum   := 0
    local cNum   := ''
    local nCount := 0

    // Aqui � iniciado um contador de 1 at� 50 com a vari�vel num�rica recebendo a fun��o Randomize().
    For nCount := 1 to 50
        nNum := Randomize(10, 99)

        // O bloco condicional define a concatena��o do n�mero gerado.
        if nCount < 50
            cNum += cvaltochar(nNum) + ", "
        else
            cNum += cvaltochar(nNum) + "."
        endif
    Next

    // Aqui � informado ao usu�rio os 50 n�meros gerados aleatoriamente.
    MsgInfo(cNum, "Numeros For")

    // O contador e a vari�vel de concatena��o s�o redefinidas aqui para um novo teste.
    nCount:= 1
    cNum := ''

    // Enquanto o contador n�o for igual a 50, � realizado novamente o uso da fun��o Randomize() e � atribuido novamente � vari�vel que recebe a concatena��o.
    While nCount <= 50
        nNum := Randomize(10, 99)

        if nCount < 50
            cNum += cvaltochar(nNum) + ", "
        else
            cNum += cvaltochar(nNum) + "."
        endif

        nCount++
    End while

    // Por fim, � exibido ao usu�rio novamente.
    MsgInfo(cNum, "Numeros While")

Return 
