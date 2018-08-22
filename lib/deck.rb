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

  def two_cards_sorting
    if cards[0].card_brand > cards[1].card_brand
      change = cards[0]
      cards[0] = cards[1]
      cards[1] = change
    end
    cards
  end

end
