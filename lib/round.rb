require './lib/guess.rb'
require './lib/deck.rb'
require './lib/card.rb'
require 'pry'

class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    deck.cards[@guesses.length]
  end

  def record_guess(guess)
    response = "#{guess[:value]} of #{guess[:suit]}"
    new_guess = Guess.new(response, current_card)
    @guesses << new_guess
    return new_guess
  end
end
