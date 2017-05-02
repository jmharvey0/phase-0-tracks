#Interior Designers database
#Collecting data for interior design clinets
#Name
# => string w/ a space
#Age
# => interger
#Number of Children
# => Interger of Children
#Kid friendly?
# => boolean
#Decor Theme
# => string


design_clinets = {}

puts "What's the clinet's Name?"
design_clinets[:name] = gets.chomp

puts "How old is the clinet?"
design_clinets[:age] = gets.chomp.to_i

puts "How many children do they have?"
design_clinets[:children_num] = gets.chomp.to_i

puts "Does their home have to be Kid Friendly? (Y/N)"
design_clinets[:kid_friendly] = gets.chomp.to_s

puts "What theme does the Clinet want for their decor?"
design_clinets[:decor_theme] = gets.chomp

p design_clinets

puts "Would you like to update any data? If so please enter the key for it."
key = gets.chomp.to_sym

case key
when key == :kid_friendly
	puts "Does their home have to be Kid Friendly? (Y/N)"
	design_clinets[:kid_friendly] = gets.chomp.to_s
when key == :age
	puts "How old is the clinet?"
	design_clinets[:age] = gets.chomp.to_i
when key == :name
	puts "What's the clinet's Name?"
	design_clinets[:name] = gets.chomp
when key == :children_num
	puts "How many children do they have?"
	design_clinets[:children_num] = gets.chomp.to_i
when key == :decor_theme
	puts "What theme does the Clinet want for their decor?"
	design_clinets[:decor_theme] = gets.chomp
else
	next
end

p design_clinets