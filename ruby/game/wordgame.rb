
class WordGame
	# attr_reader :guess_count
	# attr_reader :is_over

	def initialize(word)
		@word = word 
		@length = word.length
		@guesses = word.length
	end

	def get_word
		return @word
		#output is "hello"
	end 

	def word_breaker
		@word = @word[0].split(//) 
		#output is ["h", "e", "l", "l", "o"]
	end

	def letter_slots
		letter_slots = "_ " * @length
	end

	def letter_slot_breaker
		letter_slot_breaker = letter_slots.split(" ")
	end

end

#TESTING
game = WordGame.new("hello")
p game.letter_slot_breaker

#DRIVER CODE