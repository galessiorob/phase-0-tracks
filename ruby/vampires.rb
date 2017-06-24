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
#Using *true* evaluations for VAMPIRES and *false* for non-vampire behaviors, aka getting age right evaluates to false for non-vampires
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
      p @age_check = false
    else
      p @age_check = true
    end

    puts "Our company cafeteria serves garlic bread. Should we order some for you? Answer 'Y' or 'N'"
    @garlic_bread = nil
    until ['n','y','Y','N'].include? @garlic_bread do
        puts "Please use 'Y' or 'N'"
        @garlic_bread = (gets.chomp).downcase
    end
    if ['n','N'].include? @garlic_bread
      p @garlic_check = true
    else
      p @garlic_check = false
    end

    puts "Would you like to enroll in the company’s health insurance? Answer 'Y' or 'N'"
    @insurance = nil
    until ['n','y','Y','N'].include? @insurance do
        puts "Please use 'Y' or 'N'"
        @insurance = (gets.chomp).downcase
    end
    if ['n','N'].include? @insurance
      p @insurance_check = true
    else
      p @insurance_check = false
    end
  end

  def vampire_flow

    if ['Drake Cula','Tu Fang'].include? @name
      puts "Definitely a vampire"
    elsif @age_check && (@garlic_check || @insurance_check)
      puts "Probably not a vampire"
    elsif !@age_check && (@garlic_check || @insurance_check)
      puts "Probably a vampire"
    elsif !@age_check && (@garlic_check && @insurance_check)
      puts "Almost certainly a vampire"
    else
      puts "Results inconclusive"
    end

  end

end


#==================================================

puts "How many employees do you want to process?"
employees = gets.chomp.to_i

i = 0
until i == employees
  puts "Processing employee #{i+1}"
  vampire = Vampires.new
  vampire.user_info
  vampire.vampire_flow
  i+=1
end


# vampire = Vampires.new
# vampire.user_info
# vampire.vampire_flow
