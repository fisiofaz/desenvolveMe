#Desafio
## Crie um programa que, dadas duas listas de números inteiros e tamanho igual, some os índices pares de cada uma delas e print no console uma nova lista resultante dessa operação.
#Entrada
## As entradas serão duas listas.
#Saída
##A saída deverá ser uma nova lista com o resultado da soma dos índices pares das duas primeiras.

def check(lista1, lista2)
  resultado = []

  for i in 0..(lista1.size - 1) do
    if i % 2 == 0
      resultado << lista1[i] + lista2[i]
    end
  end
  print resultado.join(',')
end

lista1 = gets.chomp.split.map(&:to_i)
lista2 = gets.chomp.split.map(&:to_i)
check(lista1, lista2)
