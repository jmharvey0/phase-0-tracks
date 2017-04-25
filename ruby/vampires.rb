puts "How many employees do you wish to process?"
e_to_process = gets.chomp.to_i 


until e_to_process == 0

  puts "What is your name?"
  c_name = gets.chomp

  puts "How old are you?"
  c_age = gets.chomp.to_i

  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  if birth_year + c_age == 2016 || birth_year + c_age == 2017 
	  age = true
	  #puts "age is true"
  else
	  age = false
	  #puts "age is false"
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

#RELEASE 4 ATTEMPT
	puts "List your allergies (say 'done' when you're finished)."
	
# 	allergies = []
	allergy = ""
# 	need to collect their allergies until they say sunshine or done
  until allergy == "done" || allergy == "sunshine"
    allergy = gets.chomp
    # allergies.push(allergy)     allergies << allergy
  end
  
  # if they are allergic to sunshine, they are probably a vampire
  
  if allergy == "sunshine"
    puts "Probably a vampire"
    break
  end

# 	allergy = [gets] 
# 	array << allergy 
# 	case 
# 		when allergy.include?; "sunshine"
# 			puts "Probably a vampire."
# 		when allergy.include?; "done"
# 			puts "Thanks for the information!"	
# 	end 

  case 
  when c_name == "Drake Cula" || c_name == "drake cula" || c_name == "Tu Fang" || c_name == "tu fang"
	  puts "Definitely a vampire!!!!!!!!!"
  when age == true && (garlic_bread == true || insurance == true)
	  puts "Probably not a vampire."
  when age == false && garlic_bread == false && insurance == false
	  puts "Almost certainly a vampire"
  when age == false && (garlic_bread == false || insurance == false)
	  puts "Probably a vampire"
  else
	  puts "Results inconclusive."
  end 

  e_to_process = e_to_process - 1
end 
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
