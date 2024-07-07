# criar um array (lista) baseda em um outro array existente

numeros = [2, 3, 4, 5]

# map não altera o conteudo do aary original
novo_numeros = numeros.map do |x|
  x * 5
end

puts "\n Array Original"  #\n - pular uma linh
puts " #{numeros}"

puts "\n Novo Array"
puts " #{novo_numeros}"

# .map! força que o conteudo original da array seja alterado
numeros.map! do |x|
  x * 5
end

puts "\n Array Original alterado"
puts " #{numeros}"
puts ''
