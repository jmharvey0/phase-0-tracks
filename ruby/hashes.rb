# allow an interior designer to enter details

designer_response = {}
puts "Enter the client's first and last name."
designer_response[:name] = gets.chomp.to_s

puts "Enter the client's age."
designer_response[:age] = gets.chomp.to_i

puts "Enter the number of children the client has."
designer_response[:no_children] = gets.chomp.to_i

puts "Enter the client's desired decor theme."
designer_response[:decor_theme] = gets.chomp.to_s

puts "Is this client picky AF? (y/n)"
designer_response[:picky] = gets.chomp
	if :picky == "yes" || :picky == "y"
		true
	else
		false
	end 

p designer_response

puts "Do you need to update any information? (y/n)"
	update = gets.chomp.to_s
	if update == "yes" || update == "y"
		puts "Type the name of the key you wish to update."
		key_change = gets.chomp.to_s
			if key_change == "name"
				puts "Enter your correction for name."
					designer_response[:name] = gets.chomp.to_s
			elsif key_change == "age"
				puts "Enter your correction for age."
				designer_response[:age] = gets.chomp.to_i
			elsif key_change == "no_children"
				puts "Enter your correction for number of children."
				designer_response[:no_children] = gets.chomp.to_i
			elsif key_change == "decor_theme"
				puts "Enter your correction for decor theme."
				designer_response[:decor_theme] = gets.chomp.to_s
			elsif key_change == "picky"
				puts "Enter your correction: Is the client picky AF?"
				designer_response[:picky] = gets.chomp
					if :picky == "yes" || :picky == "y"
						true
					else
						false
					end 
			else
				puts "Sorry--I don't understand. Please type the exact name of the key you wish to update."
				#loop to above the key_change // gets.chomp line				
			end
		p designer_response
	else
		exit
	end 


# let user update a key (once is fine) (Hint: Strings have methods that will turn them into symbols) 
# print final version of hash
# exit program