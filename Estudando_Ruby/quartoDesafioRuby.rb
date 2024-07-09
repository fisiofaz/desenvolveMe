# Desafio: Consulta de CPF

require 'cpf_cnpj'

def valida_cpf(cpf)
  CPF.valid?(cpf)
end

puts "Digite o número de CPF (apenas números): "
input_cpf = gets.chomp

if valida_cpf(input_cpf)
  puts "O CPF #{input_cpf00} é válido"
else
  puts "O CPF #{input_cpf} é inválido"
end
