#ENCRYPT
#input-> "abc"
#Return string is 1 character greater than the input For each character
# *Exception, Spaces remain unchanged*
#output -> "bcd"

def encrypt(pass)
	i = 0
	while i < pass.length
		# .ord gives you the ASCII Char code, and 122 is the char code for "z"
		if pass[i].ord == 122 #This is for in case of End case problem ("z".next = "aa")
			pass[i] = "a"
		elsif pass[i].ord == 32
			continue #this command jumps out of the if statement without doing anything
		else
			pass[i] = pass[i].next
		end
		i += 1
	end
	#puts pass #for testing
	return pass #Increases the scope of the Pass var for the decrypt(encrypt("swordfish")) case
end

#DECRYPT
#input -> "bcd"
#Return string is 1 character less than the input For each character
# *Exception, Spaces remain unchanged*
#output -> "abc"

def decrypt(pass)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	while i < pass.length
		#Gets the index number of the letter we want
		decryptNum = alphabet.index(pass[i]) - 1
		#Decrypts the password
		pass[i] = alphabet[decryptNum]
		i += 1
	end
	#puts pass #for testing
	return pass
end

#USER INTERFACE
#Ask user whether they want to encrypt or decrypt
#Ask for password
#Encrypt or Decrypt the password
#Print out the result

puts "Welcome Agent\nWould you like to Encrypt or Decrypt a Password today?\nType 1 for Encryption\nType 2 for Decrypt"
agentChoice = gets.to_i
	while agentChoice > 2 or agentChoice < 1
		puts "Please enter 1 for Encrypt or 2 for Decrypt"
		agentChoice = gets.to_i
	end
puts "Password:"
pass = gets

if agentChoice == 1
	pass = encrypt(pass)
else
	pass = decrypt(pass)
end

puts "Your password has been altered: #{pass}"