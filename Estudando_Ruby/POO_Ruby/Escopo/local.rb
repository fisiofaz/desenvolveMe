class Teste
  def local
    local = 'é acessada somente neste étodo local'
    print local
  end
end

teste = Teste.new
teste.local
