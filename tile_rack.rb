# Class that represents a group of letters that form a tile rack
class TileRack < TileGroup

  # This initializes an object with the type Tile Rack that is child of TileGroup
  def initialize
	  super
  end

  # This method will return the number of tiles needed to be drawn to have a full tile rack.
  def number_of_tiles_needed
    7 - @tiles.length
  end
  
  # This method will take a word and check to see if there are enough tiles to properly make it.
  def has_tiles_for?(text)
	tile_string = to_s
	result = true
	
	text.each_char do |x|
		input_char_count = text.count(x)
		tiles_char_count = tile_string.count(x)
		
		if (input_char_count > tiles_char_count)
			result = false
		end
	end
	
	result
  end
  
  # This method will remove and return the word from the tile array.
  def remove_word(text)
	word = Word.new
    text.each_char { |x| word.append(remove(x.to_sym).to_sym) }
	
	word
  end
  
end