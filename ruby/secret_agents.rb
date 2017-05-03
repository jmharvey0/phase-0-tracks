# ENCRYPT METHOD
# ask for a string
# loop through the letters of the string
# access individual letters of string
# transform individual letters to 1-letter later
# print our new letters

# puts "The total string length is #{string_input.length}"
# puts "The index length is #{string_input.length - 1}"

def encrypt(string_method)
  index = 0
  while index < string_method.length
    if string_method[index].include? "z"
      # make "z" into "a"
      string_method[index] = "a"
    else
      string_method[index] = string_method[index].next
    end
    index += 1
  end
  return string_method
end

# encrypt_string = encrypt(string_input)
# puts encrypt_string
# puts string_input + " now you see me"

# define decrypt method
# set the index as zero
# loop through letters of string
# access individual letters
# find out where they are in alphabet
# move individual letters back to original
# print our new letters

def decrypt(string_method)
  index = 0
  while index < string_method.length
    # 0: define the alphabet
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    # 1a: find encrypted letters in alphabet
    # 1b: want c to be index 2 in alphabet
    # 1c: want index 2 to be index 1 in alphabet (using minus 1)
    string_method[index] = alphabet[alphabet.index(string_method[index]) - 1]
    # 1d: want to print index 1
    # 2: apply a "minus-1"
    # 3: print decrypted string
    index += 1
  end
  return string_method
end

# 1: ask secret agent if they would like to encrypt or
#    decrypt a password
# 2: ask for a password
# 3: conduct the operation (encrypt or decrypt)
# 4: print the result to the screen
# 5: exit the program

# while purpose is unable to choose, loop ask the question again
purpose = ""
puts "Would you like to encrypt or decrypt a password?"
purpose = gets.chomp
until purpose == "encrypt" || purpose == "decrypt"
  puts "Invalid response: Would you like to encrypt or decrypt a password?"
  purpose = gets.chomp
end

puts "Enter a password: "
string_input = gets.chomp

if purpose == "encrypt"
  puts encrypt(string_input)
elsif purpose == "decrypt"
  puts decrypt(string_input)
end

# decrypt(string_input)
# puts string_input
# puts decrypt(encrypt("swordfish"))

# Dear future agents,
# The nested method works because we have been careful
# about appropriately choosing global and local variables
# and they are all strings that can talk to each other.