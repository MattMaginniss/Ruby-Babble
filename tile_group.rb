class TileGroup

  def initialize
    @tiles = {}
  end

  def append(tile)
    case tile
      when Symbol
        if @tiles.has_key?(tile)
          @tiles[tile] = @tiles[tile] + 1;
        else
          @tiles[tile] = 1;
        end
    end
    return @tiles
  end

  def remove(tile)
    case tile
      when Symbol
        if @tiles.has_key?(tile)
          @tiles[tile] = @tiles[tile] - 1;
        else
          @tiles[tile] = 0;
        end
    end
    return @tiles
  end

  def to_s

  end
end