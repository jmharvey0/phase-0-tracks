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

#RELEASE 2
# Bubble sort

#take an array
arr_to_bub = [9, 300, 2, 4, 19, 80]

def bubble_sort(arr_to_bub)
n = arr_to_bub.length 
loop do 
	swapped = false 

	(n-1).times do |i|
		# compare each value with the one following it
		if arr_to_bub[i] > arr_to_bub[i+1]
			# if value following is lower swap the values
			arr_to_bub[i], arr_to_bub[i+1] = arr_to_bub[i+1], arr_to_bub[i]
			#^do we need to store this value or make it permanent somehow?
			#i would have expected a ! or a return
		swapped = true
		# continue loop until array is in correct order (no swaps are made)
		end
	end
	# when no swaps are made, break
	break if not swapped
	end	
arr_to_bub
end

p bubble_sort(arr_to_bub)

