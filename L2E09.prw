#INCLUDE 'TOTVS.CH'

User Function DiaMes()
    // Declaraçaõ de variáveis.
    local aMes      := {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    local nUser     := 0
    local lValida   := .t.

    // Iniciado um laço de validação de entrada.
    While lValida

        // Aqui é solicitado ao usuário o mês que deseja visualizar.
        nUser := val(fwinputbox("Digite um número de 1 a 12!"))

        // Feita a validação de entrada.
        if nUser >= 1 .and. nUser <= 12
            lValida := .f.
        else
            // Aqui é informado ao usuário caso algo inválido seja digitado.
            MsgStop("Entrada inválida!!")
            loop
        endif
    end while

    // Iniciado o bloco de condicional, com base no que for digitado pelo usuário.
    Do case
        Case nUser = 2
            FwAlertInfo("Quantidade de dias: 28", aMes[nUser])
        Case (nUser = 1) .or. (nUser = 3) .or.(nUser = 5) .or. (nUser = 7) .or. (nUser = 8) .or. (nUser = 12)
            FwAlertInfo("Quantidade de dias: 31", aMes[nUser])
        Case (nUser = 4) .or. (nUser = 6) .or.(nUser = 9) .or. (nUser = 11) 
            FwAlertInfo("Quantidade de dias: 30", aMes[nUser])
    End Case
Return 

