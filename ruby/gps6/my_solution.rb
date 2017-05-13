# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  #attr_accessor :population_density, :state 

#initializes important variables
 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#arguments are population density, population, and state. It feeds these into two existing methods, predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
#takes in population density, population and state. returns a tiered predicted deaths number, based on a multiple of population.
  def predicted_deaths
    # predicted deaths is solely based on population density
    @population_density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#speed of spread is tiered based off of population density, and it returns a speed increment in inverse relationship to population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

state = {}
 STATE_DATA.each do |state_name, pop_info|
   state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density],STATE_DATA[state_name][:population])
    state.virus_effects
  end



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Reflection Section
Contact GitHub API Training Shop Blog About
#=======================================================================
#the hash syntax with "string" => value stores a different string of data every time, so it's more memory intensive. the hash syntax with symbols (symbolkey: value) stores each symbol once, so it's more efficient.
#require_relative looks within the existing the directory for the file name. require looks throughout the entire computer for the file name, which means you need to show the entire path to get to the file when calling it, rather than showing the file name only.
#you can iterate through a hash with a do |key, value|
# private - all methods that follow the word 'private' will be made private; i.e. they are not accessible for outside objects
#=======================================================================
