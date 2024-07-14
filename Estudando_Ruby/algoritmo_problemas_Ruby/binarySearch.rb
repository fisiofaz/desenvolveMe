def busca_binaria_flamence(lista, valor)
  inicio = 0
  fim = lista.length - 1

  while inicio <= fim
    meio = (inicio + fim) / 2
    puts "Batida de palma! Verificando o índice #{meio}!" # acção de verificação

    if lista[meio] == valor
      puts "Batida final! Elemento encontrado!" # clímax da dança
      return meio
    elsif lista[meio] < valor
      puts "Sapateado! Movendo intervalo para a direita." # mover para a direita
      inicio = meio + 1
    else
      puts "Sapateado! Movendo intervalo para esquerda." # movewr para a esquerda
      fim = meio - 1
    end
  end

  puts "Enceramento da dança. Elementos não encontrado!" # fim da dança
  return -1
end

# Teste do algoritmo
lista = [10, 20, 30, 40, 50]
valor_procurado = 30
resultado = busca_binaria_flamenco(lista, valor_procurado)
puts "Resultado: Índice #{resultado}"
