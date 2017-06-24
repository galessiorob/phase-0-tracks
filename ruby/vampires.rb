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
    @name
    @age
    @year
    @current_year = Time.new.year
    @age_check
    @garlic_bread
    @insurance
    @is_vampire = false
  end

  def user_info
    puts "What's your name?"
    @name = gets.chomp

    puts "How old are you? in years"
    @age = (gets.chomp).to_i

    puts "What year where you born? In number"
    @year = (gets.chomp).to_i

    if (@current_year - @age == @year ) || (@current_year - (@age + 1) == @year)
      p @age_check = true
    else
      p @age_check = false
    end

    puts "Our company cafeteria serves garlic bread. Should we order some for you? Answer 'Y' or 'N'"
    @garlic_bread = nil
    until ['n','y','Y','N'].include? @garlic_bread do
        puts "Please use 'Y' or 'N'"
        @garlic_bread = (gets.chomp).downcase
    end

    puts "Would you like to enroll in the company’s health insurance? Answer 'Y' or 'N'"
    @insurance = nil
    until ['n','y','Y','N'].include? @insurance do
        puts "Please use 'Y' or 'N'"
        @insurance = (gets.chomp).downcase
    end


  end

end


#==================================================

vampire = Vampires.new
vampire.user_info
