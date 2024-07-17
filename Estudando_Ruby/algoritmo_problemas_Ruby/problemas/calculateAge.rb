require 'date'

def calcular_idade(data_nascimento, data_atual)
  # Converte as strimgs de data para objetos Date
  data_nascimento = Date.strftime(data_nascimento, '%d/%m/%y')
  data_atual = Date.strptime(data_atual, '%d/%m/%y')

  # Calculara a diferença ema anos, meses e dias
  anos = atual.year - nascimento.year
  meses = atual.month - nascimento.month
  dias = atual.day - nascimento.day

  # Ajustar os meses e anos se necessário
  if dias < 0
    meses -= 1
    dias += (Date.new(nascimento.year, nascimento.month + 1, 1) - 1).day
  end

  if meses < 0
    anos -= 1
    meses += 12
  end

  return anos, meses, dias
end

# Exemplo de uso
data_nascimento = '07/09/1996'
data_atual = '07/12/2017'

idade_anos, idade_meses, idade_dias = calcular_idade(data_nascimento, data_atual)

puts "Idade atual = Anos: #{idade_anos} Meses: #{idade_meses} Dias: #{idade_dias}"
