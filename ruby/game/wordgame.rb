
class WordGame
	# attr_reader :guess_count
	# attr_reader :is_over

	def initialize(word)
		@word = word 
		# @guess_number = 0
		# @is_correct = false
		# @is_over = false
	end

	def get_word
		return @word
		#output is "hello"
	end 

	def word_breaker
		@word = @word[0].split(//) 
		#output is ["h", "e", "l", "l", "o"]
	end

	def space_writer
		space_maker = “_ “ * @word.length
		space_writer = []
		space_writer << space_maker
		return space_writer
	end
end



# def total_guesses
# 	total_guesses = @word.length
# end

# def check_letter(index)
# 	puts “Take a guess!”
# 	user_guess = gets.chomp
# 	stored_guesses << user_guess
# 	@guess_count +=1
# 		if word[index] == user_guess
# 			@is_correct = true
# 		else
# 			false
# 		end
# 	end

# =====
# word is passed into method in driver code
# guess should be initialized at 1

# method should count the number of letters in the word using .length
# use should see “_ “ * word.length
# user should see “you have #{word.length} guesses to figure out the word! This is guess number #{guess_number}”


# word <—string // array
# guess_number (make sure to remove duplicates) <—integer
# stored_guesses <—array
# is_over <—boolean