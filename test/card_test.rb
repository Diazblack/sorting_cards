require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'

class CardTest < Minitest::Test
  def test_it_exists
    new_card = Card.new("King", "Hearts")
    assert_instance_of Card, new_card
  end

  def test_if_it_has_attributes
    new_card = Card.new("King", "Hearts")
    assert_equal "King", new_card.value
    assert_equal "Hearts", new_card.suit
  end

  def test_if_i_can_brand_card_by_value
    new_card = Card.new("Ace", "Hearts")
    assert_equal 13, new_card.brand_value
  end

  def test_if_i_can_brand_card_by_suit
    new_card = Card.new("Ace", "Hearts")
    assert_equal 20, new_card.brand_suit 
  end
end
