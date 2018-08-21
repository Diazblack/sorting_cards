require 'minitest/autorun'
require 'minitest/pride'
require './lib/round.rb'
require 'pry'

class RoundTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_if_it_has_attributes
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal deck, round.deck
    assert_equal [], round.guesses
    assert_equal [], round.correct
  end

  def test_if_it_can_get_a_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_if_it_can_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    actual = round.record_guess({value:"3", suit:"Hearts"})
    assert_instance_of Guess, actual
  end

  def test_if_it_can_count_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess = round.record_guess({value:"3", suit:"Hearts"})
    assert_equal 1 , round.guesses.count
  end

  def test_if_it_can_get_a_feedback_at_first_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess = round.record_guess({value:"3", suit:"Hearts"})
    assert_equal "Correct!" , round.guesses.first.feedback
  end

  def test_if_it_can_count_the_number_of_correct_answers
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess = round.record_guess({value:"3", suit:"Hearts"})
    # binding.pry
    assert_equal 1 , round.number_correct
  end
end
