#IMPORTANTE INSTALE A BIBLIOTECA NOKOGIRI

# gem install nokogiri

require 'nokogiri'

require 'net/http'

https = Net::HTTP.new('example.com', 443) #Você realizou uma requisição para o site example

# para fazer chamadas https

https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body) #Depois utilizou Nokogiri::HTML para parsear o documento HTML

desafio = doc.at('p')

puts desafio.content
