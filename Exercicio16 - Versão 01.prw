#INCLUDE 'TOTVS.CH'

User Function Cadastro()
    // Declaração de variáveis
    local cUsername := ""
    local cPass := ""
    local cSenha2 := ""
    local lValida := .t.
    local nCont := 0
    local cCheck := ""
    local nSimb := 0
    local nUpp := 0
    local nNum := 0

    // Laço condicional que limita o mínimo de caracteres para formar o usuário.
    While len(cUsername) < 5
        cUsername := FwInputBox("Digite seu usuário:", cUsername)
        
        // Se for menor que o mínimo, o algoritmo não deixa passar.
        if len(cUsername) < 5
            MsgStop("Usuário inválido. Número de caracteres insuficientes.", "Atenção!")
            cUsername := " "
        endif
    End do
    
    // Aberto outro laço condicional, no qual solicita a criação de uma senha com base em critérios pré estabelecidos.
    while lValida
        MsgInfo("Sua senha deve conter obrigatoriamente uma letra maiúscula," + CRLF +; 
        "um número e um símbolo e no mínimo seis dígitos!", "Atenção!")

        cPass := fwinputbox("Agora, digite uma senha: ", cPass)
        
        // Aqui, um bloco condicional que delimita o tamanho mínimo da senha.
        if len(cPass) < 6
            MsgStop("Tamanho inválido de senha.", "Atenção")
            cPass := ' '
            loop
        endif

        // Aqui um laço de repetição limitado ao tamanho da senha, verificando cada caractere e adicionando às variáveis correspondente de validação.
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

        // Se as validações obtiverem menos do que o esperado, a senha não é aceita pelo algoritmo.
        if nNum = 0 .or. nUpp = 0 .or. nSimb = 0
            MsgStop("Senha inválida, tente novamente uma outra senha.", "Atenção!")
            cPass := " "
            loop
        endif

        // Aqui, se a senha passa pela primeira verificação, é solicitada uma confirmação.
        cSenha2 := fwinputbox("Digite novamente sua senha: ", cSenha2)

        // Se validada, o algoritmo segue, senão, é informada a inconsistencia nas informações.
        if cPass == cSenha2
            lValida := .f.
        else
            MsgStop("Senhas não coincidem!", "Atenção")
            cPass := " "
            cSenha2 := " "
        End if
    end do

    // Por fim, é exibida uma mensagem de sucesso no cadastro.
    MsgInfo("Cadastro efetuado com sucesso!", "SignUp bem sucedido!")
Return Nil
    