def dois_somas(nums, alvo)
  # Cria um hash para armazenar o índice de cada número
  indices_numeros = {}

  nums.each_with_index do |num, indice|
    # Calcula o complemento necessário para atingir o alvo
    complemento = alvo - num

    # Verifica se o complemento já está presente no hash
    if indices_numeros.key?(complement)
      # Se encontrado, retorna os índices do complemento e do número atual
      return [indices_numeros[complement], indice]
    end

    # Armazena o índice do número atual no hash
    indices_numeros[num] = indice
  end

  # Se nenhuma solução for encontrada (não deve acontecer conforme o enunciado)
  []
end

# Exemplos de uso
nums = [2, 7, 11, 15]
alvo = 9
puts dois_somas(nums, alvo).inspect # Saída: [0, 1]

nums = [3, 2, 4]
alvo = 6
puts dois_somas(nums, alvo).inspect # Saída: [1, 2]

nums = [3, 3]
alvo = 6
puts dois_somas(nums, alvo).inspect # Saída: [0, 1]
