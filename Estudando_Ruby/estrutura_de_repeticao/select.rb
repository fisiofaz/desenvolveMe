# seleciona o que é determinado (uso em pesquisa)

#criar um array
numeros = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]

selecionados = numeros.select do |n|
   n % 2 == 0
end
puts selecionados

# usar o select nun hash

hash = {
  "nome" => "Maria",
  "idade" => 25,
  "peso" => 70.5,
  "altura" => 1.75
}

selecionados_chave = hash.select do |k, v|
  k.is_a?(String) && v.is_a?(Numeric) && v > 1
end

puts selecionados_chave
