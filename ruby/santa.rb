class Santa
	def initialize(gender, ethnicity, hometown)
		# puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@hometown = hometown
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Santa's gender is #{gender}."
		puts "Santa's ethnicity is #{ethnicity}."
		puts "Santa is from #{hometown}."
	end

	def speak(words)
		puts "#{words}"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	#getter methods - make public data available outside class
	def age
		@age
	end

	def location
		@location
	end
end

# santa = Santa.new
# santa.speak("Ho, ho, ho! Haaaappy holidays!")
# santa.eat_milk_and_cookies("oatmeal")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_hometown = ["Cincinnati", "Nottingham", "London", "Atlanta", "Boston", "San Francisco", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], example_hometown[i])
end



# def celebrate_birthday=(new.age)
# 	@age = age + 1
# end

# def get_mad_at=(new.reindeer_ranking)
# 	@reindeer_ranking
# end 






