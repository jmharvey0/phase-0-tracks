class Santa
	attr_reader :age, :location
	attr_accessor :gender 

	def initialize(gender, ethnicity)
		# puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Santa's gender is #{gender}."
		puts "Santa's ethnicity is #{ethnicity}."
	end

	def speak(words)
		puts "#{words}"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		if @reindeer_ranking.include?(reindeer_name)
			@reindeer_ranking.delete(reindeer_name)
			@reindeer_ranking.push(reindeer_name)
			p @reindeer_ranking
		end
	end 

	# def gender=(apple)
	# 	@gender = apple
	# end
end

santa = Santa.new("female", "white")
santa.speak("Ho, ho, ho! Haaaappy holidays!")
santa.eat_milk_and_cookies("oatmeal")
santa.get_mad_at("Dasher")
# new_gender = santa.gender=("animal")


# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# p santa.celebrate_birthday

puts "Santa is now #{santa.celebrate_birthday} years old!"
puts "Santa's gender is #{santa.gender=("bandaid")}"
# puts "Santa is made at #{santas.get_mad_at("Vixen")}"

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_hometown = ["Cincinnati", "Nottingham", "London", "Atlanta", "Boston", "San Francisco", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i], example_hometown[i])
# end








