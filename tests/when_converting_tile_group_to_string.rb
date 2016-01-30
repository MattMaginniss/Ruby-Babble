require "minitest/autorun"
require_relative "../tile_group.rb"

class WhenConvertingTileGroupToString < Minitest::Test


  def setup
    @tg = TileGroup.new
  end


  def test_convert_empty_group_to_string
    assert_equal "", @tg.to_s

  end


  def test_convert_single_tile_group_to_string
    @tg.append(:a)
    assert_equal "a", @tg.to_s
  end


  def test_convert_multi_tile_group_to_string

  end


  def test_convert_multi_tile_group_with_repeating_values_to_string

  end

end