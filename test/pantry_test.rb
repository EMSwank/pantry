require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test
  def test_it_exists
    pantry = Pantry.new("cheese")

    assert_instance_of Pantry, pantry
  end

  def test_it_adds_an_item_to_the_pantry
    pantry = Pantry.new("cheese")

    assert_equal "cheese", pantry.item
  end
end
