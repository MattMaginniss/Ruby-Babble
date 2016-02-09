require "minitest/autorun"
require_relative "../tile_rack.rb"

# Test class for the Tild Rack's has_tiles_for? method
class WhenSeeingIfATileRackHasTheTilesNeededToMakeWords   < Minitest::Test

  # This method sets up the test class
  def setup
	@tr = TileRack.new
  end

end