require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :guesses_remaining

	def initialize
		@guesses_remaining = 3
		# Needed? ^
	end

	def play_game
		guesses_remaining = 3
		secret_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		secret_number = secret_number[rand(secret_number.length)]
		puts "You must guess a number between 1 and 10 and you will only have 3 tries to do so."
		while guesses_remaining > 0
			puts "Ok guess!"
			player_guess = gets.chomp
				if player_guess.to_i == secret_number
					puts "YOU GOT IT" 
					exit
				elsif player_guess.to_i > secret_number
					puts "Too high, try again"
				else player_guess.to_i < secret_number
					puts "Too low, try again" 	
				end	
			guesses_remaining -= 1
		end
		puts "Sorry you ran out of turns!"
	end

end
