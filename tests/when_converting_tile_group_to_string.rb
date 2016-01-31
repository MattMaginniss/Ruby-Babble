require "minitest/autorun"
require_relative "../tile_group.rb"

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
    @tg.append(:a)
    assert_equal "a", @tg.to_s
  end

  # This tests to see if a tile group with multiple tiles in it will return all the tiles correctly in a string
  def test_convert_multi_tile_group_to_string
    @tg.append(:a)
    @tg.append(:u)
    @tg.append(:g)
    assert_equal "a,u,g", @tg.to_s
  end

  # this tests the to_s method to see if it correctly outputs a string with all the tiles even if some are repeated
  def test_convert_multi_tile_group_with_repeating_values_to_string
    @tg.append(:a)
    @tg.append(:u)
    @tg.append(:a)
    @tg.append(:a)
    @tg.append(:u)
    @tg.append(:g)
    @tg.append(:u)
    assert_equal "a,u,a,a,u,g,u", @tg.to_s
  end

end