#Pseudocode
# Ask user what his name is and store in variable
#   If user is in vampire database, then user is a vampire
# Ask user for age and store in variable
# Ask user for birth year
# Compare age and year inputs
#   If they add up
#     Carry on to next question
#   Else
#     Probably a vampire
# Ask if user would like some garlic bread
#   If user refuses
#     Probably a vampire
#   Else
#     Carry on to next question
# Ask user if they'd like to enroll in health insurance
#   If yes
#     Carry on to next question
#   Else
#     Probably a vampire

#==========================================
#Test Variables
wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

#Variable tests
# p wolves_like_garlic && wolves_like_sunshine
# #true
# p wolves_like_garlic || vampires_like_garlic
# #true
# p wolves_like_garlic && vampires_like_garlic
# #false
# p wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
# #false
# p (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
# #true
# p vampires_like_garlic
# #false
# p !vampires_like_garlic
# #true
# p !(wolves_like_sunshine && wolves_like_garlic)
# #false

#=========================================
#Program Variables
username = []
age = []
year = []
garlicbread = []
garlicbreadb =[]
insurance = []
insuranceb = []

#==========================================
#Driving Code

puts "What's your name?"
username = gets.chomp

puts "How old are you in years?"
age = gets.to_i

puts "What year were you born?"
year = gets.to_i

realage = 2017 - age
agecheck =[]

if realage == year
  agecheck = TRUE
else
  agecheck = FALSE
end
#p agecheck

puts "Would you like to have some garlic bread? Yes or No?"
case (garlicbread = gets.chomp)
when 'Yes'
  garlicbread = true
when 'No'
  garlicbread = false
else
  p 'Not sure'
end
print garlicbread

puts "Would you like to enroll in the company's insurance? Yes or No?"
case (insurance = gets.chomp)
when "Yes"
  insurance = true
when 'No'
  insurance = false
else
  p 'Not sure'
end
print insurance




