require './lib/guess.rb'
require './lib/deck.rb'
require './lib/card.rb'
require 'pry'

class Round
  attr_reader :deck,
              :guesses,
              :correct


  def initialize(deck)
    @deck = deck
    @guesses = []
    @correct = []
  end

  def current_card
    deck.cards[@guesses.length]
  end

  def record_guess(guess)
    response = "#{guess[:value]} of #{guess[:suit]}"
    new_guess = Guess.new(response, current_card)
    @correct << new_guess.feedback
    @guesses << new_guess

    return new_guess
  end

  def number_correct
    number =  @correct.select do |anwser|
     "Correct!"
    end
    number.length
  end

end
