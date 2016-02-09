require "minitest/autorun"
require_relative "../tile_rack.rb"

# Test class for the Tild Rack's number_of_tiles_needed method
class WhenFindingNumberOfTilesNeeded  < Minitest::Test

  # This method sets up the test class
  def setup
	@tr = TileRack.new
  end

end