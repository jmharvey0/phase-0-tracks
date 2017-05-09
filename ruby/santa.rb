class Santa
	def initialize(gender, ethnicity)
		p "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}"
	end
end

#DRIVERCODE--------------------------------------------------------
# hohochicho = Santa.new

# hohochicho.speak
# hohochicho.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["male", "female", "agender"]
example_ethnicities = ["black", "white", "latino", "asian", "penguin"]
example_genders.length.times do |x|
	santas << Santa.new(example_genders[x], example_ethnicities[x])
end