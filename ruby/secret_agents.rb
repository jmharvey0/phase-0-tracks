#ENCRYPT
#input-> "abc"
#Return string is 1 character greater than the input For each character
# *Exception, Spaces remain unchanged*
#output -> "bcd"

def encrypt(pass)
	index = 0
	while index < pass.length
		# .ord gives you the ASCII Char code, and 122 is the char code for "z"
		if pass[index].ord == 122 #This is for in case of End case problem ("z".next = "aa")
			pass[index] = "a"
		elsif pass[index].ord == 32
			index += 1
			continue
		else
			pass[index] = pass[index].next
		end
		index += 1
	end
	puts pass #for testing
	return pass #Increases the scope of the Pass var for the decrypt(encrypt("swordfish")) case
end

#DECRYPT
#input -> "bcd"
#Return string is 1 character less than the input For each character
# *Exception, Spaces remain unchanged*
#output -> "abc"

def decrypt(pass)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	while index < pass.length
		#Gets the index number of the letter we want
		decryptNum = alphabet.index(pass[index]) - 1
		#Decrypts the password
		pass[index] = alphabet[decryptNum]
		index += 1
	end
	puts pass #for testing
	return pass
end

#USER INTERFACE
#Ask user whether they want to encrypt or decrypt
#Ask for password
#Encrypt or Decrypt the password
#Print out the result

puts "Welcome Agent\nWould you like to Encrypt or Decrypt a Password today?\nType 1 for Encryption\nType 2 for Decrypt"
agentChoice = gets.chomp
	while agentChoice > 2 or agentChoice < 1
		puts "Please enter 1 for Encrypt or 2 for Decrypt"
		agentChoice = gets.chomp
	end
puts "Password:"
pass = gets.chomp