# module Shout
# 	 def self.yell_angrily(words)
# 	 	words + "!!!!" + ":("
# 	 end

# 	 def self.yelling_happily(words)
# 	 	words + "!!!!" + ":)"
# 	 end
# end

# p Shout.yell_angrily("blergggg")
# p Shout.yelling_happily("woohoo")

module Shout
	def yell(words)
	puts "#{words}!!!!!!!"
	end
end

class Kid
	include Shout
end

class Teacher
	include Shout
end

kid = Kid.new
kid.yell("I want ice cream")

teacher = Teacher.new 
teacher.yell("Do your homework")

