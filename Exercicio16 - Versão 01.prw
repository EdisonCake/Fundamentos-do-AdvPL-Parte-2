#INCLUDE 'TOTVS.CH'

User Function Cadastro()
    // Declara��o de vari�veis
    local cUsername := ""
    local cPass := ""
    local cSenha2 := ""
    local lValida := .t.
    local nCont := 0
    local cCheck := ""
    local nSimb := 0
    local nUpp := 0
    local nNum := 0

    // La�o condicional que limita o m�nimo de caracteres para formar o usu�rio.
    While len(cUsername) < 5
        cUsername := FwInputBox("Digite seu usu�rio:", cUsername)
        
        // Se for menor que o m�nimo, o algoritmo n�o deixa passar.
        if len(cUsername) < 5
            MsgStop("Usu�rio inv�lido. N�mero de caracteres insuficientes.", "Aten��o!")
            cUsername := " "
        endif
    End do
    
    // Aberto outro la�o condicional, no qual solicita a cria��o de uma senha com base em crit�rios pr� estabelecidos.
    while lValida
        MsgInfo("Sua senha deve conter obrigatoriamente uma letra mai�scula," + CRLF +; 
        "um n�mero e um s�mbolo e no m�nimo seis d�gitos!", "Aten��o!")

        cPass := fwinputbox("Agora, digite uma senha: ", cPass)
        
        // Aqui, um bloco condicional que delimita o tamanho m�nimo da senha.
        if len(cPass) < 6
            MsgStop("Tamanho inv�lido de senha.", "Aten��o")
            cPass := ' '
            loop
        endif

        // Aqui um la�o de repeti��o limitado ao tamanho da senha, verificando cada caractere e adicionando �s vari�veis correspondente de valida��o.
        for nCont := 1 to len(cPass)
            cCheck := asc(substr(cPass,nCont))
            
            if cCheck >= 48 .and. cCheck <= 57
            nNum++
            elseif cCheck >= 65 .and. cCheck <= 90
            nUpp++
            elseif cCheck >= 33 .and. cCheck <= 47
            nSimb++
            elseif cCheck >= 58 .and. cCheck <= 64
            nSimb++
            elseif cCheck >= 91 .and. cCheck <= 93
            nSimb++
            elseif cCheck >= 123 .and. cCheck <= 125
            nSimb++
            endif
        Next

        // Se as valida��es obtiverem menos do que o esperado, a senha n�o � aceita pelo algoritmo.
        if nNum = 0 .or. nUpp = 0 .or. nSimb = 0
            MsgStop("Senha inv�lida, tente novamente uma outra senha.", "Aten��o!")
            cPass := " "
            loop
        endif

        // Aqui, se a senha passa pela primeira verifica��o, � solicitada uma confirma��o.
        cSenha2 := fwinputbox("Digite novamente sua senha: ", cSenha2)

        // Se validada, o algoritmo segue, sen�o, � informada a inconsistencia nas informa��es.
        if cPass == cSenha2
            lValida := .f.
        else
            MsgStop("Senhas n�o coincidem!", "Aten��o")
            cPass := " "
            cSenha2 := " "
        End if
    end do

    // Por fim, � exibida uma mensagem de sucesso no cadastro.
    MsgInfo("Cadastro efetuado com sucesso!", "SignUp bem sucedido!")
Return Nil
    