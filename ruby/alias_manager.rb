#take real name
real_name = "Felicia Torres"

def crazy_alias(real_name)
	#SWAPPING FIRST AND LAST
	divided_name = real_name.split(' ')
	#this returns ["Felicia", "Torres"]
	# p divided_name
	f_l_reverse = [ divided_name[1], divided_name[0] ]
	#p f_l_reverse
#divide into component letters
	f_l_reverse_str = f_l_reverse[0].downcase + f_l_reverse[1].downcase
	#separate values and store them in an array
	f_l_reverse_arr = f_l_reverse_str.chars 
	p f_l_reverse_arr
#loop through letters
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
		# #use .join to make array back into one word string
		# #what to do for consonants
	p f_l_reverse_arr.join


	#CHANGING ALL VOWELS TO NEXT VOWEL
	#CHANGING EVERYTHING ELSE TO NEXT CONSONANT
# real_name << name_arr
# p name_arr

# f_l_reverse = real_name[1] + real_name[0]
# p f_l_reverse
end

crazy_alias(real_name)

#swap first and last name
#create new empty arrays for swapped_first and swapped_last
# fill in old data from existing list and use new arrays moving forward
#create fake name