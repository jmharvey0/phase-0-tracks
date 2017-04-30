#RELEASE 0
#takes an array of integers
# takes an integer to search for
#returns the index of the item, or nil if no item

# starting_array = [1, 3, 5, 7, 9]

# def search_array(starting_array, value) 
# 	index = 0
# 	starting_array.each do |item|	
# 		return index if item == value
# 		index = index + 1
# 		end
# 		nil 
# end

# p search_array(starting_array, 10)
# #should return nil
# p search_array(starting_array, 3)
# #should return 1

#RELEASE 1
# method takes in a # of fib terms to generate

# start with 0 and 1 in array

def fib_arr(terms_to_generate)
	count = 0
	starting_fib_arr = [0, 1]
	new_fib = []
	until count == terms_to_generate - 2
	# take the sum of the two values
		new_fib = starting_fib_arr[-1] + starting_fib_arr[-2]
	# enter that number in a new spot of a third value
		starting_fib_arr << new_fib
		count +=1
	end 
	starting_fib_arr
end

p fib_arr(5)

p fib_arr(100) 