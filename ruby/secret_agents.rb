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