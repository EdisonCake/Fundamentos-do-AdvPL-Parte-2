#INCLUDE 'TOTVS.CH'

User Function Conversor()
    // Declaração de variáveis
    local nDolar     := 0
    local nReal      := 0
    local nConversao := 0
    local aOpcoes    := {"Dolar", "Real"}
    local nResposta  := 0

    // Aqui é exibida uma caixa de opções ao usuário, solicitando o que o mesmo deseja converter
    nResposta := Aviso("Conversor", "Olá! Escolha abaixo o que deseja converter!", aOpcoes, 1)

    // Se o usuário selecionar "Dólar", o programa solicita a cotação atual e pergunta quantos reais o mesmo tem.
    if nResposta = 1

        MsgInfo("Convertendo Real em Dólar!", "Conversão")
        nDolar := val(fwinputbox("Digite a cotação atual do Dólar:"))
        nConversao := val(fwinputbox("Digite quantos reais você possui:"))
        nReal := nConversao / nDolar

        // E aqui, é exibido quantos dólares o usuário tem com base no valor em reais que o mesmo tem.
        MsgInfo("Você possui US$ " + cvaltochar(noround(nReal, 2)) + " na carteira.", "Valor convertido")

    // Se o usuário escolher "Real", o programa faz a operação inversa à anterior, convertendo dólar em real.
    else
        
        MsgInfo("Convertendo Dólar em Real!", "Conversão")
        nDolar := val(fwinputbox("Digite a cotação atual do Dólar:"))
        nConversao := val(fwinputbox("Digite quantos dólares você possui:"))
        nReal := nConversao * nDolar

        // Aqui é exibido também ao usuário o resultado da operação.
        MsgInfo("Você possui R$ " + cvaltochar(noround(nReal, 2)) + " na carteira.", "Valor convertido")

    endif

Return 
