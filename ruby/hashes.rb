# allow an interior designer to enter details
# c_name
# c_age
# no_children
# decor_theme
# picky t/f 

designer_response = {}
puts "Enter the client's first and last name."
designer_response[:name] = gets.chomp.to_s

p designer_response

# prompt designer for info
# convert user input to appropriate data type (use .to_s .to_i manual for boolean)
# print hash when user has answered qs
# let user update a key (once is fine) (Hint: Strings have methods that will turn them into symbols) 
# print final version of hash
# exit program