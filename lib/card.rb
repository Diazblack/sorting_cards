class Card
  attr_reader :value,
              :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def brand
    cards_bag = {
      "Ace" => 48,
      "2" => 2,
      "3" => 6,
      "4" => 10,
      "5" => 14,
      "6" => 18,
      "7" => 22,
      "8" => 26,
      "9" => 30,
      "Jack" => 34,
      "Queen" => 38,
      "King" => 44,
      "Clubs" => 0,
      "Diamonds" => 1,
      "Hearts" => 2,
      "Spades" => 3
      }
      cards_bag[@value] + cards_bag[@suit]
  end
end
