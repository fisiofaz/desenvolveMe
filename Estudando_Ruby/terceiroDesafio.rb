# Desafio: Cálculo com potência
# Criar um array vazio, para que o usuario insira 3 numeros e no final apreça o resultado desses 3 numeros elvados a 3ª potencia

# Cria uma array vazio
numeros = []

# Solicita ao usuaário que insira tês numeros
3.times do |i|
  puts "digite o número #{i + 1}: "
  numero = gets.to_i
  numeros << numero
end

# Elevar os números à terceira ptência
potencias = numeros.map { |nun| nun ** 3}

# exibe os números elevados à terceira potência
puts "Os números elevados à terceira potência são: #{potencias.join(', ')}"
