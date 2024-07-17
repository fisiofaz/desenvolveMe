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
    closest_date = date_objects.select { |date| date >= query_date }.min

    closest_date.nil? ? '-1' : closest_date.strftime('%-d/%-m/%Y')
  end

  results
end

# Test cases
arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
queries = ["23/3/4345", "12/3/2"]
puts find_closest_dates(arr, queries) # Expected output: ["23/5/56645", "4/12/233"]

arr = ["22/4/1233", "4/12/233", "1/3/633", "23/5/56645"]
queries = ["4/4/34234234"]
puts find_closest_dates(arr, queries) # Expected output: ["-1"]
