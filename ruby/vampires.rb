#Week 4 Control Flow Practice
#Interview with the Vampire

#Pseudocode
#Input: Employee to answer following questions:
#       -What's you name?
#       -How old are you?
#       -What year were you born?
#       -Our company cafeteria serves garlic bread. #       Should we order some for you?
#       -Would you like to enroll in the company’s  health insurance?
#Steps:
#Output:


#=================================================

class Vampires

  def initialize
    @name = name
    @age = age
    @year = year
    @garlic_bread = garlic_bread
    @insurance = insurance
    @is_vampire = false
  end

  def user_info(name, age, year, garlic_bread, insurance)
    puts "What's your name?"
    @name = gets.chomp
    puts "How old are you? in years"
    @age = (gets.chomp).to_i
    puts "What year where you born? In number"
    @year = (gets.chomp).to_i
    puts "Our company cafeteria serves garlic bread. Should we order some for you? Aswer 'Y' or 'N'"
    @garlic_bread = (gets.chomp)
  end

end

