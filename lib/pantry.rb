class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(item, amount=0)
    @stock[item] = amount
  end
end
