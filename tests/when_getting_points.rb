require "minitest/autorun"
require_relative "../tile_bag.rb"

# Test class for the TileBag's points for method.
class WhenGettingPoints < Minitest::Test

  # This tests if you will get the correct value for the 26 different tiles.
  def test_confirm_point_values
	assert_equal 1, TileBag.point_for(:A)
	assert_equal 3, TileBag.point_for(:B)
	assert_equal 3, TileBag.point_for(:C)
	assert_equal 4, TileBag.point_for(:D)
	assert_equal 1, TileBag.point_for(:E)
	assert_equal 4, TileBag.point_for(:F)
	assert_equal 2, TileBag.point_for(:G)
	assert_equal 4, TileBag.point_for(:H)
	assert_equal 1, TileBag.point_for(:I)
	assert_equal 8, TileBag.point_for(:J)
	assert_equal 5, TileBag.point_for(:K)
	assert_equal 1, TileBag.point_for(:L)
	assert_equal 3, TileBag.point_for(:M)
	assert_equal 1, TileBag.point_for(:N)
	assert_equal 1, TileBag.point_for(:O)
	assert_equal 3, TileBag.point_for(:P)
	assert_equal 10, TileBag.point_for(:Q)
	assert_equal 1, TileBag.point_for(:R)
	assert_equal 1, TileBag.point_for(:S)
	assert_equal 1, TileBag.point_for(:T)
	assert_equal 1, TileBag.point_for(:U)
	assert_equal 4, TileBag.point_for(:V)
	assert_equal 4, TileBag.point_for(:W)
	assert_equal 8, TileBag.point_for(:X)
	assert_equal 4, TileBag.point_for(:Y)
	assert_equal 10, TileBag.point_for(:Z)

  end

end