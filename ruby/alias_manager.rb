real_name = ""

def crazy_alias(real_name)
	#SWAPPING FIRST AND LAST
	divided_name = real_name.split(' ')
	# swap name order
	f_l_reverse = [ divided_name[1], divided_name[0] ]
	#divide into component letters
	f_l_reverse_str = f_l_reverse[0].downcase + " " + f_l_reverse[1].downcase
	#separate values and store them in an array
	f_l_reverse_arr = f_l_reverse_str.chars 
	#loop through letters & change as you go
	f_l_reverse_arr.map! do |special_changes|
		#define vowels vs consonants
		vowels = ["a", "e", "i", "o", "u"]
		consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
		#what to do for values
		if vowels.include?(special_changes)
			vowels.rotate(1)[vowels.index(special_changes)]
		#what to do for consonants
		elsif consonants.include? (special_changes)
			consonants.rotate(1)[consonants.index(special_changes)]
		else
			special_changes
		end		
	end
	#use join to make array into words on a string
	agent_alias = f_l_reverse_arr.join
	puts "Your crazy agent alias is #{agent_alias}."
	return agent_alias
end

real_names_list = []
alias_names_list = []

until real_name == "quit"
	puts "Enter a first and last name, and we'll return your crazy agent alias! (If you're sick of this game, just say 'quit')"
	real_name = gets.chomp
	if real_name.include?(" ")
		real_names_list << real_name
		crazy_alias(real_name)
		alias_names_list << crazy_alias(real_name)
	end
end

p real_names_list
p alias_names_list





#swap first and last name
#create new empty arrays for swapped_first and swapped_last
# fill in old data from existing list and use new arrays moving forward
#create fake name