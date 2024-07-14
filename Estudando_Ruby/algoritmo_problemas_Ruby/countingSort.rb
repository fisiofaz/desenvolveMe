def counting_sort(arr)
  # Encontre o valor máximo na matriz de entrada
  max_value = arr.max

  # Crie um array de contadores com o mesmo comprimento do valor máximo
  count = Array.new(max_value + 1, 0)

  # Incremente os contadores para cada elemento da matriz de entrada
  arr.each do |num|
    count[num] += 1
  end

  # Modifique a matriz de contagem para que cada posição contenha a posição
  # acumulada de cada elemento na matriz de saída
  (1..max_value).each do |i|
    count[i] += count[i - 1]
  end

  # Crie uma matriz de saída com o mesmo comprimento da matriz de entrada
  output= Array.new(arr.length)

   # Construa a matriz de saída
  arr.each do |num|
    output[count[num] - 1] = num
    count[num] -= 1
  end

   # Copie a matriz de saída de volta para a matriz de entrada para que
   # a entrada agora contenha elementos ordenados
  arr.each_index do |i|
    arr[i] = output[i]
  end

  arr
end

# Teste do algoritmo
arr = [4, 2, 2, 8, 3, 3, 1]
puts "Array original: #{arr.inspect}"
sorted_arr = counting_sort(arr)
puts "Array ordenado: #{sorted_arr.inspect}"
