class Card
  attr_reader :value,
              :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def brand_value
    cards_bag = {
      "Ace" => 13,
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "Jack" => 10,
      "Queen" => 11,
      "King" => 12,
      }
      cards_bag[value]
  end

  def brand_suit
    cards_bag = {
      "Clubs" => 0,
      "Diamonds" => 10,
      "Hearts" => 20,
      "Spades" => 30
      }
      cards_bag[suit]
  end
end
