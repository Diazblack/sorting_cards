require './lib/guess.rb'
require './lib/deck.rb'
require './lib/card.rb'
require 'pry'

class Round
  attr_reader :deck,
              :guesses,
              :guesses_word


  def initialize(deck)
    @deck = deck
    @guesses = []
    @guesses_word = []
  end

  def current_card
    deck.cards[@guesses.length]
  end

  def record_guess(guess)
    response = "#{guess[:value]} of #{guess[:suit]}"
    new_guess = Guess.new(response, current_card)
    @guesses_word << new_guess.feedback
    @guesses << new_guess
    new_guess
  end

  def number_correct
    number =  @guesses_word.select do |anwser|
     anwser == "Correct!"
    end
    number.length
  end

  def percent_correct
    (number_correct.to_f / @guesses_word.length) * 100
  end

end
