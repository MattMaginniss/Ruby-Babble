# Ruby-Babble

##Overview

This 4-part project is intended to familiarize you with the Ruby language.  To that end, you're going to re-implement the (text-based) Babble game in Ruby.  Here are the game rules:

The program you will write is a single-player ("solitaire") take on the game of Scrabble.  Conceptually, the player tries to make words from a random set of seven letters.  Each time the player makes a valid word, they score points based on the letters they used.

The seven letters the player can arrange into a word are stored on a tile rack.  When a valid word is completed, its tiles are removed from the tile rack and randomly replenished from the remaining letters in a tile bag.

The tile bag initially contains a set of 98 tiles based on the letters and points in the standard English Scrabble distribution.  (Ignore the two blank tiles.) When the bag is empty, the game is over.

Additionally, the player can type :QUIT (note the colon at the beginning) to end the game.
