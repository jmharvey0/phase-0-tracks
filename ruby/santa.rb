class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity, age)
		# puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		# @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
		# puts "Santa's gender is #{gender}."
		# puts "Santa's ethnicity is #{ethnicity}."
		# puts "Santa is from #{hometown}."
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

	def celebrate_birthday
	@age +=1
	end

	def get_mad_at(reindeer_name)
		if @reindeer_ranking.include? reindeer_name
			@reindeer_ranking.delete(reindeer_name)
			@reindeer_ranking.push(reindeer_name)
		end
	end
end

# santa = Santa.new
# santa.speak("Ho, ho, ho! Haaaappy holidays!")
# santa.eat_milk_and_cookies("oatmeal")
# p santa.get_mad_at("Dasher")

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
example_ages = (0..140).to_a
	200.times do |i|
	rand_gender = example_genders.sample
	rand_ethnicity = example_ethnicities.sample
	rand_age = example_ages.sample
	  santas << Santa.new(rand_gender, rand_ethnicity, rand_age)
	end
p santas
