require "minitest/autorun"
require_relative "../tile_rack.rb"

# Test class for the Tild Rack's remove_word method
class WhenRemovingWordsFromTileRacks   < Minitest::Test

  # This method sets up the test class
  def setup
	  @tr = TileRack.new
  end

  def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
    @tr.append(:R)
    @tr.append(:E)
    @tr.append(:A)
    @tr.append(:D)
    @tr.append(:Q)
    @tr.append(:W)
    @tr.append(:U)

    @tr.remove_word("READ")
    assert_equal(4, @tr.number_of_tiles_needed)

  end

  def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
    @tr.append(:E)
    @tr.append(:D)
    @tr.append(:Q)
    @tr.append(:R)
    @tr.append(:W)
    @tr.append(:A)
    @tr.append(:U)

    @tr.remove_word("READ")
    assert_equal(4, @tr.number_of_tiles_needed)
  end

  def test_can_remove_word_with_duplicate_letters
    @tr.append(:T)
    @tr.append(:H)
    @tr.append(:T)
    @tr.append(:Q)
    @tr.append(:O)
    @tr.append(:M)
    @tr.append(:O)

    @tr.remove_word("TOOTH")
    assert_equal(5, @tr.number_of_tiles_needed)

  end

  def test_can_remove_word_without_removing_unneeded_duplicate_letters
    @tr.append(:T)
    @tr.append(:H)
    @tr.append(:T)
    @tr.append(:T)
    @tr.append(:O)
    @tr.append(:O)
    @tr.append(:O)

    @tr.remove_word("TOOTH")
    assert_equal(5, @tr.number_of_tiles_needed)

  end
end