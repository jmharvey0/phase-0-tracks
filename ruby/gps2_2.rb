
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split given list (string) into a temp container [array]
  # set default quantity to 1
  # print the list to the console (Use print method that we'll create)
# output: hash of items w/ quantities attached

def create_list(items)
	list = { }
	items.split(' ').each do |item|
		add_to_list(list, item)
	end

	p list
	#print_list #If we want a pretty list printed out. Boss we need more infos
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	#take item name (string) and put into the list {hash}
	#update quantity if other than 1
# output: updated list {hash}

def add_to_list(list, item, quantity = 1)
	list[item] = quantity

	return list
end

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

#DIVER CODE-------------------------------------------------------------------------------------------------

list = create_list("carrots apples cereal pizza")

p list

add_to_list(list, "banana")

p list

add_to_list(list, "squash", 5)

p list