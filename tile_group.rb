class TileGroup

  def initialize
    @tiles = Array.new
  end

  def append(tile)
    case tile
      when Symbol
        @tiles << tile
    end
    @tiles
  end

  def remove(tile)
    case tile
      when Symbol
        index = @tiles.index(tile)
        @tiles.delete_at(index) if index != nil
    end
    @tiles
  end

  def get_tiles
	@tiles
  end
  
  def to_s
    @tiles.each {|x| x.to_s }.join(",")
  end
end