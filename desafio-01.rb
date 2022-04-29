=begin
    Alguns números inteiros positivos n possuem uma propriedade na qual a soma de n + reverso(n) resultam em números ímpares.
    Por exemplo, 36 + 63 = 99 e 409 + 904 = 1313.
    Considere que n ou reverso(n) não podem começar com 0.
    Existem 120 números reversíveis abaixo de 1000.
    Construa um algoritmo que mostre na tela todos os números n onde a soma de n + reverso(n) resultem em números ímpares que estão abaixo de 1 milhão.
=end

#Função para inverter o número e calcular n + reverso(n)
def inverterNumero(a)
    num = a

    #Verifica se possui 0 no final antes de inverter o número, se sim, retorna Falso
    if (num %10 ==0)
        return false
    end

    #Inverte o número
    inverso = 0
    while (num > 0)
        inverso = 10 * inverso + num % 10
        num /= 10
    end

    #Realiza a soma do número original com o número invertido
    inverso += a

    #Verifica se os resultados são ímpares, caso seja par retorna Falso
    while (inverso > 0)
        if ((inverso % 10) % 2 == 0)
            return false
        end
        inverso /= 10
    end

    #Retorna True caso o número seja reversível e a soma de n + reverso(n) seja um número ímpar
    return true
end

#Executa um loop de 0 até 1 milhão para calcular os números reversíveis e suas somas
contador = 0
for i in 0..1000000 do
    
    #Caso a função inverterNumero() retorne True, adiciona 1 ao contador e exibe na tela o número que é reversível
    if inverterNumero(i)
        contador += 1
        puts i
    end

end

#Após finalizar a exibição de todos os números reversíveis, exibe na tela o total de números possíveis.
puts "Existem #{contador} números reversíveis abaixo de 1000000 (um milhão)."