#INCLUDE 'TOTVS.CH'

User Function Conversor()
    // Declara��o de vari�veis
    local nDolar     := 0
    local nReal      := 0
    local nConversao := 0
    local aOpcoes    := {"Dolar", "Real"}
    local nResposta  := 0

    // Aqui � exibida uma caixa de op��es ao usu�rio, solicitando o que o mesmo deseja converter
    nResposta := Aviso("Conversor", "Ol�! Escolha abaixo o que deseja converter!", aOpcoes, 1)

    // Se o usu�rio selecionar "D�lar", o programa solicita a cota��o atual e pergunta quantos reais o mesmo tem.
    if nResposta = 1

        MsgInfo("Convertendo Real em D�lar!", "Convers�o")
        nDolar := val(fwinputbox("Digite a cota��o atual do D�lar:"))
        nConversao := val(fwinputbox("Digite quantos reais voc� possui:"))
        nReal := nConversao / nDolar

        // E aqui, � exibido quantos d�lares o usu�rio tem com base no valor em reais que o mesmo tem.
        MsgInfo("Voc� possui US$ " + cvaltochar(noround(nReal, 2)) + " na carteira.", "Valor convertido")

    // Se o usu�rio escolher "Real", o programa faz a opera��o inversa � anterior, convertendo d�lar em real.
    else
        
        MsgInfo("Convertendo D�lar em Real!", "Convers�o")
        nDolar := val(fwinputbox("Digite a cota��o atual do D�lar:"))
        nConversao := val(fwinputbox("Digite quantos d�lares voc� possui:"))
        nReal := nConversao * nDolar

        // Aqui � exibido tamb�m ao usu�rio o resultado da opera��o.
        MsgInfo("Voc� possui R$ " + cvaltochar(noround(nReal, 2)) + " na carteira.", "Valor convertido")

    endif

Return 
