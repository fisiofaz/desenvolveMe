require_relative 'produto'
require_relative  'loja'

production = Production.new
  production.name = 'Forma para bolo redodndo'
  production.price = 30.00

  production1.name = 'Bolo de Cenoura com Calda de Chocolate'
  production1.price = 50.00

  Loja.new(production.name, production.price).purchase
  Loja.new(production1.name, production1.price).purchase
