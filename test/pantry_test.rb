require './lib/pantry'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test
  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_stock_is_empty_hash
    pantry = Pantry.new

    assert_equal({}, pantry.stock)
  end

  def test_it_adds_item_to_stock
    pantry = Pantry.new

    assert_equal 0, pantry.stock_check("Cheese")
  end

  def test_it_adds_amount
    pantry = Pantry.new
    pantry.restock("Cheese", 10)

    assert_equal 10, pantry.stock_check("Cheese")

    pantry.restock("Cheese", 20)

    assert_equal 30, pantry.stock_check("Cheese")
  end

  def test_it_finds_recipes
    r = Recipe.new("Cheese Pizza")

    assert_instance_of Recipe, r
  end

  def test_ingredients_is_empty
    r = Recipe.new("Cheese Pizza")

    assert_equal({}, r.ingredients)
  end

  def test_it_adds_ingredients
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)

    assert_equal({"Cheese" => 20, "Flour" => 20}, r.ingredients)
  end

  def test_it_adds_to_shopping_list
    pantry = Pantry.new
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)

    assert_equal({"Cheese" => 20, "Flour" => 20}, pantry.add_to_shopping_list(r))
  end

  def test_it_adds_another_recipe
    pantry = Pantry.new
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)

    r = Recipe.new("Spaghetti")
    r.add_ingredient("Spaghetti Noodles", 10)
    r.add_ingredient("Marinara Sauce", 10)
    r.add_ingredient("Cheese", 5)

    assert_equal({"Cheese" => 25, "Flour" => 20, "Spaghetti Noodles" => 10, "Marinara Sauce" => 10}, pantry.add_to_shopping_list(r))

  end
end
