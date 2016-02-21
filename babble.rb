require '../rabble/tile_group.rb'
require '../rabble/tile_bag.rb'
require '../rabble/tile_rack.rb'
require '../rabble/word.rb'
require 'spellchecker'
require 'tempfile'

# Class that is the driver for the program.
class Babble
	
	# This will initialize the babble driver class.
	def initialize()
	end
	
	# The main program loop.
	def run()
		points = 0
		tb = TileBag.new
		tg = TileGroup.new
		rack = TileRack.new
		input = ""
			
		puts "Type :quit to quit at any time."
		
		until input == ":quit" do
			rack.number_of_tiles_needed.times do |x|
				rack.append(tb.draw_tile)
			end
			puts "Tiles:" , rack.to_s, ""
			
			puts "Guess a word that you can make from those tiles: "
			input = gets.chomp
			
			if Spellchecker::check(input)[0][:correct]
				if rack.has_tiles_for?(input)
					word_score = rack.remove_word(input).score
					points += word_score
					
					print "You made the word ", input , " for ", word_score, " points.\n\n"
				else 
					puts "", "You do not have the tiles for that word.", ""
				end
			else 
				print "\n", input , " is not a valid word.", "\n"
			end
		end
		
		puts "Thanks for playing, total score: ", points
	end


end

Babble.new.run