class Pantry
  attr_reader :stock, :amount

  def initialize
    @stock = {}
    @amount = 0
  end

  def stock_types
    @stock.keys
  end

  def stock_check(pantry_item)
    @stock[pantry_item] = amount
  end

  def restock(pantry_item, new_amount)
    amount = stock_check + new_amount
    @stock[pantry_item] = amount
  end

end
