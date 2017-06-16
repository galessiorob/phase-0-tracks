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

santa = Santa.new('f','latino')
santa.reindeer_ranking

# Santa.new.speak

# Santa.new.eat_milk_and_cookies("snickerdoodle")

