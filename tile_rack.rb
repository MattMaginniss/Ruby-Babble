# Class that represents a group of letters that form a tile rack
class TileRack < TileGroup

  # This initializes an object with the type Tile Rack that is child of TileGroup
  def initialize
	  super
  end

  def number_of_tiles_needed
    7 - @tiles.length
  end
  
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
  
  def remove_word(text)
    text.each_char { |x| remove(x.to_sym) }
  end
  
end