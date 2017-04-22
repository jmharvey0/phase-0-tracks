puts "What is your name?"
c_name = gets.chomp

puts "How old are you?"
c_age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i
if birth_year + c_age == 2016 || 2017 
	age = true
else
	age = false
end 

puts "Our company cafeteria serves garlic bread. Do you want us to order you some? (y/n)"
garlic_bread = gets.chomp 
if garlic_bread == "Yes" || garlic_bread == "yes" || garlic_bread == "y" || garlic_bread == "Y"
	garlic_bread = true
else
	garlic_bread = false
end 

puts "Would you like to enroll in the company’s health insurance plan? (y/n)"
insurance = gets.chomp
if insurance == "Yes" || insurance == "yes" || insurance == "y" || insurance == "Y"
	insurance = true
else
	insurance = false
end 

#if age is correct && (garlic bread = yes || insurance = yes) 
#puts "Probably not vampire"
if age == true && (garlic_bread == true || insurance == true)
	puts "Probably not a vampire."

#if age is wrong && (hates garlic || insurance = no) 
# puts "Probably a vampire"
elsif age == false && (garlic_bread == false || insurance == false)
	puts "Probably a vampire"

# if age is wrong && hates garlic && no insurance
# puts "Almost certainly a vampire"
elsif age == false && garlic_bread == false && insurance == false
	puts "Almost certainly a vampire"

# If c_name == "Drake Cula" || c_name == "Tu Fang"
# puts "Definitely a vampire."
elsif c_name == "Drake Cula" || c_name == "drake cula" || c_name == "Tu Fang" || c_name == "tu fang"
	puts "Definitely a vampire!!!!!!!!!"

# else puts "Results inconclusive."
else
	puts "Results inconclusive."
end 