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
  
  end
  
  def remove_word(text)
    text.each_char { |x| @tiles.remove(x.to_sym) }
  end
  
end