require "minitest/autorun"
require_relative "../tile_rack.rb"

# Test class for the Tile Rack's number_of_tiles_needed method
class WhenFindingNumberOfTilesNeeded  < Minitest::Test

  # This method sets up the test class
  def setup
	@tr = TileRack.new
  end

  def test_empty_tile_rack_should_need_max_tiles
    assert_equal(7, @tr.number_of_tiles_needed)
  end

  def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
    @tr.append(:A)
    assert_equal(6, @tr.number_of_tiles_needed)
  end

  def test_tile_rack_with_several_tiles_should_need_some_tiles

    @tr.append(:A)
    @tr.append(:Y)
    @tr.append(:G)
    assert_equal(4, @tr.number_of_tiles_needed)
  end

  def test_that_full_tile_rack_doesnt_need_any_tiles


    @tr.append(:A)
    @tr.append(:U)
    @tr.append(:G)
    @tr.append(:Q)
    @tr.append(:Y)
    @tr.append(:D)
    @tr.append(:G)
    assert_equal(0, @tr.number_of_tiles_needed)

  end

end