class Santa
	def initialize
		p "initializing Santa instance..."
	end
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}"
	end
end

#DRIVERCODE--------------------------------------------------------
hohochicho = Santa.new

hohochicho.speak
hohochicho.eat_milk_and_cookies("snickerdoodle")