# mnipulando hasher
# também é um tipo de lista, mas ela tem uma  CHAVE: VALOR
# criando um hash vazil varial
animais = Hash.new
# adicionando um elemento ao hash
animais = {animais: 'Tucano', mamifero: 'Cachorro', reptil: 'lagarto'}
# adicionar itens hash
animais[:aves2] = 'Papagaio'
# se usar o menso nome substitui o que ja estava
# saber as chaves da lista
animais.keys
# saber os valores da lista]
animais.values
# excluir um lelemteo hashes
animais.delete(:aves2)
# tamanho do hash
animais.size

