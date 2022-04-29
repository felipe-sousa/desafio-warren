=begin
    Dado um vetor de números e um número n, determine a soma com o menor número de elementos entre os números do vetor
    mais próxima de n e também mostre os elementos que compõem a soma.
    Para criar a soma, utilize qualquer elemento do vetor uma ou mais vezes.
    Exemplo:
    Se N = 10 e V = [2, 3, 4] você pode utilizar as seguintes somas: [2, 2, 2, 2, 2], [2, 2, 3, 3], [2, 4, 4] ou [3, 3, 4].
    Como a quantidade de elementos em [2, 4, 4] e [3, 3, 4] é igual, os dois conjuntos devem ser mostrados.
=end

#Inicializa algumas variáveis do programa
numero = 0
arrNum = []

#Solicita o valor N ao usuário
puts "Informe o valor N: "
numero = gets.to_i

#Solicita os valores do array ao usuário, separa nas "," e mapeia como Int
#Exemplo de entrada: 2,3,4
puts "Informe o Array de números: "
arrNum = gets.chomp.split(",").map {|x| x.to_i }

#Exibe o valor N na tela, e em seguida verifica e exibe os resultados possíveis
puts numero

for i in arrNum do
    for j in arrNum do
        for k in arrNum do
            if(i + j + k == numero)
                puts "[#{i}, #{j}, #{k}]"
                break
            end
        end
    end
end

#O código acima está funcionando para os casos que seja possível realizar a soma com os valores passados no Array em até no máximo 3 operações,
#Exemplo funcional: N=15 e V=[1,3,5], é possível somar 5+5+5 = 15
#Exemplo não funcional: N=20 e V=[1,3,5], não existem valores que a soma retorne 20 em 3 operações (5+5+5+5 = 4 operações)