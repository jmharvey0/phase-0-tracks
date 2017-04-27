#Vampire-Detection

def detection(vampName, age, birthYear, garlicBread, insurance)
	if vampName == "Drake Cula" || "Tu Fang"
		vampireDetection = "Definitely a vampire"
	elsif age == (2017 - birthYear) && (garlicBread || insurance)
		vampireDetection = "Probably not a vampire"
	elsif age != (2017 - birthYear) && !(garlicBread || insurance)
		vampireDetection = "Proabably a vampire"
	elsif age != (2017 - birthYear) && !garlicBread && !insurance
		vampireDetection = "Almost certainly a vampire"
	else 		
		vampireDetection = "Inconclusive"
	end
	return vampireDetection
end

#What's your name?
puts "What's your name?"
vampName = gets.chomp
#How old are you? & What year were you born?
puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birthYear = gets.chomp
#Garlic bread
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlicBread = gets.chomp
#Would you like to enroll in Health insurance?
puts "Would you like to enroll in the company’s health insurance? (Y/N)"
insurance = gets.chomp

vampireDetection = detection(vampName, age, birthYear, garlicBread, insurance)

puts "Results: #{vampireDetection}" 