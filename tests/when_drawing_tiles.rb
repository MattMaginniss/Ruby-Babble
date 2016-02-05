require "minitest/autorun"
require_relative "../tile_bag.rb"

# Test class for the Tile Bag's DrawTile method.
class WhenDrawingTiles < Minitest::Test

  # This method sets up the test class
  def setup
    @tb = TileBag.new
  end

  # This tests that there can be exactly 98 tiles drawn and at the end the bag will be empty.
  def test_has_proper_number_of_tiles

  end

  # This tests to see the tiles in the bag are distributed as specified by scrabble rules.
  def test_has_proper_tile_distribution
  
  end
  
end
