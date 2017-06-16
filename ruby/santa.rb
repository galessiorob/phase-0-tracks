class Santa

 def initialize(gender,ethnicity)
    p "Initializing Santa instance ..."
    p @gender = gender
    p @ethnicity = ethnicity
    p @age = 0
  end

  def reindeer_ranking
    puts @reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    # @reindeer.index.each do
    #   p @reindeer[index]
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

end

#==============================================
#Driving code

# Santa.new.speak
# Santa.new.eat_milk_and_cookies("snickerdoodle")

#Add attributes
# santa = Santa.new('f','latino')
# santa.reindeer_ranking

#Add more instance examples
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

#Refactor code to bulk add instances
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

