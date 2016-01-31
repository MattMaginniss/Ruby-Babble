class Word < TileGroup

  # This initializes an object with the type Word
  def initialize
	super
	@point_hash = { a: 1, b: 3, c: 3, d: 4, e: 1, f: 4,
		g: 2, h: 4, i: 1, j: 8, k: 5, l: 1, m: 3, n: 1,
		o: 1, p: 3, q: 10, r: 1, s: 1, t: 1, u: 1, v: 4,
		w: 4, x: 8, y: 4, z: 10 }
  end

  # This will calculate and return the point value/score of the letters contained in the word
  def score
	points = 0
	get_tiles.each { |x| points += @point_hash[x] }
	points
  end
end