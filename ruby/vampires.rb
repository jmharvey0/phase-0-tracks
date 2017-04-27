#Vampire-Detection

def detection(vampName, age, birthYear, garlicBread, insurance)

	if age.to_i == (2017 - birthYear.to_i) && (garlicBread || insurance)
			vampireDetection = "Probably not a vampire"
	elsif age.to_i != (2017 - birthYear.to_i) && (!garlicBread || !insurance)
			vampireDetection = "Proabably a vampire"
	elsif age.to_i != (2017 - birthYear.to_i) && !garlicBread && !insurance
			vampireDetection = "Almost certainly a vampire"
	else
		vampireDetection = "Inconclusive"
	end

	if vampName == "Drake Cula" || "Tu Fang"
		vampireDetection = "Definitely a vampire"
	else
		break
	end
	return vampireDetection
end

puts "How many Employees will be processed in today's survey?"
vampNum = gets.chomp.to_i

for i in 1..vampNum
	puts "Processing Employee #{i} out of #{vampNum}"
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
	garlicBread = gets.chomp.to_s
	#Would you like to enroll in Health insurance?
	puts "Would you like to enroll in the company’s health insurance? (Y/N)"
	insurance = gets.chomp.to_s

	vampireDetection = detection(vampName, age, birthYear, garlicBread, insurance)

	puts "Results: #{vampireDetection}" 
end