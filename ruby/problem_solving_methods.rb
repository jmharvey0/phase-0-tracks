#Search array
#variable = [45,67,89,45,67]
#def a method to search the array

def search_array (variable,def_num)
	position = nil
	index = 0
#walk the array looking for a given Number
#If we find it return the index position of it
#If not then return nil

	while index < variable.length
		if def_num == variable [index]
 
 		 position = index

    	end

 		index += 1

 	end

return position
end

#Fib Method
#Generate an array of a Fibonacci sequence to a specificied length.
#Works for very long sequences as well

#fib_array = [0,1, (fib_array[index-2] + fib_array[index-1]), ... ]

def fib (length)
	index = 0
	fib_array = Array.new(length)
	while index < fib_array.length
		if index <= 1
			fib_array[index] = index
		else
			fib_array[index] = (fib_array[index-2] + fib_array[index-1])
		end
		index += 1
	end
	return fib_array
end


#Bubble sorting
#1. [6,2,3,5,8,9]
#2. [2,6,3,5,8,9]
#3. [2,3,6,5,8,9]
#4. [2,3,5,6,8,9]
#5. [2,3,5,6,8,9]


#Bubble Sorting Method
#[6,2,3,5,8,9] take an array
#walk through array
# => compare index 0 and 1
# => if 0 > 1 then we swap those values
#repeat for each element until the array is sorted

arry = [6,2,3,5,8,9]

def bubble_sort(arry)
	index = 1
	begin
		while index < arry.length
			swap = false
			if arry[index-1] > arry[index]
				num = arry[index-1]
				arry[index-1]=arry[index]
				arry[index]=num
				swap = true
			end
			index += 1
		end
	end while swap == true
	return arry
end
