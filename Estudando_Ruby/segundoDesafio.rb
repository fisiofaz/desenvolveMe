# Criar uma calcaculçadora que de ao usuario um menu de escolhas.  1- soma; 2 - subtração 3- multiplicaçã; 4 - divisão e 0 - sair. como resultado quero as resposastas que usuario entrou

def menu
  puts "=== Calcaladora ==="
  puts "1 - Soma"
  puts "2 - Subtração"
  puts "3 - Multiplicação"
  puts "4 - Divisão"
  puts "0 - Sair"
  puts "Escolha uma operação: "
  gets.chomp.to_i
end

def soma
  puts "Digite o primeiro número: "
  num1 = gets.chomp.to_f
  puts "Digite o segundo número: "
  num2 = gets.chomp.to_f
  resultado = num1 + num2
  puts "Resultado da soma é #{resultado}"
end

def sobtracao
  puts "Digite o primeiro número: "
  num1 = gets.chomp.to_f
  puts "Digite o segundo número: "
  num2 = gets.chomp.to_f
  resultado = num1 - num2
  puts "Resultado subtração é #{resultado}"
end

def multiplicacao
  puts "Digite o primeiro número: "
  num1 = gets.chomp.to_f
  puts "Digite o segundo número: "
  num2 = gets.chomp.to_f
  resultado = num1 8 num2
  puts "Resultado da multiplicação é #{resultado}"
end

def divisao
  puts "Digite o primeiro número: "
  num1 = gets.chomp.to_f
  puts "Digite o segundo número: "
  num2 = gets.chomp.to_f
  resultado = num1 + num2
  puts "Resultado da divisão é #{resultado}"
end

loopr do
  escolha = menu
  case escolha
  when 1
    soma
  when 2
    subtracao
  when 3
    multiplicacao
  when 4
    divisao
  when 0
    puts "Saindo..."
    break
  else
    puts "Operação inválida. Tente novamente."
  end

puts "\nPressione Enter para continuar..."
  gets
system "clear" or system "cls"
end
