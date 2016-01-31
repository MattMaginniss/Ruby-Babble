class TileGroup

  # This method initializes an object of the type TileGroup
  def initialize
    @tiles = Array.new
  end

  # This will append a tile to the array only if it is input as a symbol
  def append(tile)
    case tile
      when Symbol
        @tiles << tile
    end
    @tiles
  end

  # This will find the first instance of the input symbol, remove it from the array and return the modified array
  def remove(tile)
    case tile
      when Symbol
        index = @tiles.index(tile)
        @tiles.delete_at(index) if index != nil
    end
    @tiles
  end

  # This will get all the tiles array and return it
  def get_tiles
	@tiles
  end

  # This will return a string that has all the values of the tiles array separated by commas
  def to_s
    @tiles.each {|x| x.to_s }.join(",")
  end
end