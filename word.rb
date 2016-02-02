# Class that represents a group of letters that form a word
class Word < TileGroup

  # This initializes an object with the type Word
  def initialize
	super
	@point_hash = { A: 1, B: 3, C: 3, D: 4, E: 1, F: 4,
		G: 2, H: 4, I: 1, J: 8, K: 5, L: 1, M: 3, N: 1,
		O: 1, P: 3, Q: 10, R: 1, S: 1, T: 1, U: 1, V: 4,
		W: 4, X: 8, Y: 4, Z: 10 }
  end

  # This will calculate and return the point value/score of the letters contained in the word
  def score
	points = 0
	get_tiles.each { |x| points += @point_hash[x] }
	points
  end
end