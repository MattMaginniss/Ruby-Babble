class TileGroup

  def initialize
    @tiles = Array.new
  end

  def append(tile)
    case tile
      when Symbol
        @tiles << tile;
    end
    return @tiles
  end

  def remove(tile)
    case tile
      when Symbol
        index = @tiles.index(tile)
        if index != nil
          @tiles.delete_at(index)
        end
    end
    return @tiles
  end


  def to_s

  end
end