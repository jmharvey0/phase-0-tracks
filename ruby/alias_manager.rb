#Alias Manager
#Create Alias by Swapping the First and Last name
# => Change vowels to next vowel, and consonants to next consonant
#i.e. a => e , b => c

def next_vowel (str)
	vowels = ['a', 'e', 'i', 'o', 'u']
	str = str.chars
	str.map do |char|
		if vowels.include?(char)
			vowels.rotate(1)[vowels.index(char)]
		else
			char
		end
	end
	str = str.strip!
end

def next_constonant (str)
	vowels = ['a', 'e', 'i', 'o', 'u']
	str = str.chars
	switch = false
	str.map do |char|
		if vowels.include?(char)
			char
		elsif char.ord == 122
			char = 'a'
			switch = true
		elsif char.ord == 90
			char = 'A'
			switch = true

		else
			char.next
			switch = true
		end

		while vowels.include?(char) && switch
			if char.ord == 122
				char = 'a'
			elsif char.or == 90
				char = 'A'
			else
				char.next
		end
	end
	str = str.strip!
end

def swap_names (str)
	str.split(' ')
	str.reverse!
end

