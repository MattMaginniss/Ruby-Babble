require "minitest/autorun"
require_relative "../word.rb"
require_relative "../tile_bag.rb"

# Test class for the Word's score method
class WhenScoringWords < Minitest::Test

  # This method sets up the test class
  def setup
    @word = Word.new
  end

  # This will test to see if a word with no tiles input will return a 0 value for its score
  def test_empty_word_should_have_score_of_zero
    assert_equal 0, @word.score
  end


  # This will test to see if a word with one tile in it will return a value equivalent to the value of that one tile
  def test_score_a_one_tile_word
    @word.append(:A)
    assert_equal 1, @word.score
  end


  # This will test to see if a word with multiple tiles in it will return a value equivalent to the sum of values of those tiles
  def test_score_a_word_with_multiple_different_tiles
    @word.append(:A)
    @word.append(:Z)
    @word.append(:M)
    assert_equal 14, @word.score
  end

  # This will test to see if a word with multiple tiles in it will return a value equivalent to the sum of values of those tiles even if some are repeated.
  def test_score_a_word_with_recurring_tiles
    @word.append(:A)
    @word.append(:Z)
    @word.append(:Z)
    @word.append(:M)
    @word.append(:A)
    assert_equal 25, @word.score
  end

end