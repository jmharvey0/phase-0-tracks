#RELEASE 0
#takes an array of integers
# takes an integer to search for
#returns the index of the item, or nil if no item

starting_array = [1, 3, 5, 7, 9]

def search_array(starting_array, value) 
	#asks for an input value to search
	#loop through every value in existing array
	#counter = 0
	starting_array.each do |look|	
		#counter +=1	
		if starting_array.include?(value) == true 
		puts starting_array.index
			#if value == look
			#return index
		else
			return nil 
		end
	end	
	
end 

p search_array(starting_array, 10)
#should return nil
p search_array(starting_array, 9)
#should return 1

