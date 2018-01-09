require 'recipe'

class Pantry
  attr_reader :stock, :amount, :shopping_list

  def initialize
    @stock = {}
    @amount = 0
    @shopping_list = {}
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

  def add_to_shopping_list(list)
    @shopping_list = list.ingredients
  end


end
