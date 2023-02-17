#INCLUDE 'TOTVS.CH'

User Function Poker()
    // Declara??o de vari?veis.
    local nHoraIni := 0
    local nHoraFim := 0
    local nDuracao := 0

    // Aqui ? solicitado ao usu?rio os hor?rios do in?cio e do fim do jogo.
    nHoraIni := val(fwinputbox("Digite o hor?rio de in?cio do jogo:"))
    nHoraFim := val(fwinputbox("Digite o hor?rio que o mesmo terminou:"))

    // Nessa estrutura condicional ? calculada as horas com base nos crit?rios informados e ? em seguida exibido o c?lculo ao usu?rio.
    if nHoraIni >= nHoraFim
        nDuracao := (nHoraFim - nHoraIni) + 24

        MsgInfo("O jogo durou " + cvaltochar(nDuracao) + " horas.")
    else
        nDuracao :=  (nHoraFim - nHoraIni)

        MsgInfo("O jogo durou " + cvaltochar(nDuracao) + " horas.")
    endif

Return 
