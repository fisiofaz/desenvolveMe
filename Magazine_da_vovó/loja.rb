class Store
  def  initialize(production, price)
    @production = production
    @price = price
  end
  def purchase
    puts "você comprou o produto #{@production} pelo valor de #{@price}"
  end
end
