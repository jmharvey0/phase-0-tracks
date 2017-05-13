# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # divide the string into an array with each item as the key
  # set default quantity as a value
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create(groceries)
	g_list_arr = groceries.split(" ")
	quantity = [1, 1, 1, 1]
	p [g_list_arr, quantity].transpose.to_h
end

groceries = "carrots apples cereal pizza"
create(groceries)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	#locate list array
	#push new item
	#push new quantity (optional)
	#print hash with updated values
# output: hash with more, updated quantities

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