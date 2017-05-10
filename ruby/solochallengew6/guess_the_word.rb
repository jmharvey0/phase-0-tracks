# Guess the word Game
class Game
	attr_reader :word
	attr_writer :guesses
# Method to set word
# input: word to be guessed
# steps:
# save string into an instance variable for the game
# output:none
	def initialize(word)
		@word = word
		@num_guesses = word.length/2
		p "Beginning guess the word..."
	end
	def get_word
		@word
	end

# Method to check guess
# input: word to be guessed, guessed character
# steps:
# create string same length as word to be guessed
# check if character is in the word
# place character into new string
# output: new string showing blanks for unguessed letters
	def guessing(guess)
		feedback = "_" * @word.length
		until @num_guesses < 1
			if @word.include?(guess)
				feedback.insert(@word.index(guess), guess)
			else
				@num_guesses -= 1
			end
			p "#{feedback}/nYou have #{@num_guesses} remaining"
		end
	end

end