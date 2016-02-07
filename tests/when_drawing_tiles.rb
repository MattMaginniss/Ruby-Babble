require "minitest/autorun"
require_relative "../tile_bag.rb"

# Test class for the Tile Bag's DrawTile method.
class WhenDrawingTiles < Minitest::Test

  # This method sets up the test class
  def setup
    @tb = TileBag.new
  end

  # This tests that there can be exactly 98 tiles drawn and at the end the bag will be empty.
  # Through each loop it asserts that the bag should not be empty until 98 loops then it asserts empty.
  def test_has_proper_number_of_tiles
    98.times do |x|
	  assert_equal(false, @tb.empty?)
      @tb.draw_tile
    end
	assert_equal(true, @tb.empty?)
  end

  # This tests to see the tiles in the bag are distributed as specified by scrabble rules.
  def test_has_proper_tile_distribution
		
	assert_equal(9, @tb.instance_variable_get(:@bag).count(:A))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:B))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:C))
	assert_equal(4, @tb.instance_variable_get(:@bag).count(:D))
	assert_equal(12, @tb.instance_variable_get(:@bag).count(:E))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:F))
	assert_equal(3, @tb.instance_variable_get(:@bag).count(:G))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:H))
	assert_equal(9, @tb.instance_variable_get(:@bag).count(:I))
	assert_equal(1, @tb.instance_variable_get(:@bag).count(:J))
	assert_equal(1, @tb.instance_variable_get(:@bag).count(:K))
	assert_equal(4, @tb.instance_variable_get(:@bag).count(:L))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:M))
	assert_equal(6, @tb.instance_variable_get(:@bag).count(:N))
	assert_equal(8, @tb.instance_variable_get(:@bag).count(:O))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:P))
	assert_equal(1, @tb.instance_variable_get(:@bag).count(:Q))
	assert_equal(6, @tb.instance_variable_get(:@bag).count(:R))
	assert_equal(4, @tb.instance_variable_get(:@bag).count(:S))
	assert_equal(6, @tb.instance_variable_get(:@bag).count(:T))
	assert_equal(4, @tb.instance_variable_get(:@bag).count(:U))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:V))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:W))
	assert_equal(1, @tb.instance_variable_get(:@bag).count(:X))
	assert_equal(2, @tb.instance_variable_get(:@bag).count(:Y))
	assert_equal(1, @tb.instance_variable_get(:@bag).count(:Z))
	
  end
  
end
