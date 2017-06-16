class Santa

 def initialize(gender,ethnicity)
    p "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end


  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

#Getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def reindeer_ranking
    @reindeer_ranking
  end

  def gender
    @gender
  end


#Setter methods
  def celebrate_birthday
    @age = 1
  end

  def get_mad_at=(bad_reindeer)
    @reindeer_ranking.delete(bad_reindeer)
    @reindeer_ranking.push(bad_reindeer)
  end

  def gender=(new_gender)
    @gender = new_gender
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
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

#Attribute changing methods
santa = Santa.new('female','latino')
p "This Santa is a #{santa.gender} #{santa.ethnicity}"

santa.celebrate_birthday
p "New age for santa is #{santa.age}"

santa.get_mad_at = 'Vixen'
p 'This is the current raking of his favorite reindeers'
puts santa.reindeer_ranking

santa.gender = 'fluid'
p "New gender for santa is #{santa.gender}"

