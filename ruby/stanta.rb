class Santa
	# def initialize
	# 	puts "Initializing Santa instance..."
	# end

	def speak(words)
		puts "#{words}"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
end

santa = Santa.new
santa.speak("Ho, ho, ho! Haaaappy holidays!")
santa.eat_milk_and_cookies("oatmeal")