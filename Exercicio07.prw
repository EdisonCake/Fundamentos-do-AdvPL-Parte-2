#INCLUDE 'TOTVS.CH'

User Function Poker()
    // Declaração de variáveis.
    local nHoraIni := 0
    local nHoraFim := 0
    local nDuracao := 0

    // Aqui é solicitado ao usuário os horários do início e do fim do jogo.
    nHoraIni := val(fwinputbox("Digite o horário de início do jogo:"))
    nHoraFim := val(fwinputbox("Digite o horário que o mesmo terminou:"))

    // Nessa estrutura condicional é calculada as horas com base nos critérios informados e é em seguida exibido o cálculo ao usuário.
    if nHoraIni >= nHoraFim
        nDuracao := (nHoraFim - nHoraIni) + 24

        MsgInfo("O jogo durou " + cvaltochar(nDuracao) + " horas.")
    else
        nDuracao :=  (nHoraFim - nHoraIni)

        MsgInfo("O jogo durou " + cvaltochar(nDuracao) + " horas.")
    endif

Return 
