# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

# zombie_apocalypse_supplies.each do |thing|
# 	print "#{thing} * "
# end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

# def alphabetize(zombie_apocalypse_supplies)
# 	n = zombie_apocalypse_supplies.length
# 	zombie_apocalypse_supplies.map!(&:downcase)
# 	# zombie_apocalypse_supplies = zombie_apocalypse_supplies.downcase
# 	loop do 
# 		swapped = false
# 		(n-1).times do |a|
# 			if zombie_apocalypse_supplies[a] > zombie_apocalypse_supplies[a+1]
# 				zombie_apocalypse_supplies[a], zombie_apocalypse_supplies[a+1] = zombie_apocalypse_supplies[a+1], zombie_apocalypse_supplies[a]
# 				swapped = true
# 			end
# 		end
# 	break if not swapped
# 	end
# zombie_apocalypse_supplies
# end

# p alphabetize(zombie_apocalypse_supplies)


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

#ASK FOR HELP HERE!
# def search(item)
# 	zombie_apocalypse_supplies.each do |i|
# 		if zombie_apocalypse_supplies[i].include? item 
# 		puts "Yes, #{item} is among the supplies!"
# 		else
# 		puts "No, #{item} is not on the supplies list."
# 		end
# 	end
# end

# search ("compass")


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

#ASK FOR HELP HERE
# def making_room(zombie_apocalypse_supplies)
# 	zombie_apocalypse_fit = []
# 	zombie_apocalypse_supplies = zombie_apocalypse_supplies - zombie_apocalypse_supplies[-1]
# 	zombie_apocalypse_supplies << zombie_apocalypse_fit 
# 	p zombie_apocalypse_fit
# end

# p zombie_apocalypse_supplies


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
#                             "solar battery", "flashlight"]

#  combined_supplies = zombie_apocalypse_supplies + other_survivor_supplies
#  combined_supplies = combined_supplies.uniq
#  p combined_supplies

# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----


# def writing_out {|animal, year_ext| puts "#{animal} - #{year_ext} * "}
# p writing_out

def writing_out(extinct_animals)
extinct_animals.each do |animal, year_ext|
	puts "#{animal} - #{year_ext} * "
	end
end

print writing_out(extinct_animals)


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
