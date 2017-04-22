#ENCRYPT
#input-> "abc"
#Return string is 1 character greater than the input For each character
# *Exception, Spaces remain unchanged*
#output -> "bcd"

def encrypt(pass)

	index = 0
	for index in 0..pass.length
		#if pass[index] != "z" or "Z" This is for in case of End case problem ("z".next = "aa")
			pass[index] = pass[index].next
	end
end
#DECRYPT
#input -> "bcd"
#Return string is 1 character less than the input For each character
# *Exception, Spaces remain unchanged*
#output -> "abc"