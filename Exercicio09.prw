#INCLUDE 'TOTVS.CH'

User Function DiaMes()
    // Declara�a� de vari�veis.
    local aMes      := {"Janeiro", "Fevereiro", "Mar�o", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    local nUser     := 0
    local lValida   := .t.

    // Iniciado um la�o de valida��o de entrada.
    While lValida

        // Aqui � solicitado ao usu�rio o m�s que deseja visualizar.
        nUser := val(fwinputbox("Digite um n�mero de 1 a 12!"))

        // Feita a valida��o de entrada.
        if nUser >= 1 .and. nUser <= 12
            lValida := .f.
        else
            // Aqui � informado ao usu�rio caso algo inv�lido seja digitado.
            MsgStop("Entrada inv�lida!!")
            loop
        endif
    end while

    // Iniciado o bloco de condicional, com base no que for digitado pelo usu�rio.
    Do case
        Case nUser = 2
            FwAlertInfo("Quantidade de dias: 28", aMes[nUser])
        Case (nUser = 1) .or. (nUser = 3) .or.(nUser = 5) .or. (nUser = 7) .or. (nUser = 8) .or. (nUser = 12)
            FwAlertInfo("Quantidade de dias: 31", aMes[nUser])
        Case (nUser = 4) .or. (nUser = 6) .or.(nUser = 9) .or. (nUser = 11) 
            FwAlertInfo("Quantidade de dias: 30", aMes[nUser])
    End Case
Return 

