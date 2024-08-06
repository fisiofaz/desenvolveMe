require_relative 'produto'
require_relative 'mercado'

produto = Produto.new('Arroz', 10.50)

mercado = Mercado.new(produto)

mercado.comprar
