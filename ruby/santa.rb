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
	def celebrate_birthday
		@age += 1
	end
	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
		p @reindeer_ranking
	end
	def set_gender(new_gender)
		@gender = new_gender
	end
	def get_age
		@age
	end
	def get_ethnicity
		@ethnicity
	end
end

#DRIVERCODE--------------------------------------------------------
hohochicho = Santa.new

hohochicho.speak
hohochicho.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["male", "female", "agender"]
example_ethnicities = ["black", "white", "latino", "asian", "penguin"]
example_genders.length.times do |x|
	santas << Santa.new(example_genders[x], example_ethnicities[x])
end

hohochicho.celebrate_birthday
hohochicho.get_age
hohochicho.get_mad_at("Vixen")
hohochicho.get_ethnicity