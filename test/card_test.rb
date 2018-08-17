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

end
