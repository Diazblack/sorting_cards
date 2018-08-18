require './lib/card.rb'
require 'pry'
class Guess
  attr_reader :response,
              :card
              :guesses
  def initialize(response, card)
    @response = response
    @card = card
    @guesses = []
  end

  def correct?
    card_parameters = "#{card.value} of #{card.suit}"
    @guesses = card_parameters == response
    card_parameters == response
  end

  def feedback
    if correct?
     "Correct!"
    else
     "Incorrect."
    end
  end


end
