#ask hamster's name
#ask volume level from 1-10
#ask fur color
#ask whether good adoption candidate
#ask estimated age (blank values == nil)


#use conversion to convert data to an appropriate type

#print to the console

puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What is the hamster's volume level, from 1 to 10"
volume = gets.chomp
volume.to_i

puts "What is the hamster's fur color?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption? (y/n)"
adoption_candidate = gets.chomp

puts "Estimate the hamster's age in years."
age = gets.chomp
age.to_i 

puts "The hamster's name is #{hamster_name}."
puts "The hamster's volume level is #{volume}."
puts "The hamster's fur is #{fur_color}."
puts "The hamster is about #{age} years old."
puts "Viable adoption candidate? #{adoption_candidate}."

puts "The name of the hamster is #{name}." 
puts "The volume is #{volume}."
puts "The fur color is #{color}."
puts "Viable adoption candidate? #{adoption_candidate}."
if age.empty?
	age = nil
		puts "The hamster's age is unknown"
#If customer gives a decimal, convert it to a float
else
	age.to_i
		puts "The hamster is #{age} years old"
end