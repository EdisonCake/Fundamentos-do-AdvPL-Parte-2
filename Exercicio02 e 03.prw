#INCLUDE 'TOTVS.CH'

User Function Viagem()
    // Declaração de variáveis
    local nTempo    := 0
    local nVel      := 0
    local nDist     := 0
    local nLitros   := 0
    local nLitUs    := 0

    // Aqui é solicitado ao usuário as informações da viagem e do veículo a ser utilizado.
    nTempo  := val(fwinputbox("Digite o tempo que será gasto na viagem (horas):"))
    nVel    := val(fwinputbox("Digite a velocidade média do veículo (km/h):"))
    nLitros := val(fwinputbox("Por fim, digite quantos Km/l seu carro faz:"))

    // Aqui é feito o cálculo da distância e da quantidade de litros a ser utilizado na viagem.
    nDist  := nTempo * nVel
    nLitUs := nDist / nLitros

    // E por fim, as informações são exibidas ao usuário.
    FwAlertInfo("Ficha técnica:" + CRLF + CRLF +;
                "Tempo de viagem.....................: " + cvaltochar(nTempo) + CRLF +;
                "Velocidade média.....................: " + cvaltochar(nVel) + " KM/H" + CRLF +;
                replicate("=", 37) + CRLF +;
                "Distância a ser percorrida:.........: " + cvaltochar(ndist) + " KM" + CRLF +;
                "Litros a serem utilizados............: " + cvaltochar(noround(nLitUs, 2)),"Informações")

Return 
