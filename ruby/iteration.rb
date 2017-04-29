# # def say_banana
# # 	# puts "You are a banana!"
# # 	2.times {yield}
# # end

# # say_banana {puts "Go Bananas"}

# fruits = ["pineapple", "passion fruit", "guava", "kiwi", "papaya"]

# vegetable_qualities = {ripe: "yes", fresh: "yes", color: "green"}

# p fruits

# p vegetable_qualities


# index = 0
# while index < fruits.length
# 	puts "#{fruits[index]} is a great fruit!"
# 	index += 1
# end

# # iterate through fruits array using .each

# fruits.each do |fruit| 
# 	puts "#{fruit} is a good fruit"
# end

# # iterate through fruits array using .map!
# new_fruits = ["lemon", "lime", "grapefruit", "orange", "kumquat"]

# fruits.map! do |fruit|
# 	fruit.next
# end

# # iterate through vegetable_qualities hash using .each

# vegetable_qualities.each do |quality, info|
# 	puts "#{info}, the vegetable is #{quality}!"
# end


# remember to print the data structures before and after each 


# Release 2

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

a = ["ant", "bat", "cat", "dog"]

# a.each do |item| 
# item.delete! "a"
# end
# p a

# Delete if for array
b = [1,2,3,4,5,6,7,8]

b.delete_if do |item| 
	item < 5
end
p b

#Delete if for hash
b_hash = {"a" => 100, "b" => 200, "c" => 300 }

b_hash.delete_if { |key, value| value == 200 }
p b_hash


# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
#Keep if for array
c = [1,2,3,4,5,6,7,8]

c.keep_if { |item| item < 5 }
p c 

#Keep if for hash
b_hash.keep_if { |key, value| value == 100 }
p b_hash

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

#Select for array
d = [1,2,3,4,5,6,7,8]

d.select! { |item| item.even? }
p d 

#INSERT select for hash
d_hash = {"aa" => 10, "bb" => 20, "cc" => 30, "dd" => 40 }
d_hash.select! {|k,v| k > "aa"}
p d_hash 

#remove items from a data structure until condition is FALSE, then stops
#for ARRAY
example = [13, 29, 31, 49, 5, 96, 7, 8, 9, 10]
example.sort! 
p example.drop_while {|item| item < 30 }

#for HASH - reject
d_hash = {"aa" => 10, "bb" => 20, "cc" => 30, "dd" => 40 }
p d_hash.reject {|k,v| v > 10}



