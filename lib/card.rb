class Card
  attr_reader :value,
              :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def card_brand
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
      "Clubs" => 0,
      "Diamonds" => 20,
      "Hearts" => 40,
      "Spades" => 60
      }
      cards_bag[value] + cards_bag[suit]
  end
end
