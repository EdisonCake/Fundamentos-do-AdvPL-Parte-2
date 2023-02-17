#INCLUDE 'TOTVS.CH'

User Function Viagem()
    // Declara??o de vari?veis
    local nTempo    := 0
    local nVel      := 0
    local nDist     := 0
    local nLitros   := 0
    local nLitUs    := 0

    // Aqui ? solicitado ao usu?rio as informa??es da viagem e do ve?culo a ser utilizado.
    nTempo  := val(fwinputbox("Digite o tempo que ser? gasto na viagem (horas):"))
    nVel    := val(fwinputbox("Digite a velocidade m?dia do ve?culo (km/h):"))
    nLitros := val(fwinputbox("Por fim, digite quantos Km/l seu carro faz:"))

    // Aqui ? feito o c?lculo da dist?ncia e da quantidade de litros a ser utilizado na viagem.
    nDist  := nTempo * nVel
    nLitUs := nDist / nLitros

    // E por fim, as informa??es s?o exibidas ao usu?rio.
    FwAlertInfo("Ficha t?cnica:" + CRLF + CRLF +;
                "Tempo de viagem.....................: " + cvaltochar(nTempo) + CRLF +;
                "Velocidade m?dia.....................: " + cvaltochar(nVel) + " KM/H" + CRLF +;
                replicate("=", 37) + CRLF +;
                "Dist?ncia a ser percorrida:.........: " + cvaltochar(ndist) + " KM" + CRLF +;
                "Litros a serem utilizados............: " + cvaltochar(noround(nLitUs, 2)),"Informa??es")

Return 
