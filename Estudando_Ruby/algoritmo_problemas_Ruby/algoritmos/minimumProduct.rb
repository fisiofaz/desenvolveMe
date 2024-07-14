def min_subset_product(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  # Ordenar a matriz
  arr.sort!

  # Inicializar produto mínimo
  min_product = 1

  # Contar números negativos e zeros
  neg_count = arr.count { |x| num < 0 }
  zero_count = arr.count(0)

  # Se todos são zeros, o produto é zero
  return 0 if zero_count == arr.length

  # Se há um número impar de negativos, precisamos excluir o mais  negativo
  if neg_count.odd?
    neg_count -= 1
  end

  # Calcular o produto dos números restantes
  arr.each_with_index do |num, idx|
    if num != 0 && (num < 0 && idx < neg_count) || (num > 0)
      min_product *= num
    end
  end

  min_product
end

# Exemplo de uso
arr = [2, -3, -1, 5, -4]
puts "Array original: #{arr.inspect}"
result = min_subset_product(arr)
puts "O produto mínimo do subconjunto é: #{result}"
