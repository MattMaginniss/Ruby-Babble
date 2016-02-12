# Class that represents a group of letters that form a word
class Word < TileGroup

  # This initializes an object with the type Word
  def initialize
	super
  end

  # This will calculate and return the point value/score of the letters contained in the word
  def score
	points = 0
	get_tiles.each { |x| points += TileBag.points_for(x) }
	points
  end
end