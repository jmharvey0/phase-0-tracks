class Puppy
    def initialize
      puts "Initializing new puppy instance ..."
    end
    def fetch(toy)
      puts "I brought back the #{toy}!"
      toy
    end
    def speak(int)
      int.times do |a|
      puts "woof"
      end
    end
    def roll_over
      puts "*rolls over*"
    end
    def dog_years(age)
      dogyears = age * 7
      p dogyears 
    end
    def sit_basic
      puts "sitting"
    end
end
#DRIVER CODE------------------------------------------------
spot = Puppy.new
spot.fetch("ball")
spot.speak(3)
spot.roll_over
spot.dog_years(5)
spot.sit_basic
#NEW CLASS-------------------------------------------------------------
class Football
  def initialize
      puts "Initializing new Football instance ..."
    end
    def charge
      puts "took player down!"
    end
    def pass
      puts "hail mary!"
      puts "touch down"
    end
  end
  #DRIVER CODE---------------------------------------------------------------
#team = Football.new
# team.tackle
# team.pass
# team = Array.new(50, Football.new)
team = Array.new
 50.times do |x|
  
  team[x] = x 
end
p team.class
# team = Football.new
team.each do |x|
  team[x] = Football.new
   team[x].charge
   team[x].pass
 end