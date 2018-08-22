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
    assert_equal [], round.guesses_word
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
    assert_equal 1 , round.number_correct
  end

  def test_if_it_can_record_guess_twice
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess({value:"3", suit:"Hearts"})

    guess_2 = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_instance_of Guess, guess_2
  end

  def test_if_it_can_count_a_guess_twice
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess({value:"3", suit:"Hearts"})

    guess_2 = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 2 , round.guesses.count
  end

  def test_if_it_can_get_last_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess({value:"3", suit:"Hearts"})

    guess_2 = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal "Incorrect.", round.guesses.last.feedback
  end

  def test_if_it_can_get_number_correct_after_guess_2
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess({value:"3", suit:"Hearts"})

    guess_2 = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 1, round.number_correct
  end

  def test_if_it_can_get_the_percent_of_correct_anwsers
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess({value:"3", suit:"Hearts"})

    guess_2 = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 50, round.percent_correct
  end


end
