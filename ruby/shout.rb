# module Shout
# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(words)
# 		words + "!" + " :D"	
# 	end
# end

module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
	end
	def yelling_happily(words)
		words + "!" + " :D"	
	end
end

class Coach
	include Shout
end

class Father
	include Shout
end
#DRIVER CODE ----------------------------------------------------
Shout.yell_angrily("Ruby")
Shout.yelling_happily("Ruby")

dave = Coach.new
kevin = Father.new

dave.yell_angrily("Come on")
kevin.yell_angrily("Get off the Couch")