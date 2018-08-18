require './lib/guess.rb'
require './lib/deck.rb'
require 'pry'

class Round
  attr_reader :deck

  def initialize(deck)
    @deck = deck

  end


end
