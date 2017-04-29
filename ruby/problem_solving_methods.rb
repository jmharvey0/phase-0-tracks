#RELEASE 0
#takes an array of integers
# takes an integer to search for
#returns the index of the item, or nil if no item

starting_array = [1, 3, 5, 7, 9]

def search_array(starting_array, value) 
	index = 0
	starting_array.each do |item|	
		return index if item == value
		index = index + 1
		end
		nil 
end

p search_array(starting_array, 10)
#should return nil
p search_array(starting_array, 3)
#should return 1