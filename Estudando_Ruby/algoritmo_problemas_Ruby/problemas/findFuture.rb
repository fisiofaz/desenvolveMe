require 'date'

def find_next_dates(arr, queries)
  # Tranformar as strings de data em objetos Date
  dates = arr.map { |date_str| Date.strptime(date_str, '%d/%m/%Y') }

  # Ordena as datas
  dates.sort!

  results = []

  queries.each do |query|
    # Converte a string de data em um objeto Date
    query_date = Date.strptime(query, '%d/%m/%Y')

    # Procura a próxima data no array
