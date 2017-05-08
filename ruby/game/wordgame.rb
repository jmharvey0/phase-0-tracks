
class WordGame
	attr_reader :guess_count
	attr_reader :is_over

	def initialize(word)
		@word = word 
		@length = word.length
		@total_guesses = word.length
		@guess_count = 0
		@is_over = false
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

	def letter_check(letter)
		@guess_count +=1
		word_breaker.each do |check|
			if letter == check
				#do something
			elseif letter == THINGS THAT HAVE BEEN GUESSED BEFORE
				#do something
			else 
				#do something
			end
	end


end


#DRIVER CODE
puts "Welcome to the Word Game!"
game = WordGame.new("hello")

puts "A secret word has been chosen ;)"

#typing