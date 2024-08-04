# Primeira maneira
=begin class Aluno
  def nome
    @nome
  end

  def nome = nome
    @nome = nome
  end
end

aluno = Aluno.new
aluno.nome = "John Doe"
puts aluno.nome
=end

# Segunda maneira

class Aluno
  attr_accessor :nome, :idade
end


aluno = Aluno.new("John Doe")
puts aluno.nome

aluno.idade = "36 anos"
puts aluno.idade
