class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
    # @item = item
  end

  def restock(pantry_item, amount)
    @stock[pantry_item] = amount
  end

  def stock_check(pantry_item, amount=0)
    @stock[pantry_item] = amount
  end

end
