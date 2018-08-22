require './lib/card.rb'
require 'pry'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.length
  end

  def sort
    swap = true
    until swap == false do
      swap = false
      cards.each do |number|
        if  cards[number].brand_value > cards[number + 1].brand_value
          cards[number], cards[number + 1] = cards[number + 1], cards[number]
          swap = true
        elsif cards[number].brand_value == cards[number + 1].brand_value

          if cards[number].brand_suit > cards[number + 1].brand_suit
            cards[number], cards[number + 1] = cards[number + 1], cards[number]
            swap = true
          end
        end
      end
    end
    cards
  end

  def swap_cards_value
    if  cards[number].brand_value > cards[number + 1].brand_value
      cards[number], cards[number + 1] = cards[number + 1], cards[number]
    end
  end

  def swap_cards_suit
    if  cards[number].brand_value == cards[number + 1].brand_value
      if cards[number].brand_suit > cards[number + 1].brand_suit
        cards[number], cards[number + 1] = cards[number + 1], cards[number]
      end
    end
  end

end
