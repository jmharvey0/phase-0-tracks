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
	f_l_reverse_str = f_l_reverse[0] + " " + f_l_reverse[1]
	p f_l_reverse_str.chars #result here is an array
#loop through letters
#make vowel changes
#make consonant changes

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