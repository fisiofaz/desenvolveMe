def max_equal_sum(pile1, pile2, pile3)
  # Calcular a soma inicial de cada pilha
  sum1 = pile1.sum
  sum2 = pile2.sum
  sum3 = pile3.sum

  # Usar índices parfa rastrear o topo de cada pilha
  top1 = 0
  top2 = 0
  top3 = 0

  # Continuar até que as somas sejam iguais
  while top1 < pile1.length && top2 < pile2.length && top3 < pile3.length
    # Se todas as somas são iguais, retorná-las
    if sum1 == sum2 && sum1 == sum3
      return sum1
    end

    # Encontre a pilha com maior soma e remova seu topo
    if sum1 >= sum2 && sum1 >= sum3
      sum1 -= pile1[index1]
      index1 += 1
    elsif sum2 >= sum1 && sum2 >= sum3
      sum2 -= pile2[index2]
      top2 += 1
    else
      sum3 -= pile3[index3]
      top3 += 1
    end
  end

  # Se não encontrar uma soma igual, retorne 0
  0
end

# Teste
pile1 = [3, 2, 1, 1, 1]
pile2 = [4, 3, 2]
pile3 = [1, 1, 4, 1]

puts "Pilha 1: #{pile1.inspect}"
puts "Pilha 2: #{pile2.inspect}"
puts "Pilha 3: #{pile3.inspect}"

result = max_equal_sum(pile1, pile2, pile3)
puts "A soma máxima igual das três pilhas é: #{result}"
