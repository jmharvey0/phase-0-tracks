#ToDo 
#finish methods puesdocode
#finish methods ruby code

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
# input: List and an item from it
# steps:
	#find item
	#remove the item
# output:list

def remove_from_list(list, item)
	list.delete_if{|key, value| key == item}
	return list
end

# Method to update the quantity of an item
# input:list, item and updated quantity
# steps:
	#find the item
	#update the value for the item
# output:list

def update_quantity(list, item, quantity)
	add_to_list(list, item, quantity)

	return list
end

# Method to print a list and make it look pretty
# input:list
# steps:
# => key : value
	#print the key + : + value
# output: pretty list

def print_list(list)
	list.each do |item, quantity|
		p "#{item} : #{quantity}" 
	end
end

#DIVER CODE-------------------------------------------------------------------------------------------------

list = create_list("carrots apples cereal pizza")

p list

add_to_list(list, "banana")

p list

add_to_list(list, "squash", 5)

p list

remove_from_list(list, "squash")

print_list(list)

update_quantity(list, "carrots", 4)

print_list(list)