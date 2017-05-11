# Guess the word Game
class Game
	attr_reader :word
	attr_reader :guesses
# Method to set word
# input: word to be guessed
# steps:
# save string into an instance variable for the game
# output:none
	def initialize(word)
		@word = word
		@num_guesses = word.length/2
		@feedback = "_" * @word.length
		p "Beginning guess the word..."
	end
	def get_word
		@word
	end
	def get_guesses
		@num_guesses
	end
	def get_feedback
		@feedback
	end

# Method to check guess
# input: word to be guessed, guessed character
# steps:
# create string same length as word to be guessed
# check if character is in the word
# place character into new string
# output:num of guesses left or new string for feedback
	def guessing(guess)
		if @word.include?(guess)
			@feedback.slice!(@word.index(guess))
			@feedback.insert(@word.index(guess), guess)
		else
			@num_guesses -= 1
		end
	end

end