# Percdorre uma coleção de forma parecida ao for
# Primeiro vamos usar o EACH (cada) em um arry

# criar array
nomes =['Maria', 'João', 'Marecelo']

nome ='Mariana'
nomes.each do |nome|
  # imprimir nome
  puts nome
end
puts nome

# agora vamos usar o EACH (cada) em um hash

# Criar hash
pessoas = {nome: 'João', idade: 30, cidade: 'Lisboa'}

pessoas.each do |chave, valor|
  # imprimir chave e valor
  puts "#{chave}: #{valor}"
end

