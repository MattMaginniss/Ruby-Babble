require '../rabble/tile_group.rb'
require '../rabble/tile_bag.rb'
require '../rabble/tile_rack.rb'

# Class that is the driver for the program.
class Babble
	
	# This will initialize the babble driver class.
	def initialize()
	end
	
	# The main program loop.
	def run()
		tb = TileBag.new
		tg = TileGroup.new
		rack = TileRack.new
		input = ""
		
		until input == ":quit\n" do
			rack.number_of_tiles_needed.times do |x|
				rack.append(tb.draw_tile)
			end
			
			puts rack.to_s
			
			input = gets
			
			puts "Output:", input
		end
	end


end

Babble.new.run