def min_pair_sum(arr)
  # Classificar a matriz
  arr.sort!

  # Inicializar a soma mínima
  min_sum = 0

  # Somar os mínimos de cada par
  (0...arr.length).step(2) do |i|
    min_sum += arr[i]
  end

  min_sum
end

# Testar a função
# Exemplo de uso
arr = [1, 3, 2, 6, 4, 8]
puts "Array original: #{arr.inspect}"
result = min_pair_sum(arr)
puts "A soma mínima dos mínimos de pares é: #{result}"
