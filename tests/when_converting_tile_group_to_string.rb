require "minitest/autorun"
require_relative "../tile_group.rb"

# Test class for the TileGroup's ToString Method
class WhenConvertingTileGroupToString < Minitest::Test


  # This method sets up the test class
  def setup
    @tg = TileGroup.new
  end

  # This tests if you will get an empty string when the tile group has no tiles in it
  def test_convert_empty_group_to_string
    assert_equal "", @tg.to_s
  end

  # This tests to see if the to_s method will return a string with all the tiles in the tile group
  def test_convert_single_tile_group_to_string
    @tg.append(:A)
    assert_equal "A", @tg.to_s
  end

  # This tests to see if a tile group with multiple tiles in it will return all the tiles correctly in a string
  def test_convert_multi_tile_group_to_string
    @tg.append(:A)
    @tg.append(:U)
    @tg.append(:G)
    assert_equal "A U G", @tg.to_s
  end

  # this tests the to_s method to see if it correctly outputs a string with all the tiles even if some are repeated
  def test_convert_multi_tile_group_with_repeating_values_to_string
    @tg.append(:A)
    @tg.append(:U)
    @tg.append(:A)
    @tg.append(:A)
    @tg.append(:U)
    @tg.append(:G)
    @tg.append(:U)
    assert_equal "A U A A U G U", @tg.to_s
  end

end