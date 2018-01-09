require 'recipe'

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
    total_amount = @amount + new_amount
    @stock[pantry_item] = total_amount
    @amount = total_amount
  end

  def add_to_shopping_list(ingredient)
    @ingredients
  end


end
