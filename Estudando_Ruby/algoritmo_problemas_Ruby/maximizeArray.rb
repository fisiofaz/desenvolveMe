def maxinize_sum_after_k_negations(arr, k)
  # Classificar a matriz
  arr.sort!

 # Negar os valores negativos enquanto tivemos aoperações k disponiveis
  arr.each_with_index do |num, i|
    if k > 0 && num < 0
      arr[i] = -num
      k -= 1
    else
      break
    end
  end

  # Se restarem operações k, usar o menor valor absoluto para negações
  if k > 0 && k.odd?
    arr.sort!
    arr[0] = -arr[0]
  end

  # Retornar a soma máxima
  arr.sum
end

# Exemplo de uso
arr = [2, -3, -1, 5, -4]
k = 2
puts "Array original: #{arr.inspect}"
result = maximize_sum_after_k_negations(arr, k)
puts "A soma máxima após #{k} negações é: #{result}"
