# Desafio
## Você foi contratado para criar um programa que mostrasse para os clientes o preço do gás de cozinha. Para isso foi explicado que o preço variava todos os meses por conta de impostos que eram alterados pelas refinarias em conjunto com o governo. Então, existe um imposto todo mês de 10% e um variável de acordo com a bolsa e vendas que poderia, ou não, estar presente mês a mês e que é cobrado com base no preço após o calculo do imposto de todo mês.
## Crie um programa que faça essa verificação e print no console a seguinte frase: “O preço do gás nesse mês é de R$...”.
## Lembrando que 0 representa false e 1 representa true.
# Entrada
## Serão três entradas sendo elas respectivamente: o preço do gás, se o imposto variável vai ser cobrado, ou não, e o valor do imposto variável.
# Saída
## A saída deverá ser a frase descrita no desafio e o preço do gás de cozinha naquele mês.

#Desafios Ruby na DIO têm funções "gets" e "puts" acessíveis globalmente:
# "gets" : lê UMA linha com dado(s) de entrada (inputs) do usuário;
# "puts": imprime um texto de saída (output), pulando linha.
# ".to_i": Converte para int
# ".round": retorna o número arredondado mais próximo

precoDoGas = gets.to_i
imposto = 0.1
impostoCobrado = gets.to_i
impostoVariavel = gets.to_f

#TODO: Faça o cálculo do preço do gás de acordo com as entradas
#utilizando estruturas condicionais

if impostoCobrado == 1

  aux = precoDoGas + precoDoGas*imposto

  saida = aux + aux*impostoVariavel/100

 else

  saida = precoDoGas + precoDoGas*imposto

  saida = saida.to_i

 end



 puts "O preço do gás nesse mês é de R$#{saida}"
