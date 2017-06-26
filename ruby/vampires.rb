#Week 4 Control Flow Practice
#Interview with the Vampire

#Refactored code, original included at the end

#Pseudocode
#Input: Employee to answer following questions:
#       -What's you name? Store name
#       -How old are you? Store age
#       -What year were you born? Store year
#       -Our company cafeteria serves garlic bread. #       Should we order some for you? Store Y or N
#       -Would you like to enroll in the company’s  health insurance? Store Y or N
#       -Name allergies: Store allergies
#Steps: Run input through checking algorithm
# If user is in vampire database, then user is a vampire
# Compare age and year inputs
# Compare garlic and insurance check
# Compare allergies to see if it includes sunshine
#Output: Possibilities
# => Definitely a vampire
# => Probably a vampire
# => Probably not a vampire
# => Almost certainly a vampire
# => Results inconclusive

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
    @allergies = []
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

    puts "Please name your allergies, one at a time and type 'done' when finished:"
    @user_allergy = nil
    @sunshine_check = false

      until @user_allergy == 'done'
        @user_allergy = (gets.chomp).downcase
        @allergies << @user_allergy
        if @allergies.include? "sunshine"
          @sunshine_check = true
          break
        else
        end
    end
  end

  def vampire_flow

    if ['Drake Cula','Tu Fang'].include? @name
      puts "Definitely a vampire"
    elsif @sunshine_check
      puts "Probably a vampire"
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

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."







#===================================================
#Original code

#Pseudocode
# # Ask user what his name is and store in variable
# #   If user is in vampire database, then user is a vampire
# # Ask user for age and store in variable
# # Ask user for birth year
# # Compare age and year inputs
# #   If they add up
# #     Carry on to next question
# #   Else
# #     Probably a vampire
# # Ask if user would like some garlic bread
# #   If user refuses
# #     Probably a vampire
# #   Else
# #     Carry on to next question
# # Ask user if they'd like to enroll in health insurance
# #   If yes
# #     Carry on to next question
# #   Else
# #     Probably a vampire

# #==========================================
# #Test Variables
# wolves_like_sunshine = true
# wolves_like_garlic = true
# vampires_like_sunshine = false
# vampires_like_garlic = false

# #Variable tests
# # p wolves_like_garlic && wolves_like_sunshine
# # #true
# # p wolves_like_garlic || vampires_like_garlic
# # #true
# # p wolves_like_garlic && vampires_like_garlic
# # #false
# # p wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
# # #false
# # p (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
# # #true
# # p vampires_like_garlic
# # #false
# # p !vampires_like_garlic
# # #true
# # p !(wolves_like_sunshine && wolves_like_garlic)
# # #false

# #=========================================
# #Program Variables
# username = []
# age = []
# year = []
# garlicbread = []
# garlicbreadb =[]
# insurance = []
# insuranceb = []
# vampireresult = []
# usernameb = []
# employees = []
# alergies = []

# #==========================================
# #Driving Code

# employees = 0
# puts "How many employees do you want to interview? Please use numbers"
# employees = gets.to_i

# #p i = employees - (employees-1)

# until i == employees + 1

#   print "Checking-in employee number #{i} \n"
#   i += 1

#   puts "What's your name?"
#   username = gets.chomp
#   case username
#     when "Drake Cula"
#       usernameb = true
#     when "Tu Fang"
#       usernameb = true
#     else
#       usernameb = false
#   end

#   #p usernameb

#   puts "How old are you in years?"
#   age = gets.to_i

#   puts "What year were you born?"
#   year = gets.to_i

#   realage = 2017 - age
#   agecheck =[]

#   if realage == year
#     agecheck = TRUE
#   else
#     agecheck = FALSE
#   end
#   #p agecheck

#   puts "Would you like to have some garlic bread? Yes or No?"
#   case (garlicbread = gets.chomp)
#   when 'Yes'
#     garlicbread = true
#   when 'No'
#     garlicbread = false
#   else
#     p 'Not sure'
#   end
#   #print garlicbread

#   puts "Would you like to enroll in the company's insurance? Yes or No?"
#   case (insurance = gets.chomp)
#   when 'Yes'
#     insurance = true
#   when 'No'
#     insurance = false
#   else
#     p 'Not sure'
#   end
#   #print insurance

#   puts "Do you have any allergies? Please enter one at a time and type 'done' to record your answers"
#   allergies = gets.chomp
#   until allergies.downcase == "done" || allergies.downcase == "sunshine"  do
#     allergies = gets.chomp!
#   end

# if allergies == "sunshine"
#       puts "Probably a vampire."
# else
#     case
#       when usernameb
#         p vampiresult = "Definitely a vampire."
#       when agecheck && (garlicbread || insurance)
#         p vampiresult = "Probably not a vampire"
#       when !(!agecheck && !(garlicbread || insurance))
#          p vampiresult = "Probably a vampire"
#       when (!agecheck && !garlicbread && !insurance)
#         p vampiresult = "Almost certainly a vampire."
#       else
#         puts "Results inconclusive"
#     end
#   end
# end

# print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

