# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # divide the string into an array with each item as the key
  # set default quantity as a value
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create(list_hash, groceries)
	g_list_arr = groceries.split(" ")
	p g_list_arr
	# list_hash = {}
	g_list_arr.each do |item|
		list_hash[item] = 1
	end
	# list_hash
end

list_hash = {}
groceries = "carrots apples cereal pizza"
create(list_hash, groceries)

# Method to add an item to a list
# input: item name, and optional quantity
# steps:
	#locate list hash
	#push new item as key
	#if quantity exists, push new quantity as value
	#print hash with updated values
# output: hash with more, updated quantities

def add_to_list(list, item, optional_quantity)
	if optional_quantity
		list[item] = optional_quantity
	else
		list[item] = 1
	end
	p list 
end

add_to_list(list_hash, "bananas", 3)

# Method to remove an item from the list
# input: item name
# steps: 
	#iterate through items in hash
	#find item in list that matches input item
	#remove that item and its corresponding quantity
	#print hash with updated values
# output: hash with fewer items

# Method to update the quantity of an item
# input: the name of the item, the new quantity
# steps: iterate through the keys within the has to find the item whose quantity needs to be modified
# replace the corresponding value with the new quantity
# output: hash with updated quantity at the identified key

# Method to print a list and make it look pretty
# input: list to be printed
# steps: print the list
# output: hash, printed with nice formatting