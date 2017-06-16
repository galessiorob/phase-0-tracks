class Santa
  attr_reader :reindeer_ranking
  attr_accessor :age, :gender, :ethnicity

 def initialize(gender,ethnicity)
     "Initializing Santa instance ..."
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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at=(bad_reindeer)
    @reindeer_ranking.delete(bad_reindeer)
    @reindeer_ranking.push(bad_reindeer)
  end

end

#Santa Maker

def santa_maker(num_of_santas)

example_gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicity = ['Greek','Grenadian','Guatemalan','Guinea-Bissauan','Guinean','Guyanese','Haitian','Herzegovinian','Honduran','Hungarian','I-Kiribati','Icelander','Indian','Indonesian','Iranian','Iraqi','Irish','Israeli']

num_of_santas.times do
  new_santa = Santa.new(example_gender.sample,example_ethnicity.sample)
  new_santa_age = new_santa.age = rand(0..141) + 0
  puts "This Santa is a #{new_santa.age} year old #{new_santa.gender} #{new_santa.ethnicity} "
end
end

#==============================================
#Driving code

santas = santa_maker(100)

#Attribute changing methods
# santa = Santa.new('female','latino')
# p "This Santa is a #{santa.gender} #{santa.ethnicity}"

# santa.celebrate_birthday
# p "New age for santa is #{santa.age}"

# santa.get_mad_at = 'Vixen'
# p 'This is the current raking of his favorite reindeers'
# puts santa.reindeer_ranking

# santa.gender = 'fluid'
# p "New gender for santa is #{santa.gender}"


#==============================================
#Previous code

#Class tests
#Santa.new('f','latino')
# Santa.new.speak
# Santa.new.eat_milk_and_cookies("snickerdoodle")

#Getter methods
#   def age
#     @age
#   end

#   def ethnicity
#     @ethnicity
#   end

#   def reindeer_ranking
#     @reindeer_ranking
#   end

#   def gender
#     @gender
#   end

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