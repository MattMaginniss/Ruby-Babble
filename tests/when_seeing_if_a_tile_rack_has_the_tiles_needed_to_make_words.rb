require "minitest/autorun"
require_relative "../tile_rack.rb"

# Test class for the Tild Rack's has_tiles_for? method
class WhenSeeingIfATileRackHasTheTilesNeededToMakeWords   < Minitest::Test

  # This method sets up the test class
  def setup
	@tr = TileRack.new
  end

  def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
	@tr.append(:B)
	@tr.append(:A)
	@tr.append(:C)
	@tr.append(:K)
	
	assert_equal(true, @tr.has_tiles_for?("BACK"))
  end

  def test_rack_has_needed_letters_when_letters_are_not_in_order_no_duplicates
	@tr.append(:A)
	@tr.append(:K)
	@tr.append(:C)
	@tr.append(:B)
	
	assert_equal(true, @tr.has_tiles_for?("BACK"))

  end

  def test_rack_doesnt_contain_any_needed_letters
	@tr.append(:R)
	@tr.append(:D)
	@tr.append(:Z)
	@tr.append(:P)
	
	assert_equal(false, @tr.has_tiles_for?("BACK"))

  end

  def test_rack_contains_some_but_not_all_needed_letters
	@tr.append(:R)
	@tr.append(:C)
	@tr.append(:Z)
	@tr.append(:P)
	@tr.append(:A)
	@tr.append(:Z)
	@tr.append(:B)
	
	assert_equal(false, @tr.has_tiles_for?("BACK"))

  end

  def test_rack_contains_a_word_with_duplicate_letters
	@tr.append(:Z)
	@tr.append(:O)
	@tr.append(:O)
	@tr.append(:P)
	@tr.append(:T)
	@tr.append(:H)
	@tr.append(:T)
	
	assert_equal(true, @tr.has_tiles_for?("TOOTH"))


  end

  def test_rack_doesnt_contain_enough_duplicate_letters
	@tr.append(:Z)
	@tr.append(:P)
	@tr.append(:O)
	@tr.append(:P)
	@tr.append(:U)
	@tr.append(:H)
	@tr.append(:T)
	
	assert_equal(false, @tr.has_tiles_for?("TOOTH"))
  end
  
end