###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 

puts "Welcome to my awesome number-guessing game"

#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"

puts "What's your name?"

player_name = gets.chomp

puts "Hi #{player_name.capitalize}!"


#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.

puts "You must guess a number between 1 and 10 and you will only have 3 tries to do so."

#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
secret_number = 4.to_i

puts "Ok, guess!"

3.times do |try|
	#	 - 	Ask the user for their guess.
	player_guess = gets.chomp.to_i 
		if player_guess.to_i == secret_number.to_i
			then puts "CONGRATS YOU GOT IT"
			else puts "Try again!"
			end
		end



#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################




