module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
	end
	def self.yelling_happily(words)
		words + "!" + " :D"	
	end
end

#DRIVER CODE ----------------------------------------------------
Shout.yell_angrily("Ruby")
Shout.yelling_happily("Ruby")
