require "minitest/autorun"
require_relative "../tile_rack.rb"

# Test class for the Tild Rack's remove_word method
class WhenRemovingWordsFromTileRacks   < Minitest::Test

  # This method sets up the test class
  def setup
	  @tr = TileRack.new
  end

  # Test that a word can be removed if the tiles are in order on the rack.
  def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
    @tr.append(:R)
    @tr.append(:E)
    @tr.append(:A)
    @tr.append(:D)
    @tr.append(:Q)
    @tr.append(:W)
    @tr.append(:U)

    assert_equal("READ", @tr.remove_word("READ"))
  end

  # Test that a word can be removed if the tiles are not in order on the rack.
  def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
    @tr.append(:E)
    @tr.append(:D)
    @tr.append(:Q)
    @tr.append(:R)
    @tr.append(:W)
    @tr.append(:A)
    @tr.append(:U)

    assert_equal("READ", @tr.remove_word("READ"))
  end

  # Test that a word with some duplicate letters can be removed from the rack.
  def test_can_remove_word_with_duplicate_letters
    @tr.append(:T)
    @tr.append(:H)
    @tr.append(:T)
    @tr.append(:Q)
    @tr.append(:O)
    @tr.append(:M)
    @tr.append(:O)

    assert_equal("TOOTH", @tr.remove_word("TOOTH"))
  end

  # Test that a word can be removed without removing duplicate letters being removed from the rack.
  def test_can_remove_word_without_removing_unneeded_duplicate_letters
    @tr.append(:T)
    @tr.append(:H)
    @tr.append(:T)
    @tr.append(:T)
    @tr.append(:O)
    @tr.append(:O)
    @tr.append(:O)

    assert_equal("TOOTH", @tr.remove_word("TOOTH"))
  end
end