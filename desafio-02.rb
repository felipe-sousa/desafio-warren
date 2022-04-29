=begin
    Desafio 02: 
    Um professor de programação, frustrado com a falta de disciplina de seus alunos,
    decide cancelar a aula se menos de x alunos estiverem presentes quando a aula for iniciada.
    O tempo de chegada varia entre:
    * Normal: tempoChegada <= 0
    * Atraso: tempoChegada > 0
    Construa um algoritmo que dado o tempo de chegada de cada aluno e o limite x de alunos presentes,
    determina se a classe vai ser cancelada ou não ("Aula cancelada” ou “Aula normal”).
=end

#Inicia algumas variáveis do programa
qtdMinAlunos = 0
manterAula = 0
tempoChegada = []

#Solicita a quantidade limite de alunos (que chegaram no horário)
puts "Informe a quantidade mínima de alunos: "
qtdMinAlunos = gets.to_i

#Solicita os horários de chegada dos alunos, separa os dados nas "," do input e mapeia os dados como Int
#Exemplo de entrada: -2,-1,0,1,2
puts "Informe o horário de chegada dos alunos: "
tempoChegada = gets.chomp.split(",").map {|x| x.to_i }

#Contabiliza a quantidade de alunos que chegaram no horário correto (não estão atrasados)
for tempo in tempoChegada do
    if tempo.to_i <= 0
        manterAula += 1
    end
end

#Verifica se a quantidade de alunos que chegaram no horário é suficiente para manter a aula
if manterAula >= qtdMinAlunos
    puts "Aula normal."
else
    puts "Aula cancelada."
end