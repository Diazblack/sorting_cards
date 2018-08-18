require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/guess.rb'


class GuessTest < Minitest::Test
  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_if_it_has_attributes
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
    assert_equal card, guess.card
    assert_equal [], guess.guesses
  end
  def test_if_it_correct_or_incorrect
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal true, guess.correct?

    card_2 = Card.new("9", "Hearts")
    guess_2 = Guess.new("10 of Hearts", card_2)
    assert_equal false, guess_2.correct?
  end

  def test_if_it_has_feedback
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", guess.feedback

    card_2 = Card.new("10", "Diamonds")
    guess_2 = Guess.new("10 of Hearts", card_2)
    assert_equal "Incorrect.", guess_2.feedback
  end


end
