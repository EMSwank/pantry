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

  def restock(pantry_item, amount)
    new_amount = stock_check + amount
    @stock[pantry_item] = new_amount
  end

end
